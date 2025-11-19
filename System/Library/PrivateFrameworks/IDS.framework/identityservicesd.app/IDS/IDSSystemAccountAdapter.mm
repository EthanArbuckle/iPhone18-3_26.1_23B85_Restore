@interface IDSSystemAccountAdapter
- (IDSSystemAccountAdapter)initWithQueue:(id)a3;
- (id)_ACAccountWithTypeIdentifier:(id)a3 matchingCriteria:(id)a4 error:(id *)a5;
- (id)_firstAccountInStore:(id)a3 withType:(id)a4 matchingCriteria:(id)a5;
- (id)_systemAccountRepresentationOfACAccount:(id)a3 DSIDKey:(id)a4;
- (id)_systemAccountWithIdentifier:(id)a3 DSIDKey:(id)a4 criteria:(id)a5 error:(id *)a6;
- (id)iCloudSystemAccountWithError:(id *)a3;
- (id)iTunesSystemAccountWithError:(id *)a3;
- (void)_ACAccountWithTypeIdentifier:(id)a3 matchingCriteria:(id)a4 completion:(id)a5;
- (void)_systemAccountWithIdentifier:(id)a3 DSIDKey:(id)a4 criteria:(id)a5 completion:(id)a6;
- (void)iCloudSystemAccountWithCompletion:(id)a3;
- (void)iTunesSystemAccountWithCompletion:(id)a3;
@end

@implementation IDSSystemAccountAdapter

- (IDSSystemAccountAdapter)initWithQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSSystemAccountAdapter;
  v6 = [(IDSSystemAccountAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
  }

  return v7;
}

- (void)iCloudSystemAccountWithCompletion:(id)a3
{
  v4 = qword_100CBD0A0;
  v5 = a3;
  v7 = v5;
  if (v4 == -1)
  {
    v6 = v5;
  }

  else
  {
    sub_1009172F0();
    v6 = v7;
  }

  [(IDSSystemAccountAdapter *)self _systemAccountWithIdentifier:qword_100CBD0A8 DSIDKey:@"personID" criteria:&stru_100BD8B20 completion:v6];
}

- (void)iTunesSystemAccountWithCompletion:(id)a3
{
  v4 = qword_100CBD0B0;
  v5 = a3;
  v7 = v5;
  if (v4 == -1)
  {
    v6 = v5;
  }

  else
  {
    sub_100917304();
    v6 = v7;
  }

  [(IDSSystemAccountAdapter *)self _systemAccountWithIdentifier:qword_100CBD0B8 DSIDKey:@"dsid" criteria:&stru_100BD8B40 completion:v6];
}

- (id)iCloudSystemAccountWithError:(id *)a3
{
  if (qword_100CBD0A0 != -1)
  {
    sub_1009172F0();
  }

  v5 = qword_100CBD0A8;

  return [(IDSSystemAccountAdapter *)self _systemAccountWithIdentifier:v5 DSIDKey:@"personID" criteria:&stru_100BD8B60 error:a3];
}

- (id)iTunesSystemAccountWithError:(id *)a3
{
  if (qword_100CBD0B0 != -1)
  {
    sub_100917304();
  }

  v5 = qword_100CBD0B8;

  return [(IDSSystemAccountAdapter *)self _systemAccountWithIdentifier:v5 DSIDKey:@"dsid" criteria:&stru_100BD8B80 error:a3];
}

- (void)_systemAccountWithIdentifier:(id)a3 DSIDKey:(id)a4 criteria:(id)a5 completion:(id)a6
{
  v10 = a3;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100352058;
  v14[3] = &unk_100BD8BA8;
  v14[4] = self;
  v15 = a4;
  v16 = v10;
  v17 = a6;
  v11 = v17;
  v12 = v10;
  v13 = v15;
  [(IDSSystemAccountAdapter *)self _ACAccountWithTypeIdentifier:v12 matchingCriteria:a5 completion:v14];
}

- (void)_ACAccountWithTypeIdentifier:(id)a3 matchingCriteria:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100352318;
  v15[3] = &unk_100BD8BF8;
  v15[4] = self;
  v16 = objc_alloc_init(IMWeakLinkClass());
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v8;
  v13 = v9;
  v14 = v16;
  [v14 accountTypeWithIdentifier:v12 completion:v15];
}

- (id)_systemAccountWithIdentifier:(id)a3 DSIDKey:(id)a4 criteria:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = objc_autoreleasePoolPush();
  v20 = 0;
  v14 = [(IDSSystemAccountAdapter *)self _ACAccountWithTypeIdentifier:v10 matchingCriteria:v12 error:&v20];
  v15 = v20;
  if (v15)
  {

    objc_autoreleasePoolPop(v13);
    if (a6)
    {
      v16 = [NSError alloc];
      v21 = NSUnderlyingErrorKey;
      v22 = v15;
      v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *a6 = [v16 initWithDomain:@"IDSSystemAccountAdapterErrorDomain" code:-1000 userInfo:v17];

      a6 = 0;
    }
  }

  else
  {
    a6 = [(IDSSystemAccountAdapter *)self _systemAccountRepresentationOfACAccount:v14 DSIDKey:v11];
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v10;
      v25 = 2112;
      v26 = a6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Done checking for system signed in account { identifier: %@, systemAccount: %@ }", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  return a6;
}

- (id)_ACAccountWithTypeIdentifier:(id)a3 matchingCriteria:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc_init(IMWeakLinkClass());
  v19 = 0;
  v12 = [v11 accountTypeWithAccountTypeIdentifier:v8 error:&v19];
  v13 = v19;
  v14 = v13;
  if (!v12 || v13)
  {
    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = v8;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Did not find account type { identifier: %@, accountsError: %@ }", buf, 0x16u);
    }

    v15 = 0;
  }

  else
  {
    v15 = [(IDSSystemAccountAdapter *)self _firstAccountInStore:v11 withType:v12 matchingCriteria:v9];
  }

  objc_autoreleasePoolPop(v10);
  if (a5 && v14)
  {
    v17 = v14;
    *a5 = v14;
  }

  return v15;
}

- (id)_firstAccountInStore:(id)a3 withType:(id)a4 matchingCriteria:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  [v7 accountsWithAccountType:v8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = v20 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = *v18;
    while (2)
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v11);
        }

        if (v9)
        {
          v15 = *(*(&v17 + 1) + 8 * i);
          if (v9[2](v9, v15))
          {
            v12 = v15;
            goto LABEL_12;
          }
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  objc_autoreleasePoolPop(v10);

  return v12;
}

- (id)_systemAccountRepresentationOfACAccount:(id)a3 DSIDKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    v8 = [v5 username];
    if (v6)
    {
      v9 = [v5 accountProperties];
      v10 = [v9 objectForKey:v6];

      if (v10)
      {
        v11 = [NSString stringWithFormat:@"D:%@", v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = [[IDSSystemAccount alloc] initWithUsername:v8 DSID:v11];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v12;
}

@end
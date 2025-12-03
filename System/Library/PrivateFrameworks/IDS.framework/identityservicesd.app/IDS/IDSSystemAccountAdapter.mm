@interface IDSSystemAccountAdapter
- (IDSSystemAccountAdapter)initWithQueue:(id)queue;
- (id)_ACAccountWithTypeIdentifier:(id)identifier matchingCriteria:(id)criteria error:(id *)error;
- (id)_firstAccountInStore:(id)store withType:(id)type matchingCriteria:(id)criteria;
- (id)_systemAccountRepresentationOfACAccount:(id)account DSIDKey:(id)key;
- (id)_systemAccountWithIdentifier:(id)identifier DSIDKey:(id)key criteria:(id)criteria error:(id *)error;
- (id)iCloudSystemAccountWithError:(id *)error;
- (id)iTunesSystemAccountWithError:(id *)error;
- (void)_ACAccountWithTypeIdentifier:(id)identifier matchingCriteria:(id)criteria completion:(id)completion;
- (void)_systemAccountWithIdentifier:(id)identifier DSIDKey:(id)key criteria:(id)criteria completion:(id)completion;
- (void)iCloudSystemAccountWithCompletion:(id)completion;
- (void)iTunesSystemAccountWithCompletion:(id)completion;
@end

@implementation IDSSystemAccountAdapter

- (IDSSystemAccountAdapter)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = IDSSystemAccountAdapter;
  v6 = [(IDSSystemAccountAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)iCloudSystemAccountWithCompletion:(id)completion
{
  v4 = qword_100CBD0A0;
  completionCopy = completion;
  v7 = completionCopy;
  if (v4 == -1)
  {
    v6 = completionCopy;
  }

  else
  {
    sub_1009172F0();
    v6 = v7;
  }

  [(IDSSystemAccountAdapter *)self _systemAccountWithIdentifier:qword_100CBD0A8 DSIDKey:@"personID" criteria:&stru_100BD8B20 completion:v6];
}

- (void)iTunesSystemAccountWithCompletion:(id)completion
{
  v4 = qword_100CBD0B0;
  completionCopy = completion;
  v7 = completionCopy;
  if (v4 == -1)
  {
    v6 = completionCopy;
  }

  else
  {
    sub_100917304();
    v6 = v7;
  }

  [(IDSSystemAccountAdapter *)self _systemAccountWithIdentifier:qword_100CBD0B8 DSIDKey:@"dsid" criteria:&stru_100BD8B40 completion:v6];
}

- (id)iCloudSystemAccountWithError:(id *)error
{
  if (qword_100CBD0A0 != -1)
  {
    sub_1009172F0();
  }

  v5 = qword_100CBD0A8;

  return [(IDSSystemAccountAdapter *)self _systemAccountWithIdentifier:v5 DSIDKey:@"personID" criteria:&stru_100BD8B60 error:error];
}

- (id)iTunesSystemAccountWithError:(id *)error
{
  if (qword_100CBD0B0 != -1)
  {
    sub_100917304();
  }

  v5 = qword_100CBD0B8;

  return [(IDSSystemAccountAdapter *)self _systemAccountWithIdentifier:v5 DSIDKey:@"dsid" criteria:&stru_100BD8B80 error:error];
}

- (void)_systemAccountWithIdentifier:(id)identifier DSIDKey:(id)key criteria:(id)criteria completion:(id)completion
{
  identifierCopy = identifier;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100352058;
  v14[3] = &unk_100BD8BA8;
  v14[4] = self;
  keyCopy = key;
  v16 = identifierCopy;
  completionCopy = completion;
  v11 = completionCopy;
  v12 = identifierCopy;
  v13 = keyCopy;
  [(IDSSystemAccountAdapter *)self _ACAccountWithTypeIdentifier:v12 matchingCriteria:criteria completion:v14];
}

- (void)_ACAccountWithTypeIdentifier:(id)identifier matchingCriteria:(id)criteria completion:(id)completion
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  completionCopy = completion;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100352318;
  v15[3] = &unk_100BD8BF8;
  v15[4] = self;
  v16 = objc_alloc_init(IMWeakLinkClass());
  v17 = identifierCopy;
  v18 = criteriaCopy;
  v19 = completionCopy;
  v11 = completionCopy;
  v12 = identifierCopy;
  v13 = criteriaCopy;
  v14 = v16;
  [v14 accountTypeWithIdentifier:v12 completion:v15];
}

- (id)_systemAccountWithIdentifier:(id)identifier DSIDKey:(id)key criteria:(id)criteria error:(id *)error
{
  identifierCopy = identifier;
  keyCopy = key;
  criteriaCopy = criteria;
  v13 = objc_autoreleasePoolPush();
  v20 = 0;
  v14 = [(IDSSystemAccountAdapter *)self _ACAccountWithTypeIdentifier:identifierCopy matchingCriteria:criteriaCopy error:&v20];
  v15 = v20;
  if (v15)
  {

    objc_autoreleasePoolPop(v13);
    if (error)
    {
      v16 = [NSError alloc];
      v21 = NSUnderlyingErrorKey;
      v22 = v15;
      v17 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *error = [v16 initWithDomain:@"IDSSystemAccountAdapterErrorDomain" code:-1000 userInfo:v17];

      error = 0;
    }
  }

  else
  {
    error = [(IDSSystemAccountAdapter *)self _systemAccountRepresentationOfACAccount:v14 DSIDKey:keyCopy];
    v18 = +[IMRGLog registration];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = identifierCopy;
      v25 = 2112;
      errorCopy = error;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Done checking for system signed in account { identifier: %@, systemAccount: %@ }", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  return error;
}

- (id)_ACAccountWithTypeIdentifier:(id)identifier matchingCriteria:(id)criteria error:(id *)error
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  v10 = objc_autoreleasePoolPush();
  v11 = objc_alloc_init(IMWeakLinkClass());
  v19 = 0;
  v12 = [v11 accountTypeWithAccountTypeIdentifier:identifierCopy error:&v19];
  v13 = v19;
  v14 = v13;
  if (!v12 || v13)
  {
    v16 = +[IMRGLog registration];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v21 = identifierCopy;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Did not find account type { identifier: %@, accountsError: %@ }", buf, 0x16u);
    }

    v15 = 0;
  }

  else
  {
    v15 = [(IDSSystemAccountAdapter *)self _firstAccountInStore:v11 withType:v12 matchingCriteria:criteriaCopy];
  }

  objc_autoreleasePoolPop(v10);
  if (error && v14)
  {
    v17 = v14;
    *error = v14;
  }

  return v15;
}

- (id)_firstAccountInStore:(id)store withType:(id)type matchingCriteria:(id)criteria
{
  storeCopy = store;
  typeCopy = type;
  criteriaCopy = criteria;
  v10 = objc_autoreleasePoolPush();
  [storeCopy accountsWithAccountType:typeCopy];
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

        if (criteriaCopy)
        {
          v15 = *(*(&v17 + 1) + 8 * i);
          if (criteriaCopy[2](criteriaCopy, v15))
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

- (id)_systemAccountRepresentationOfACAccount:(id)account DSIDKey:(id)key
{
  accountCopy = account;
  keyCopy = key;
  v7 = objc_autoreleasePoolPush();
  if (accountCopy)
  {
    username = [accountCopy username];
    if (keyCopy)
    {
      accountProperties = [accountCopy accountProperties];
      v10 = [accountProperties objectForKey:keyCopy];

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

    v12 = [[IDSSystemAccount alloc] initWithUsername:username DSID:v11];
  }

  else
  {
    v12 = 0;
  }

  objc_autoreleasePoolPop(v7);

  return v12;
}

@end
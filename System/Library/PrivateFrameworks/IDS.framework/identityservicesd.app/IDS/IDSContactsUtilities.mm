@interface IDSContactsUtilities
- (BOOL)doesContactMatchingURIExists:(id)a3;
- (IDSContactsUtilities)init;
- (IDSContactsUtilities)initWithContactStore:(id)a3;
- (id)nameForContactMatchingURI:(id)a3;
- (id)predicateForURI:(id)a3;
- (int64_t)countOfHandles;
@end

@implementation IDSContactsUtilities

- (IDSContactsUtilities)init
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v3 = qword_100CBD5C0;
  v12 = qword_100CBD5C0;
  if (!qword_100CBD5C0)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1004D766C;
    v8[3] = &unk_100BD7928;
    v8[4] = &v9;
    sub_1004D766C(v8);
    v3 = v10[3];
  }

  v4 = v3;
  _Block_object_dispose(&v9, 8);
  v5 = objc_alloc_init(v3);
  v6 = [(IDSContactsUtilities *)self initWithContactStore:v5];

  return v6;
}

- (IDSContactsUtilities)initWithContactStore:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSContactsUtilities;
  v6 = [(IDSContactsUtilities *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, a3);
  }

  return v7;
}

- (id)predicateForURI:(id)a3
{
  v3 = a3;
  v4 = [v3 FZIDType];
  if (v4)
  {
    if (v4 == 1)
    {
      v5 = [v3 unprefixedURI];
      v6 = [sub_1004D62C0() predicateForContactsMatchingEmailAddress:v5];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v7 = qword_100CBD5D8;
    v16 = qword_100CBD5D8;
    if (!qword_100CBD5D8)
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1004D7878;
      v12[3] = &unk_100BD7928;
      v12[4] = &v13;
      sub_1004D7878(v12);
      v7 = v14[3];
    }

    v8 = v7;
    _Block_object_dispose(&v13, 8);
    v9 = [v3 unprefixedURI];
    v10 = [v7 phoneNumberWithStringValue:v9];

    v6 = [sub_1004D62C0() predicateForContactsMatchingPhoneNumber:v10];
  }

  return v6;
}

- (id)nameForContactMatchingURI:(id)a3
{
  v4 = a3;
  v5 = [(IDSContactsUtilities *)self predicateForURI:v4];
  if (v5)
  {
    *&v39 = 0;
    *(&v39 + 1) = &v39;
    v40 = 0x3032000000;
    v41 = sub_10000A9F4;
    v42 = sub_10000BC6C;
    v43 = 0;
    v6 = [sub_1004D69A8() descriptorForRequiredKeysForStyle:0];
    v38[0] = v6;
    v7 = sub_1004D6A88();
    v38[1] = v7;
    v8 = sub_1004D6B8C();
    v38[2] = v8;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v9 = qword_100CBD5F8;
    v37 = qword_100CBD5F8;
    if (!qword_100CBD5F8)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1004D79C8;
      v45 = &unk_100BD7928;
      v46 = &v34;
      v10 = sub_1004D76C4();
      v11 = dlsym(v10, "CNContactGivenNameKey");
      *(v46[1] + 24) = v11;
      qword_100CBD5F8 = *(v46[1] + 24);
      v9 = v35[3];
    }

    _Block_object_dispose(&v34, 8);
    if (v9)
    {
      v12 = *v9;
      v38[3] = v12;
      v34 = 0;
      v35 = &v34;
      v36 = 0x2020000000;
      v13 = qword_100CBD600;
      v37 = qword_100CBD600;
      if (!qword_100CBD600)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_1004D7A18;
        v45 = &unk_100BD7928;
        v46 = &v34;
        v14 = sub_1004D76C4();
        v15 = dlsym(v14, "CNContactFamilyNameKey");
        *(v46[1] + 24) = v15;
        qword_100CBD600 = *(v46[1] + 24);
        v13 = v35[3];
      }

      _Block_object_dispose(&v34, 8);
      if (v13)
      {
        v16 = *v13;
        v38[4] = v16;
        v17 = sub_1004D6C90();
        v38[5] = v17;
        v18 = [NSArray arrayWithObjects:v38 count:6];

        v19 = [objc_alloc(sub_1004D6D94()) initWithKeysToFetch:v18];
        [v19 setPredicate:v5];
        v20 = +[IDSFoundationLog ContactsUtilities];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Fetching contacts for predicate %@", buf, 0xCu);
        }

        contactStore = self->_contactStore;
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_1004D6E74;
        v32[3] = &unk_100BDE920;
        v32[4] = &v39;
        v33 = 0;
        [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v19 error:&v33 usingBlock:v32];
        v22 = v33;
        v23 = +[IDSFoundationLog ContactsUtilities];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = *(*(&v39 + 1) + 40);
          *buf = 138412802;
          *&buf[4] = v24;
          *&buf[12] = 2112;
          *&buf[14] = v4;
          *&buf[22] = 2112;
          v45 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found contact %@, for URI %@ with error %@", buf, 0x20u);
        }

        if (*(*(&v39 + 1) + 40))
        {
          v25 = [sub_1004D69A8() stringFromContact:*(*(&v39 + 1) + 40) style:0];
        }

        else
        {
          v25 = 0;
        }

        _Block_object_dispose(&v39, 8);
        goto LABEL_19;
      }

      v30 = +[NSAssertionHandler currentHandler];
      v31 = [NSString stringWithUTF8String:"NSString *getCNContactFamilyNameKey(void)"];
      [v30 handleFailureInFunction:v31 file:@"IDSContactsUtilities.m" lineNumber:25 description:{@"%s", dlerror()}];
    }

    else
    {
      v28 = +[NSAssertionHandler currentHandler];
      v29 = [NSString stringWithUTF8String:"NSString *getCNContactGivenNameKey(void)"];
      [v28 handleFailureInFunction:v29 file:@"IDSContactsUtilities.m" lineNumber:24 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

  v26 = +[IDSFoundationLog ContactsUtilities];
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v39) = 138412290;
    *(&v39 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "No predicate found for URI %@", &v39, 0xCu);
  }

  v25 = 0;
LABEL_19:

  return v25;
}

- (BOOL)doesContactMatchingURIExists:(id)a3
{
  v4 = a3;
  v5 = [(IDSContactsUtilities *)self predicateForURI:v4];
  if (v5)
  {
    *&v28 = 0;
    *(&v28 + 1) = &v28;
    v29 = 0x3032000000;
    v30 = sub_10000A9F4;
    v31 = sub_10000BC6C;
    v32 = 0;
    v6 = [sub_1004D69A8() descriptorForRequiredKeysForStyle:0];
    v27[0] = v6;
    v7 = sub_1004D6A88();
    v27[1] = v7;
    v8 = sub_1004D6B8C();
    v27[2] = v8;
    v9 = [NSArray arrayWithObjects:v27 count:3];

    v10 = [objc_alloc(sub_1004D6D94()) initWithKeysToFetch:v9];
    [v10 setPredicate:v5];
    v11 = +[IDSFoundationLog ContactsUtilities];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v22 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Fetching contacts for predicate %@", buf, 0xCu);
    }

    contactStore = self->_contactStore;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1004D72F4;
    v19[3] = &unk_100BDE920;
    v19[4] = &v28;
    v20 = 0;
    [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v10 error:&v20 usingBlock:v19];
    v13 = v20;
    v14 = +[IDSFoundationLog ContactsUtilities];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(*(&v28 + 1) + 40);
      *buf = 138412802;
      v22 = v15;
      v23 = 2112;
      v24 = v4;
      v25 = 2112;
      v26 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Found contact %@, for URI %@ with error %@", buf, 0x20u);
    }

    v16 = *(*(&v28 + 1) + 40) != 0;
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    v17 = +[IDSFoundationLog ContactsUtilities];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v28) = 138412290;
      *(&v28 + 4) = v4;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No predicate found for URI %@", &v28, 0xCu);
    }

    v16 = 0;
  }

  return v16;
}

- (int64_t)countOfHandles
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = sub_1004D6A88();
  v21[0] = v3;
  v4 = sub_1004D6B8C();
  v21[1] = v4;
  v5 = sub_1004D6C90();
  v21[2] = v5;
  v6 = [NSArray arrayWithObjects:v21 count:3];

  v7 = [objc_alloc(sub_1004D6D94()) initWithKeysToFetch:v6];
  contactStore = self->_contactStore;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1004D75A8;
  v13[3] = &unk_100BDE920;
  v13[4] = &v15;
  v14 = 0;
  [(CNContactStore *)contactStore enumerateContactsWithFetchRequest:v7 error:&v14 usingBlock:v13];
  v9 = v14;
  v10 = +[IDSFoundationLog ContactsUtilities];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Enumerated contact handles with error %@", buf, 0xCu);
  }

  v11 = v16[3];
  _Block_object_dispose(&v15, 8);
  return v11;
}

@end
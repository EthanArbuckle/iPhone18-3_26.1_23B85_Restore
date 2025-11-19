@interface IDSKeychainKeyElectionStore
- (BOOL)removeFullClusterWithIdentifier:(id)a3 error:(id *)a4;
- (IDSKeychainKeyElectionStore)initWithKeychainWrapper:(id)a3;
- (id)_fullClusterFromData:(id)a3 error:(id *)a4;
- (id)_keychainEntryForCluster:(id)a3;
- (id)fetchFullClusterWithIdentifier:(id)a3 error:(id *)a4;
- (id)identifierForFullCluster:(id)a3;
- (void)_storeData:(id)a3 forIdentifier:(id)a4 completion:(id)a5;
- (void)storeFullCluster:(id)a3 completion:(id)a4;
@end

@implementation IDSKeychainKeyElectionStore

- (id)identifierForFullCluster:(id)a3
{
  v3 = a3;
  v4 = [v3 fullAccountIdentity];
  if (v4)
  {
    v5 = _IDSEngramKeyElectorVersion();
    v6 = [v4 publicName];
    v7 = [NSString stringWithFormat:@"group-pai-%@-%@", v5, v6];
  }

  else
  {
    v8 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to get name for full account identity cluster {cluster: %{public}@}", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (IDSKeychainKeyElectionStore)initWithKeychainWrapper:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IDSKeychainKeyElectionStore;
  v6 = [(IDSKeychainKeyElectionStore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keychainWrapper, a3);
  }

  return v7;
}

- (id)fetchFullClusterWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Fetching cluster from keychain", buf, 2u);
  }

  v8 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "!setState keychainClusterIdentifier=%@", buf, 0xCu);
  }

  v9 = [(IDSKeychainKeyElectionStore *)self keychainWrapper];
  v22 = 0;
  v10 = [v9 dataForIdentifier:v6 error:&v22];
  v11 = v22;

  if (!v10)
  {
    v12 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v24 = v6;
      v25 = 2114;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to get keychain data {identifier: %{public}@, error: %{public}@}", buf, 0x16u);
    }

    goto LABEL_26;
  }

  v21 = 0;
  v12 = [NSPropertyListSerialization propertyListWithData:v10 options:0 format:0 error:&v21];
  v13 = v21;

  if (!v12)
  {
    v14 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10091C988();
    }

    v11 = v13;
    goto LABEL_25;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [NSError errorWithDomain:@"IDSKeychainKeyElectionStoreErrorDomain" code:-1000 userInfo:0];

    v14 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10091C8B8();
    }

    goto LABEL_25;
  }

  v14 = [v12 objectForKey:@"clusterData"];
  if (!v14)
  {
    v11 = [NSError errorWithDomain:@"IDSKeychainKeyElectionStoreErrorDomain" code:-1000 userInfo:0];

    v17 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_10091C920();
    }

    goto LABEL_24;
  }

  v20 = v13;
  v15 = [(IDSKeychainKeyElectionStore *)self _fullClusterFromData:v14 error:&v20];
  v11 = v20;

  v16 = +[IDSFoundationLog accountIdentity];
  v17 = v16;
  if (!v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      v24 = v14;
      v25 = 2114;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Failed to create fullClust from clusterData {clusterData: %{private}@, error: %{public}@}", buf, 0x16u);
    }

LABEL_24:

LABEL_25:
LABEL_26:

    if (a4)
    {
      v18 = v11;
      v15 = 0;
      *a4 = v11;
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_29;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Deserialized cluster", buf, 2u);
  }

LABEL_29:

  return v15;
}

- (void)storeFullCluster:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Storing cluster in Keychain {fullCluster: %{public}@}", buf, 0xCu);
  }

  v21 = 0;
  v9 = [v6 dataRepresentationWithError:&v21];
  v10 = v21;
  if (v9)
  {
    v28 = @"clusterData";
    v29 = v9;
    v11 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v20 = 0;
    v12 = [NSPropertyListSerialization dataWithPropertyList:v11 format:200 options:0 error:&v20];
    v13 = v20;

    if (v12)
    {
      v14 = [(IDSKeychainKeyElectionStore *)self identifierForFullCluster:v6];
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_1003FDE4C;
      v17[3] = &unk_100BD97D8;
      v18 = v6;
      v19 = v7;
      [(IDSKeychainKeyElectionStore *)self _storeData:v12 forIdentifier:v14 completion:v17];
    }

    else
    {
      v16 = +[IDSFoundationLog accountIdentity];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543875;
        v23 = v6;
        v24 = 2113;
        v25 = v11;
        v26 = 2114;
        v27 = v13;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Failed to serialize cluster data {fullCluster: %{public}@, dictionary: %{private}@, error: %{public}@}", buf, 0x20u);
      }

      (*(v7 + 2))(v7, 0, v13);
    }
  }

  else
  {
    v15 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v23 = v6;
      v24 = 2114;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Failed to create data from cluster {fullCluster: %{public}@, error: %{public}@}", buf, 0x16u);
    }

    (*(v7 + 2))(v7, 0, v10);
    v13 = v10;
  }
}

- (void)_storeData:(id)a3 forIdentifier:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(IDSKeychainKeyElectionStore *)self keychainWrapper];
  [v11 saveData:v10 forIdentifier:v9 dataProtectionClass:1 withCompletion:v8];
}

- (BOOL)removeFullClusterWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Removing cluster from keychain", &v13, 2u);
  }

  v8 = +[IDSFoundationLog accountIdentity];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "!setState keychainClusterIdentifier=%@", &v13, 0xCu);
  }

  v9 = [(IDSKeychainKeyElectionStore *)self keychainWrapper];
  v10 = [v9 removeDataForIdentifier:v6 dataProtectionClass:1 error:a4];

  if ((v10 & 1) == 0)
  {
    v11 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10091C9F0(v6, a4, v11);
    }
  }

  return v10;
}

- (id)_keychainEntryForCluster:(id)a3
{
  v10 = 0;
  v3 = [a3 dataRepresentationWithError:&v10];
  v4 = v10;
  if (v3)
  {
    v11 = @"clusterData";
    v12 = v3;
    v5 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = 0;
    v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:&v9];
    v7 = v9;

    v4 = v7;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_fullClusterFromData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v13 = 0;
  v6 = [IDSMPFullAccountIdentityCluster clusterWithDataRepresentation:v5 error:&v13];
  v7 = v13;
  v8 = v7;
  if (a4)
  {
    v9 = v7;
    *a4 = v8;
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v11 = +[IDSFoundationLog accountIdentity];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_10091CA78(a4, v5, v11);
    }
  }

  return v6;
}

@end
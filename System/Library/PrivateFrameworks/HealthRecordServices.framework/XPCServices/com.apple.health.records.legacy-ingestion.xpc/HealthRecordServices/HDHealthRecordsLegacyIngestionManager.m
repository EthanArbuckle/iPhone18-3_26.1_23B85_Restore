@interface HDHealthRecordsLegacyIngestionManager
- (HDHealthRecordsLegacyIngestionManager)init;
- (id)_credentialedSessionSuitableForConnectionInformation:(id)a3;
- (id)logPrefix;
- (void)fetchAccessTokenForTokenSession:(id)a3 connectionInformation:(id)a4 completion:(id)a5;
- (void)fetchOrRefreshCredentialForAccount:(id)a3 completion:(id)a4;
- (void)performDownloadRequest:(id)a3 completion:(id)a4;
@end

@implementation HDHealthRecordsLegacyIngestionManager

- (HDHealthRecordsLegacyIngestionManager)init
{
  v12.receiver = self;
  v12.super_class = HDHealthRecordsLegacyIngestionManager;
  v2 = [(HDHealthRecordsLegacyIngestionManager *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [NSString stringWithFormat:@"%@-IngestionQueue", v5];
    [(NSOperationQueue *)v3 setName:v6];

    [(NSOperationQueue *)v3 setQualityOfService:17];
    [(NSOperationQueue *)v3 setMaxConcurrentOperationCount:3];
    ingestionQueue = v2->_ingestionQueue;
    v2->_ingestionQueue = v3;
    v8 = v3;

    v9 = objc_alloc_init(NSMutableDictionary);
    credentialedSessionByAccountIdentifier = v2->_credentialedSessionByAccountIdentifier;
    v2->_credentialedSessionByAccountIdentifier = v9;
  }

  return v2;
}

- (void)performDownloadRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  v8 = a4;
  _HKInitializeLogging();
  v9 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = [(HDHealthRecordsLegacyIngestionManager *)self logPrefix];
    *buf = 138543618;
    v32 = v11;
    v33 = 2114;
    v34 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ will start executing %{public}@", buf, 0x16u);
  }

  v12 = [v7 context];
  v13 = [v12 accountInformation];
  v14 = [(HDHealthRecordsLegacyIngestionManager *)self _credentialedSessionSuitableForConnectionInformation:v13];

  v30 = 0;
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1000077A8;
  v26 = &unk_100018658;
  v27 = self;
  v15 = v7;
  v28 = v15;
  v16 = v8;
  v29 = v16;
  v17 = [HDFHIRResourceDownloadOperation operationWithDownloadRequest:v15 session:v14 error:&v30 downloadCompletion:&v23];
  v18 = v30;
  v19 = v18;
  if (v17)
  {
    [(NSOperationQueue *)self->_ingestionQueue addOperation:v17, v23, v24, v25, v26, v27, v28];
  }

  else
  {
    if (!v18)
    {
      sub_10000BE68(a2, self);
    }

    _HKInitializeLogging();
    v20 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_10000BEE0(v20, self);
    }

    v21 = [HKFHIRResourceDownloadRequestResult alloc];
    v22 = [v21 initWithError:{v19, v23, v24, v25, v26, v27, v28}];
    (*(v16 + 2))(v16, v22);
  }
}

- (void)fetchAccessTokenForTokenSession:(id)a3 connectionInformation:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  _HKInitializeLogging();
  v11 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(HDHealthRecordsLegacyIngestionManager *)self logPrefix];
    *buf = 138543618;
    v29 = v13;
    v30 = 2114;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ will start fetching access token for %{public}@", buf, 0x16u);
  }

  v27 = 0;
  v14 = [HDFHIRSpecification specificationWithConnectionInformation:v10 error:&v27];

  v15 = v27;
  if (v14)
  {
    v16 = [[HDFHIRSession alloc] initWithSpecification:v14];
    v17 = [HDFHIRAccessTokenTask alloc];
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_100007B08;
    v23 = &unk_100018680;
    v24 = self;
    v25 = v8;
    v26 = v9;
    v18 = [(HDFHIRAccessTokenTask *)v17 initWithTokenSession:v25 FHIRSession:v16 completion:&v20];
    [(HDFHIRRequestTask *)v18 resume:v20];
  }

  else
  {
    _HKInitializeLogging();
    v19 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_10000BF80(v19, self);
    }

    (*(v9 + 2))(v9, 0, 0, v15);
  }
}

- (void)fetchOrRefreshCredentialForAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(HDHealthRecordsLegacyIngestionManager *)self logPrefix];
    v11 = [v6 accountIdentifier];
    *buf = 138543618;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ starting fetchOrRefreshCredential for account %{public}@", buf, 0x16u);
  }

  v12 = [(HDHealthRecordsLegacyIngestionManager *)self _credentialedSessionSuitableForConnectionInformation:v6];
  v13 = [v12 credentialVendor];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007F24;
  v16[3] = &unk_1000186A8;
  v16[4] = self;
  v17 = v6;
  v18 = v7;
  v14 = v7;
  v15 = v6;
  [v13 fetchOrRefreshCredentialWithCompletion:v16];
}

- (id)_credentialedSessionSuitableForConnectionInformation:(id)a3
{
  v4 = a3;
  v5 = [v4 accountIdentifier];
  v6 = [(NSMutableDictionary *)self->_credentialedSessionByAccountIdentifier objectForKeyedSubscript:v5];
  if (!v6)
  {
    v7 = [[HDFHIRSpecification alloc] initWithConnectionInformation:v4];
    v8 = [v4 authorization];
    v9 = [[HDFHIRCredentialVendor alloc] initWithCredential:v8];
    [(HDFHIRCredentialVendor *)v9 setCredentialResultDidUpdateHandler:&stru_1000186E8];
    v6 = [[HDFHIRCredentialedSession alloc] initWithSpecification:v7 credentialVendor:v9];
    [(NSMutableDictionary *)self->_credentialedSessionByAccountIdentifier setObject:v6 forKeyedSubscript:v5];
  }

  return v6;
}

- (id)logPrefix
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end
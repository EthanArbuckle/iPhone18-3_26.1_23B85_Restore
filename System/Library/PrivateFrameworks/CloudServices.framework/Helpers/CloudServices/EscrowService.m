@interface EscrowService
+ (BOOL)isFatalError:(id)a3;
+ (id)createEscrowBlobWithCertificate:(id)a3 escrowRequest:(id)a4 error:(id *)a5;
+ (id)doubleEnrollmentRecordFromPrimaryRecord:(id)a3;
- (BOOL)_invalidateEscrowCache:(id)a3 error:(id *)a4;
- (BOOL)cacheStoredCertificate:(id)a3 error:(id *)a4;
- (BOOL)processPrerecord:(id)a3 outerRequest:(id)a4 escrowRequest:(id)a5 error:(id *)a6;
- (EscrowService)initWithOperationsLogger:(id)a3;
- (id)_getBypassToken;
- (id)fetchCachedCertificateWithRequest:(id)a3 error:(id *)a4;
- (id)keychainBaseQueryWithEnvironment:(id)a3 andBaseURL:(id)a4;
- (void)_performDoubleRecoveryICDPWithRequest:(id)a3 primaryResponse:(id)a4;
- (void)_performDoubleRecoveryStingrayWithRequest:(id)a3 primaryResponse:(id)a4;
- (void)_performPostEnrollSilentRecoveryWithRequest:(id)a3;
- (void)_removeBypassToken;
- (void)_saveBypassToken:(id)a3;
- (void)changeSMSTargetWithRequest:(id)a3 completionBlock:(id)a4;
- (void)deleteRecordWithRequest:(id)a3 completionBlock:(id)a4;
- (void)fetchCertificatesAndDuplicateRequest:(id)a3 completionBlock:(id)a4;
- (void)fetchCertificatesWithRequest:(id)a3 completionBlock:(id)a4;
- (void)getAccountInfoWithRequest:(id)a3 completionBlock:(id)a4;
- (void)getCountrySMSCodesWithRequest:(id)a3 completionBlock:(id)a4;
- (void)listSMSTargetsWithRequest:(id)a3 completionBlock:(id)a4;
- (void)logRecoveryResults:(id)a3 completionBlock:(id)a4;
- (void)recoverRecordWithRequest:(id)a3 completionBlock:(id)a4;
- (void)setPasswordMetadataWithRequest:(id)a3 response:(id)a4 ses:(id)a5;
- (void)startSMSChallengeWithRequest:(id)a3 completionBlock:(id)a4;
- (void)storeRecordWithRequest:(id)a3 completionBlock:(id)a4;
- (void)ttrForPCSDataMatchFailure:(id)a3;
- (void)updateRecordMetadataWithRequest:(id)a3 completionBlock:(id)a4;
- (void)verifyCertificateWithRequest:(id)a3 completionBlock:(id)a4;
@end

@implementation EscrowService

- (void)_saveBypassToken:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:@"EscrowServiceBypassToken" forKeyedSubscript:kSecAttrAccount];
  [v4 setObject:@"EscrowService" forKeyedSubscript:kSecAttrService];
  [v4 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecAttrSynchronizable];
  v5 = [v3 dataUsingEncoding:1];

  [v4 setObject:v5 forKeyedSubscript:kSecValueData];
  if (SecItemAdd(v4, 0))
  {
    v6 = CloudServicesLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10004D714();
    }
  }
}

- (void)_removeBypassToken
{
  v4[0] = kSecAttrAccount;
  v4[1] = kSecAttrService;
  v5[0] = @"EscrowServiceBypassToken";
  v5[1] = @"EscrowService";
  v4[2] = kSecClass;
  v4[3] = kSecAttrSynchronizable;
  v5[2] = kSecClassGenericPassword;
  v5[3] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];
  if (SecItemDelete(v2))
  {
    v3 = CloudServicesLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10004D784();
    }
  }
}

- (id)_getBypassToken
{
  v9 = 0;
  v10[0] = kSecAttrAccount;
  v10[1] = kSecAttrService;
  v11[0] = @"EscrowServiceBypassToken";
  v11[1] = @"EscrowService";
  v10[2] = kSecClass;
  v10[3] = kSecAttrSynchronizable;
  v11[2] = kSecClassGenericPassword;
  v11[3] = &__kCFBooleanTrue;
  v10[4] = kSecReturnData;
  v11[4] = &__kCFBooleanTrue;
  v2 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];
  v3 = SecItemCopyMatching(v2, &v9);
  if (v3 == -25300)
  {
    v6 = 0;
  }

  else
  {
    if (v3)
    {
      v7 = CloudServicesLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10004D7F4();
      }

      v4 = 0;
      v5 = 0;
    }

    else
    {
      v4 = v9;
      v5 = [[NSString alloc] initWithData:v9 encoding:1];
    }

    v6 = v5;
  }

  return v6;
}

- (EscrowService)initWithOperationsLogger:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = EscrowService;
  v6 = [(EscrowService *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operationsLogger, a3);
    v8 = v7;
  }

  return v7;
}

- (void)getAccountInfoWithRequest:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "in getAccountInfoWithRequest:", buf, 2u);
  }

  v8 = [(EscrowGenericRequest *)[EscrowAccountInfoRequest alloc] initWithRequest:v6];
  v9 = CloudServicesLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "calling iCloud accountInfoRequest", buf, 2u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100038154;
  v11[3] = &unk_100075138;
  v12 = v5;
  v10 = v5;
  [(EscrowAccountInfoRequest *)v8 performRequestWithHandler:v11];
}

- (void)fetchCertificatesWithRequest:(id)a3 completionBlock:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100038C08;
  v7[3] = &unk_100075CB8;
  v8 = a4;
  v6 = v8;
  [(EscrowService *)self fetchCertificatesAndDuplicateRequest:a3 completionBlock:v7];
}

- (void)fetchCertificatesAndDuplicateRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_100038FDC;
  v38[4] = sub_100038FEC;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_100038FDC;
  v36[4] = sub_100038FEC;
  v37 = 0;
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = sub_100038FDC;
  v34[4] = sub_100038FEC;
  v35 = 0;
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_100038FDC;
  v32[4] = sub_100038FEC;
  v33 = 0;
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_100038FF4;
  activity_block[3] = &unk_100075D08;
  v8 = dispatch_group_create();
  v27 = v8;
  v28 = self;
  v9 = v6;
  v29 = v9;
  v30 = v38;
  v31 = v36;
  _os_activity_initiate(&_mh_execute_header, "fetchCertificates", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if ([v9 requiresDoubleEnrollment])
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100039140;
    v20[3] = &unk_100075D08;
    v21 = v8;
    v22 = self;
    v23 = v9;
    v24 = v34;
    v25 = v32;
    _os_activity_initiate(&_mh_execute_header, "fetchCertificates (duplicate)", OS_ACTIVITY_FLAG_DEFAULT, v20);
  }

  v10 = [v9 queue];

  if (!v10)
  {
    _os_assert_log();
    v13 = _os_crash();
    sub_10004DAF8(v13);
  }

  v11 = [v9 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000392BC;
  block[3] = &unk_100075D30;
  v17 = v36;
  v18 = v34;
  v19 = v32;
  v15 = v7;
  v16 = v38;
  v12 = v7;
  dispatch_group_notify(v8, v11, block);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
}

- (id)keychainBaseQueryWithEnvironment:(id)a3 andBaseURL:(id)a4
{
  v9[0] = kSecClass;
  v9[1] = kSecAttrAccount;
  v10[0] = kSecClassInternetPassword;
  v10[1] = @"EscrowServiceCertificateStore";
  v9[2] = kSecAttrPath;
  v9[3] = kSecAttrServer;
  v10[2] = a3;
  v10[3] = a4;
  v9[4] = kSecAttrAccessible;
  v9[5] = kSecUseDataProtectionKeychain;
  v10[4] = kSecAttrAccessibleAfterFirstUnlock;
  v10[5] = &__kCFBooleanTrue;
  v9[6] = kSecAttrSynchronizable;
  v10[6] = &__kCFBooleanFalse;
  v5 = a4;
  v6 = a3;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:7];

  return v7;
}

- (BOOL)cacheStoredCertificate:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [v6 iCloudEnvironment];
  v8 = [v6 escrowBaseURL];
  v9 = [(EscrowService *)self keychainBaseQueryWithEnvironment:v7 andBaseURL:v8];

  if (SecItemDelete(v9))
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004DAFC();
    }
  }

  v11 = [(__CFDictionary *)v9 mutableCopy];
  v12 = [v6 data];
  [v11 setObject:v12 forKeyedSubscript:kSecValueData];

  v13 = SecItemAdd(v11, 0);
  if (v13)
  {
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004DB70();
    }

    if (a4)
    {
      *a4 = [NSError errorWithDomain:NSOSStatusErrorDomain code:v13 userInfo:0];
    }
  }

  return v13 == 0;
}

- (id)fetchCachedCertificateWithRequest:(id)a3 error:(id *)a4
{
  v48 = 0;
  v6 = [EscrowService certificateRequest:a3 duplicate:0 error:&v48];
  v7 = v48;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v13 = [v6 iCloudEnv];
    v14 = [v6 baseURL];
    v15 = [(EscrowService *)self keychainBaseQueryWithEnvironment:v13 andBaseURL:v14];
    v16 = [v15 mutableCopy];

    [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnAttributes];
    [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecReturnData];
    [v16 setObject:kSecMatchLimitOne forKeyedSubscript:kSecMatchLimit];
    *buf = 0;
    v17 = SecItemCopyMatching(v16, buf);
    if (v17)
    {
      v18 = v17;
      v19 = CloudServicesLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10004DBE4();
      }

      if (!a4)
      {
        v12 = 0;
LABEL_43:

        goto LABEL_44;
      }

      v20 = v18;
      v57 = NSLocalizedDescriptionKey;
      v58 = @"Unable to find certificate in keychain";
      v21 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      [NSError errorWithDomain:NSOSStatusErrorDomain code:v20 userInfo:v21];
      *a4 = v12 = 0;
LABEL_42:

      goto LABEL_43;
    }

    v21 = *buf;
    v22 = [StoredCertificate alloc];
    v23 = [v21 objectForKeyedSubscript:kSecValueData];
    v24 = [(StoredCertificate *)v22 initWithData:v23];

    if (v24)
    {
      v25 = [(StoredCertificate *)v24 dsid];
      v26 = [v6 dsid];
      v27 = [v25 isEqualToString:v26];

      if (v27)
      {
        v28 = [(StoredCertificate *)v24 iCloudEnvironment];
        v29 = [v6 iCloudEnv];
        v30 = [v28 isEqualToString:v29];

        if (v30)
        {
          v31 = [(StoredCertificate *)v24 escrowBaseURL];
          v32 = [v6 baseURL];
          v33 = [v31 isEqualToString:v32];

          v34 = CloudServicesLog();
          v35 = v34;
          if (v33)
          {
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v47 = 0;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Found a valid stored certificate in the keychain", &v47, 2u);
            }

            v12 = v24;
            goto LABEL_41;
          }

          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_10004DCD0();
          }

          if (!a4)
          {
LABEL_40:
            v12 = 0;
LABEL_41:

            goto LABEL_42;
          }

          v45 = kEscrowServiceErrorDomain;
          v49 = NSLocalizedDescriptionKey;
          v50 = @"Cached certificate for wrong escrow URL";
          v38 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v39 = v45;
          v40 = 123;
        }

        else
        {
          v43 = CloudServicesLog();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            sub_10004DC94();
          }

          if (!a4)
          {
            goto LABEL_40;
          }

          v44 = kEscrowServiceErrorDomain;
          v51 = NSLocalizedDescriptionKey;
          v52 = @"Cached certificate for wrong iCloud Environment";
          v38 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          v39 = v44;
          v40 = 122;
        }
      }

      else
      {
        v41 = CloudServicesLog();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          sub_10004DC58();
        }

        if (!a4)
        {
          goto LABEL_40;
        }

        v42 = kEscrowServiceErrorDomain;
        v53 = NSLocalizedDescriptionKey;
        v54 = @"Cached certificate for wrong DSID";
        v38 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v39 = v42;
        v40 = 121;
      }
    }

    else
    {
      v36 = CloudServicesLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_10004DD0C();
      }

      if (!a4)
      {
        goto LABEL_40;
      }

      v37 = kEscrowServiceErrorDomain;
      v55 = NSLocalizedDescriptionKey;
      v56 = @"Unable to deserialize certificate from keychain";
      v38 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v39 = v37;
      v40 = 120;
    }

    *a4 = [NSError errorWithDomain:v39 code:v40 userInfo:v38];

    goto LABEL_40;
  }

  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Bailing on fetch certificates from keychain due to no cert request: %@", buf, 0xCu);
  }

  if (a4)
  {
    v11 = v8;
    v12 = 0;
    *a4 = v8;
  }

  else
  {
    v12 = 0;
  }

LABEL_44:

  return v12;
}

- (void)storeRecordWithRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[SBEscrowOperationStartEvent alloc] initWithRequest:v6 type:200];
  v9 = [(EscrowService *)self operationsLogger];
  [v9 updateStoreWithEvent:v8];

  v10 = objc_retainBlock(v7);
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10003A148;
  v47[3] = &unk_100075400;
  v47[4] = self;
  v48 = v8;
  v49 = v10;
  v11 = v10;
  v12 = v8;
  v13 = objc_retainBlock(v47);

  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = sub_100038FDC;
  v45[4] = sub_100038FEC;
  v46 = 0;
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_100038FDC;
  v43[4] = sub_100038FEC;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = sub_100038FDC;
  v41[4] = sub_100038FEC;
  v42 = 0;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x3032000000;
  v39[3] = sub_100038FDC;
  v39[4] = sub_100038FEC;
  v40 = 0;
  activity_block[0] = _NSConcreteStackBlock;
  activity_block[1] = 3221225472;
  activity_block[2] = sub_10003A1FC;
  activity_block[3] = &unk_100075D08;
  v14 = dispatch_group_create();
  v34 = v14;
  v35 = self;
  v15 = v6;
  v36 = v15;
  v37 = v45;
  v38 = v43;
  _os_activity_initiate(&_mh_execute_header, "storeRecordWithRequest", OS_ACTIVITY_FLAG_DEFAULT, activity_block);

  if ([v15 requiresDoubleEnrollment])
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10003A348;
    v27[3] = &unk_100075D08;
    v28 = v14;
    v29 = self;
    v30 = v15;
    v31 = v41;
    v32 = v39;
    _os_activity_initiate(&_mh_execute_header, "storeRecordWithRequest (double enrollment)", OS_ACTIVITY_FLAG_DEFAULT, v27);
  }

  v16 = [v15 queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003A4C4;
  v19[3] = &unk_100075D80;
  v20 = v15;
  v21 = self;
  v22 = v13;
  v23 = v41;
  v24 = v39;
  v25 = v45;
  v26 = v43;
  v17 = v13;
  v18 = v15;
  dispatch_group_notify(v14, v16, v19);

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
}

- (BOOL)_invalidateEscrowCache:(id)a3 error:(id *)a4
{
  v5 = objc_alloc_init(OTConfigurationContext);
  v6 = sub_10000F1A8();
  [v5 setAltDSID:v6];

  [v5 setContext:OTDefaultContext];
  v14 = 0;
  v7 = [OTClique invalidateEscrowCache:v5 error:&v14];
  v8 = v14;
  v9 = CloudServicesLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Successfully invalidated escrow cache", buf, 2u);
    }
  }

  else
  {
    if (v10)
    {
      *buf = 138412290;
      v16 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to invalidate escrow cache error: %@", buf, 0xCu);
    }

    if (a4)
    {
      v12 = v8;
      *a4 = v8;
    }
  }

  return v7;
}

- (BOOL)processPrerecord:(id)a3 outerRequest:(id)a4 escrowRequest:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 dsid];
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = [v8 dsid];
  v13 = [v9 dsid];
  v14 = [v12 isEqualToString:v13];

  if ((v14 & 1) == 0)
  {
LABEL_7:
    v21 = CloudServicesLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10004E07C();
    }

    if (a6)
    {
      [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:104 format:@"DSID missing or mismatched"];
      *a6 = v22 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v22 = 0;
    goto LABEL_21;
  }

  v15 = [v8 iCloudEnvironment];
  v16 = [v9 iCloudEnv];
  v17 = [v15 isEqualToString:v16];

  if ((v17 & 1) == 0)
  {
    v23 = CloudServicesLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10004DF68();
    }

    if (!a6)
    {
      goto LABEL_20;
    }

    v24 = kEscrowServiceErrorDomain;
    v41 = NSLocalizedDescriptionKey;
    v42 = @"Prerecord for wrong iCloud Environment";
    v25 = &v42;
    v26 = &v41;
LABEL_19:
    v28 = [NSDictionary dictionaryWithObjects:v25 forKeys:v26 count:1];
    *a6 = [NSError errorWithDomain:v24 code:104 userInfo:v28];

    goto LABEL_20;
  }

  v18 = [v8 escrowBaseURL];
  v19 = [v9 baseURL];
  v20 = [v18 isEqualToString:v19];

  if ((v20 & 1) == 0)
  {
    v27 = CloudServicesLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10004DFA4();
    }

    if (!a6)
    {
      goto LABEL_20;
    }

    v24 = kEscrowServiceErrorDomain;
    v39 = NSLocalizedDescriptionKey;
    v40 = @"Prerecord for wrong escrow URL";
    v25 = &v40;
    v26 = &v39;
    goto LABEL_19;
  }

  if ([v9 duplicate])
  {
    [v8 duplicateEscrowBlob];
  }

  else
  {
    [v8 escrowBlob];
  }
  v30 = ;
  v22 = v30 != 0;
  if (v30)
  {
    [v9 setBlob:v30];
  }

  else
  {
    v31 = CloudServicesLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10004DFE0(v9);
    }

    if (a6)
    {
      v32 = kEscrowServiceErrorDomain;
      v37 = NSLocalizedDescriptionKey;
      v33 = [v9 duplicate];
      v34 = &stru_1000767A0;
      if (v33)
      {
        v34 = @"(duplicate) ";
      }

      v35 = [NSString stringWithFormat:@"Prerecord has no %@escrow blob", v34];
      v38 = v35;
      v36 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *a6 = [NSError errorWithDomain:v32 code:105 userInfo:v36];
    }
  }

LABEL_21:
  return v22;
}

+ (id)doubleEnrollmentRecordFromPrimaryRecord:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [v3 objectForKeyedSubscript:@"DoubleEnrollmentVersion"];
  v6 = [v5 intValue];

  if (v6 == 1)
  {
    v33[0] = 0xAAAAAAAAAAAAAAAALL;
    v33[1] = 0xAAAAAAAAAAAAAAAALL;
    v25 = [v3 objectForKeyedSubscript:@"DoubleEnrollmentPassword"];
    v24 = [[NSUUID alloc] initWithUUIDString:v25];
    [v24 getUUIDBytes:v33];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      v11 = &MKBGetDeviceConfigurations_ptr;
      v27 = v7;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v14 = [v7 objectForKeyedSubscript:v13];
          v15 = v11[449];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v9;
            v17 = v4;
            v18 = v11;
            v19 = [v14 length];
            v20 = [[NSMutableData alloc] initWithCapacity:v19];
            if (v19 >= 0x10)
            {
              v21 = v19 >> 4;
              do
              {
                [v20 appendBytes:v33 length:16];
                --v21;
              }

              while (v21);
            }

            [v20 appendBytes:v33 length:v19 & 0xF];
            v4 = v17;
            [v17 setObject:v20 forKeyedSubscript:v13];

            v11 = v18;
            v9 = v16;
            v7 = v27;
          }

          else
          {
            [v4 setObject:v14 forKeyedSubscript:v13];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v9);
    }

    v3 = v26;
  }

  else
  {
    v22 = [v3 objectForKeyedSubscript:@"DoubleEnrollmentPassword"];
    [v4 setObject:v22 forKeyedSubscript:@"DoubleEnrollmentPassword"];
  }

  return v4;
}

+ (id)createEscrowBlobWithCertificate:(id)a3 escrowRequest:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  cf = 0;
  v9 = [v8 stingray];
  v10 = [v8 altDSID];
  v11 = [v8 iCloudEnv];
  LOWORD(v21) = [v8 duplicate];
  v12 = [CSCertOperations verifyCertData:v7 withCert:0 withPubKey:&cf stingray:v9 enroll:1 altDSID:v10 env:v11 duplicate:v21 sigVerification:a5 error:?];

  if (v12)
  {
    v13 = [[CSSESWrapper alloc] initWithRequest:v8 validate:0 reqVersion:0];
    v14 = [(__CFString *)v13 encodedEscrowRecordWithPublicKey:cf certificateData:v7 error:a5];
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    if (v14)
    {
      v14 = v14;
      v15 = v14;
    }

    else
    {
      if (a5 && !*a5)
      {
        *a5 = [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:124 format:@"Unknown error encoding record"];
      }

      v18 = CloudServicesLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (a5)
        {
          v19 = *a5;
        }

        else
        {
          v19 = @"no error pointer";
        }

        *buf = 138412290;
        v24 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to create escrow blob: %@", buf, 0xCu);
      }

      v15 = 0;
    }
  }

  else
  {
    v16 = [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:96 format:@"Unexpected error with certificate"];
    v13 = v16;
    if (a5)
    {
      v17 = v16;
      *a5 = v13;
    }

    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Error extracting public key from cert: %@", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

+ (BOOL)isFatalError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:kEscrowServiceErrorDomain];

  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = [v3 code];
  v7 = 1;
  if (v6 > -1003)
  {
    if (v6 == -1002)
    {
      goto LABEL_12;
    }

    if (v6 == 99)
    {
      v8 = [v3 userInfo];
      v9 = [v8 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (v9)
      {
        v7 = [v9 code] == 128;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_12;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  if (((v6 + 6015) > 3 || v6 == -6013) && v6 != -6162)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

- (void)setPasswordMetadataWithRequest:(id)a3 response:(id)a4 ses:(id)a5
{
  v17 = a4;
  v7 = a5;
  if ([a3 guitarfish])
  {
    v8 = [v7 appleIDPasswordMetadata];
    v9 = [v8 proto];
    v10 = [v8 salt];
    v11 = [v8 iterations];
    v12 = [v17 proto];

    if (v12)
    {
      v13 = [v17 proto];

      v9 = v13;
    }

    v14 = [v17 iterations];

    if (v14)
    {
      v15 = [v17 iterations];
      v11 = [v15 integerValue];
    }

    v16 = [[AppleIDPasswordMetadata alloc] initWithProto:v9 salt:v10 iterations:v11];
    [v7 setAppleIDPasswordMetadata:v16];
  }
}

- (void)recoverRecordWithRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[SBEscrowOperationStartEvent alloc] initWithRequest:v6 type:201];
  v9 = [(EscrowService *)self operationsLogger];
  [v9 updateStoreWithEvent:v8];

  v10 = objc_retainBlock(v7);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10003D6E4;
  v22[3] = &unk_100075400;
  v22[4] = self;
  v23 = v8;
  v24 = v10;
  v11 = v10;
  v12 = v8;
  v13 = objc_retainBlock(v22);

  v14 = CloudServicesLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "dispatching to recover queue", buf, 2u);
  }

  v15 = sub_10003D798();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003D7DC;
  block[3] = &unk_100075E98;
  block[4] = self;
  v19 = v6;
  v20 = v13;
  v16 = v13;
  v17 = v6;
  dispatch_async(v15, block);
}

- (void)_performPostEnrollSilentRecoveryWithRequest:(id)a3
{
  v4 = a3;
  v5 = [[SecureBackup alloc] initWithUserActivityLabel:@"silent recovery after enroll"];
  [v5 setIcdp:{objc_msgSend(v4, "icdp")}];
  [v5 setStingray:{objc_msgSend(v4, "stingray")}];
  v6 = [v4 appleID];
  [v5 setAppleID:v6];

  v7 = [v4 iCloudPassword];
  [v5 setICloudPassword:v7];

  v8 = [v4 passphrase];
  [v5 setPassphrase:v8];

  v9 = [v4 recordID];
  [v5 setRecordID:v9];

  [v5 setSilentDoubleRecovery:1];
  v10 = [v4 queue];
  [v5 setQueue:v10];

  v11 = [v4 dsid];
  [v5 setDsid:v11];

  v12 = [v4 authToken];
  [v5 setAuthToken:v12];

  v13 = [v4 escrowProxyURL];
  [v5 setEscrowProxyURL:v13];

  v14 = [v4 iCloudEnv];

  [v5 setICloudEnv:v14];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003DCAC;
  v16[3] = &unk_100074F40;
  v16[4] = self;
  v17 = v5;
  v15 = v5;
  _os_activity_initiate(&_mh_execute_header, "silent recovery", OS_ACTIVITY_FLAG_DEFAULT, v16);
}

- (void)_performDoubleRecoveryICDPWithRequest:(id)a3 primaryResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 objectForKeyedSubscript:kEscrowServiceRecordDataKey];
  v9 = [v8 objectForKeyedSubscript:@"DoubleEnrollmentPassword"];

  v10 = CloudServicesLog();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "attempting double enrollment recovery", buf, 2u);
    }

    [v6 setPassphrase:v9];
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "dispatching to recover queue (double recovery)", buf, 2u);
    }

    v13 = sub_10003D798();
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003DF40;
    block[3] = &unk_100074FD8;
    block[4] = self;
    v15 = v6;
    v16 = v7;
    dispatch_async(v13, block);
  }

  else
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "recovered record does not contain a double-enrollment password; skipping double enrollment recovery", buf, 2u);
    }
  }
}

- (void)_performDoubleRecoveryStingrayWithRequest:(id)a3 primaryResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CloudServicesLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "dispatching to recover queue (PCS double recovery)", buf, 2u);
  }

  v9 = sub_10003D798();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003E6DC;
  block[3] = &unk_100074FD8;
  block[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

- (void)ttrForPCSDataMatchFailure:(id)a3
{
  v3 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "PCS double TTR: skipping prompt/TTR due to DataMatchTTR feature flag";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    }

LABEL_16:

    goto LABEL_17;
  }

  if (_os_feature_enabled_impl())
  {
    v4 = CloudServicesLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PCS double TTR: forcing prompt/TTR due to feature flag", buf, 2u);
    }

LABEL_9:
    if (sub_1000029CC())
    {
      v7 = +[NSDate now];
      if (qword_100084B08 != -1)
      {
        sub_10004E51C();
      }

      v8 = qword_100084B10;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10003EF48;
      v9[3] = &unk_100074F40;
      v10 = v7;
      v11 = v3;
      v5 = v7;
      dispatch_async(v8, v9);

      goto LABEL_16;
    }

    v5 = CloudServicesLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = "PCS double TTR: not showing prompt; not on internal release";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v3)
  {
    goto LABEL_9;
  }

LABEL_17:
}

- (void)deleteRecordWithRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[SBEscrowOperationStartEvent alloc] initWithRequest:v6 type:203];
  v9 = [(EscrowService *)self operationsLogger];
  [v9 updateStoreWithEvent:v8];

  v10 = objc_retainBlock(v7);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_10003F7CC;
  v44[3] = &unk_100075400;
  v44[4] = self;
  v45 = v8;
  v46 = v10;
  v11 = v10;
  v12 = v8;
  v13 = objc_retainBlock(v44);

  v14 = dispatch_group_create();
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = sub_100038FDC;
  v42[4] = sub_100038FEC;
  v43 = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x3032000000;
  v40[3] = sub_100038FDC;
  v40[4] = sub_100038FEC;
  v41 = 0;
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_100038FDC;
  v38[4] = sub_100038FEC;
  v39 = 0;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = sub_100038FDC;
  v36[4] = sub_100038FEC;
  v37 = 0;
  if ([v6 deleteDoubleOnly] && (objc_msgSend(v6, "requiresDoubleEnrollment") & 1) == 0)
  {
    v16 = [CloudServicesError errorWithCode:22 error:0 format:@"DeleteDoubleOnly for invalid request type"];
    (v13[2])(v13, 0, v16);
  }

  else
  {
    if (([v6 deleteDoubleOnly] & 1) == 0)
    {
      activity_block[0] = _NSConcreteStackBlock;
      activity_block[1] = 3221225472;
      activity_block[2] = sub_10003F880;
      activity_block[3] = &unk_100075D08;
      v31 = v14;
      v32 = self;
      v33 = v6;
      v34 = v42;
      v35 = v40;
      _os_activity_initiate(&_mh_execute_header, "deleteRecordWithRequest", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
    }

    if ([v6 requiresDoubleEnrollment])
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10003F9CC;
      v24[3] = &unk_100075D08;
      v25 = v14;
      v26 = self;
      v27 = v6;
      v28 = v38;
      v29 = v36;
      _os_activity_initiate(&_mh_execute_header, "deleteRecordWithRequest (double enrollment)", OS_ACTIVITY_FLAG_DEFAULT, v24);
    }

    v15 = [v6 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003FB88;
    block[3] = &unk_100075FA8;
    v18 = v6;
    v19 = v13;
    v20 = v42;
    v21 = v40;
    v22 = v38;
    v23 = v36;
    dispatch_group_notify(v14, v15, block);

    v16 = v18;
  }

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);
}

- (void)updateRecordMetadataWithRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[SBEscrowOperationStartEvent alloc] initWithRequest:v7 type:202];
  v9 = [(EscrowService *)self operationsLogger];
  [v9 updateStoreWithEvent:v8];

  v10 = objc_retainBlock(v6);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100040160;
  v20[3] = &unk_100075400;
  v20[4] = self;
  v21 = v8;
  v22 = v10;
  v11 = v10;
  v12 = v8;
  v13 = objc_retainBlock(v20);

  v14 = [(EscrowGenericRequest *)[EscrowUpdateMetadataRequest alloc] initWithRequest:v7];
  v15 = CloudServicesLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(EscrowGenericRequest *)v14 recordID];
    *buf = 138412290;
    v24 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Attempting to update metadata for a escrow record: %@", buf, 0xCu);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100040214;
  v18[3] = &unk_100075FF8;
  v19 = v13;
  v17 = v13;
  [(EscrowUpdateMetadataRequest *)v14 performRequestWithHandler:v18];
}

- (void)startSMSChallengeWithRequest:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(EscrowGenericRequest *)[EscrowSMSChallengeRequest alloc] initWithRequest:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100040460;
  v9[3] = &unk_100076020;
  v10 = v5;
  v8 = v5;
  [(LakituRequest *)v7 performRequestWithHandler:v9];
}

- (void)changeSMSTargetWithRequest:(id)a3 completionBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(EscrowGenericRequest *)[EscrowChangeSMSTargetRequest alloc] initWithRequest:v7];

  v9 = [(EscrowService *)self _getBypassToken];
  [(EscrowGenericRequest *)v8 setBypassToken:v9];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100040738;
  v11[3] = &unk_100076048;
  v12 = v6;
  v10 = v6;
  [(LakituRequest *)v8 performRequestWithHandler:v11];
}

- (void)listSMSTargetsWithRequest:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(EscrowGenericRequest *)[EscrowListSMSTargetsRequest alloc] initWithRequest:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000409A0;
  v9[3] = &unk_100076070;
  v10 = v5;
  v8 = v5;
  [(LakituRequest *)v7 performRequestWithHandler:v9];
}

- (void)getCountrySMSCodesWithRequest:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(EscrowGenericRequest *)[EscrowGetCountrySMSCodesRequest alloc] initWithRequest:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100040B7C;
  v9[3] = &unk_100076098;
  v10 = v5;
  v8 = v5;
  [(LakituRequest *)v7 performRequestWithHandler:v9];
}

- (void)verifyCertificateWithRequest:(id)a3 completionBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 iCloudEnv];
  if (v7 || (sub_10000F20C(), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [v5 certData];
    if (![v9 length])
    {
      v11 = [CloudServicesError errorWithCode:22 error:0 format:@"Missing certificate data"];
      v12 = CloudServicesLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Missing certificate data", buf, 2u);
      }

      v6[2](v6, 0, v11);
      goto LABEL_22;
    }

    v23 = 0;
    cf = 0;
    LOWORD(v22) = 0;
    v10 = [CSCertOperations verifyCertData:v9 withCert:&cf withPubKey:0 stingray:0 enroll:0 altDSID:0 env:v8 duplicate:v22 sigVerification:&v23 error:?];
    v11 = v23;
    if (v10)
    {
      (v6)[2](v6, &__NSDictionary0__struct, 0);
      if (cf)
      {
        CFRelease(cf);
      }

LABEL_22:

      goto LABEL_23;
    }

    v13 = [CSCertOperations certVersion:cf];
    v14 = [CSCertOperations rootCurrentVersionForRootType:5 altDSID:0 inEnvironment:v8];
    v15 = CloudServicesLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v14;
      v27 = 2112;
      v28 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Current Trust Version: %@; Current Cert Version: %@", buf, 0x16u);
    }

    v16 = [v13 unsignedLongLongValue];
    if (v16 <= [v14 unsignedLongLongValue])
    {
      v17 = [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:127 format:@"Cert does not match our trust policy"];
      v18 = CloudServicesLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v11;
        v19 = "Cert does not match our trust policy: %@";
        v20 = v18;
        v21 = 12;
        goto LABEL_18;
      }
    }

    else
    {
      v17 = [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:100 format:@"Cert is newer than trust policy"];
      v18 = CloudServicesLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v19 = "Cert is newer than trust policy";
        v20 = v18;
        v21 = 2;
LABEL_18:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }

    v6[2](v6, 0, v17);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_22;
  }

  v8 = [CloudServicesError errorWithCode:22 error:0 format:@"Can't get iCloud environment"];
  v6[2](v6, 0, v8);
LABEL_23:
}

- (void)logRecoveryResults:(id)a3 completionBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(EscrowGenericRequest *)[EscrowLogRecoveryRequest alloc] initWithRequest:v6];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100041118;
  v9[3] = &unk_1000760C0;
  v10 = v5;
  v8 = v5;
  [(LakituRequest *)v7 performRequestWithHandler:v9];
}

@end
@interface EscrowService
+ (BOOL)isFatalError:(id)error;
+ (id)createEscrowBlobWithCertificate:(id)certificate escrowRequest:(id)request error:(id *)error;
+ (id)doubleEnrollmentRecordFromPrimaryRecord:(id)record;
- (BOOL)_invalidateEscrowCache:(id)cache error:(id *)error;
- (BOOL)cacheStoredCertificate:(id)certificate error:(id *)error;
- (BOOL)processPrerecord:(id)prerecord outerRequest:(id)request escrowRequest:(id)escrowRequest error:(id *)error;
- (EscrowService)initWithOperationsLogger:(id)logger;
- (id)_getBypassToken;
- (id)fetchCachedCertificateWithRequest:(id)request error:(id *)error;
- (id)keychainBaseQueryWithEnvironment:(id)environment andBaseURL:(id)l;
- (void)_performDoubleRecoveryICDPWithRequest:(id)request primaryResponse:(id)response;
- (void)_performDoubleRecoveryStingrayWithRequest:(id)request primaryResponse:(id)response;
- (void)_performPostEnrollSilentRecoveryWithRequest:(id)request;
- (void)_removeBypassToken;
- (void)_saveBypassToken:(id)token;
- (void)changeSMSTargetWithRequest:(id)request completionBlock:(id)block;
- (void)deleteRecordWithRequest:(id)request completionBlock:(id)block;
- (void)fetchCertificatesAndDuplicateRequest:(id)request completionBlock:(id)block;
- (void)fetchCertificatesWithRequest:(id)request completionBlock:(id)block;
- (void)getAccountInfoWithRequest:(id)request completionBlock:(id)block;
- (void)getCountrySMSCodesWithRequest:(id)request completionBlock:(id)block;
- (void)listSMSTargetsWithRequest:(id)request completionBlock:(id)block;
- (void)logRecoveryResults:(id)results completionBlock:(id)block;
- (void)recoverRecordWithRequest:(id)request completionBlock:(id)block;
- (void)setPasswordMetadataWithRequest:(id)request response:(id)response ses:(id)ses;
- (void)startSMSChallengeWithRequest:(id)request completionBlock:(id)block;
- (void)storeRecordWithRequest:(id)request completionBlock:(id)block;
- (void)ttrForPCSDataMatchFailure:(id)failure;
- (void)updateRecordMetadataWithRequest:(id)request completionBlock:(id)block;
- (void)verifyCertificateWithRequest:(id)request completionBlock:(id)block;
@end

@implementation EscrowService

- (void)_saveBypassToken:(id)token
{
  tokenCopy = token;
  v4 = objc_alloc_init(NSMutableDictionary);
  [v4 setObject:@"EscrowServiceBypassToken" forKeyedSubscript:kSecAttrAccount];
  [v4 setObject:@"EscrowService" forKeyedSubscript:kSecAttrService];
  [v4 setObject:kSecClassGenericPassword forKeyedSubscript:kSecClass];
  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:kSecAttrSynchronizable];
  v5 = [tokenCopy dataUsingEncoding:1];

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

- (EscrowService)initWithOperationsLogger:(id)logger
{
  loggerCopy = logger;
  v10.receiver = self;
  v10.super_class = EscrowService;
  v6 = [(EscrowService *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_operationsLogger, logger);
    v8 = v7;
  }

  return v7;
}

- (void)getAccountInfoWithRequest:(id)request completionBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v7 = CloudServicesLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "in getAccountInfoWithRequest:", buf, 2u);
  }

  v8 = [(EscrowGenericRequest *)[EscrowAccountInfoRequest alloc] initWithRequest:requestCopy];
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
  v12 = blockCopy;
  v10 = blockCopy;
  [(EscrowAccountInfoRequest *)v8 performRequestWithHandler:v11];
}

- (void)fetchCertificatesWithRequest:(id)request completionBlock:(id)block
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100038C08;
  v7[3] = &unk_100075CB8;
  blockCopy = block;
  v6 = blockCopy;
  [(EscrowService *)self fetchCertificatesAndDuplicateRequest:request completionBlock:v7];
}

- (void)fetchCertificatesAndDuplicateRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
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
  selfCopy = self;
  v9 = requestCopy;
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
    selfCopy2 = self;
    v23 = v9;
    v24 = v34;
    v25 = v32;
    _os_activity_initiate(&_mh_execute_header, "fetchCertificates (duplicate)", OS_ACTIVITY_FLAG_DEFAULT, v20);
  }

  queue = [v9 queue];

  if (!queue)
  {
    _os_assert_log();
    v13 = _os_crash();
    sub_10004DAF8(v13);
  }

  queue2 = [v9 queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000392BC;
  block[3] = &unk_100075D30;
  v17 = v36;
  v18 = v34;
  v19 = v32;
  v15 = blockCopy;
  v16 = v38;
  v12 = blockCopy;
  dispatch_group_notify(v8, queue2, block);

  _Block_object_dispose(v32, 8);
  _Block_object_dispose(v34, 8);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);
}

- (id)keychainBaseQueryWithEnvironment:(id)environment andBaseURL:(id)l
{
  v9[0] = kSecClass;
  v9[1] = kSecAttrAccount;
  v10[0] = kSecClassInternetPassword;
  v10[1] = @"EscrowServiceCertificateStore";
  v9[2] = kSecAttrPath;
  v9[3] = kSecAttrServer;
  v10[2] = environment;
  v10[3] = l;
  v9[4] = kSecAttrAccessible;
  v9[5] = kSecUseDataProtectionKeychain;
  v10[4] = kSecAttrAccessibleAfterFirstUnlock;
  v10[5] = &__kCFBooleanTrue;
  v9[6] = kSecAttrSynchronizable;
  v10[6] = &__kCFBooleanFalse;
  lCopy = l;
  environmentCopy = environment;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:7];

  return v7;
}

- (BOOL)cacheStoredCertificate:(id)certificate error:(id *)error
{
  certificateCopy = certificate;
  iCloudEnvironment = [certificateCopy iCloudEnvironment];
  escrowBaseURL = [certificateCopy escrowBaseURL];
  v9 = [(EscrowService *)self keychainBaseQueryWithEnvironment:iCloudEnvironment andBaseURL:escrowBaseURL];

  if (SecItemDelete(v9))
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10004DAFC();
    }
  }

  v11 = [(__CFDictionary *)v9 mutableCopy];
  data = [certificateCopy data];
  [v11 setObject:data forKeyedSubscript:kSecValueData];

  v13 = SecItemAdd(v11, 0);
  if (v13)
  {
    v14 = CloudServicesLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10004DB70();
    }

    if (error)
    {
      *error = [NSError errorWithDomain:NSOSStatusErrorDomain code:v13 userInfo:0];
    }
  }

  return v13 == 0;
}

- (id)fetchCachedCertificateWithRequest:(id)request error:(id *)error
{
  v48 = 0;
  v6 = [EscrowService certificateRequest:request duplicate:0 error:&v48];
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
    iCloudEnv = [v6 iCloudEnv];
    baseURL = [v6 baseURL];
    v15 = [(EscrowService *)self keychainBaseQueryWithEnvironment:iCloudEnv andBaseURL:baseURL];
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

      if (!error)
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
      *error = v12 = 0;
LABEL_42:

      goto LABEL_43;
    }

    v21 = *buf;
    v22 = [StoredCertificate alloc];
    v23 = [v21 objectForKeyedSubscript:kSecValueData];
    v24 = [(StoredCertificate *)v22 initWithData:v23];

    if (v24)
    {
      dsid = [(StoredCertificate *)v24 dsid];
      dsid2 = [v6 dsid];
      v27 = [dsid isEqualToString:dsid2];

      if (v27)
      {
        iCloudEnvironment = [(StoredCertificate *)v24 iCloudEnvironment];
        iCloudEnv2 = [v6 iCloudEnv];
        v30 = [iCloudEnvironment isEqualToString:iCloudEnv2];

        if (v30)
        {
          escrowBaseURL = [(StoredCertificate *)v24 escrowBaseURL];
          baseURL2 = [v6 baseURL];
          v33 = [escrowBaseURL isEqualToString:baseURL2];

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

          if (!error)
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

          if (!error)
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

        if (!error)
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

      if (!error)
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

    *error = [NSError errorWithDomain:v39 code:v40 userInfo:v38];

    goto LABEL_40;
  }

  v10 = CloudServicesLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Bailing on fetch certificates from keychain due to no cert request: %@", buf, 0xCu);
  }

  if (error)
  {
    v11 = v8;
    v12 = 0;
    *error = v8;
  }

  else
  {
    v12 = 0;
  }

LABEL_44:

  return v12;
}

- (void)storeRecordWithRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  v8 = [[SBEscrowOperationStartEvent alloc] initWithRequest:requestCopy type:200];
  operationsLogger = [(EscrowService *)self operationsLogger];
  [operationsLogger updateStoreWithEvent:v8];

  v10 = objc_retainBlock(blockCopy);
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
  selfCopy = self;
  v15 = requestCopy;
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
    selfCopy2 = self;
    v30 = v15;
    v31 = v41;
    v32 = v39;
    _os_activity_initiate(&_mh_execute_header, "storeRecordWithRequest (double enrollment)", OS_ACTIVITY_FLAG_DEFAULT, v27);
  }

  queue = [v15 queue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003A4C4;
  v19[3] = &unk_100075D80;
  v20 = v15;
  selfCopy3 = self;
  v22 = v13;
  v23 = v41;
  v24 = v39;
  v25 = v45;
  v26 = v43;
  v17 = v13;
  v18 = v15;
  dispatch_group_notify(v14, queue, v19);

  _Block_object_dispose(v39, 8);
  _Block_object_dispose(v41, 8);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);
}

- (BOOL)_invalidateEscrowCache:(id)cache error:(id *)error
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

    if (error)
    {
      v12 = v8;
      *error = v8;
    }
  }

  return v7;
}

- (BOOL)processPrerecord:(id)prerecord outerRequest:(id)request escrowRequest:(id)escrowRequest error:(id *)error
{
  prerecordCopy = prerecord;
  escrowRequestCopy = escrowRequest;
  dsid = [prerecordCopy dsid];
  if (!dsid)
  {
    goto LABEL_7;
  }

  v11 = dsid;
  dsid2 = [prerecordCopy dsid];
  dsid3 = [escrowRequestCopy dsid];
  v14 = [dsid2 isEqualToString:dsid3];

  if ((v14 & 1) == 0)
  {
LABEL_7:
    v21 = CloudServicesLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10004E07C();
    }

    if (error)
    {
      [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:104 format:@"DSID missing or mismatched"];
      *error = v22 = 0;
      goto LABEL_21;
    }

LABEL_20:
    v22 = 0;
    goto LABEL_21;
  }

  iCloudEnvironment = [prerecordCopy iCloudEnvironment];
  iCloudEnv = [escrowRequestCopy iCloudEnv];
  v17 = [iCloudEnvironment isEqualToString:iCloudEnv];

  if ((v17 & 1) == 0)
  {
    v23 = CloudServicesLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10004DF68();
    }

    if (!error)
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
    *error = [NSError errorWithDomain:v24 code:104 userInfo:v28];

    goto LABEL_20;
  }

  escrowBaseURL = [prerecordCopy escrowBaseURL];
  baseURL = [escrowRequestCopy baseURL];
  v20 = [escrowBaseURL isEqualToString:baseURL];

  if ((v20 & 1) == 0)
  {
    v27 = CloudServicesLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10004DFA4();
    }

    if (!error)
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

  if ([escrowRequestCopy duplicate])
  {
    [prerecordCopy duplicateEscrowBlob];
  }

  else
  {
    [prerecordCopy escrowBlob];
  }
  v30 = ;
  v22 = v30 != 0;
  if (v30)
  {
    [escrowRequestCopy setBlob:v30];
  }

  else
  {
    v31 = CloudServicesLog();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_10004DFE0(escrowRequestCopy);
    }

    if (error)
    {
      v32 = kEscrowServiceErrorDomain;
      v37 = NSLocalizedDescriptionKey;
      duplicate = [escrowRequestCopy duplicate];
      v34 = &stru_1000767A0;
      if (duplicate)
      {
        v34 = @"(duplicate) ";
      }

      v35 = [NSString stringWithFormat:@"Prerecord has no %@escrow blob", v34];
      v38 = v35;
      v36 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *error = [NSError errorWithDomain:v32 code:105 userInfo:v36];
    }
  }

LABEL_21:
  return v22;
}

+ (id)doubleEnrollmentRecordFromPrimaryRecord:(id)record
{
  recordCopy = record;
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = [recordCopy objectForKeyedSubscript:@"DoubleEnrollmentVersion"];
  intValue = [v5 intValue];

  if (intValue == 1)
  {
    v33[0] = 0xAAAAAAAAAAAAAAAALL;
    v33[1] = 0xAAAAAAAAAAAAAAAALL;
    v25 = [recordCopy objectForKeyedSubscript:@"DoubleEnrollmentPassword"];
    v24 = [[NSUUID alloc] initWithUUIDString:v25];
    [v24 getUUIDBytes:v33];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = recordCopy;
    v7 = recordCopy;
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

    recordCopy = v26;
  }

  else
  {
    v22 = [recordCopy objectForKeyedSubscript:@"DoubleEnrollmentPassword"];
    [v4 setObject:v22 forKeyedSubscript:@"DoubleEnrollmentPassword"];
  }

  return v4;
}

+ (id)createEscrowBlobWithCertificate:(id)certificate escrowRequest:(id)request error:(id *)error
{
  certificateCopy = certificate;
  requestCopy = request;
  cf = 0;
  stingray = [requestCopy stingray];
  altDSID = [requestCopy altDSID];
  iCloudEnv = [requestCopy iCloudEnv];
  LOWORD(v21) = [requestCopy duplicate];
  v12 = [CSCertOperations verifyCertData:certificateCopy withCert:0 withPubKey:&cf stingray:stingray enroll:1 altDSID:altDSID env:iCloudEnv duplicate:v21 sigVerification:error error:?];

  if (v12)
  {
    v13 = [[CSSESWrapper alloc] initWithRequest:requestCopy validate:0 reqVersion:0];
    v14 = [(__CFString *)v13 encodedEscrowRecordWithPublicKey:cf certificateData:certificateCopy error:error];
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
      if (error && !*error)
      {
        *error = [CloudServicesError errorWithDomain:kEscrowServiceErrorDomain code:124 format:@"Unknown error encoding record"];
      }

      v18 = CloudServicesLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        if (error)
        {
          v19 = *error;
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
    if (error)
    {
      v17 = v16;
      *error = v13;
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

+ (BOOL)isFatalError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:kEscrowServiceErrorDomain];

  if (!v5)
  {
    goto LABEL_11;
  }

  code = [errorCopy code];
  v7 = 1;
  if (code > -1003)
  {
    if (code == -1002)
    {
      goto LABEL_12;
    }

    if (code == 99)
    {
      userInfo = [errorCopy userInfo];
      v9 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];

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

  if (((code + 6015) > 3 || code == -6013) && code != -6162)
  {
    goto LABEL_11;
  }

LABEL_12:

  return v7;
}

- (void)setPasswordMetadataWithRequest:(id)request response:(id)response ses:(id)ses
{
  responseCopy = response;
  sesCopy = ses;
  if ([request guitarfish])
  {
    appleIDPasswordMetadata = [sesCopy appleIDPasswordMetadata];
    proto = [appleIDPasswordMetadata proto];
    salt = [appleIDPasswordMetadata salt];
    iterations = [appleIDPasswordMetadata iterations];
    proto2 = [responseCopy proto];

    if (proto2)
    {
      proto3 = [responseCopy proto];

      proto = proto3;
    }

    iterations2 = [responseCopy iterations];

    if (iterations2)
    {
      iterations3 = [responseCopy iterations];
      iterations = [iterations3 integerValue];
    }

    v16 = [[AppleIDPasswordMetadata alloc] initWithProto:proto salt:salt iterations:iterations];
    [sesCopy setAppleIDPasswordMetadata:v16];
  }
}

- (void)recoverRecordWithRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  v8 = [[SBEscrowOperationStartEvent alloc] initWithRequest:requestCopy type:201];
  operationsLogger = [(EscrowService *)self operationsLogger];
  [operationsLogger updateStoreWithEvent:v8];

  v10 = objc_retainBlock(blockCopy);
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
  v19 = requestCopy;
  v20 = v13;
  v16 = v13;
  v17 = requestCopy;
  dispatch_async(v15, block);
}

- (void)_performPostEnrollSilentRecoveryWithRequest:(id)request
{
  requestCopy = request;
  v5 = [[SecureBackup alloc] initWithUserActivityLabel:@"silent recovery after enroll"];
  [v5 setIcdp:{objc_msgSend(requestCopy, "icdp")}];
  [v5 setStingray:{objc_msgSend(requestCopy, "stingray")}];
  appleID = [requestCopy appleID];
  [v5 setAppleID:appleID];

  iCloudPassword = [requestCopy iCloudPassword];
  [v5 setICloudPassword:iCloudPassword];

  passphrase = [requestCopy passphrase];
  [v5 setPassphrase:passphrase];

  recordID = [requestCopy recordID];
  [v5 setRecordID:recordID];

  [v5 setSilentDoubleRecovery:1];
  queue = [requestCopy queue];
  [v5 setQueue:queue];

  dsid = [requestCopy dsid];
  [v5 setDsid:dsid];

  authToken = [requestCopy authToken];
  [v5 setAuthToken:authToken];

  escrowProxyURL = [requestCopy escrowProxyURL];
  [v5 setEscrowProxyURL:escrowProxyURL];

  iCloudEnv = [requestCopy iCloudEnv];

  [v5 setICloudEnv:iCloudEnv];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10003DCAC;
  v16[3] = &unk_100074F40;
  v16[4] = self;
  v17 = v5;
  v15 = v5;
  _os_activity_initiate(&_mh_execute_header, "silent recovery", OS_ACTIVITY_FLAG_DEFAULT, v16);
}

- (void)_performDoubleRecoveryICDPWithRequest:(id)request primaryResponse:(id)response
{
  requestCopy = request;
  responseCopy = response;
  v8 = [responseCopy objectForKeyedSubscript:kEscrowServiceRecordDataKey];
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

    [requestCopy setPassphrase:v9];
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
    v15 = requestCopy;
    v16 = responseCopy;
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

- (void)_performDoubleRecoveryStingrayWithRequest:(id)request primaryResponse:(id)response
{
  requestCopy = request;
  responseCopy = response;
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
  v13 = requestCopy;
  v14 = responseCopy;
  v10 = responseCopy;
  v11 = requestCopy;
  dispatch_async(v9, block);
}

- (void)ttrForPCSDataMatchFailure:(id)failure
{
  failureCopy = failure;
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
      v11 = failureCopy;
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

  if (failureCopy)
  {
    goto LABEL_9;
  }

LABEL_17:
}

- (void)deleteRecordWithRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  v8 = [[SBEscrowOperationStartEvent alloc] initWithRequest:requestCopy type:203];
  operationsLogger = [(EscrowService *)self operationsLogger];
  [operationsLogger updateStoreWithEvent:v8];

  v10 = objc_retainBlock(blockCopy);
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
  if ([requestCopy deleteDoubleOnly] && (objc_msgSend(requestCopy, "requiresDoubleEnrollment") & 1) == 0)
  {
    v16 = [CloudServicesError errorWithCode:22 error:0 format:@"DeleteDoubleOnly for invalid request type"];
    (v13[2])(v13, 0, v16);
  }

  else
  {
    if (([requestCopy deleteDoubleOnly] & 1) == 0)
    {
      activity_block[0] = _NSConcreteStackBlock;
      activity_block[1] = 3221225472;
      activity_block[2] = sub_10003F880;
      activity_block[3] = &unk_100075D08;
      v31 = v14;
      selfCopy = self;
      v33 = requestCopy;
      v34 = v42;
      v35 = v40;
      _os_activity_initiate(&_mh_execute_header, "deleteRecordWithRequest", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
    }

    if ([requestCopy requiresDoubleEnrollment])
    {
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_10003F9CC;
      v24[3] = &unk_100075D08;
      v25 = v14;
      selfCopy2 = self;
      v27 = requestCopy;
      v28 = v38;
      v29 = v36;
      _os_activity_initiate(&_mh_execute_header, "deleteRecordWithRequest (double enrollment)", OS_ACTIVITY_FLAG_DEFAULT, v24);
    }

    queue = [requestCopy queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10003FB88;
    block[3] = &unk_100075FA8;
    v18 = requestCopy;
    v19 = v13;
    v20 = v42;
    v21 = v40;
    v22 = v38;
    v23 = v36;
    dispatch_group_notify(v14, queue, block);

    v16 = v18;
  }

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(v38, 8);

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v42, 8);
}

- (void)updateRecordMetadataWithRequest:(id)request completionBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v8 = [[SBEscrowOperationStartEvent alloc] initWithRequest:requestCopy type:202];
  operationsLogger = [(EscrowService *)self operationsLogger];
  [operationsLogger updateStoreWithEvent:v8];

  v10 = objc_retainBlock(blockCopy);
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

  v14 = [(EscrowGenericRequest *)[EscrowUpdateMetadataRequest alloc] initWithRequest:requestCopy];
  v15 = CloudServicesLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    recordID = [(EscrowGenericRequest *)v14 recordID];
    *buf = 138412290;
    v24 = recordID;
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

- (void)startSMSChallengeWithRequest:(id)request completionBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v7 = [(EscrowGenericRequest *)[EscrowSMSChallengeRequest alloc] initWithRequest:requestCopy];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100040460;
  v9[3] = &unk_100076020;
  v10 = blockCopy;
  v8 = blockCopy;
  [(LakituRequest *)v7 performRequestWithHandler:v9];
}

- (void)changeSMSTargetWithRequest:(id)request completionBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v8 = [(EscrowGenericRequest *)[EscrowChangeSMSTargetRequest alloc] initWithRequest:requestCopy];

  _getBypassToken = [(EscrowService *)self _getBypassToken];
  [(EscrowGenericRequest *)v8 setBypassToken:_getBypassToken];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100040738;
  v11[3] = &unk_100076048;
  v12 = blockCopy;
  v10 = blockCopy;
  [(LakituRequest *)v8 performRequestWithHandler:v11];
}

- (void)listSMSTargetsWithRequest:(id)request completionBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v7 = [(EscrowGenericRequest *)[EscrowListSMSTargetsRequest alloc] initWithRequest:requestCopy];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000409A0;
  v9[3] = &unk_100076070;
  v10 = blockCopy;
  v8 = blockCopy;
  [(LakituRequest *)v7 performRequestWithHandler:v9];
}

- (void)getCountrySMSCodesWithRequest:(id)request completionBlock:(id)block
{
  blockCopy = block;
  requestCopy = request;
  v7 = [(EscrowGenericRequest *)[EscrowGetCountrySMSCodesRequest alloc] initWithRequest:requestCopy];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100040B7C;
  v9[3] = &unk_100076098;
  v10 = blockCopy;
  v8 = blockCopy;
  [(LakituRequest *)v7 performRequestWithHandler:v9];
}

- (void)verifyCertificateWithRequest:(id)request completionBlock:(id)block
{
  requestCopy = request;
  blockCopy = block;
  iCloudEnv = [requestCopy iCloudEnv];
  if (iCloudEnv || (sub_10000F20C(), (iCloudEnv = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = iCloudEnv;
    certData = [requestCopy certData];
    if (![certData length])
    {
      v11 = [CloudServicesError errorWithCode:22 error:0 format:@"Missing certificate data"];
      v12 = CloudServicesLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Missing certificate data", buf, 2u);
      }

      blockCopy[2](blockCopy, 0, v11);
      goto LABEL_22;
    }

    v23 = 0;
    cf = 0;
    LOWORD(v22) = 0;
    v10 = [CSCertOperations verifyCertData:certData withCert:&cf withPubKey:0 stingray:0 enroll:0 altDSID:0 env:v8 duplicate:v22 sigVerification:&v23 error:?];
    v11 = v23;
    if (v10)
    {
      (blockCopy)[2](blockCopy, &__NSDictionary0__struct, 0);
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

    unsignedLongLongValue = [v13 unsignedLongLongValue];
    if (unsignedLongLongValue <= [v14 unsignedLongLongValue])
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

    blockCopy[2](blockCopy, 0, v17);
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    goto LABEL_22;
  }

  v8 = [CloudServicesError errorWithCode:22 error:0 format:@"Can't get iCloud environment"];
  blockCopy[2](blockCopy, 0, v8);
LABEL_23:
}

- (void)logRecoveryResults:(id)results completionBlock:(id)block
{
  blockCopy = block;
  resultsCopy = results;
  v7 = [(EscrowGenericRequest *)[EscrowLogRecoveryRequest alloc] initWithRequest:resultsCopy];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100041118;
  v9[3] = &unk_1000760C0;
  v10 = blockCopy;
  v8 = blockCopy;
  [(LakituRequest *)v7 performRequestWithHandler:v9];
}

@end
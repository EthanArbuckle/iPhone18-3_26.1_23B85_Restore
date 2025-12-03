@interface EscrowGenericRequest
+ (BOOL)pcsNoRecord;
+ (BOOL)pcsUpdateDisabled;
- (BOOL)isPcsRecord;
- (EscrowGenericRequest)initWithRequest:(id)request;
- (NSString)altDSID;
- (NSString)authToken;
- (NSString)baseURL;
- (NSString)dsid;
- (NSString)iCloudEnv;
- (NSString)recordLabel;
- (NSString)recoveryPassphrase;
- (id)_filteredMetadataForDoubleEnrollment:(id)enrollment;
- (id)additionalHeaders;
- (id)authorizationHeader;
- (id)authorizationHeaderWithUser:(id)user password:(id)password authType:(id)type;
- (id)bodyDictionary;
- (id)currentAccount;
- (id)loggingDescription;
- (id)urlRequest;
- (id)urlString;
- (id)validateInput;
- (void)_checkFetchOperationWithHandler:(id)handler;
- (void)_checkReadOperationWithHandler:(id)handler;
- (void)_checkUpdateOperationWithHandler:(id)handler;
@end

@implementation EscrowGenericRequest

- (EscrowGenericRequest)initWithRequest:(id)request
{
  requestCopy = request;
  v63.receiver = self;
  v63.super_class = EscrowGenericRequest;
  v5 = [(EscrowGenericRequest *)&v63 init];
  if (v5)
  {
    dsid = [requestCopy dsid];
    dsid = v5->_dsid;
    v5->_dsid = dsid;

    dsid2 = [requestCopy dsid];
    requestDSID = v5->_requestDSID;
    v5->_requestDSID = dsid2;

    escrowProxyURL = [requestCopy escrowProxyURL];
    baseURL = v5->_baseURL;
    v5->_baseURL = escrowProxyURL;

    appleID = [requestCopy appleID];
    appleID = v5->_appleID;
    v5->_appleID = appleID;

    metadata = [requestCopy metadata];
    metadata = v5->_metadata;
    v5->_metadata = metadata;

    authToken = [requestCopy authToken];
    authToken = v5->_authToken;
    v5->_authToken = authToken;

    recordID = [requestCopy recordID];
    recordID = v5->_recordID;
    v5->_recordID = recordID;

    iCloudEnv = [requestCopy iCloudEnv];
    iCloudEnv = v5->_iCloudEnv;
    v5->_iCloudEnv = iCloudEnv;

    smsTarget = [requestCopy smsTarget];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = smsTarget;

    countryCode = [requestCopy countryCode];
    countryCode = v5->_countryCode;
    v5->_countryCode = countryCode;

    escrowRecord = [requestCopy escrowRecord];
    escrowRecord = v5->_escrowRecord;
    v5->_escrowRecord = escrowRecord;

    encodedMetadata = [requestCopy encodedMetadata];
    encodedMetadata = v5->_encodedMetadata;
    v5->_encodedMetadata = encodedMetadata;

    duplicateEncodedMetadata = [requestCopy duplicateEncodedMetadata];
    duplicateEncodedMetadata = v5->_duplicateEncodedMetadata;
    v5->_duplicateEncodedMetadata = duplicateEncodedMetadata;

    verificationToken = [requestCopy verificationToken];
    challengeCode = v5->_challengeCode;
    v5->_challengeCode = verificationToken;

    iCloudPassword = [requestCopy iCloudPassword];
    iCloudPassword = v5->_iCloudPassword;
    v5->_iCloudPassword = iCloudPassword;

    rawPassword = [requestCopy rawPassword];
    rawPassword = v5->_rawPassword;
    v5->_rawPassword = rawPassword;

    countryDialCode = [requestCopy countryDialCode];
    countryDialCode = v5->_countryDialCode;
    v5->_countryDialCode = countryDialCode;

    passcodeStashSecret = [requestCopy passcodeStashSecret];
    passcodeStashSecret = v5->_passcodeStashSecret;
    v5->_passcodeStashSecret = passcodeStashSecret;

    passphrase = [requestCopy passphrase];
    recoveryPassphrase = v5->_recoveryPassphrase;
    v5->_recoveryPassphrase = passphrase;

    v5->_silentAttempt = [requestCopy silent];
    v5->_useRecoveryPET = [requestCopy useRecoveryPET];
    v5->_fmipRecovery = [requestCopy fmipRecovery];
    fmipUUID = [requestCopy fmipUUID];
    fmipUUID = v5->_fmipUUID;
    v5->_fmipUUID = fmipUUID;

    v5->_stingray = [requestCopy stingray];
    v5->_iCDP = [requestCopy icdp];
    activityUUID = [requestCopy activityUUID];
    uUIDString = [activityUUID UUIDString];
    activityUUID = v5->_activityUUID;
    v5->_activityUUID = uUIDString;

    activityLabel = [requestCopy activityLabel];
    activityLabel = v5->_activityLabel;
    v5->_activityLabel = activityLabel;

    v5->_silentDoubleRecovery = [requestCopy silentDoubleRecovery];
    v5->_nonViableRepair = [requestCopy nonViableRepair];
    recoveryUUID = [requestCopy recoveryUUID];
    recoveryUUID = v5->_recoveryUUID;
    v5->_recoveryUUID = recoveryUUID;

    doubleRecoveryUUID = [requestCopy doubleRecoveryUUID];
    doubleRecoveryUUID = v5->_doubleRecoveryUUID;
    v5->_doubleRecoveryUUID = doubleRecoveryUUID;

    v5->_recoveryResult = [requestCopy recoveryResult];
    deviceSessionID = [requestCopy deviceSessionID];
    deviceSessionID = v5->_deviceSessionID;
    v5->_deviceSessionID = deviceSessionID;

    flowID = [requestCopy flowID];
    flowID = v5->_flowID;
    v5->_flowID = flowID;

    v5->_guitarfish = [requestCopy guitarfish];
    v5->_guitarfishToken = [requestCopy guitarfishToken];
    appleIDPasswordMetadata = [requestCopy appleIDPasswordMetadata];
    appleIDPasswordMetadata = v5->_appleIDPasswordMetadata;
    v5->_appleIDPasswordMetadata = appleIDPasswordMetadata;

    queue = [requestCopy queue];
    [(LakituRequest *)v5 setQueue:queue];
  }

  return v5;
}

- (id)loggingDescription
{
  if ([(EscrowGenericRequest *)self duplicate])
  {
    v7.receiver = self;
    v7.super_class = EscrowGenericRequest;
    loggingDescription = [(LakituRequest *)&v7 loggingDescription];
    loggingDescription2 = [loggingDescription stringByAppendingString:@" [DOUBLE]"];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = EscrowGenericRequest;
    loggingDescription2 = [(LakituRequest *)&v6 loggingDescription];
  }

  return loggingDescription2;
}

- (NSString)recoveryPassphrase
{
  if ([(EscrowGenericRequest *)self guitarfish])
  {
    rawPassword = [(EscrowGenericRequest *)self rawPassword];

    if (!rawPassword)
    {
      v4 = CloudServicesLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_100049B00();
      }
    }

    rawPassword2 = [(EscrowGenericRequest *)self rawPassword];
    goto LABEL_10;
  }

  if ([(EscrowGenericRequest *)self guitarfishToken]|| [(EscrowGenericRequest *)self stingray])
  {
    rawPassword2 = [(EscrowGenericRequest *)self dsid];
LABEL_10:
    v6 = rawPassword2;
    goto LABEL_11;
  }

  if (![(EscrowGenericRequest *)self duplicate]|| ([(EscrowGenericRequest *)self escrowRecord], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    rawPassword2 = self->_recoveryPassphrase;
    goto LABEL_10;
  }

  escrowRecord = [(EscrowGenericRequest *)self escrowRecord];
  v6 = [escrowRecord objectForKeyedSubscript:@"DoubleEnrollmentPassword"];

  if (!v6)
  {
    v10 = CloudServicesLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100049ACC();
    }
  }

LABEL_11:

  return v6;
}

- (id)currentAccount
{
  cachedCurrentAccount = [(EscrowGenericRequest *)self cachedCurrentAccount];

  if (!cachedCurrentAccount)
  {
    requestDSID = [(EscrowGenericRequest *)self requestDSID];
    v5 = [LakituAccount personaAwareAccountWithDSID:requestDSID];
    [(EscrowGenericRequest *)self setCachedCurrentAccount:v5];
  }

  return [(EscrowGenericRequest *)self cachedCurrentAccount];
}

- (NSString)dsid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_dsid)
  {
    currentAccount = [(EscrowGenericRequest *)selfCopy currentAccount];
    dsid = [currentAccount dsid];
    dsid = selfCopy->_dsid;
    selfCopy->_dsid = dsid;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_dsid;

  return v6;
}

- (NSString)authToken
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_authToken)
  {
    currentAccount = [(EscrowGenericRequest *)selfCopy currentAccount];
    authToken = [currentAccount authToken];
    authToken = selfCopy->_authToken;
    selfCopy->_authToken = authToken;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_authToken;

  return v6;
}

- (NSString)baseURL
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_baseURL)
  {
    currentAccount = [(EscrowGenericRequest *)selfCopy currentAccount];
    escrowURL = [currentAccount escrowURL];
    baseURL = selfCopy->_baseURL;
    selfCopy->_baseURL = escrowURL;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_baseURL;

  return v6;
}

- (NSString)altDSID
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  currentAccount = [(EscrowGenericRequest *)selfCopy currentAccount];
  altDSID = [currentAccount altDSID];

  objc_sync_exit(selfCopy);

  return altDSID;
}

- (NSString)iCloudEnv
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_iCloudEnv)
  {
    currentAccount = [(EscrowGenericRequest *)selfCopy currentAccount];
    iCloudEnv = [currentAccount iCloudEnv];
    iCloudEnv = selfCopy->_iCloudEnv;
    selfCopy->_iCloudEnv = iCloudEnv;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_iCloudEnv;

  return v6;
}

- (NSString)recordLabel
{
  if ([(EscrowGenericRequest *)self guitarfish])
  {
    if ([(EscrowGenericRequest *)self duplicate])
    {
      sub_100049B40();
    }

    v3 = &kEscrowServiceGuitarfishLabel;
  }

  else if ([(EscrowGenericRequest *)self guitarfishToken])
  {
    if ([(EscrowGenericRequest *)self duplicate])
    {
      sub_100049B40();
    }

    v3 = &kEscrowServiceGuitarfishTokenLabel;
  }

  else
  {
    if ([(EscrowGenericRequest *)self stingray])
    {
      duplicate = [(EscrowGenericRequest *)self duplicate];
      v3 = off_100075AF8;
      v5 = &kEscrowServiceStingrayLabel;
    }

    else
    {
      if (![(EscrowGenericRequest *)self iCDP])
      {
        v3 = off_100075AF0;
        goto LABEL_15;
      }

      duplicate = [(EscrowGenericRequest *)self duplicate];
      v3 = off_100075B08;
      v5 = off_100075B00;
    }

    if (!duplicate)
    {
      v3 = v5;
    }
  }

LABEL_15:
  v6 = *v3;

  return v6;
}

- (id)validateInput
{
  v16.receiver = self;
  v16.super_class = EscrowGenericRequest;
  validateInput = [(LakituRequest *)&v16 validateInput];
  if (!validateInput)
  {
    appleID = [(EscrowGenericRequest *)self appleID];
    v6 = [appleID length];
    if (v6)
    {
      iCloudPassword = [(EscrowGenericRequest *)self iCloudPassword];
      if ([iCloudPassword length])
      {

LABEL_9:
        baseURL = [(EscrowGenericRequest *)self baseURL];
        v11 = [baseURL length];

        if (v11)
        {
          validateInput = 0;
          goto LABEL_19;
        }

        validateInput = [CloudServicesError errorWithCode:22 error:0 format:@"Missing base URL"];
        v12 = CloudServicesLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Missing base URL", buf, 2u);
        }

        goto LABEL_18;
      }
    }

    dsid = [(EscrowGenericRequest *)self dsid];
    if ([dsid length])
    {
      authToken = [(EscrowGenericRequest *)self authToken];
      v9 = [authToken length];

      if (v6)
      {
      }

      if (v9)
      {
        goto LABEL_9;
      }
    }

    else
    {

      if (v6)
      {
      }
    }

    validateInput = [CloudServicesError errorWithCode:311 error:0 format:@"No valid user found"];
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      dsid2 = [(EscrowGenericRequest *)self dsid];
      authToken2 = [(EscrowGenericRequest *)self authToken];
      *buf = 138412546;
      v18 = dsid2;
      v19 = 2112;
      v20 = authToken2;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No user signed in: %@ %@", buf, 0x16u);
    }

LABEL_18:
  }

LABEL_19:

  return validateInput;
}

- (id)bodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  protocolVersion = [(LakituRequest *)self protocolVersion];
  [v3 setObject:protocolVersion forKeyedSubscript:@"version"];

  command = [(EscrowGenericRequest *)self command];
  [v3 setObject:command forKeyedSubscript:@"command"];

  if ([(EscrowGenericRequest *)self guitarfish])
  {
    if ([(EscrowGenericRequest *)self duplicate])
    {
      sub_100049B40();
    }

    v6 = &kEscrowServiceGuitarfishLabel;
    goto LABEL_16;
  }

  if ([(EscrowGenericRequest *)self guitarfishToken])
  {
    if ([(EscrowGenericRequest *)self duplicate])
    {
      sub_100049B40();
    }

    v6 = &kEscrowServiceGuitarfishTokenLabel;
    goto LABEL_16;
  }

  if ([(EscrowGenericRequest *)self stingray])
  {
    duplicate = [(EscrowGenericRequest *)self duplicate];
    v6 = off_100075AF8;
    if (!duplicate)
    {
      v6 = &kEscrowServiceStingrayLabel;
    }

    goto LABEL_16;
  }

  recordID = [(EscrowGenericRequest *)self recordID];

  if (!recordID)
  {
    v6 = off_100075AF0;
LABEL_16:
    [v3 setObject:*v6 forKeyedSubscript:@"label"];
    goto LABEL_17;
  }

  duplicate2 = [(EscrowGenericRequest *)self duplicate];
  v10 = @".double";
  if (!duplicate2)
  {
    v10 = &stru_1000767A0;
  }

  v11 = v10;
  v12 = [NSString alloc];
  recordID2 = [(EscrowGenericRequest *)self recordID];
  v14 = [v12 initWithFormat:@"%@.%@%@", @"com.apple.icdp.record", recordID2, v11];

  [v3 setObject:v14 forKeyedSubscript:@"label"];
LABEL_17:
  if ([(EscrowGenericRequest *)self fmipRecovery])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"fmipRecovery"];
  }

  fmipUUID = [(EscrowGenericRequest *)self fmipUUID];

  if (fmipUUID)
  {
    fmipUUID2 = [(EscrowGenericRequest *)self fmipUUID];
    [v3 setObject:fmipUUID2 forKeyedSubscript:@"fmipUUID"];
  }

  activityUUID = [(EscrowGenericRequest *)self activityUUID];
  [v3 setObject:activityUUID forKeyedSubscript:@"transactionUUID"];

  activityLabel = [(EscrowGenericRequest *)self activityLabel];
  [v3 setObject:activityLabel forKeyedSubscript:@"userActionLabel"];

  return v3;
}

- (id)authorizationHeaderWithUser:(id)user password:(id)password authType:(id)type
{
  typeCopy = type;
  password = [NSString stringWithFormat:@"%@:%@", user, password];
  v9 = [password dataUsingEncoding:4];
  v10 = [v9 base64EncodedStringWithOptions:0];

  if (sub_1000029CC())
  {
    v11 = [v10 dataUsingEncoding:4];
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sha1Digest = [v11 sha1Digest];
      hexString = [sha1Digest hexString];
      *buf = 138412546;
      v18 = typeCopy;
      v19 = 2112;
      v20 = hexString;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "auth type %@, sha1 %@", buf, 0x16u);
    }
  }

  v15 = [NSString stringWithFormat:@"%@ %@", typeCopy, v10];

  return v15;
}

- (id)authorizationHeader
{
  appleID = [(EscrowGenericRequest *)self appleID];
  iCloudPassword = [(EscrowGenericRequest *)self iCloudPassword];
  v5 = iCloudPassword;
  if (appleID && iCloudPassword)
  {
    if ([(EscrowGenericRequest *)self useRecoveryPET])
    {
      v6 = @"X-MobileMe-Recovery-PET";
    }

    else
    {
      v6 = @"Basic";
    }
  }

  else
  {
    dsid = [(EscrowGenericRequest *)self dsid];

    authToken = [(EscrowGenericRequest *)self authToken];

    v6 = @"X-MobileMe-AuthToken";
    appleID = dsid;
    v5 = authToken;
  }

  v9 = [(EscrowGenericRequest *)self authorizationHeaderWithUser:appleID password:v5 authType:v6];

  return v9;
}

- (id)urlRequest
{
  v10.receiver = self;
  v10.super_class = EscrowGenericRequest;
  urlRequest = [(LakituRequest *)&v10 urlRequest];
  bodyDictionary = [(EscrowGenericRequest *)self bodyDictionary];
  v9 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:bodyDictionary format:100 options:0 error:&v9];
  v6 = v9;

  if (v5)
  {
    [urlRequest setHTTPBody:v5];
  }

  else
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100049B5C(v6, v7);
    }
  }

  [urlRequest setHTTPMethod:@"POST"];

  return urlRequest;
}

- (id)urlString
{
  baseURL = [(EscrowGenericRequest *)self baseURL];
  command = [(EscrowGenericRequest *)self command];
  lowercaseString = [command lowercaseString];
  v6 = [baseURL stringByAppendingFormat:@"/escrowproxy/api/%@", lowercaseString];

  return v6;
}

- (id)_filteredMetadataForDoubleEnrollment:(id)enrollment
{
  v3 = [enrollment mutableCopy];
  v6[0] = kSecureBackupEscrowedSPKIKey;
  v6[1] = kSecureBackupBottleIDKey;
  v4 = [NSArray arrayWithObjects:v6 count:2];
  [v3 removeObjectsForKeys:v4];

  return v3;
}

- (id)additionalHeaders
{
  v10.receiver = self;
  v10.super_class = EscrowGenericRequest;
  additionalHeaders = [(LakituRequest *)&v10 additionalHeaders];
  v4 = [additionalHeaders mutableCopy];

  deviceSessionID = [(EscrowGenericRequest *)self deviceSessionID];

  if (deviceSessionID)
  {
    deviceSessionID2 = [(EscrowGenericRequest *)self deviceSessionID];
    [v4 setObject:deviceSessionID2 forKeyedSubscript:@"X-Apple-I-Device-Session-Id"];
  }

  flowID = [(EscrowGenericRequest *)self flowID];

  if (flowID)
  {
    flowID2 = [(EscrowGenericRequest *)self flowID];
    [v4 setObject:flowID2 forKeyedSubscript:@"X-Apple-I-Flow-Id"];
  }

  if ([(EscrowGenericRequest *)self nonViableRepair])
  {
    [v4 setObject:@"true" forKeyedSubscript:@"X-Apple-Non-Viable-Record-Repair"];
  }

  return v4;
}

+ (BOOL)pcsUpdateDisabled
{
  if (!sub_1000029CC() || !SecureBackupIsGuitarfishEnabled())
  {
    return 0;
  }

  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.cloudservices"];
  v3 = [v2 BOOLForKey:@"PCS-UpdateDisabled"];

  return v3;
}

+ (BOOL)pcsNoRecord
{
  if (!sub_1000029CC() || !SecureBackupIsGuitarfishEnabled())
  {
    return 0;
  }

  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.cloudservices"];
  v3 = [v2 BOOLForKey:@"PCS-NoRecord"];

  return v3;
}

- (BOOL)isPcsRecord
{
  recordLabel = [(EscrowGenericRequest *)self recordLabel];
  if ([recordLabel isEqualToString:kEscrowServiceStingrayLabel])
  {
    v4 = 1;
  }

  else
  {
    recordLabel2 = [(EscrowGenericRequest *)self recordLabel];
    v4 = [recordLabel2 isEqualToString:@"com.apple.protectedcloudstorage.record.double"];
  }

  return v4;
}

- (void)_checkUpdateOperationWithHandler:(id)handler
{
  handlerCopy = handler;
  if (+[EscrowGenericRequest pcsUpdateDisabled]&& [(EscrowGenericRequest *)self isPcsRecord])
  {
    v9 = NSLocalizedDescriptionKey;
    v10 = @"artificial error injected (com.apple.cloudservices/PCS-UpdateDisabled)";
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [NSError errorWithDomain:@"EscrowProxyErrorDomain" code:-2004 userInfo:v5];

    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100049BD4(self);
    }

    handlerCopy[2](handlerCopy, 0, v6);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EscrowGenericRequest;
    [(LakituRequest *)&v8 performRequestWithHandler:handlerCopy];
  }
}

- (void)_checkReadOperationWithHandler:(id)handler
{
  handlerCopy = handler;
  if (+[EscrowGenericRequest pcsNoRecord]&& [(EscrowGenericRequest *)self isPcsRecord])
  {
    v9 = NSLocalizedDescriptionKey;
    v10 = @"artificial error injected (com.apple.cloudservices/PCS-NoRecord)";
    v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    v6 = [NSError errorWithDomain:@"EscrowProxyErrorDomain" code:-2003 userInfo:v5];

    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100049C78(self);
    }

    handlerCopy[2](handlerCopy, 0, v6);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EscrowGenericRequest;
    [(LakituRequest *)&v8 performRequestWithHandler:handlerCopy];
  }
}

- (void)_checkFetchOperationWithHandler:(id)handler
{
  handlerCopy = handler;
  if (+[EscrowGenericRequest pcsNoRecord])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000CD10;
    v6[3] = &unk_100075138;
    v7 = handlerCopy;
    v5.receiver = self;
    v5.super_class = EscrowGenericRequest;
    [(LakituRequest *)&v5 performRequestWithHandler:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EscrowGenericRequest;
    [(LakituRequest *)&v8 performRequestWithHandler:handlerCopy];
  }
}

@end
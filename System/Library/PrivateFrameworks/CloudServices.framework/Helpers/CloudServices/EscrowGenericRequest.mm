@interface EscrowGenericRequest
+ (BOOL)pcsNoRecord;
+ (BOOL)pcsUpdateDisabled;
- (BOOL)isPcsRecord;
- (EscrowGenericRequest)initWithRequest:(id)a3;
- (NSString)altDSID;
- (NSString)authToken;
- (NSString)baseURL;
- (NSString)dsid;
- (NSString)iCloudEnv;
- (NSString)recordLabel;
- (NSString)recoveryPassphrase;
- (id)_filteredMetadataForDoubleEnrollment:(id)a3;
- (id)additionalHeaders;
- (id)authorizationHeader;
- (id)authorizationHeaderWithUser:(id)a3 password:(id)a4 authType:(id)a5;
- (id)bodyDictionary;
- (id)currentAccount;
- (id)loggingDescription;
- (id)urlRequest;
- (id)urlString;
- (id)validateInput;
- (void)_checkFetchOperationWithHandler:(id)a3;
- (void)_checkReadOperationWithHandler:(id)a3;
- (void)_checkUpdateOperationWithHandler:(id)a3;
@end

@implementation EscrowGenericRequest

- (EscrowGenericRequest)initWithRequest:(id)a3
{
  v4 = a3;
  v63.receiver = self;
  v63.super_class = EscrowGenericRequest;
  v5 = [(EscrowGenericRequest *)&v63 init];
  if (v5)
  {
    v6 = [v4 dsid];
    dsid = v5->_dsid;
    v5->_dsid = v6;

    v8 = [v4 dsid];
    requestDSID = v5->_requestDSID;
    v5->_requestDSID = v8;

    v10 = [v4 escrowProxyURL];
    baseURL = v5->_baseURL;
    v5->_baseURL = v10;

    v12 = [v4 appleID];
    appleID = v5->_appleID;
    v5->_appleID = v12;

    v14 = [v4 metadata];
    metadata = v5->_metadata;
    v5->_metadata = v14;

    v16 = [v4 authToken];
    authToken = v5->_authToken;
    v5->_authToken = v16;

    v18 = [v4 recordID];
    recordID = v5->_recordID;
    v5->_recordID = v18;

    v20 = [v4 iCloudEnv];
    iCloudEnv = v5->_iCloudEnv;
    v5->_iCloudEnv = v20;

    v22 = [v4 smsTarget];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v22;

    v24 = [v4 countryCode];
    countryCode = v5->_countryCode;
    v5->_countryCode = v24;

    v26 = [v4 escrowRecord];
    escrowRecord = v5->_escrowRecord;
    v5->_escrowRecord = v26;

    v28 = [v4 encodedMetadata];
    encodedMetadata = v5->_encodedMetadata;
    v5->_encodedMetadata = v28;

    v30 = [v4 duplicateEncodedMetadata];
    duplicateEncodedMetadata = v5->_duplicateEncodedMetadata;
    v5->_duplicateEncodedMetadata = v30;

    v32 = [v4 verificationToken];
    challengeCode = v5->_challengeCode;
    v5->_challengeCode = v32;

    v34 = [v4 iCloudPassword];
    iCloudPassword = v5->_iCloudPassword;
    v5->_iCloudPassword = v34;

    v36 = [v4 rawPassword];
    rawPassword = v5->_rawPassword;
    v5->_rawPassword = v36;

    v38 = [v4 countryDialCode];
    countryDialCode = v5->_countryDialCode;
    v5->_countryDialCode = v38;

    v40 = [v4 passcodeStashSecret];
    passcodeStashSecret = v5->_passcodeStashSecret;
    v5->_passcodeStashSecret = v40;

    v42 = [v4 passphrase];
    recoveryPassphrase = v5->_recoveryPassphrase;
    v5->_recoveryPassphrase = v42;

    v5->_silentAttempt = [v4 silent];
    v5->_useRecoveryPET = [v4 useRecoveryPET];
    v5->_fmipRecovery = [v4 fmipRecovery];
    v44 = [v4 fmipUUID];
    fmipUUID = v5->_fmipUUID;
    v5->_fmipUUID = v44;

    v5->_stingray = [v4 stingray];
    v5->_iCDP = [v4 icdp];
    v46 = [v4 activityUUID];
    v47 = [v46 UUIDString];
    activityUUID = v5->_activityUUID;
    v5->_activityUUID = v47;

    v49 = [v4 activityLabel];
    activityLabel = v5->_activityLabel;
    v5->_activityLabel = v49;

    v5->_silentDoubleRecovery = [v4 silentDoubleRecovery];
    v5->_nonViableRepair = [v4 nonViableRepair];
    v51 = [v4 recoveryUUID];
    recoveryUUID = v5->_recoveryUUID;
    v5->_recoveryUUID = v51;

    v53 = [v4 doubleRecoveryUUID];
    doubleRecoveryUUID = v5->_doubleRecoveryUUID;
    v5->_doubleRecoveryUUID = v53;

    v5->_recoveryResult = [v4 recoveryResult];
    v55 = [v4 deviceSessionID];
    deviceSessionID = v5->_deviceSessionID;
    v5->_deviceSessionID = v55;

    v57 = [v4 flowID];
    flowID = v5->_flowID;
    v5->_flowID = v57;

    v5->_guitarfish = [v4 guitarfish];
    v5->_guitarfishToken = [v4 guitarfishToken];
    v59 = [v4 appleIDPasswordMetadata];
    appleIDPasswordMetadata = v5->_appleIDPasswordMetadata;
    v5->_appleIDPasswordMetadata = v59;

    v61 = [v4 queue];
    [(LakituRequest *)v5 setQueue:v61];
  }

  return v5;
}

- (id)loggingDescription
{
  if ([(EscrowGenericRequest *)self duplicate])
  {
    v7.receiver = self;
    v7.super_class = EscrowGenericRequest;
    v3 = [(LakituRequest *)&v7 loggingDescription];
    v4 = [v3 stringByAppendingString:@" [DOUBLE]"];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = EscrowGenericRequest;
    v4 = [(LakituRequest *)&v6 loggingDescription];
  }

  return v4;
}

- (NSString)recoveryPassphrase
{
  if ([(EscrowGenericRequest *)self guitarfish])
  {
    v3 = [(EscrowGenericRequest *)self rawPassword];

    if (!v3)
    {
      v4 = CloudServicesLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        sub_100049B00();
      }
    }

    v5 = [(EscrowGenericRequest *)self rawPassword];
    goto LABEL_10;
  }

  if ([(EscrowGenericRequest *)self guitarfishToken]|| [(EscrowGenericRequest *)self stingray])
  {
    v5 = [(EscrowGenericRequest *)self dsid];
LABEL_10:
    v6 = v5;
    goto LABEL_11;
  }

  if (![(EscrowGenericRequest *)self duplicate]|| ([(EscrowGenericRequest *)self escrowRecord], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v5 = self->_recoveryPassphrase;
    goto LABEL_10;
  }

  v9 = [(EscrowGenericRequest *)self escrowRecord];
  v6 = [v9 objectForKeyedSubscript:@"DoubleEnrollmentPassword"];

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
  v3 = [(EscrowGenericRequest *)self cachedCurrentAccount];

  if (!v3)
  {
    v4 = [(EscrowGenericRequest *)self requestDSID];
    v5 = [LakituAccount personaAwareAccountWithDSID:v4];
    [(EscrowGenericRequest *)self setCachedCurrentAccount:v5];
  }

  return [(EscrowGenericRequest *)self cachedCurrentAccount];
}

- (NSString)dsid
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_dsid)
  {
    v3 = [(EscrowGenericRequest *)v2 currentAccount];
    v4 = [v3 dsid];
    dsid = v2->_dsid;
    v2->_dsid = v4;
  }

  objc_sync_exit(v2);

  v6 = v2->_dsid;

  return v6;
}

- (NSString)authToken
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_authToken)
  {
    v3 = [(EscrowGenericRequest *)v2 currentAccount];
    v4 = [v3 authToken];
    authToken = v2->_authToken;
    v2->_authToken = v4;
  }

  objc_sync_exit(v2);

  v6 = v2->_authToken;

  return v6;
}

- (NSString)baseURL
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_baseURL)
  {
    v3 = [(EscrowGenericRequest *)v2 currentAccount];
    v4 = [v3 escrowURL];
    baseURL = v2->_baseURL;
    v2->_baseURL = v4;
  }

  objc_sync_exit(v2);

  v6 = v2->_baseURL;

  return v6;
}

- (NSString)altDSID
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(EscrowGenericRequest *)v2 currentAccount];
  v4 = [v3 altDSID];

  objc_sync_exit(v2);

  return v4;
}

- (NSString)iCloudEnv
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_iCloudEnv)
  {
    v3 = [(EscrowGenericRequest *)v2 currentAccount];
    v4 = [v3 iCloudEnv];
    iCloudEnv = v2->_iCloudEnv;
    v2->_iCloudEnv = v4;
  }

  objc_sync_exit(v2);

  v6 = v2->_iCloudEnv;

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
      v4 = [(EscrowGenericRequest *)self duplicate];
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

      v4 = [(EscrowGenericRequest *)self duplicate];
      v3 = off_100075B08;
      v5 = off_100075B00;
    }

    if (!v4)
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
  v4 = [(LakituRequest *)&v16 validateInput];
  if (!v4)
  {
    v5 = [(EscrowGenericRequest *)self appleID];
    v6 = [v5 length];
    if (v6)
    {
      v2 = [(EscrowGenericRequest *)self iCloudPassword];
      if ([v2 length])
      {

LABEL_9:
        v10 = [(EscrowGenericRequest *)self baseURL];
        v11 = [v10 length];

        if (v11)
        {
          v4 = 0;
          goto LABEL_19;
        }

        v4 = [CloudServicesError errorWithCode:22 error:0 format:@"Missing base URL"];
        v12 = CloudServicesLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Missing base URL", buf, 2u);
        }

        goto LABEL_18;
      }
    }

    v7 = [(EscrowGenericRequest *)self dsid];
    if ([v7 length])
    {
      v8 = [(EscrowGenericRequest *)self authToken];
      v9 = [v8 length];

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

    v4 = [CloudServicesError errorWithCode:311 error:0 format:@"No valid user found"];
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(EscrowGenericRequest *)self dsid];
      v14 = [(EscrowGenericRequest *)self authToken];
      *buf = 138412546;
      v18 = v13;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No user signed in: %@ %@", buf, 0x16u);
    }

LABEL_18:
  }

LABEL_19:

  return v4;
}

- (id)bodyDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(LakituRequest *)self protocolVersion];
  [v3 setObject:v4 forKeyedSubscript:@"version"];

  v5 = [(EscrowGenericRequest *)self command];
  [v3 setObject:v5 forKeyedSubscript:@"command"];

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
    v7 = [(EscrowGenericRequest *)self duplicate];
    v6 = off_100075AF8;
    if (!v7)
    {
      v6 = &kEscrowServiceStingrayLabel;
    }

    goto LABEL_16;
  }

  v8 = [(EscrowGenericRequest *)self recordID];

  if (!v8)
  {
    v6 = off_100075AF0;
LABEL_16:
    [v3 setObject:*v6 forKeyedSubscript:@"label"];
    goto LABEL_17;
  }

  v9 = [(EscrowGenericRequest *)self duplicate];
  v10 = @".double";
  if (!v9)
  {
    v10 = &stru_1000767A0;
  }

  v11 = v10;
  v12 = [NSString alloc];
  v13 = [(EscrowGenericRequest *)self recordID];
  v14 = [v12 initWithFormat:@"%@.%@%@", @"com.apple.icdp.record", v13, v11];

  [v3 setObject:v14 forKeyedSubscript:@"label"];
LABEL_17:
  if ([(EscrowGenericRequest *)self fmipRecovery])
  {
    [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"fmipRecovery"];
  }

  v15 = [(EscrowGenericRequest *)self fmipUUID];

  if (v15)
  {
    v16 = [(EscrowGenericRequest *)self fmipUUID];
    [v3 setObject:v16 forKeyedSubscript:@"fmipUUID"];
  }

  v17 = [(EscrowGenericRequest *)self activityUUID];
  [v3 setObject:v17 forKeyedSubscript:@"transactionUUID"];

  v18 = [(EscrowGenericRequest *)self activityLabel];
  [v3 setObject:v18 forKeyedSubscript:@"userActionLabel"];

  return v3;
}

- (id)authorizationHeaderWithUser:(id)a3 password:(id)a4 authType:(id)a5
{
  v7 = a5;
  v8 = [NSString stringWithFormat:@"%@:%@", a3, a4];
  v9 = [v8 dataUsingEncoding:4];
  v10 = [v9 base64EncodedStringWithOptions:0];

  if (sub_1000029CC())
  {
    v11 = [v10 dataUsingEncoding:4];
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v11 sha1Digest];
      v14 = [v13 hexString];
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "auth type %@, sha1 %@", buf, 0x16u);
    }
  }

  v15 = [NSString stringWithFormat:@"%@ %@", v7, v10];

  return v15;
}

- (id)authorizationHeader
{
  v3 = [(EscrowGenericRequest *)self appleID];
  v4 = [(EscrowGenericRequest *)self iCloudPassword];
  v5 = v4;
  if (v3 && v4)
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
    v7 = [(EscrowGenericRequest *)self dsid];

    v8 = [(EscrowGenericRequest *)self authToken];

    v6 = @"X-MobileMe-AuthToken";
    v3 = v7;
    v5 = v8;
  }

  v9 = [(EscrowGenericRequest *)self authorizationHeaderWithUser:v3 password:v5 authType:v6];

  return v9;
}

- (id)urlRequest
{
  v10.receiver = self;
  v10.super_class = EscrowGenericRequest;
  v3 = [(LakituRequest *)&v10 urlRequest];
  v4 = [(EscrowGenericRequest *)self bodyDictionary];
  v9 = 0;
  v5 = [NSPropertyListSerialization dataWithPropertyList:v4 format:100 options:0 error:&v9];
  v6 = v9;

  if (v5)
  {
    [v3 setHTTPBody:v5];
  }

  else
  {
    v7 = CloudServicesLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100049B5C(v6, v7);
    }
  }

  [v3 setHTTPMethod:@"POST"];

  return v3;
}

- (id)urlString
{
  v3 = [(EscrowGenericRequest *)self baseURL];
  v4 = [(EscrowGenericRequest *)self command];
  v5 = [v4 lowercaseString];
  v6 = [v3 stringByAppendingFormat:@"/escrowproxy/api/%@", v5];

  return v6;
}

- (id)_filteredMetadataForDoubleEnrollment:(id)a3
{
  v3 = [a3 mutableCopy];
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
  v3 = [(LakituRequest *)&v10 additionalHeaders];
  v4 = [v3 mutableCopy];

  v5 = [(EscrowGenericRequest *)self deviceSessionID];

  if (v5)
  {
    v6 = [(EscrowGenericRequest *)self deviceSessionID];
    [v4 setObject:v6 forKeyedSubscript:@"X-Apple-I-Device-Session-Id"];
  }

  v7 = [(EscrowGenericRequest *)self flowID];

  if (v7)
  {
    v8 = [(EscrowGenericRequest *)self flowID];
    [v4 setObject:v8 forKeyedSubscript:@"X-Apple-I-Flow-Id"];
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
  v3 = [(EscrowGenericRequest *)self recordLabel];
  if ([v3 isEqualToString:kEscrowServiceStingrayLabel])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(EscrowGenericRequest *)self recordLabel];
    v4 = [v5 isEqualToString:@"com.apple.protectedcloudstorage.record.double"];
  }

  return v4;
}

- (void)_checkUpdateOperationWithHandler:(id)a3
{
  v4 = a3;
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

    v4[2](v4, 0, v6);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EscrowGenericRequest;
    [(LakituRequest *)&v8 performRequestWithHandler:v4];
  }
}

- (void)_checkReadOperationWithHandler:(id)a3
{
  v4 = a3;
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

    v4[2](v4, 0, v6);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EscrowGenericRequest;
    [(LakituRequest *)&v8 performRequestWithHandler:v4];
  }
}

- (void)_checkFetchOperationWithHandler:(id)a3
{
  v4 = a3;
  if (+[EscrowGenericRequest pcsNoRecord])
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10000CD10;
    v6[3] = &unk_100075138;
    v7 = v4;
    v5.receiver = self;
    v5.super_class = EscrowGenericRequest;
    [(LakituRequest *)&v5 performRequestWithHandler:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EscrowGenericRequest;
    [(LakituRequest *)&v8 performRequestWithHandler:v4];
  }
}

@end
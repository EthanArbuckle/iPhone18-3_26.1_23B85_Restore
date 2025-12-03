@interface OTEscrowTranslation
+ (BOOL)supportedRestorePath:(id)path;
+ (id)CDPRecordContextToDictionary:(id)dictionary;
+ (id)_dateWithSecureBackupDateString:(id)string;
+ (id)_stringWithSecureBackupDate:(id)date;
+ (id)cdpRecoveryInformationToDictionary:(id)dictionary;
+ (id)dictionaryToCDPRecordContext:(id)context;
+ (id)dictionaryToCDPRecoveryInformation:(id)information;
+ (id)dictionaryToEscrowAuthenticationInfo:(id)info;
+ (id)dictionaryToEscrowRecord:(id)record;
+ (id)dictionaryToMetadata:(id)metadata;
+ (id)escrowAuthenticationInfoToDictionary:(id)dictionary;
+ (id)escrowRecordToDictionary:(id)dictionary;
+ (id)metadataToDictionary:(id)dictionary;
@end

@implementation OTEscrowTranslation

+ (BOOL)supportedRestorePath:(id)path
{
  pathCopy = path;
  authInfo = [pathCopy authInfo];
  if (([authInfo idmsRecovery] & 1) == 0)
  {
    authInfo2 = [pathCopy authInfo];
    fmipUuid = [authInfo2 fmipUuid];
    if (fmipUuid)
    {
      authInfo3 = [pathCopy authInfo];
      fmipUuid2 = [authInfo3 fmipUuid];
      if (![fmipUuid2 isEqualToString:&stru_1F48F2A78])
      {
        LOBYTE(v7) = 0;
        goto LABEL_8;
      }
    }

    authInfo4 = [pathCopy authInfo];
    if ([authInfo4 fmipRecovery])
    {

      LOBYTE(v7) = 0;
      if (!fmipUuid)
      {
LABEL_9:

        goto LABEL_10;
      }

LABEL_8:

      goto LABEL_9;
    }

    cdpInfo = [pathCopy cdpInfo];
    recoveryKey = [cdpInfo recoveryKey];
    if (recoveryKey)
    {
      cdpInfo2 = [pathCopy cdpInfo];
      recoveryKey2 = [cdpInfo2 recoveryKey];
      if (![recoveryKey2 isEqualToString:&stru_1F48F2A78])
      {
        LOBYTE(v7) = 0;
        goto LABEL_18;
      }

      v17 = cdpInfo;
    }

    else
    {
      v17 = cdpInfo;
    }

    cdpInfo3 = [pathCopy cdpInfo];
    v7 = [cdpInfo3 usePreviouslyCachedRecoveryKey] ^ 1;

    if (!recoveryKey)
    {

LABEL_20:
      if (!fmipUuid)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    cdpInfo = v17;
LABEL_18:

    goto LABEL_20;
  }

  LOBYTE(v7) = 0;
LABEL_10:

  return v7;
}

+ (id)CDPRecordContextToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    authInfo = [dictionaryCopy authInfo];
    v6 = [OTEscrowTranslation escrowAuthenticationInfoToDictionary:authInfo];
    [dictionary addEntriesFromDictionary:v6];

    cdpInfo = [dictionaryCopy cdpInfo];
    v8 = [OTEscrowTranslation cdpRecoveryInformationToDictionary:cdpInfo];
    [dictionary addEntriesFromDictionary:v8];
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

+ (id)dictionaryToCDPRecordContext:(id)context
{
  contextCopy = context;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = objc_alloc_init(OTICDPRecordContext);
    v5 = [OTEscrowTranslation dictionaryToEscrowAuthenticationInfo:contextCopy];
    [(OTICDPRecordContext *)v4 setAuthInfo:v5];

    v6 = [OTEscrowTranslation dictionaryToCDPRecoveryInformation:contextCopy];
    [(OTICDPRecordContext *)v4 setCdpInfo:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)escrowRecordToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(dictionaryCopy, "creationDate")}];
    Helper_x8__kSecureBackupEscrowDateKey = gotLoadHelper_x8__kSecureBackupEscrowDateKey(v6);
    [dictionary setObject:v5 forKeyedSubscript:{**(v8 + 3712), Helper_x8__kSecureBackupEscrowDateKey}];

    escrowInformationMetadata = [dictionaryCopy escrowInformationMetadata];
    v10 = [OTEscrowTranslation metadataToDictionary:escrowInformationMetadata];
    [dictionary setObject:v10 forKeyedSubscript:@"metadata"];

    v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{objc_msgSend(dictionaryCopy, "remainingAttempts")}];
    Helper_x8__kSecureBackupRemainingAttemptsKey = gotLoadHelper_x8__kSecureBackupRemainingAttemptsKey(v12);
    [dictionary setObject:v11 forKeyedSubscript:{**(v14 + 3912), Helper_x8__kSecureBackupRemainingAttemptsKey}];

    label = [dictionaryCopy label];
    Helper_x8__kSecureBackupRecordLabelKey = gotLoadHelper_x8__kSecureBackupRecordLabelKey(v16);
    [dictionary setObject:label forKeyedSubscript:{**(v18 + 3880), Helper_x8__kSecureBackupRecordLabelKey}];

    [dictionaryCopy recordStatus];
    Helper_x8__kSecureBackupRecordStatusKey = gotLoadHelper_x8__kSecureBackupRecordStatusKey(v19);
    v22 = **(v21 + 3888);
    [dictionary setObject:Helper_x8__kSecureBackupRecordStatusKey forKeyedSubscript:?];
    v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{objc_msgSend(dictionaryCopy, "silentAttemptAllowed")}];
    [dictionary setObject:v23 forKeyedSubscript:@"silentAttemptAllowed"];

    federationId = [dictionaryCopy federationId];
    [dictionary setObject:federationId forKeyedSubscript:@"FEDERATIONID"];

    expectedFederationId = [dictionaryCopy expectedFederationId];
    [dictionary setObject:expectedFederationId forKeyedSubscript:@"EXPECTEDFEDERATIONID"];

    recordId = [dictionaryCopy recordId];
    Helper_x8__kSecureBackupRecordIDKey = gotLoadHelper_x8__kSecureBackupRecordIDKey(v27);
    [dictionary setObject:recordId forKeyedSubscript:{**(v29 + 3872), Helper_x8__kSecureBackupRecordIDKey}];

    serialNumber = [dictionaryCopy serialNumber];
    Helper_x8__kSecureBackupPeerInfoSerialNumberKey = gotLoadHelper_x8__kSecureBackupPeerInfoSerialNumberKey(v31);
    [dictionary setObject:serialNumber forKeyedSubscript:{**(v33 + 3864), Helper_x8__kSecureBackupPeerInfoSerialNumberKey}];

    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(dictionaryCopy, "coolOffEnd")}];
    Helper_x8__kSecureBackupCoolOffEndKey = gotLoadHelper_x8__kSecureBackupCoolOffEndKey(v35);
    [dictionary setObject:v34 forKeyedSubscript:{**(v37 + 3688), Helper_x8__kSecureBackupCoolOffEndKey}];

    v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(dictionaryCopy, "recoveryStatus")}];
    Helper_x8__kSecureBackupRecoveryStatusKey = gotLoadHelper_x8__kSecureBackupRecoveryStatusKey(v39);
    [dictionary setObject:v38 forKeyedSubscript:{**(v41 + 3904), Helper_x8__kSecureBackupRecoveryStatusKey}];
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

+ (id)metadataToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    Helper_x8__kSecureBackupClientMetadataKey = gotLoadHelper_x8__kSecureBackupClientMetadataKey(v6);
    v9 = **(v8 + 3664);
    [dictionary setObject:dictionary2 forKeyedSubscript:{v9, Helper_x8__kSecureBackupClientMetadataKey}];

    backupKeybagDigest = [dictionaryCopy backupKeybagDigest];
    [dictionary setObject:backupKeybagDigest forKeyedSubscript:@"BackupKeybagDigest"];

    v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{objc_msgSend(dictionaryCopy, "secureBackupUsesMultipleIcscs")}];
    Helper_x8__kSecureBackupUsesMultipleiCSCKey = gotLoadHelper_x8__kSecureBackupUsesMultipleiCSCKey(v12);
    [dictionary setObject:v11 forKeyedSubscript:{**(v14 + 3984), Helper_x8__kSecureBackupUsesMultipleiCSCKey}];

    bottleId = [dictionaryCopy bottleId];
    Helper_x8__kSecureBackupBottleIDKey = gotLoadHelper_x8__kSecureBackupBottleIDKey(v16);
    [dictionary setObject:bottleId forKeyedSubscript:{**(v18 + 3640), Helper_x8__kSecureBackupBottleIDKey}];

    bottleValidity = [dictionaryCopy bottleValidity];
    [dictionary setObject:bottleValidity forKeyedSubscript:@"bottleValid"];

    v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(dictionaryCopy, "secureBackupTimestamp")}];
    v21 = [OTEscrowTranslation _stringWithSecureBackupDate:v20];
    [dictionary setObject:v21 forKeyedSubscript:@"com.apple.securebackup.timestamp"];

    escrowedSpki = [dictionaryCopy escrowedSpki];
    Helper_x8__kSecureBackupEscrowedSPKIKey = gotLoadHelper_x8__kSecureBackupEscrowedSPKIKey(v23);
    [dictionary setObject:escrowedSpki forKeyedSubscript:{**(v25 + 3720), Helper_x8__kSecureBackupEscrowedSPKIKey}];

    peerInfo = [dictionaryCopy peerInfo];
    Helper_x8__kSecureBackupPeerInfoDataKey = gotLoadHelper_x8__kSecureBackupPeerInfoDataKey(v27);
    [dictionary setObject:peerInfo forKeyedSubscript:{**(v29 + 3856), Helper_x8__kSecureBackupPeerInfoDataKey}];

    serial = [dictionaryCopy serial];
    Helper_x8__kSecureBackupSerialNumberKey = gotLoadHelper_x8__kSecureBackupSerialNumberKey(v31);
    [dictionary setObject:serial forKeyedSubscript:{**(v33 + 3928), Helper_x8__kSecureBackupSerialNumberKey}];

    build = [dictionaryCopy build];
    Helper_x8__kSecureBackupBuildVersionKey = gotLoadHelper_x8__kSecureBackupBuildVersionKey(v35);
    [dictionary setObject:build forKeyedSubscript:{**(v37 + 3648), Helper_x8__kSecureBackupBuildVersionKey}];

    passcodeGeneration = [dictionaryCopy passcodeGeneration];
    LODWORD(v20) = [passcodeGeneration hasValue];

    if (v20)
    {
      v39 = MEMORY[0x1E696AD98];
      passcodeGeneration2 = [dictionaryCopy passcodeGeneration];
      v41 = [v39 numberWithUnsignedLongLong:{objc_msgSend(passcodeGeneration2, "value")}];
      Helper_x8__kSecureBackupPasscodeGenerationKey = gotLoadHelper_x8__kSecureBackupPasscodeGenerationKey(v42);
      [dictionary setObject:v41 forKeyedSubscript:{**(v44 + 3840), Helper_x8__kSecureBackupPasscodeGenerationKey}];
    }

    v45 = objc_alloc(MEMORY[0x1E696AD98]);
    clientMetadata = [dictionaryCopy clientMetadata];
    v47 = [v45 initWithUnsignedLongLong:{objc_msgSend(clientMetadata, "devicePlatform")}];
    v48 = [dictionary objectForKeyedSubscript:v9];
    [v48 setObject:v47 forKeyedSubscript:@"device_platform"];

    v49 = MEMORY[0x1E695DF00];
    clientMetadata2 = [dictionaryCopy clientMetadata];
    v51 = [v49 dateWithTimeIntervalSince1970:{objc_msgSend(clientMetadata2, "secureBackupMetadataTimestamp")}];
    v52 = [OTEscrowTranslation _stringWithSecureBackupDate:v51];
    v53 = [dictionary objectForKeyedSubscript:v9];
    [v53 setObject:v52 forKeyedSubscript:@"SecureBackupMetadataTimestamp"];

    v54 = objc_alloc(MEMORY[0x1E696AD98]);
    clientMetadata3 = [dictionaryCopy clientMetadata];
    v56 = [v54 initWithUnsignedLongLong:{objc_msgSend(clientMetadata3, "secureBackupNumericPassphraseLength")}];
    v57 = [dictionary objectForKeyedSubscript:v9];
    Helper_x8__kSecureBackupNumericPassphraseLengthKey = gotLoadHelper_x8__kSecureBackupNumericPassphraseLengthKey(v58);
    [v61 setObject:v56 forKeyedSubscript:{**(v60 + 3832), Helper_x8__kSecureBackupNumericPassphraseLengthKey}];

    v62 = objc_alloc(MEMORY[0x1E696AD98]);
    clientMetadata4 = [dictionaryCopy clientMetadata];
    v64 = [v62 initWithUnsignedLongLong:{objc_msgSend(clientMetadata4, "secureBackupUsesComplexPassphrase")}];
    v65 = [dictionary objectForKeyedSubscript:v9];
    Helper_x8__kSecureBackupUsesComplexPassphraseKey = gotLoadHelper_x8__kSecureBackupUsesComplexPassphraseKey(v66);
    [v69 setObject:v64 forKeyedSubscript:{**(v68 + 3976), Helper_x8__kSecureBackupUsesComplexPassphraseKey}];

    v70 = objc_alloc(MEMORY[0x1E696AD98]);
    clientMetadata5 = [dictionaryCopy clientMetadata];
    v72 = [v70 initWithUnsignedLongLong:{objc_msgSend(clientMetadata5, "secureBackupUsesNumericPassphrase")}];
    v73 = [dictionary objectForKeyedSubscript:v9];
    Helper_x8__kSecureBackupUsesNumericPassphraseKey = gotLoadHelper_x8__kSecureBackupUsesNumericPassphraseKey(v74);
    [v77 setObject:v72 forKeyedSubscript:{**(v76 + 3992), Helper_x8__kSecureBackupUsesNumericPassphraseKey}];

    clientMetadata6 = [dictionaryCopy clientMetadata];
    deviceColor = [clientMetadata6 deviceColor];
    v80 = [dictionary objectForKeyedSubscript:v9];
    [v80 setObject:deviceColor forKeyedSubscript:@"device_color"];

    clientMetadata7 = [dictionaryCopy clientMetadata];
    deviceEnclosureColor = [clientMetadata7 deviceEnclosureColor];
    v83 = [dictionary objectForKeyedSubscript:v9];
    [v83 setObject:deviceEnclosureColor forKeyedSubscript:@"device_enclosure_color"];

    clientMetadata8 = [dictionaryCopy clientMetadata];
    deviceMid = [clientMetadata8 deviceMid];
    v86 = [dictionary objectForKeyedSubscript:v9];
    [v86 setObject:deviceMid forKeyedSubscript:@"device_mid"];

    clientMetadata9 = [dictionaryCopy clientMetadata];
    deviceModel = [clientMetadata9 deviceModel];
    v89 = [dictionary objectForKeyedSubscript:v9];
    [v89 setObject:deviceModel forKeyedSubscript:@"device_model"];

    clientMetadata10 = [dictionaryCopy clientMetadata];
    deviceModelClass = [clientMetadata10 deviceModelClass];
    v92 = [dictionary objectForKeyedSubscript:v9];
    [v92 setObject:deviceModelClass forKeyedSubscript:@"device_model_class"];

    clientMetadata11 = [dictionaryCopy clientMetadata];
    deviceModelVersion = [clientMetadata11 deviceModelVersion];
    v95 = [dictionary objectForKeyedSubscript:v9];
    [v95 setObject:deviceModelVersion forKeyedSubscript:@"device_model_version"];

    clientMetadata12 = [dictionaryCopy clientMetadata];
    deviceName = [clientMetadata12 deviceName];
    v98 = [dictionary objectForKeyedSubscript:v9];
    [v98 setObject:deviceName forKeyedSubscript:@"device_name"];
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

+ (id)dictionaryToEscrowRecord:(id)record
{
  recordCopy = record;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = objc_alloc_init(OTEscrowRecord);
    Helper_x8__kSecureBackupEscrowDateKey = gotLoadHelper_x8__kSecureBackupEscrowDateKey(v5);
    v8 = [recordCopy objectForKeyedSubscript:{**(v7 + 3712), Helper_x8__kSecureBackupEscrowDateKey}];
    [v8 timeIntervalSince1970];
    [(OTEscrowRecord *)v4 setCreationDate:v9];
    v10 = [recordCopy objectForKeyedSubscript:@"metadata"];
    v11 = [OTEscrowTranslation dictionaryToMetadata:v10];
    [(OTEscrowRecord *)v4 setEscrowInformationMetadata:v11];

    Helper_x8__kSecureBackupRemainingAttemptsKey = gotLoadHelper_x8__kSecureBackupRemainingAttemptsKey(v12);
    v15 = [recordCopy objectForKeyedSubscript:{**(v14 + 3912), Helper_x8__kSecureBackupRemainingAttemptsKey}];
    -[OTEscrowRecord setRemainingAttempts:](v4, "setRemainingAttempts:", [v15 longLongValue]);
    Helper_x8__kSecureBackupRecordLabelKey = gotLoadHelper_x8__kSecureBackupRecordLabelKey(v16);
    v19 = [recordCopy objectForKeyedSubscript:{**(v18 + 3880), Helper_x8__kSecureBackupRecordLabelKey}];
    [(OTEscrowRecord *)v4 setLabel:v19];

    Helper_x8__kSecureBackupRecordStatusKey = gotLoadHelper_x8__kSecureBackupRecordStatusKey(v20);
    v23 = [recordCopy objectForKeyedSubscript:{**(v22 + 3888), Helper_x8__kSecureBackupRecordStatusKey}];
    -[OTEscrowRecord setRecordStatus:](v4, "setRecordStatus:", [v23 isEqualToString:@"valid"] ^ 1);

    v24 = [recordCopy objectForKeyedSubscript:@"silentAttemptAllowed"];
    -[OTEscrowRecord setSilentAttemptAllowed:](v4, "setSilentAttemptAllowed:", [v24 BOOLValue]);

    v25 = [recordCopy objectForKeyedSubscript:@"FEDERATIONID"];
    [(OTEscrowRecord *)v4 setFederationId:v25];

    v26 = [recordCopy objectForKeyedSubscript:@"EXPECTEDFEDERATIONID"];
    [(OTEscrowRecord *)v4 setExpectedFederationId:v26];

    Helper_x8__kSecureBackupRecordIDKey = gotLoadHelper_x8__kSecureBackupRecordIDKey(v27);
    v30 = [recordCopy objectForKeyedSubscript:{**(v29 + 3872), Helper_x8__kSecureBackupRecordIDKey}];
    [(OTEscrowRecord *)v4 setRecordId:v30];

    Helper_x8__kSecureBackupPeerInfoSerialNumberKey = gotLoadHelper_x8__kSecureBackupPeerInfoSerialNumberKey(v31);
    v34 = [recordCopy objectForKeyedSubscript:{**(v33 + 3864), Helper_x8__kSecureBackupPeerInfoSerialNumberKey}];
    [(OTEscrowRecord *)v4 setSerialNumber:v34];

    Helper_x8__kSecureBackupCoolOffEndKey = gotLoadHelper_x8__kSecureBackupCoolOffEndKey(v35);
    v38 = **(v37 + 3688);
    v39 = [recordCopy objectForKeyedSubscript:{v38, Helper_x8__kSecureBackupCoolOffEndKey}];

    if (v39)
    {
      v41 = [recordCopy objectForKeyedSubscript:v38];
      -[OTEscrowRecord setCoolOffEnd:](v4, "setCoolOffEnd:", [v41 longLongValue]);
    }

    Helper_x8__kSecureBackupRecoveryStatusKey = gotLoadHelper_x8__kSecureBackupRecoveryStatusKey(v40);
    v44 = [recordCopy objectForKeyedSubscript:{**(v43 + 3904), Helper_x8__kSecureBackupRecoveryStatusKey}];
    -[OTEscrowRecord setRecoveryStatus:](v4, "setRecoveryStatus:", [v44 intValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dictionaryToMetadata:(id)metadata
{
  metadataCopy = metadata;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = objc_alloc_init(OTEscrowRecordMetadata);
    v5 = [metadataCopy objectForKeyedSubscript:@"BackupKeybagDigest"];
    [(OTEscrowRecordMetadata *)v4 setBackupKeybagDigest:v5];

    Helper_x8__kSecureBackupUsesMultipleiCSCKey = gotLoadHelper_x8__kSecureBackupUsesMultipleiCSCKey(v6);
    v9 = [metadataCopy objectForKeyedSubscript:{**(v8 + 3984), Helper_x8__kSecureBackupUsesMultipleiCSCKey}];
    -[OTEscrowRecordMetadata setSecureBackupUsesMultipleIcscs:](v4, "setSecureBackupUsesMultipleIcscs:", [v9 BOOLValue]);

    Helper_x8__kSecureBackupBottleIDKey = gotLoadHelper_x8__kSecureBackupBottleIDKey(v10);
    v13 = [metadataCopy objectForKeyedSubscript:{**(v12 + 3640), Helper_x8__kSecureBackupBottleIDKey}];
    [(OTEscrowRecordMetadata *)v4 setBottleId:v13];

    v14 = [metadataCopy objectForKeyedSubscript:@"bottleValid"];
    [(OTEscrowRecordMetadata *)v4 setBottleValidity:v14];

    v15 = [metadataCopy objectForKeyedSubscript:@"com.apple.securebackup.timestamp"];
    v16 = [OTEscrowTranslation _dateWithSecureBackupDateString:v15];

    [v16 timeIntervalSince1970];
    [(OTEscrowRecordMetadata *)v4 setSecureBackupTimestamp:v17];
    Helper_x8__kSecureBackupEscrowedSPKIKey = gotLoadHelper_x8__kSecureBackupEscrowedSPKIKey(v18);
    v21 = [metadataCopy objectForKeyedSubscript:{**(v20 + 3720), Helper_x8__kSecureBackupEscrowedSPKIKey}];
    [(OTEscrowRecordMetadata *)v4 setEscrowedSpki:v21];

    Helper_x8__kSecureBackupPeerInfoDataKey = gotLoadHelper_x8__kSecureBackupPeerInfoDataKey(v22);
    v25 = [metadataCopy objectForKeyedSubscript:{**(v24 + 3856), Helper_x8__kSecureBackupPeerInfoDataKey}];
    [(OTEscrowRecordMetadata *)v4 setPeerInfo:v25];

    Helper_x8__kSecureBackupSerialNumberKey = gotLoadHelper_x8__kSecureBackupSerialNumberKey(v26);
    v29 = [metadataCopy objectForKeyedSubscript:{**(v28 + 3928), Helper_x8__kSecureBackupSerialNumberKey}];
    [(OTEscrowRecordMetadata *)v4 setSerial:v29];

    Helper_x8__kSecureBackupBuildVersionKey = gotLoadHelper_x8__kSecureBackupBuildVersionKey(v30);
    v33 = [metadataCopy objectForKeyedSubscript:{**(v32 + 3648), Helper_x8__kSecureBackupBuildVersionKey}];
    [(OTEscrowRecordMetadata *)v4 setBuild:v33];

    Helper_x8__kSecureBackupPasscodeGenerationKey = gotLoadHelper_x8__kSecureBackupPasscodeGenerationKey(v34);
    v37 = **(v36 + 3840);
    v38 = [metadataCopy objectForKeyedSubscript:{v37, Helper_x8__kSecureBackupPasscodeGenerationKey}];

    if (v38)
    {
      v40 = objc_alloc_init(OTEscrowRecordMetadataPasscodeGeneration);
      [(OTEscrowRecordMetadata *)v4 setPasscodeGeneration:v40];

      v41 = [metadataCopy objectForKeyedSubscript:v37];
      longLongValue = [v41 longLongValue];
      passcodeGeneration = [(OTEscrowRecordMetadata *)v4 passcodeGeneration];
      [passcodeGeneration setValue:longLongValue];
    }

    Helper_x8__kSecureBackupClientMetadataKey = gotLoadHelper_x8__kSecureBackupClientMetadataKey(v39);
    v46 = [metadataCopy objectForKeyedSubscript:{**(v45 + 3664), Helper_x8__kSecureBackupClientMetadataKey}];
    v47 = objc_alloc_init(OTEscrowRecordMetadataClientMetadata);
    [(OTEscrowRecordMetadata *)v4 setClientMetadata:v47];

    v48 = [v46 objectForKeyedSubscript:@"device_platform"];
    longLongValue2 = [v48 longLongValue];
    clientMetadata = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [clientMetadata setDevicePlatform:longLongValue2];

    v51 = [v46 objectForKeyedSubscript:@"SecureBackupMetadataTimestamp"];
    v52 = [OTEscrowTranslation _dateWithSecureBackupDateString:v51];

    [v52 timeIntervalSince1970];
    v54 = v53;
    clientMetadata2 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [clientMetadata2 setSecureBackupMetadataTimestamp:v54];

    Helper_x8__kSecureBackupNumericPassphraseLengthKey = gotLoadHelper_x8__kSecureBackupNumericPassphraseLengthKey(v56);
    v59 = [v46 objectForKeyedSubscript:{**(v58 + 3832), Helper_x8__kSecureBackupNumericPassphraseLengthKey}];
    longLongValue3 = [v59 longLongValue];
    clientMetadata3 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [clientMetadata3 setSecureBackupNumericPassphraseLength:longLongValue3];

    Helper_x8__kSecureBackupUsesComplexPassphraseKey = gotLoadHelper_x8__kSecureBackupUsesComplexPassphraseKey(v62);
    v65 = [v46 objectForKeyedSubscript:{**(v64 + 3976), Helper_x8__kSecureBackupUsesComplexPassphraseKey}];
    bOOLValue = [v65 BOOLValue];
    clientMetadata4 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [clientMetadata4 setSecureBackupUsesComplexPassphrase:bOOLValue];

    Helper_x8__kSecureBackupUsesNumericPassphraseKey = gotLoadHelper_x8__kSecureBackupUsesNumericPassphraseKey(v68);
    v71 = [v46 objectForKeyedSubscript:{**(v70 + 3992), Helper_x8__kSecureBackupUsesNumericPassphraseKey}];
    bOOLValue2 = [v71 BOOLValue];
    clientMetadata5 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [clientMetadata5 setSecureBackupUsesNumericPassphrase:bOOLValue2];

    v74 = [v46 objectForKeyedSubscript:@"device_color"];
    clientMetadata6 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [clientMetadata6 setDeviceColor:v74];

    v76 = [v46 objectForKeyedSubscript:@"device_enclosure_color"];
    clientMetadata7 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [clientMetadata7 setDeviceEnclosureColor:v76];

    v78 = [v46 objectForKeyedSubscript:@"device_mid"];
    clientMetadata8 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [clientMetadata8 setDeviceMid:v78];

    v80 = [v46 objectForKeyedSubscript:@"device_model"];
    clientMetadata9 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [clientMetadata9 setDeviceModel:v80];

    v82 = [v46 objectForKeyedSubscript:@"device_model_class"];
    clientMetadata10 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [clientMetadata10 setDeviceModelClass:v82];

    v84 = [v46 objectForKeyedSubscript:@"device_model_version"];
    clientMetadata11 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [clientMetadata11 setDeviceModelVersion:v84];

    v86 = [v46 objectForKeyedSubscript:@"device_name"];
    clientMetadata12 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [clientMetadata12 setDeviceName:v86];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_stringWithSecureBackupDate:(id)date
{
  dateCopy = date;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];

  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v6 = [v4 stringFromDate:dateCopy];

  return v6;
}

+ (id)_dateWithSecureBackupDateString:(id)string
{
  stringCopy = string;
  v4 = objc_opt_new();
  [v4 setDateFormat:@"dd-MM-yyyy HH:mm:ss"];
  v5 = [v4 dateFromString:stringCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [v4 setTimeZone:v8];

    [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v7 = [v4 dateFromString:stringCopy];
  }

  v9 = v7;

  return v9;
}

+ (id)cdpRecoveryInformationToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    recoverySecret = [dictionaryCopy recoverySecret];
    Helper_x8__kSecureBackupPassphraseKey = gotLoadHelper_x8__kSecureBackupPassphraseKey(v6);
    [dictionary setObject:recoverySecret forKeyedSubscript:{**(v8 + 3848), Helper_x8__kSecureBackupPassphraseKey}];

    [dictionaryCopy useCachedSecret];
    Helper_x8__kSecureBackupUseCachedPassphraseKey = gotLoadHelper_x8__kSecureBackupUseCachedPassphraseKey(v9);
    v12 = **(v11 + 3968);
    [dictionary setObject:Helper_x8__kSecureBackupUseCachedPassphraseKey forKeyedSubscript:?];
    recoveryKey = [dictionaryCopy recoveryKey];
    Helper_x8__kSecureBackupRecoveryKeyKey = gotLoadHelper_x8__kSecureBackupRecoveryKeyKey(v14);
    [dictionary setObject:recoveryKey forKeyedSubscript:{**(v16 + 3896), Helper_x8__kSecureBackupRecoveryKeyKey}];

    [dictionaryCopy usePreviouslyCachedRecoveryKey];
    Helper_x8__kSecureBackupUsesRecoveryKeyKey = gotLoadHelper_x8__kSecureBackupUsesRecoveryKeyKey(v17);
    v20 = **(v19 + 4000);
    [dictionary setObject:Helper_x8__kSecureBackupUsesRecoveryKeyKey forKeyedSubscript:?];
    [dictionaryCopy silentRecoveryAttempt];
    Helper_x8__kSecureBackupSilentRecoveryAttemptKey = gotLoadHelper_x8__kSecureBackupSilentRecoveryAttemptKey(v21);
    v24 = **(v23 + 3936);
    [dictionary setObject:Helper_x8__kSecureBackupSilentRecoveryAttemptKey forKeyedSubscript:?];
    [dictionaryCopy containsIcdpData];
    Helper_x8__kSecureBackupContainsiCDPDataKey = gotLoadHelper_x8__kSecureBackupContainsiCDPDataKey(v25);
    v28 = **(v27 + 3672);
    [dictionary setObject:Helper_x8__kSecureBackupContainsiCDPDataKey forKeyedSubscript:?];
    [dictionaryCopy usesMultipleIcsc];
    Helper_x8__kSecureBackupUsesMultipleiCSCKey = gotLoadHelper_x8__kSecureBackupUsesMultipleiCSCKey(v29);
    v32 = **(v31 + 3984);
    [dictionary setObject:Helper_x8__kSecureBackupUsesMultipleiCSCKey forKeyedSubscript:?];
    [dictionaryCopy nonViableRepair];
    Helper_x8__kSecureBackupNonViableRepairKey = gotLoadHelper_x8__kSecureBackupNonViableRepairKey(v33);
    v36 = **(v35 + 3824);
    [dictionary setObject:Helper_x8__kSecureBackupNonViableRepairKey forKeyedSubscript:?];
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

+ (id)dictionaryToCDPRecoveryInformation:(id)information
{
  informationCopy = information;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = objc_alloc_init(OTCDPRecoveryInformation);
    Helper_x8__kSecureBackupPassphraseKey = gotLoadHelper_x8__kSecureBackupPassphraseKey(v5);
    v8 = [informationCopy objectForKeyedSubscript:{**(v7 + 3848), Helper_x8__kSecureBackupPassphraseKey}];
    [(OTCDPRecoveryInformation *)v4 setRecoverySecret:v8];

    Helper_x8__kSecureBackupUseCachedPassphraseKey = gotLoadHelper_x8__kSecureBackupUseCachedPassphraseKey(v9);
    v12 = [informationCopy objectForKeyedSubscript:{**(v11 + 3968), Helper_x8__kSecureBackupUseCachedPassphraseKey}];
    -[OTCDPRecoveryInformation setUseCachedSecret:](v4, "setUseCachedSecret:", [v12 BOOLValue]);

    Helper_x8__kSecureBackupRecoveryKeyKey = gotLoadHelper_x8__kSecureBackupRecoveryKeyKey(v13);
    v16 = [informationCopy objectForKeyedSubscript:{**(v15 + 3896), Helper_x8__kSecureBackupRecoveryKeyKey}];
    [(OTCDPRecoveryInformation *)v4 setRecoveryKey:v16];

    Helper_x8__kSecureBackupUsesRecoveryKeyKey = gotLoadHelper_x8__kSecureBackupUsesRecoveryKeyKey(v17);
    v20 = [informationCopy objectForKeyedSubscript:{**(v19 + 4000), Helper_x8__kSecureBackupUsesRecoveryKeyKey}];
    -[OTCDPRecoveryInformation setUsePreviouslyCachedRecoveryKey:](v4, "setUsePreviouslyCachedRecoveryKey:", [v20 BOOLValue]);

    Helper_x8__kSecureBackupSilentRecoveryAttemptKey = gotLoadHelper_x8__kSecureBackupSilentRecoveryAttemptKey(v21);
    v24 = [informationCopy objectForKeyedSubscript:{**(v23 + 3936), Helper_x8__kSecureBackupSilentRecoveryAttemptKey}];
    -[OTCDPRecoveryInformation setSilentRecoveryAttempt:](v4, "setSilentRecoveryAttempt:", [v24 BOOLValue]);

    Helper_x8__kSecureBackupContainsiCDPDataKey = gotLoadHelper_x8__kSecureBackupContainsiCDPDataKey(v25);
    v28 = [informationCopy objectForKeyedSubscript:{**(v27 + 3672), Helper_x8__kSecureBackupContainsiCDPDataKey}];
    -[OTCDPRecoveryInformation setContainsIcdpData:](v4, "setContainsIcdpData:", [v28 BOOLValue]);

    Helper_x8__kSecureBackupUsesMultipleiCSCKey = gotLoadHelper_x8__kSecureBackupUsesMultipleiCSCKey(v29);
    v32 = [informationCopy objectForKeyedSubscript:{**(v31 + 3984), Helper_x8__kSecureBackupUsesMultipleiCSCKey}];
    -[OTCDPRecoveryInformation setUsesMultipleIcsc:](v4, "setUsesMultipleIcsc:", [v32 BOOLValue]);

    Helper_x8__kSecureBackupNonViableRepairKey = gotLoadHelper_x8__kSecureBackupNonViableRepairKey(v33);
    v36 = [informationCopy objectForKeyedSubscript:{**(v35 + 3824), Helper_x8__kSecureBackupNonViableRepairKey}];
    -[OTCDPRecoveryInformation setNonViableRepair:](v4, "setNonViableRepair:", [v36 BOOLValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)escrowAuthenticationInfoToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    authenticationAppleid = [dictionaryCopy authenticationAppleid];
    v6 = [authenticationAppleid isEqualToString:&stru_1F48F2A78];

    if ((v6 & 1) == 0)
    {
      authenticationAppleid2 = [dictionaryCopy authenticationAppleid];
      Helper_x8__kSecureBackupAuthenticationAppleID = gotLoadHelper_x8__kSecureBackupAuthenticationAppleID(v8);
      [dictionary setObject:authenticationAppleid2 forKeyedSubscript:{**(v10 + 3528), Helper_x8__kSecureBackupAuthenticationAppleID}];
    }

    authenticationAuthToken = [dictionaryCopy authenticationAuthToken];
    v12 = [authenticationAuthToken isEqualToString:&stru_1F48F2A78];

    if ((v12 & 1) == 0)
    {
      authenticationAuthToken2 = [dictionaryCopy authenticationAuthToken];
      Helper_x8__kSecureBackupAuthenticationAuthToken = gotLoadHelper_x8__kSecureBackupAuthenticationAuthToken(v14);
      [dictionary setObject:authenticationAuthToken2 forKeyedSubscript:{**(v16 + 3544), Helper_x8__kSecureBackupAuthenticationAuthToken}];
    }

    authenticationDsid = [dictionaryCopy authenticationDsid];
    v18 = [authenticationDsid isEqualToString:&stru_1F48F2A78];

    if ((v18 & 1) == 0)
    {
      authenticationDsid2 = [dictionaryCopy authenticationDsid];
      Helper_x8__kSecureBackupAuthenticationDSID = gotLoadHelper_x8__kSecureBackupAuthenticationDSID(v20);
      [dictionary setObject:authenticationDsid2 forKeyedSubscript:{**(v22 + 3560), Helper_x8__kSecureBackupAuthenticationDSID}];
    }

    authenticationEscrowproxyUrl = [dictionaryCopy authenticationEscrowproxyUrl];
    v24 = [authenticationEscrowproxyUrl isEqualToString:&stru_1F48F2A78];

    if ((v24 & 1) == 0)
    {
      authenticationEscrowproxyUrl2 = [dictionaryCopy authenticationEscrowproxyUrl];
      Helper_x8__kSecureBackupAuthenticationEscrowProxyURL = gotLoadHelper_x8__kSecureBackupAuthenticationEscrowProxyURL(v26);
      [dictionary setObject:authenticationEscrowproxyUrl2 forKeyedSubscript:{**(v28 + 3576), Helper_x8__kSecureBackupAuthenticationEscrowProxyURL}];
    }

    authenticationIcloudEnvironment = [dictionaryCopy authenticationIcloudEnvironment];
    v30 = [authenticationIcloudEnvironment isEqualToString:&stru_1F48F2A78];

    if ((v30 & 1) == 0)
    {
      authenticationIcloudEnvironment2 = [dictionaryCopy authenticationIcloudEnvironment];
      Helper_x8__kSecureBackupAuthenticationiCloudEnvironment = gotLoadHelper_x8__kSecureBackupAuthenticationiCloudEnvironment(v32);
      [dictionary setObject:authenticationIcloudEnvironment2 forKeyedSubscript:{**(v34 + 3624), Helper_x8__kSecureBackupAuthenticationiCloudEnvironment}];
    }

    authenticationPassword = [dictionaryCopy authenticationPassword];
    v36 = [authenticationPassword isEqualToString:&stru_1F48F2A78];

    if ((v36 & 1) == 0)
    {
      authenticationPassword2 = [dictionaryCopy authenticationPassword];
      Helper_x8__kSecureBackupAuthenticationPassword = gotLoadHelper_x8__kSecureBackupAuthenticationPassword(v38);
      [dictionary setObject:authenticationPassword2 forKeyedSubscript:{**(v40 + 3592), Helper_x8__kSecureBackupAuthenticationPassword}];
    }

    fmipUuid = [dictionaryCopy fmipUuid];
    v42 = [fmipUuid isEqualToString:&stru_1F48F2A78];

    if ((v42 & 1) == 0)
    {
      fmipUuid2 = [dictionaryCopy fmipUuid];
      Helper_x8__kSecureBackupFMiPUUIDKey = gotLoadHelper_x8__kSecureBackupFMiPUUIDKey(v44);
      [dictionary setObject:fmipUuid2 forKeyedSubscript:{**(v46 + 3752), Helper_x8__kSecureBackupFMiPUUIDKey}];
    }

    [dictionaryCopy fmipRecovery];
    Helper_x8__kSecureBackupFMiPRecoveryKey = gotLoadHelper_x8__kSecureBackupFMiPRecoveryKey(v47);
    v50 = **(v49 + 3744);
    [dictionary setObject:Helper_x8__kSecureBackupFMiPRecoveryKey forKeyedSubscript:?];
    [dictionaryCopy idmsRecovery];
    Helper_x8__kSecureBackupIDMSRecoveryKey = gotLoadHelper_x8__kSecureBackupIDMSRecoveryKey(v51);
    v54 = **(v53 + 3792);
    [dictionary setObject:Helper_x8__kSecureBackupIDMSRecoveryKey forKeyedSubscript:?];
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

+ (id)dictionaryToEscrowAuthenticationInfo:(id)info
{
  infoCopy = info;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = objc_alloc_init(OTEscrowAuthenticationInformation);
    Helper_x8__kSecureBackupAuthenticationAppleID = gotLoadHelper_x8__kSecureBackupAuthenticationAppleID(v5);
    v8 = [infoCopy objectForKeyedSubscript:{**(v7 + 3528), Helper_x8__kSecureBackupAuthenticationAppleID}];
    [(OTEscrowAuthenticationInformation *)v4 setAuthenticationAppleid:v8];

    Helper_x8__kSecureBackupAuthenticationAuthToken = gotLoadHelper_x8__kSecureBackupAuthenticationAuthToken(v9);
    v12 = [infoCopy objectForKeyedSubscript:{**(v11 + 3544), Helper_x8__kSecureBackupAuthenticationAuthToken}];
    [(OTEscrowAuthenticationInformation *)v4 setAuthenticationAuthToken:v12];

    Helper_x8__kSecureBackupAuthenticationDSID = gotLoadHelper_x8__kSecureBackupAuthenticationDSID(v13);
    v16 = [infoCopy objectForKeyedSubscript:{**(v15 + 3560), Helper_x8__kSecureBackupAuthenticationDSID}];
    [(OTEscrowAuthenticationInformation *)v4 setAuthenticationDsid:v16];

    Helper_x8__kSecureBackupAuthenticationEscrowProxyURL = gotLoadHelper_x8__kSecureBackupAuthenticationEscrowProxyURL(v17);
    v20 = [infoCopy objectForKeyedSubscript:{**(v19 + 3576), Helper_x8__kSecureBackupAuthenticationEscrowProxyURL}];
    [(OTEscrowAuthenticationInformation *)v4 setAuthenticationEscrowproxyUrl:v20];

    Helper_x8__kSecureBackupAuthenticationiCloudEnvironment = gotLoadHelper_x8__kSecureBackupAuthenticationiCloudEnvironment(v21);
    v24 = [infoCopy objectForKeyedSubscript:{**(v23 + 3624), Helper_x8__kSecureBackupAuthenticationiCloudEnvironment}];
    [(OTEscrowAuthenticationInformation *)v4 setAuthenticationIcloudEnvironment:v24];

    Helper_x8__kSecureBackupAuthenticationPassword = gotLoadHelper_x8__kSecureBackupAuthenticationPassword(v25);
    v28 = [infoCopy objectForKeyedSubscript:{**(v27 + 3592), Helper_x8__kSecureBackupAuthenticationPassword}];
    [(OTEscrowAuthenticationInformation *)v4 setAuthenticationPassword:v28];

    Helper_x8__kSecureBackupFMiPUUIDKey = gotLoadHelper_x8__kSecureBackupFMiPUUIDKey(v29);
    v32 = [infoCopy objectForKeyedSubscript:{**(v31 + 3752), Helper_x8__kSecureBackupFMiPUUIDKey}];
    [(OTEscrowAuthenticationInformation *)v4 setFmipUuid:v32];

    Helper_x8__kSecureBackupFMiPRecoveryKey = gotLoadHelper_x8__kSecureBackupFMiPRecoveryKey(v33);
    v36 = [infoCopy objectForKeyedSubscript:{**(v35 + 3744), Helper_x8__kSecureBackupFMiPRecoveryKey}];
    -[OTEscrowAuthenticationInformation setFmipRecovery:](v4, "setFmipRecovery:", [v36 BOOLValue]);

    Helper_x8__kSecureBackupIDMSRecoveryKey = gotLoadHelper_x8__kSecureBackupIDMSRecoveryKey(v37);
    v40 = [infoCopy objectForKeyedSubscript:{**(v39 + 3792), Helper_x8__kSecureBackupIDMSRecoveryKey}];
    -[OTEscrowAuthenticationInformation setIdmsRecovery:](v4, "setIdmsRecovery:", [v40 BOOLValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
@interface OTEscrowTranslation
+ (BOOL)supportedRestorePath:(id)a3;
+ (id)CDPRecordContextToDictionary:(id)a3;
+ (id)_dateWithSecureBackupDateString:(id)a3;
+ (id)_stringWithSecureBackupDate:(id)a3;
+ (id)cdpRecoveryInformationToDictionary:(id)a3;
+ (id)dictionaryToCDPRecordContext:(id)a3;
+ (id)dictionaryToCDPRecoveryInformation:(id)a3;
+ (id)dictionaryToEscrowAuthenticationInfo:(id)a3;
+ (id)dictionaryToEscrowRecord:(id)a3;
+ (id)dictionaryToMetadata:(id)a3;
+ (id)escrowAuthenticationInfoToDictionary:(id)a3;
+ (id)escrowRecordToDictionary:(id)a3;
+ (id)metadataToDictionary:(id)a3;
@end

@implementation OTEscrowTranslation

+ (BOOL)supportedRestorePath:(id)a3
{
  v5 = a3;
  v6 = [v5 authInfo];
  if (([v6 idmsRecovery] & 1) == 0)
  {
    v8 = [v5 authInfo];
    v9 = [v8 fmipUuid];
    if (v9)
    {
      v3 = [v5 authInfo];
      v4 = [v3 fmipUuid];
      if (![v4 isEqualToString:&stru_1F48F2A78])
      {
        LOBYTE(v7) = 0;
        goto LABEL_8;
      }
    }

    v10 = [v5 authInfo];
    if ([v10 fmipRecovery])
    {

      LOBYTE(v7) = 0;
      if (!v9)
      {
LABEL_9:

        goto LABEL_10;
      }

LABEL_8:

      goto LABEL_9;
    }

    v12 = [v5 cdpInfo];
    v13 = [v12 recoveryKey];
    if (v13)
    {
      v16 = [v5 cdpInfo];
      v15 = [v16 recoveryKey];
      if (![v15 isEqualToString:&stru_1F48F2A78])
      {
        LOBYTE(v7) = 0;
        goto LABEL_18;
      }

      v17 = v12;
    }

    else
    {
      v17 = v12;
    }

    v14 = [v5 cdpInfo];
    v7 = [v14 usePreviouslyCachedRecoveryKey] ^ 1;

    if (!v13)
    {

LABEL_20:
      if (!v9)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v12 = v17;
LABEL_18:

    goto LABEL_20;
  }

  LOBYTE(v7) = 0;
LABEL_10:

  return v7;
}

+ (id)CDPRecordContextToDictionary:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [v3 authInfo];
    v6 = [OTEscrowTranslation escrowAuthenticationInfoToDictionary:v5];
    [v4 addEntriesFromDictionary:v6];

    v7 = [v3 cdpInfo];
    v8 = [OTEscrowTranslation cdpRecoveryInformationToDictionary:v7];
    [v4 addEntriesFromDictionary:v8];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dictionaryToCDPRecordContext:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = objc_alloc_init(OTICDPRecordContext);
    v5 = [OTEscrowTranslation dictionaryToEscrowAuthenticationInfo:v3];
    [(OTICDPRecordContext *)v4 setAuthInfo:v5];

    v6 = [OTEscrowTranslation dictionaryToCDPRecoveryInformation:v3];
    [(OTICDPRecordContext *)v4 setCdpInfo:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)escrowRecordToDictionary:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v3, "creationDate")}];
    Helper_x8__kSecureBackupEscrowDateKey = gotLoadHelper_x8__kSecureBackupEscrowDateKey(v6);
    [v4 setObject:v5 forKeyedSubscript:{**(v8 + 3712), Helper_x8__kSecureBackupEscrowDateKey}];

    v9 = [v3 escrowInformationMetadata];
    v10 = [OTEscrowTranslation metadataToDictionary:v9];
    [v4 setObject:v10 forKeyedSubscript:@"metadata"];

    v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{objc_msgSend(v3, "remainingAttempts")}];
    Helper_x8__kSecureBackupRemainingAttemptsKey = gotLoadHelper_x8__kSecureBackupRemainingAttemptsKey(v12);
    [v4 setObject:v11 forKeyedSubscript:{**(v14 + 3912), Helper_x8__kSecureBackupRemainingAttemptsKey}];

    v15 = [v3 label];
    Helper_x8__kSecureBackupRecordLabelKey = gotLoadHelper_x8__kSecureBackupRecordLabelKey(v16);
    [v4 setObject:v15 forKeyedSubscript:{**(v18 + 3880), Helper_x8__kSecureBackupRecordLabelKey}];

    [v3 recordStatus];
    Helper_x8__kSecureBackupRecordStatusKey = gotLoadHelper_x8__kSecureBackupRecordStatusKey(v19);
    v22 = **(v21 + 3888);
    [v4 setObject:Helper_x8__kSecureBackupRecordStatusKey forKeyedSubscript:?];
    v23 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{objc_msgSend(v3, "silentAttemptAllowed")}];
    [v4 setObject:v23 forKeyedSubscript:@"silentAttemptAllowed"];

    v24 = [v3 federationId];
    [v4 setObject:v24 forKeyedSubscript:@"FEDERATIONID"];

    v25 = [v3 expectedFederationId];
    [v4 setObject:v25 forKeyedSubscript:@"EXPECTEDFEDERATIONID"];

    v26 = [v3 recordId];
    Helper_x8__kSecureBackupRecordIDKey = gotLoadHelper_x8__kSecureBackupRecordIDKey(v27);
    [v4 setObject:v26 forKeyedSubscript:{**(v29 + 3872), Helper_x8__kSecureBackupRecordIDKey}];

    v30 = [v3 serialNumber];
    Helper_x8__kSecureBackupPeerInfoSerialNumberKey = gotLoadHelper_x8__kSecureBackupPeerInfoSerialNumberKey(v31);
    [v4 setObject:v30 forKeyedSubscript:{**(v33 + 3864), Helper_x8__kSecureBackupPeerInfoSerialNumberKey}];

    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v3, "coolOffEnd")}];
    Helper_x8__kSecureBackupCoolOffEndKey = gotLoadHelper_x8__kSecureBackupCoolOffEndKey(v35);
    [v4 setObject:v34 forKeyedSubscript:{**(v37 + 3688), Helper_x8__kSecureBackupCoolOffEndKey}];

    v38 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "recoveryStatus")}];
    Helper_x8__kSecureBackupRecoveryStatusKey = gotLoadHelper_x8__kSecureBackupRecoveryStatusKey(v39);
    [v4 setObject:v38 forKeyedSubscript:{**(v41 + 3904), Helper_x8__kSecureBackupRecoveryStatusKey}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)metadataToDictionary:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [MEMORY[0x1E695DF90] dictionary];
    Helper_x8__kSecureBackupClientMetadataKey = gotLoadHelper_x8__kSecureBackupClientMetadataKey(v6);
    v9 = **(v8 + 3664);
    [v4 setObject:v5 forKeyedSubscript:{v9, Helper_x8__kSecureBackupClientMetadataKey}];

    v10 = [v3 backupKeybagDigest];
    [v4 setObject:v10 forKeyedSubscript:@"BackupKeybagDigest"];

    v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:{objc_msgSend(v3, "secureBackupUsesMultipleIcscs")}];
    Helper_x8__kSecureBackupUsesMultipleiCSCKey = gotLoadHelper_x8__kSecureBackupUsesMultipleiCSCKey(v12);
    [v4 setObject:v11 forKeyedSubscript:{**(v14 + 3984), Helper_x8__kSecureBackupUsesMultipleiCSCKey}];

    v15 = [v3 bottleId];
    Helper_x8__kSecureBackupBottleIDKey = gotLoadHelper_x8__kSecureBackupBottleIDKey(v16);
    [v4 setObject:v15 forKeyedSubscript:{**(v18 + 3640), Helper_x8__kSecureBackupBottleIDKey}];

    v19 = [v3 bottleValidity];
    [v4 setObject:v19 forKeyedSubscript:@"bottleValid"];

    v20 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:{objc_msgSend(v3, "secureBackupTimestamp")}];
    v21 = [OTEscrowTranslation _stringWithSecureBackupDate:v20];
    [v4 setObject:v21 forKeyedSubscript:@"com.apple.securebackup.timestamp"];

    v22 = [v3 escrowedSpki];
    Helper_x8__kSecureBackupEscrowedSPKIKey = gotLoadHelper_x8__kSecureBackupEscrowedSPKIKey(v23);
    [v4 setObject:v22 forKeyedSubscript:{**(v25 + 3720), Helper_x8__kSecureBackupEscrowedSPKIKey}];

    v26 = [v3 peerInfo];
    Helper_x8__kSecureBackupPeerInfoDataKey = gotLoadHelper_x8__kSecureBackupPeerInfoDataKey(v27);
    [v4 setObject:v26 forKeyedSubscript:{**(v29 + 3856), Helper_x8__kSecureBackupPeerInfoDataKey}];

    v30 = [v3 serial];
    Helper_x8__kSecureBackupSerialNumberKey = gotLoadHelper_x8__kSecureBackupSerialNumberKey(v31);
    [v4 setObject:v30 forKeyedSubscript:{**(v33 + 3928), Helper_x8__kSecureBackupSerialNumberKey}];

    v34 = [v3 build];
    Helper_x8__kSecureBackupBuildVersionKey = gotLoadHelper_x8__kSecureBackupBuildVersionKey(v35);
    [v4 setObject:v34 forKeyedSubscript:{**(v37 + 3648), Helper_x8__kSecureBackupBuildVersionKey}];

    v38 = [v3 passcodeGeneration];
    LODWORD(v20) = [v38 hasValue];

    if (v20)
    {
      v39 = MEMORY[0x1E696AD98];
      v40 = [v3 passcodeGeneration];
      v41 = [v39 numberWithUnsignedLongLong:{objc_msgSend(v40, "value")}];
      Helper_x8__kSecureBackupPasscodeGenerationKey = gotLoadHelper_x8__kSecureBackupPasscodeGenerationKey(v42);
      [v4 setObject:v41 forKeyedSubscript:{**(v44 + 3840), Helper_x8__kSecureBackupPasscodeGenerationKey}];
    }

    v45 = objc_alloc(MEMORY[0x1E696AD98]);
    v46 = [v3 clientMetadata];
    v47 = [v45 initWithUnsignedLongLong:{objc_msgSend(v46, "devicePlatform")}];
    v48 = [v4 objectForKeyedSubscript:v9];
    [v48 setObject:v47 forKeyedSubscript:@"device_platform"];

    v49 = MEMORY[0x1E695DF00];
    v50 = [v3 clientMetadata];
    v51 = [v49 dateWithTimeIntervalSince1970:{objc_msgSend(v50, "secureBackupMetadataTimestamp")}];
    v52 = [OTEscrowTranslation _stringWithSecureBackupDate:v51];
    v53 = [v4 objectForKeyedSubscript:v9];
    [v53 setObject:v52 forKeyedSubscript:@"SecureBackupMetadataTimestamp"];

    v54 = objc_alloc(MEMORY[0x1E696AD98]);
    v55 = [v3 clientMetadata];
    v56 = [v54 initWithUnsignedLongLong:{objc_msgSend(v55, "secureBackupNumericPassphraseLength")}];
    v57 = [v4 objectForKeyedSubscript:v9];
    Helper_x8__kSecureBackupNumericPassphraseLengthKey = gotLoadHelper_x8__kSecureBackupNumericPassphraseLengthKey(v58);
    [v61 setObject:v56 forKeyedSubscript:{**(v60 + 3832), Helper_x8__kSecureBackupNumericPassphraseLengthKey}];

    v62 = objc_alloc(MEMORY[0x1E696AD98]);
    v63 = [v3 clientMetadata];
    v64 = [v62 initWithUnsignedLongLong:{objc_msgSend(v63, "secureBackupUsesComplexPassphrase")}];
    v65 = [v4 objectForKeyedSubscript:v9];
    Helper_x8__kSecureBackupUsesComplexPassphraseKey = gotLoadHelper_x8__kSecureBackupUsesComplexPassphraseKey(v66);
    [v69 setObject:v64 forKeyedSubscript:{**(v68 + 3976), Helper_x8__kSecureBackupUsesComplexPassphraseKey}];

    v70 = objc_alloc(MEMORY[0x1E696AD98]);
    v71 = [v3 clientMetadata];
    v72 = [v70 initWithUnsignedLongLong:{objc_msgSend(v71, "secureBackupUsesNumericPassphrase")}];
    v73 = [v4 objectForKeyedSubscript:v9];
    Helper_x8__kSecureBackupUsesNumericPassphraseKey = gotLoadHelper_x8__kSecureBackupUsesNumericPassphraseKey(v74);
    [v77 setObject:v72 forKeyedSubscript:{**(v76 + 3992), Helper_x8__kSecureBackupUsesNumericPassphraseKey}];

    v78 = [v3 clientMetadata];
    v79 = [v78 deviceColor];
    v80 = [v4 objectForKeyedSubscript:v9];
    [v80 setObject:v79 forKeyedSubscript:@"device_color"];

    v81 = [v3 clientMetadata];
    v82 = [v81 deviceEnclosureColor];
    v83 = [v4 objectForKeyedSubscript:v9];
    [v83 setObject:v82 forKeyedSubscript:@"device_enclosure_color"];

    v84 = [v3 clientMetadata];
    v85 = [v84 deviceMid];
    v86 = [v4 objectForKeyedSubscript:v9];
    [v86 setObject:v85 forKeyedSubscript:@"device_mid"];

    v87 = [v3 clientMetadata];
    v88 = [v87 deviceModel];
    v89 = [v4 objectForKeyedSubscript:v9];
    [v89 setObject:v88 forKeyedSubscript:@"device_model"];

    v90 = [v3 clientMetadata];
    v91 = [v90 deviceModelClass];
    v92 = [v4 objectForKeyedSubscript:v9];
    [v92 setObject:v91 forKeyedSubscript:@"device_model_class"];

    v93 = [v3 clientMetadata];
    v94 = [v93 deviceModelVersion];
    v95 = [v4 objectForKeyedSubscript:v9];
    [v95 setObject:v94 forKeyedSubscript:@"device_model_version"];

    v96 = [v3 clientMetadata];
    v97 = [v96 deviceName];
    v98 = [v4 objectForKeyedSubscript:v9];
    [v98 setObject:v97 forKeyedSubscript:@"device_name"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dictionaryToEscrowRecord:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = objc_alloc_init(OTEscrowRecord);
    Helper_x8__kSecureBackupEscrowDateKey = gotLoadHelper_x8__kSecureBackupEscrowDateKey(v5);
    v8 = [v3 objectForKeyedSubscript:{**(v7 + 3712), Helper_x8__kSecureBackupEscrowDateKey}];
    [v8 timeIntervalSince1970];
    [(OTEscrowRecord *)v4 setCreationDate:v9];
    v10 = [v3 objectForKeyedSubscript:@"metadata"];
    v11 = [OTEscrowTranslation dictionaryToMetadata:v10];
    [(OTEscrowRecord *)v4 setEscrowInformationMetadata:v11];

    Helper_x8__kSecureBackupRemainingAttemptsKey = gotLoadHelper_x8__kSecureBackupRemainingAttemptsKey(v12);
    v15 = [v3 objectForKeyedSubscript:{**(v14 + 3912), Helper_x8__kSecureBackupRemainingAttemptsKey}];
    -[OTEscrowRecord setRemainingAttempts:](v4, "setRemainingAttempts:", [v15 longLongValue]);
    Helper_x8__kSecureBackupRecordLabelKey = gotLoadHelper_x8__kSecureBackupRecordLabelKey(v16);
    v19 = [v3 objectForKeyedSubscript:{**(v18 + 3880), Helper_x8__kSecureBackupRecordLabelKey}];
    [(OTEscrowRecord *)v4 setLabel:v19];

    Helper_x8__kSecureBackupRecordStatusKey = gotLoadHelper_x8__kSecureBackupRecordStatusKey(v20);
    v23 = [v3 objectForKeyedSubscript:{**(v22 + 3888), Helper_x8__kSecureBackupRecordStatusKey}];
    -[OTEscrowRecord setRecordStatus:](v4, "setRecordStatus:", [v23 isEqualToString:@"valid"] ^ 1);

    v24 = [v3 objectForKeyedSubscript:@"silentAttemptAllowed"];
    -[OTEscrowRecord setSilentAttemptAllowed:](v4, "setSilentAttemptAllowed:", [v24 BOOLValue]);

    v25 = [v3 objectForKeyedSubscript:@"FEDERATIONID"];
    [(OTEscrowRecord *)v4 setFederationId:v25];

    v26 = [v3 objectForKeyedSubscript:@"EXPECTEDFEDERATIONID"];
    [(OTEscrowRecord *)v4 setExpectedFederationId:v26];

    Helper_x8__kSecureBackupRecordIDKey = gotLoadHelper_x8__kSecureBackupRecordIDKey(v27);
    v30 = [v3 objectForKeyedSubscript:{**(v29 + 3872), Helper_x8__kSecureBackupRecordIDKey}];
    [(OTEscrowRecord *)v4 setRecordId:v30];

    Helper_x8__kSecureBackupPeerInfoSerialNumberKey = gotLoadHelper_x8__kSecureBackupPeerInfoSerialNumberKey(v31);
    v34 = [v3 objectForKeyedSubscript:{**(v33 + 3864), Helper_x8__kSecureBackupPeerInfoSerialNumberKey}];
    [(OTEscrowRecord *)v4 setSerialNumber:v34];

    Helper_x8__kSecureBackupCoolOffEndKey = gotLoadHelper_x8__kSecureBackupCoolOffEndKey(v35);
    v38 = **(v37 + 3688);
    v39 = [v3 objectForKeyedSubscript:{v38, Helper_x8__kSecureBackupCoolOffEndKey}];

    if (v39)
    {
      v41 = [v3 objectForKeyedSubscript:v38];
      -[OTEscrowRecord setCoolOffEnd:](v4, "setCoolOffEnd:", [v41 longLongValue]);
    }

    Helper_x8__kSecureBackupRecoveryStatusKey = gotLoadHelper_x8__kSecureBackupRecoveryStatusKey(v40);
    v44 = [v3 objectForKeyedSubscript:{**(v43 + 3904), Helper_x8__kSecureBackupRecoveryStatusKey}];
    -[OTEscrowRecord setRecoveryStatus:](v4, "setRecoveryStatus:", [v44 intValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dictionaryToMetadata:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = objc_alloc_init(OTEscrowRecordMetadata);
    v5 = [v3 objectForKeyedSubscript:@"BackupKeybagDigest"];
    [(OTEscrowRecordMetadata *)v4 setBackupKeybagDigest:v5];

    Helper_x8__kSecureBackupUsesMultipleiCSCKey = gotLoadHelper_x8__kSecureBackupUsesMultipleiCSCKey(v6);
    v9 = [v3 objectForKeyedSubscript:{**(v8 + 3984), Helper_x8__kSecureBackupUsesMultipleiCSCKey}];
    -[OTEscrowRecordMetadata setSecureBackupUsesMultipleIcscs:](v4, "setSecureBackupUsesMultipleIcscs:", [v9 BOOLValue]);

    Helper_x8__kSecureBackupBottleIDKey = gotLoadHelper_x8__kSecureBackupBottleIDKey(v10);
    v13 = [v3 objectForKeyedSubscript:{**(v12 + 3640), Helper_x8__kSecureBackupBottleIDKey}];
    [(OTEscrowRecordMetadata *)v4 setBottleId:v13];

    v14 = [v3 objectForKeyedSubscript:@"bottleValid"];
    [(OTEscrowRecordMetadata *)v4 setBottleValidity:v14];

    v15 = [v3 objectForKeyedSubscript:@"com.apple.securebackup.timestamp"];
    v16 = [OTEscrowTranslation _dateWithSecureBackupDateString:v15];

    [v16 timeIntervalSince1970];
    [(OTEscrowRecordMetadata *)v4 setSecureBackupTimestamp:v17];
    Helper_x8__kSecureBackupEscrowedSPKIKey = gotLoadHelper_x8__kSecureBackupEscrowedSPKIKey(v18);
    v21 = [v3 objectForKeyedSubscript:{**(v20 + 3720), Helper_x8__kSecureBackupEscrowedSPKIKey}];
    [(OTEscrowRecordMetadata *)v4 setEscrowedSpki:v21];

    Helper_x8__kSecureBackupPeerInfoDataKey = gotLoadHelper_x8__kSecureBackupPeerInfoDataKey(v22);
    v25 = [v3 objectForKeyedSubscript:{**(v24 + 3856), Helper_x8__kSecureBackupPeerInfoDataKey}];
    [(OTEscrowRecordMetadata *)v4 setPeerInfo:v25];

    Helper_x8__kSecureBackupSerialNumberKey = gotLoadHelper_x8__kSecureBackupSerialNumberKey(v26);
    v29 = [v3 objectForKeyedSubscript:{**(v28 + 3928), Helper_x8__kSecureBackupSerialNumberKey}];
    [(OTEscrowRecordMetadata *)v4 setSerial:v29];

    Helper_x8__kSecureBackupBuildVersionKey = gotLoadHelper_x8__kSecureBackupBuildVersionKey(v30);
    v33 = [v3 objectForKeyedSubscript:{**(v32 + 3648), Helper_x8__kSecureBackupBuildVersionKey}];
    [(OTEscrowRecordMetadata *)v4 setBuild:v33];

    Helper_x8__kSecureBackupPasscodeGenerationKey = gotLoadHelper_x8__kSecureBackupPasscodeGenerationKey(v34);
    v37 = **(v36 + 3840);
    v38 = [v3 objectForKeyedSubscript:{v37, Helper_x8__kSecureBackupPasscodeGenerationKey}];

    if (v38)
    {
      v40 = objc_alloc_init(OTEscrowRecordMetadataPasscodeGeneration);
      [(OTEscrowRecordMetadata *)v4 setPasscodeGeneration:v40];

      v41 = [v3 objectForKeyedSubscript:v37];
      v42 = [v41 longLongValue];
      v43 = [(OTEscrowRecordMetadata *)v4 passcodeGeneration];
      [v43 setValue:v42];
    }

    Helper_x8__kSecureBackupClientMetadataKey = gotLoadHelper_x8__kSecureBackupClientMetadataKey(v39);
    v46 = [v3 objectForKeyedSubscript:{**(v45 + 3664), Helper_x8__kSecureBackupClientMetadataKey}];
    v47 = objc_alloc_init(OTEscrowRecordMetadataClientMetadata);
    [(OTEscrowRecordMetadata *)v4 setClientMetadata:v47];

    v48 = [v46 objectForKeyedSubscript:@"device_platform"];
    v49 = [v48 longLongValue];
    v50 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [v50 setDevicePlatform:v49];

    v51 = [v46 objectForKeyedSubscript:@"SecureBackupMetadataTimestamp"];
    v52 = [OTEscrowTranslation _dateWithSecureBackupDateString:v51];

    [v52 timeIntervalSince1970];
    v54 = v53;
    v55 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [v55 setSecureBackupMetadataTimestamp:v54];

    Helper_x8__kSecureBackupNumericPassphraseLengthKey = gotLoadHelper_x8__kSecureBackupNumericPassphraseLengthKey(v56);
    v59 = [v46 objectForKeyedSubscript:{**(v58 + 3832), Helper_x8__kSecureBackupNumericPassphraseLengthKey}];
    v60 = [v59 longLongValue];
    v61 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [v61 setSecureBackupNumericPassphraseLength:v60];

    Helper_x8__kSecureBackupUsesComplexPassphraseKey = gotLoadHelper_x8__kSecureBackupUsesComplexPassphraseKey(v62);
    v65 = [v46 objectForKeyedSubscript:{**(v64 + 3976), Helper_x8__kSecureBackupUsesComplexPassphraseKey}];
    v66 = [v65 BOOLValue];
    v67 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [v67 setSecureBackupUsesComplexPassphrase:v66];

    Helper_x8__kSecureBackupUsesNumericPassphraseKey = gotLoadHelper_x8__kSecureBackupUsesNumericPassphraseKey(v68);
    v71 = [v46 objectForKeyedSubscript:{**(v70 + 3992), Helper_x8__kSecureBackupUsesNumericPassphraseKey}];
    v72 = [v71 BOOLValue];
    v73 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [v73 setSecureBackupUsesNumericPassphrase:v72];

    v74 = [v46 objectForKeyedSubscript:@"device_color"];
    v75 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [v75 setDeviceColor:v74];

    v76 = [v46 objectForKeyedSubscript:@"device_enclosure_color"];
    v77 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [v77 setDeviceEnclosureColor:v76];

    v78 = [v46 objectForKeyedSubscript:@"device_mid"];
    v79 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [v79 setDeviceMid:v78];

    v80 = [v46 objectForKeyedSubscript:@"device_model"];
    v81 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [v81 setDeviceModel:v80];

    v82 = [v46 objectForKeyedSubscript:@"device_model_class"];
    v83 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [v83 setDeviceModelClass:v82];

    v84 = [v46 objectForKeyedSubscript:@"device_model_version"];
    v85 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [v85 setDeviceModelVersion:v84];

    v86 = [v46 objectForKeyedSubscript:@"device_name"];
    v87 = [(OTEscrowRecordMetadata *)v4 clientMetadata];
    [v87 setDeviceName:v86];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_stringWithSecureBackupDate:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v5];

  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v6 = [v4 stringFromDate:v3];

  return v6;
}

+ (id)_dateWithSecureBackupDateString:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setDateFormat:@"dd-MM-yyyy HH:mm:ss"];
  v5 = [v4 dateFromString:v3];
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
    v7 = [v4 dateFromString:v3];
  }

  v9 = v7;

  return v9;
}

+ (id)cdpRecoveryInformationToDictionary:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [v3 recoverySecret];
    Helper_x8__kSecureBackupPassphraseKey = gotLoadHelper_x8__kSecureBackupPassphraseKey(v6);
    [v4 setObject:v5 forKeyedSubscript:{**(v8 + 3848), Helper_x8__kSecureBackupPassphraseKey}];

    [v3 useCachedSecret];
    Helper_x8__kSecureBackupUseCachedPassphraseKey = gotLoadHelper_x8__kSecureBackupUseCachedPassphraseKey(v9);
    v12 = **(v11 + 3968);
    [v4 setObject:Helper_x8__kSecureBackupUseCachedPassphraseKey forKeyedSubscript:?];
    v13 = [v3 recoveryKey];
    Helper_x8__kSecureBackupRecoveryKeyKey = gotLoadHelper_x8__kSecureBackupRecoveryKeyKey(v14);
    [v4 setObject:v13 forKeyedSubscript:{**(v16 + 3896), Helper_x8__kSecureBackupRecoveryKeyKey}];

    [v3 usePreviouslyCachedRecoveryKey];
    Helper_x8__kSecureBackupUsesRecoveryKeyKey = gotLoadHelper_x8__kSecureBackupUsesRecoveryKeyKey(v17);
    v20 = **(v19 + 4000);
    [v4 setObject:Helper_x8__kSecureBackupUsesRecoveryKeyKey forKeyedSubscript:?];
    [v3 silentRecoveryAttempt];
    Helper_x8__kSecureBackupSilentRecoveryAttemptKey = gotLoadHelper_x8__kSecureBackupSilentRecoveryAttemptKey(v21);
    v24 = **(v23 + 3936);
    [v4 setObject:Helper_x8__kSecureBackupSilentRecoveryAttemptKey forKeyedSubscript:?];
    [v3 containsIcdpData];
    Helper_x8__kSecureBackupContainsiCDPDataKey = gotLoadHelper_x8__kSecureBackupContainsiCDPDataKey(v25);
    v28 = **(v27 + 3672);
    [v4 setObject:Helper_x8__kSecureBackupContainsiCDPDataKey forKeyedSubscript:?];
    [v3 usesMultipleIcsc];
    Helper_x8__kSecureBackupUsesMultipleiCSCKey = gotLoadHelper_x8__kSecureBackupUsesMultipleiCSCKey(v29);
    v32 = **(v31 + 3984);
    [v4 setObject:Helper_x8__kSecureBackupUsesMultipleiCSCKey forKeyedSubscript:?];
    [v3 nonViableRepair];
    Helper_x8__kSecureBackupNonViableRepairKey = gotLoadHelper_x8__kSecureBackupNonViableRepairKey(v33);
    v36 = **(v35 + 3824);
    [v4 setObject:Helper_x8__kSecureBackupNonViableRepairKey forKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dictionaryToCDPRecoveryInformation:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = objc_alloc_init(OTCDPRecoveryInformation);
    Helper_x8__kSecureBackupPassphraseKey = gotLoadHelper_x8__kSecureBackupPassphraseKey(v5);
    v8 = [v3 objectForKeyedSubscript:{**(v7 + 3848), Helper_x8__kSecureBackupPassphraseKey}];
    [(OTCDPRecoveryInformation *)v4 setRecoverySecret:v8];

    Helper_x8__kSecureBackupUseCachedPassphraseKey = gotLoadHelper_x8__kSecureBackupUseCachedPassphraseKey(v9);
    v12 = [v3 objectForKeyedSubscript:{**(v11 + 3968), Helper_x8__kSecureBackupUseCachedPassphraseKey}];
    -[OTCDPRecoveryInformation setUseCachedSecret:](v4, "setUseCachedSecret:", [v12 BOOLValue]);

    Helper_x8__kSecureBackupRecoveryKeyKey = gotLoadHelper_x8__kSecureBackupRecoveryKeyKey(v13);
    v16 = [v3 objectForKeyedSubscript:{**(v15 + 3896), Helper_x8__kSecureBackupRecoveryKeyKey}];
    [(OTCDPRecoveryInformation *)v4 setRecoveryKey:v16];

    Helper_x8__kSecureBackupUsesRecoveryKeyKey = gotLoadHelper_x8__kSecureBackupUsesRecoveryKeyKey(v17);
    v20 = [v3 objectForKeyedSubscript:{**(v19 + 4000), Helper_x8__kSecureBackupUsesRecoveryKeyKey}];
    -[OTCDPRecoveryInformation setUsePreviouslyCachedRecoveryKey:](v4, "setUsePreviouslyCachedRecoveryKey:", [v20 BOOLValue]);

    Helper_x8__kSecureBackupSilentRecoveryAttemptKey = gotLoadHelper_x8__kSecureBackupSilentRecoveryAttemptKey(v21);
    v24 = [v3 objectForKeyedSubscript:{**(v23 + 3936), Helper_x8__kSecureBackupSilentRecoveryAttemptKey}];
    -[OTCDPRecoveryInformation setSilentRecoveryAttempt:](v4, "setSilentRecoveryAttempt:", [v24 BOOLValue]);

    Helper_x8__kSecureBackupContainsiCDPDataKey = gotLoadHelper_x8__kSecureBackupContainsiCDPDataKey(v25);
    v28 = [v3 objectForKeyedSubscript:{**(v27 + 3672), Helper_x8__kSecureBackupContainsiCDPDataKey}];
    -[OTCDPRecoveryInformation setContainsIcdpData:](v4, "setContainsIcdpData:", [v28 BOOLValue]);

    Helper_x8__kSecureBackupUsesMultipleiCSCKey = gotLoadHelper_x8__kSecureBackupUsesMultipleiCSCKey(v29);
    v32 = [v3 objectForKeyedSubscript:{**(v31 + 3984), Helper_x8__kSecureBackupUsesMultipleiCSCKey}];
    -[OTCDPRecoveryInformation setUsesMultipleIcsc:](v4, "setUsesMultipleIcsc:", [v32 BOOLValue]);

    Helper_x8__kSecureBackupNonViableRepairKey = gotLoadHelper_x8__kSecureBackupNonViableRepairKey(v33);
    v36 = [v3 objectForKeyedSubscript:{**(v35 + 3824), Helper_x8__kSecureBackupNonViableRepairKey}];
    -[OTCDPRecoveryInformation setNonViableRepair:](v4, "setNonViableRepair:", [v36 BOOLValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)escrowAuthenticationInfoToDictionary:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [v3 authenticationAppleid];
    v6 = [v5 isEqualToString:&stru_1F48F2A78];

    if ((v6 & 1) == 0)
    {
      v7 = [v3 authenticationAppleid];
      Helper_x8__kSecureBackupAuthenticationAppleID = gotLoadHelper_x8__kSecureBackupAuthenticationAppleID(v8);
      [v4 setObject:v7 forKeyedSubscript:{**(v10 + 3528), Helper_x8__kSecureBackupAuthenticationAppleID}];
    }

    v11 = [v3 authenticationAuthToken];
    v12 = [v11 isEqualToString:&stru_1F48F2A78];

    if ((v12 & 1) == 0)
    {
      v13 = [v3 authenticationAuthToken];
      Helper_x8__kSecureBackupAuthenticationAuthToken = gotLoadHelper_x8__kSecureBackupAuthenticationAuthToken(v14);
      [v4 setObject:v13 forKeyedSubscript:{**(v16 + 3544), Helper_x8__kSecureBackupAuthenticationAuthToken}];
    }

    v17 = [v3 authenticationDsid];
    v18 = [v17 isEqualToString:&stru_1F48F2A78];

    if ((v18 & 1) == 0)
    {
      v19 = [v3 authenticationDsid];
      Helper_x8__kSecureBackupAuthenticationDSID = gotLoadHelper_x8__kSecureBackupAuthenticationDSID(v20);
      [v4 setObject:v19 forKeyedSubscript:{**(v22 + 3560), Helper_x8__kSecureBackupAuthenticationDSID}];
    }

    v23 = [v3 authenticationEscrowproxyUrl];
    v24 = [v23 isEqualToString:&stru_1F48F2A78];

    if ((v24 & 1) == 0)
    {
      v25 = [v3 authenticationEscrowproxyUrl];
      Helper_x8__kSecureBackupAuthenticationEscrowProxyURL = gotLoadHelper_x8__kSecureBackupAuthenticationEscrowProxyURL(v26);
      [v4 setObject:v25 forKeyedSubscript:{**(v28 + 3576), Helper_x8__kSecureBackupAuthenticationEscrowProxyURL}];
    }

    v29 = [v3 authenticationIcloudEnvironment];
    v30 = [v29 isEqualToString:&stru_1F48F2A78];

    if ((v30 & 1) == 0)
    {
      v31 = [v3 authenticationIcloudEnvironment];
      Helper_x8__kSecureBackupAuthenticationiCloudEnvironment = gotLoadHelper_x8__kSecureBackupAuthenticationiCloudEnvironment(v32);
      [v4 setObject:v31 forKeyedSubscript:{**(v34 + 3624), Helper_x8__kSecureBackupAuthenticationiCloudEnvironment}];
    }

    v35 = [v3 authenticationPassword];
    v36 = [v35 isEqualToString:&stru_1F48F2A78];

    if ((v36 & 1) == 0)
    {
      v37 = [v3 authenticationPassword];
      Helper_x8__kSecureBackupAuthenticationPassword = gotLoadHelper_x8__kSecureBackupAuthenticationPassword(v38);
      [v4 setObject:v37 forKeyedSubscript:{**(v40 + 3592), Helper_x8__kSecureBackupAuthenticationPassword}];
    }

    v41 = [v3 fmipUuid];
    v42 = [v41 isEqualToString:&stru_1F48F2A78];

    if ((v42 & 1) == 0)
    {
      v43 = [v3 fmipUuid];
      Helper_x8__kSecureBackupFMiPUUIDKey = gotLoadHelper_x8__kSecureBackupFMiPUUIDKey(v44);
      [v4 setObject:v43 forKeyedSubscript:{**(v46 + 3752), Helper_x8__kSecureBackupFMiPUUIDKey}];
    }

    [v3 fmipRecovery];
    Helper_x8__kSecureBackupFMiPRecoveryKey = gotLoadHelper_x8__kSecureBackupFMiPRecoveryKey(v47);
    v50 = **(v49 + 3744);
    [v4 setObject:Helper_x8__kSecureBackupFMiPRecoveryKey forKeyedSubscript:?];
    [v3 idmsRecovery];
    Helper_x8__kSecureBackupIDMSRecoveryKey = gotLoadHelper_x8__kSecureBackupIDMSRecoveryKey(v51);
    v54 = **(v53 + 3792);
    [v4 setObject:Helper_x8__kSecureBackupIDMSRecoveryKey forKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dictionaryToEscrowAuthenticationInfo:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x1E697AA80] isCloudServicesAvailable])
  {
    v4 = objc_alloc_init(OTEscrowAuthenticationInformation);
    Helper_x8__kSecureBackupAuthenticationAppleID = gotLoadHelper_x8__kSecureBackupAuthenticationAppleID(v5);
    v8 = [v3 objectForKeyedSubscript:{**(v7 + 3528), Helper_x8__kSecureBackupAuthenticationAppleID}];
    [(OTEscrowAuthenticationInformation *)v4 setAuthenticationAppleid:v8];

    Helper_x8__kSecureBackupAuthenticationAuthToken = gotLoadHelper_x8__kSecureBackupAuthenticationAuthToken(v9);
    v12 = [v3 objectForKeyedSubscript:{**(v11 + 3544), Helper_x8__kSecureBackupAuthenticationAuthToken}];
    [(OTEscrowAuthenticationInformation *)v4 setAuthenticationAuthToken:v12];

    Helper_x8__kSecureBackupAuthenticationDSID = gotLoadHelper_x8__kSecureBackupAuthenticationDSID(v13);
    v16 = [v3 objectForKeyedSubscript:{**(v15 + 3560), Helper_x8__kSecureBackupAuthenticationDSID}];
    [(OTEscrowAuthenticationInformation *)v4 setAuthenticationDsid:v16];

    Helper_x8__kSecureBackupAuthenticationEscrowProxyURL = gotLoadHelper_x8__kSecureBackupAuthenticationEscrowProxyURL(v17);
    v20 = [v3 objectForKeyedSubscript:{**(v19 + 3576), Helper_x8__kSecureBackupAuthenticationEscrowProxyURL}];
    [(OTEscrowAuthenticationInformation *)v4 setAuthenticationEscrowproxyUrl:v20];

    Helper_x8__kSecureBackupAuthenticationiCloudEnvironment = gotLoadHelper_x8__kSecureBackupAuthenticationiCloudEnvironment(v21);
    v24 = [v3 objectForKeyedSubscript:{**(v23 + 3624), Helper_x8__kSecureBackupAuthenticationiCloudEnvironment}];
    [(OTEscrowAuthenticationInformation *)v4 setAuthenticationIcloudEnvironment:v24];

    Helper_x8__kSecureBackupAuthenticationPassword = gotLoadHelper_x8__kSecureBackupAuthenticationPassword(v25);
    v28 = [v3 objectForKeyedSubscript:{**(v27 + 3592), Helper_x8__kSecureBackupAuthenticationPassword}];
    [(OTEscrowAuthenticationInformation *)v4 setAuthenticationPassword:v28];

    Helper_x8__kSecureBackupFMiPUUIDKey = gotLoadHelper_x8__kSecureBackupFMiPUUIDKey(v29);
    v32 = [v3 objectForKeyedSubscript:{**(v31 + 3752), Helper_x8__kSecureBackupFMiPUUIDKey}];
    [(OTEscrowAuthenticationInformation *)v4 setFmipUuid:v32];

    Helper_x8__kSecureBackupFMiPRecoveryKey = gotLoadHelper_x8__kSecureBackupFMiPRecoveryKey(v33);
    v36 = [v3 objectForKeyedSubscript:{**(v35 + 3744), Helper_x8__kSecureBackupFMiPRecoveryKey}];
    -[OTEscrowAuthenticationInformation setFmipRecovery:](v4, "setFmipRecovery:", [v36 BOOLValue]);

    Helper_x8__kSecureBackupIDMSRecoveryKey = gotLoadHelper_x8__kSecureBackupIDMSRecoveryKey(v37);
    v40 = [v3 objectForKeyedSubscript:{**(v39 + 3792), Helper_x8__kSecureBackupIDMSRecoveryKey}];
    -[OTEscrowAuthenticationInformation setIdmsRecovery:](v4, "setIdmsRecovery:", [v40 BOOLValue]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
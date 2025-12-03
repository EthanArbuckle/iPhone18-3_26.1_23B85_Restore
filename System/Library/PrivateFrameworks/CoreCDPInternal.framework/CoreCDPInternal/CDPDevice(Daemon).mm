@interface CDPDevice(Daemon)
- (_BYTE)initWithSecureBackupRecordInfo:()Daemon;
- (id)initWithEscrowRecord:()Daemon;
- (uint64_t)initWithEscrowRecordMetadata:()Daemon;
- (uint64_t)initWithSecureBackupMetadataInfo:()Daemon;
@end

@implementation CDPDevice(Daemon)

- (_BYTE)initWithSecureBackupRecordInfo:()Daemon
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"metadata"];
  v7 = [v6 objectForKeyedSubscript:@"ClientMetadata"];
  v8 = [self initWithSecureBackupMetadataInfo:v7];

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"recordID"];
    v10 = *MEMORY[0x277CFD5E8];
    v11 = *&v8[v10];
    *&v8[v10] = v9;

    v12 = [v5 objectForKeyedSubscript:@"metadata"];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CFB3B0]];
    bOOLValue = [v13 BOOLValue];
    v8[*MEMORY[0x277CFD598]] = bOOLValue;

    v15 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFB370]];
    integerValue = [v15 integerValue];
    *&v8[*MEMORY[0x277CFD5F8]] = integerValue;

    v17 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFB350]];
    v18 = *MEMORY[0x277CFD600];
    v19 = *&v8[v18];
    *&v8[v18] = v17;

    v20 = *&v8[v18];
    mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
    serialNumber = [mEMORY[0x277CFD4F8] serialNumber];
    v23 = [v20 isEqualToString:serialNumber];
    v8[*MEMORY[0x277CFD590]] = v23;

    objc_storeStrong(&v8[*MEMORY[0x277CFD5F0]], a3);
    v24 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFB368]];
    [v8 setRecoveryStatus:{objc_msgSend(v24, "unsignedIntegerValue")}];

    v25 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFB2E0]];
    [v8 setCoolOffPeriod:v25];
  }

  return v8;
}

- (id)initWithEscrowRecord:()Daemon
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    escrowInformationMetadata = [v5 escrowInformationMetadata];
    v8 = [self initWithEscrowRecordMetadata:escrowInformationMetadata];

    if (v8)
    {
      recordId = [v6 recordId];
      v10 = *MEMORY[0x277CFD5E8];
      v11 = *&v8[v10];
      *&v8[v10] = recordId;

      remainingAttempts = [v6 remainingAttempts];
      *&v8[*MEMORY[0x277CFD5F8]] = remainingAttempts;
      serialNumber = [v6 serialNumber];
      v14 = *MEMORY[0x277CFD600];
      v15 = *&v8[v14];
      *&v8[v14] = serialNumber;

      v16 = *&v8[v14];
      mEMORY[0x277CFD4F8] = [MEMORY[0x277CFD4F8] sharedInstance];
      serialNumber2 = [mEMORY[0x277CFD4F8] serialNumber];
      v19 = [v16 isEqualToString:serialNumber2];
      v8[*MEMORY[0x277CFD590]] = v19;

      v20 = [MEMORY[0x277D36DA0] escrowRecordToDictionary:v6];
      v21 = *MEMORY[0x277CFD5F0];
      v22 = *&v8[v21];
      *&v8[v21] = v20;

      objc_storeStrong(&v8[*MEMORY[0x277CFD5D8]], a3);
      [v8 setRecoveryStatus:{CDPRecoveryStatusFromOTRecoveryStatus(objc_msgSend(v6, "recoveryStatus"))}];
      v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v6, "coolOffEnd")}];
      [v8 setCoolOffPeriod:v23];
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (uint64_t)initWithSecureBackupMetadataInfo:()Daemon
{
  v4 = a3;
  v5 = [self init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"device_mid"];
    v7 = *MEMORY[0x277CFD5A8];
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;

    v9 = [v4 objectForKeyedSubscript:@"kSecureBackupEscrowedSPKIKey"];
    v10 = *MEMORY[0x277CFD608];
    v11 = *(v5 + v10);
    *(v5 + v10) = v9;

    v12 = [v4 objectForKeyedSubscript:@"device_name"];
    v13 = *MEMORY[0x277CFD5A0];
    v14 = *(v5 + v13);
    *(v5 + v13) = v12;

    v15 = [v4 objectForKeyedSubscript:@"device_model"];
    v16 = *MEMORY[0x277CFD5B0];
    v17 = *(v5 + v16);
    *(v5 + v16) = v15;

    v18 = [v4 objectForKeyedSubscript:@"device_model_version"];
    v19 = *MEMORY[0x277CFD5C0];
    v20 = *(v5 + v19);
    *(v5 + v19) = v18;

    if (!*(v5 + v19))
    {
      objc_storeStrong((v5 + v19), *(v5 + v16));
    }

    v21 = [v4 objectForKeyedSubscript:@"device_model_class"];
    v22 = *MEMORY[0x277CFD5B8];
    v23 = *(v5 + v22);
    *(v5 + v22) = v21;

    if (!*(v5 + v22))
    {
      objc_storeStrong((v5 + v22), *(v5 + v16));
    }

    v24 = [v4 objectForKeyedSubscript:@"device_platform"];
    integerValue = [v24 integerValue];
    *(v5 + *MEMORY[0x277CFD5D0]) = integerValue;

    v26 = [v4 objectForKeyedSubscript:*MEMORY[0x277CFB3B8]];
    bOOLValue = [v26 BOOLValue];
    *(v5 + *MEMORY[0x277CFD588]) = bOOLValue;

    v28 = [v4 objectForKeyedSubscript:*MEMORY[0x277CFB340]];
    v29 = *MEMORY[0x277CFD5C8];
    v30 = *(v5 + v29);
    *(v5 + v29) = v28;

    v31 = [v4 objectForKeyedSubscript:@"metadata"];
    v32 = [v31 objectForKeyedSubscript:@"ClientMetadata"];
    v33 = [v32 objectForKeyedSubscript:@"SecureBackupMetadataTimestamp"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = [CDPDSecureBackupController _dateWithSecureBackupDateString:v33];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v34 = v33;
      }

      else
      {
        v34 = 0;
      }
    }

    v35 = *MEMORY[0x277CFD5E0];
    v36 = *(v5 + v35);
    *(v5 + v35) = v34;
    v37 = v34;

    v38 = [v4 objectForKeyedSubscript:@"device_color"];
    v39 = *MEMORY[0x277CFD578];
    v40 = *(v5 + v39);
    *(v5 + v39) = v38;

    v41 = [v4 objectForKeyedSubscript:@"device_enclosure_color"];
    v42 = *MEMORY[0x277CFD580];
    v43 = *(v5 + v42);
    *(v5 + v42) = v41;
  }

  return v5;
}

- (uint64_t)initWithEscrowRecordMetadata:()Daemon
{
  v4 = a3;
  v5 = [self init];
  clientMetadata = [v4 clientMetadata];
  if (v5)
  {
    if ([v4 hasSecureBackupUsesMultipleIcscs])
    {
      v7 = [v4 secureBackupUsesMultipleIcscs] != 0;
    }

    else
    {
      v7 = 0;
    }

    *(v5 + *MEMORY[0x277CFD598]) = v7;
    deviceMid = [clientMetadata deviceMid];
    v9 = *MEMORY[0x277CFD5A8];
    v10 = *(v5 + v9);
    *(v5 + v9) = deviceMid;

    escrowedSpki = [v4 escrowedSpki];
    v12 = *MEMORY[0x277CFD608];
    v13 = *(v5 + v12);
    *(v5 + v12) = escrowedSpki;

    deviceName = [clientMetadata deviceName];
    v15 = *MEMORY[0x277CFD5A0];
    v16 = *(v5 + v15);
    *(v5 + v15) = deviceName;

    deviceModel = [clientMetadata deviceModel];
    v18 = *MEMORY[0x277CFD5B0];
    v19 = *(v5 + v18);
    *(v5 + v18) = deviceModel;

    deviceModelVersion = [clientMetadata deviceModelVersion];
    v21 = *MEMORY[0x277CFD5C0];
    v22 = *(v5 + v21);
    *(v5 + v21) = deviceModelVersion;

    if (!*(v5 + v21))
    {
      objc_storeStrong((v5 + v21), *(v5 + v18));
    }

    deviceModelClass = [clientMetadata deviceModelClass];
    v24 = *MEMORY[0x277CFD5B8];
    v25 = *(v5 + v24);
    *(v5 + v24) = deviceModelClass;

    if (!*(v5 + v24))
    {
      objc_storeStrong((v5 + v24), *(v5 + v18));
    }

    devicePlatform = [clientMetadata devicePlatform];
    *(v5 + *MEMORY[0x277CFD5D0]) = devicePlatform;
    v27 = [clientMetadata secureBackupUsesNumericPassphrase] != 0;
    *(v5 + *MEMORY[0x277CFD588]) = v27;
    v28 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(clientMetadata, "secureBackupNumericPassphraseLength")}];
    v29 = *MEMORY[0x277CFD5C8];
    v30 = *(v5 + v29);
    *(v5 + v29) = v28;

    v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(clientMetadata, "secureBackupMetadataTimestamp")}];
    v32 = *MEMORY[0x277CFD5E0];
    v33 = *(v5 + v32);
    *(v5 + v32) = v31;
    v34 = v31;

    deviceColor = [clientMetadata deviceColor];
    v36 = *MEMORY[0x277CFD578];
    v37 = *(v5 + v36);
    *(v5 + v36) = deviceColor;

    deviceEnclosureColor = [clientMetadata deviceEnclosureColor];
    v39 = *MEMORY[0x277CFD580];
    v40 = *(v5 + v39);
    *(v5 + v39) = deviceEnclosureColor;
  }

  return v5;
}

@end
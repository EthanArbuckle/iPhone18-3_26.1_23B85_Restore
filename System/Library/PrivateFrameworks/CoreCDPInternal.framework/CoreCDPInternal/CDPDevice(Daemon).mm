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
  v8 = [a1 initWithSecureBackupMetadataInfo:v7];

  if (v8)
  {
    v9 = [v5 objectForKeyedSubscript:@"recordID"];
    v10 = *MEMORY[0x277CFD5E8];
    v11 = *&v8[v10];
    *&v8[v10] = v9;

    v12 = [v5 objectForKeyedSubscript:@"metadata"];
    v13 = [v12 objectForKeyedSubscript:*MEMORY[0x277CFB3B0]];
    v14 = [v13 BOOLValue];
    v8[*MEMORY[0x277CFD598]] = v14;

    v15 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFB370]];
    v16 = [v15 integerValue];
    *&v8[*MEMORY[0x277CFD5F8]] = v16;

    v17 = [v5 objectForKeyedSubscript:*MEMORY[0x277CFB350]];
    v18 = *MEMORY[0x277CFD600];
    v19 = *&v8[v18];
    *&v8[v18] = v17;

    v20 = *&v8[v18];
    v21 = [MEMORY[0x277CFD4F8] sharedInstance];
    v22 = [v21 serialNumber];
    v23 = [v20 isEqualToString:v22];
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
    v7 = [v5 escrowInformationMetadata];
    v8 = [a1 initWithEscrowRecordMetadata:v7];

    if (v8)
    {
      v9 = [v6 recordId];
      v10 = *MEMORY[0x277CFD5E8];
      v11 = *&v8[v10];
      *&v8[v10] = v9;

      v12 = [v6 remainingAttempts];
      *&v8[*MEMORY[0x277CFD5F8]] = v12;
      v13 = [v6 serialNumber];
      v14 = *MEMORY[0x277CFD600];
      v15 = *&v8[v14];
      *&v8[v14] = v13;

      v16 = *&v8[v14];
      v17 = [MEMORY[0x277CFD4F8] sharedInstance];
      v18 = [v17 serialNumber];
      v19 = [v16 isEqualToString:v18];
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

    a1 = v8;
    v24 = a1;
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (uint64_t)initWithSecureBackupMetadataInfo:()Daemon
{
  v4 = a3;
  v5 = [a1 init];
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
    v25 = [v24 integerValue];
    *(v5 + *MEMORY[0x277CFD5D0]) = v25;

    v26 = [v4 objectForKeyedSubscript:*MEMORY[0x277CFB3B8]];
    v27 = [v26 BOOLValue];
    *(v5 + *MEMORY[0x277CFD588]) = v27;

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
  v5 = [a1 init];
  v6 = [v4 clientMetadata];
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
    v8 = [v6 deviceMid];
    v9 = *MEMORY[0x277CFD5A8];
    v10 = *(v5 + v9);
    *(v5 + v9) = v8;

    v11 = [v4 escrowedSpki];
    v12 = *MEMORY[0x277CFD608];
    v13 = *(v5 + v12);
    *(v5 + v12) = v11;

    v14 = [v6 deviceName];
    v15 = *MEMORY[0x277CFD5A0];
    v16 = *(v5 + v15);
    *(v5 + v15) = v14;

    v17 = [v6 deviceModel];
    v18 = *MEMORY[0x277CFD5B0];
    v19 = *(v5 + v18);
    *(v5 + v18) = v17;

    v20 = [v6 deviceModelVersion];
    v21 = *MEMORY[0x277CFD5C0];
    v22 = *(v5 + v21);
    *(v5 + v21) = v20;

    if (!*(v5 + v21))
    {
      objc_storeStrong((v5 + v21), *(v5 + v18));
    }

    v23 = [v6 deviceModelClass];
    v24 = *MEMORY[0x277CFD5B8];
    v25 = *(v5 + v24);
    *(v5 + v24) = v23;

    if (!*(v5 + v24))
    {
      objc_storeStrong((v5 + v24), *(v5 + v18));
    }

    v26 = [v6 devicePlatform];
    *(v5 + *MEMORY[0x277CFD5D0]) = v26;
    v27 = [v6 secureBackupUsesNumericPassphrase] != 0;
    *(v5 + *MEMORY[0x277CFD588]) = v27;
    v28 = [objc_alloc(MEMORY[0x277CCABB0]) initWithLongLong:{objc_msgSend(v6, "secureBackupNumericPassphraseLength")}];
    v29 = *MEMORY[0x277CFD5C8];
    v30 = *(v5 + v29);
    *(v5 + v29) = v28;

    v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v6, "secureBackupMetadataTimestamp")}];
    v32 = *MEMORY[0x277CFD5E0];
    v33 = *(v5 + v32);
    *(v5 + v32) = v31;
    v34 = v31;

    v35 = [v6 deviceColor];
    v36 = *MEMORY[0x277CFD578];
    v37 = *(v5 + v36);
    *(v5 + v36) = v35;

    v38 = [v6 deviceEnclosureColor];
    v39 = *MEMORY[0x277CFD580];
    v40 = *(v5 + v39);
    *(v5 + v39) = v38;
  }

  return v5;
}

@end
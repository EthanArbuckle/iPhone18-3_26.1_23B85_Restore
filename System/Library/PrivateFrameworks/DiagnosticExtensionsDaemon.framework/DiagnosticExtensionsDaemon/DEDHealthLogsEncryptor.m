@interface DEDHealthLogsEncryptor
- (id)encryptLogsAtPath:(id)a3 toDirectory:(id)a4 withMetadata:(id)a5 anonymousDeviceUUID:(id)a6;
@end

@implementation DEDHealthLogsEncryptor

- (id)encryptLogsAtPath:(id)a3 toDirectory:(id)a4 withMetadata:(id)a5 anonymousDeviceUUID:(id)a6
{
  v79 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v11 objectForKey:@"cloudKitEnv"];
  v14 = [v11 objectForKey:@"publicKey"];
  if (!v14 && v13)
  {
    [v13 BOOLValue];
  }

  v15 = HKHealthWrapCertificateFromString();
  if (v15)
  {
    v59 = v13;
    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [v9 path];
    v18 = [v16 fileExistsAtPath:v17];

    v19 = [v9 path];
    v68 = 0;
    v58 = v16;
    v62 = [v16 attributesOfItemAtPath:v19 error:&v68];
    v20 = v68;

    v21 = LogEncryptor();
    v63 = v20;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v9 path];
      *buf = 138543618;
      v72 = v22;
      v73 = 1026;
      LODWORD(v74) = v18;
      _os_log_impl(&dword_248AD7000, v21, OS_LOG_TYPE_DEFAULT, "Does file exist at path: %{public}@ (Y/N): %{public}d", buf, 0x12u);

      v20 = v63;
    }

    if (v20)
    {
      v23 = LogEncryptor();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [DEDHealthLogsEncryptor encryptLogsAtPath:v9 toDirectory:v20 withMetadata:v23 anonymousDeviceUUID:?];
      }
    }

    v24 = LogEncryptor();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v9 path];
      *buf = 138543618;
      v72 = v25;
      v73 = 2114;
      v74 = v62;
      _os_log_impl(&dword_248AD7000, v24, OS_LOG_TYPE_DEFAULT, "File Attributes of file: %{public}@ Attributes Dict: %{public}@", buf, 0x16u);
    }

    v26 = [v11 objectForKeyedSubscript:@"channel"];
    v27 = [v11 objectForKeyedSubscript:@"payloadType"];
    v28 = [v11 objectForKeyedSubscript:@"timberLorryUUID"];
    v64 = [MEMORY[0x277CCAD78] UUID];
    v60 = v27;
    v61 = v28;
    if (!v26 || !v27 || !v28)
    {
      v35 = LogEncryptor();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        *buf = 138544130;
        v72 = v9;
        v73 = 2112;
        v74 = v26;
        v75 = 2112;
        v76 = v60;
        v77 = 2112;
        v78 = v28;
        _os_log_error_impl(&dword_248AD7000, v35, OS_LOG_TYPE_ERROR, "Tried to use HealthLogsEncryptor without necessary parameters. The files at path: %{public}@ will be skipped. channel: %@, payloadType: %@, caseID: %@", buf, 0x2Au);
      }

      v34 = 0;
      goto LABEL_37;
    }

    v56 = v26;
    v57 = v10;
    v29 = v15;
    v30 = [v11 objectForKey:@"studyID"];

    if (v30)
    {
      v31 = [v11 objectForKey:@"studyID"];
      v32 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v31];
    }

    else
    {
      v32 = v64;
    }

    v36 = objc_alloc(MEMORY[0x277CCD500]);
    v37 = [MEMORY[0x277CCAD78] UUID];
    v64 = v32;
    v38 = v32;
    v15 = v29;
    v35 = [v36 initWithSubjectUUID:v37 studyUUID:v38 channel:v56 payloadType:v27 certificate:v29];

    v39 = [MEMORY[0x277CBEAA8] date];
    [v35 setStartDate:v39];

    v40 = [MEMORY[0x277CBEAA8] date];
    [v35 setEndDate:v40];

    v70[0] = v61;
    v69[0] = @"caseID";
    v69[1] = @"deviceUUID";
    v55 = v12;
    v41 = [v12 UUIDString];
    v70[1] = v41;
    v69[2] = @"modelID";
    v42 = MGCopyAnswer();
    v70[2] = v42;
    v69[3] = @"originalFilename";
    v43 = [v9 lastPathComponent];
    v70[3] = v43;
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:4];
    [v35 setKeyValuePairs:v44];

    v45 = [objc_alloc(MEMORY[0x277CCD4F8]) initWithConfiguration:v35];
    v46 = [MEMORY[0x277CCD4F8] newOutputFileURLInDirectory:v57];
    v67 = 0;
    LODWORD(v44) = [v45 startWithOutputFileURL:v46 error:&v67];
    v47 = v67;
    v48 = v47;
    if (v44)
    {
      v66 = v47;
      v49 = [v45 appendDataFromFileURL:v9 error:&v66];
      v50 = v66;

      if (v49 && !v50)
      {
        v65 = 0;
        v51 = [v45 finalizeWithError:&v65];
        v50 = v65;
        if (!v50)
        {
          v51 = v51;
          v34 = v51;
          goto LABEL_36;
        }

        v52 = LogEncryptor();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          [DEDHealthLogsEncryptor encryptLogsAtPath:v50 toDirectory:v52 withMetadata:? anonymousDeviceUUID:?];
        }

LABEL_35:
        v34 = 0;
LABEL_36:

        v26 = v56;
        v10 = v57;
        v12 = v55;
LABEL_37:
        v33 = v63;

        v13 = v59;
        goto LABEL_38;
      }
    }

    else
    {
      v50 = v47;
    }

    v51 = LogEncryptor();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      [DEDHealthLogsEncryptor encryptLogsAtPath:v50 toDirectory:v51 withMetadata:? anonymousDeviceUUID:?];
    }

    goto LABEL_35;
  }

  v33 = LogEncryptor();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    [DEDHealthLogsEncryptor encryptLogsAtPath:v33 toDirectory:? withMetadata:? anonymousDeviceUUID:?];
  }

  v34 = 0;
LABEL_38:

  v53 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)encryptLogsAtPath:(NSObject *)a3 toDirectory:withMetadata:anonymousDeviceUUID:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 path];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = a2;
  _os_log_error_impl(&dword_248AD7000, a3, OS_LOG_TYPE_ERROR, "Unable to get file attributes at path: %{public}@ with Error: %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)encryptLogsAtPath:(uint64_t)a1 toDirectory:(NSObject *)a2 withMetadata:anonymousDeviceUUID:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Error: Unable to encrypt the files error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)encryptLogsAtPath:(uint64_t)a1 toDirectory:(NSObject *)a2 withMetadata:anonymousDeviceUUID:.cold.3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_248AD7000, a2, OS_LOG_TYPE_ERROR, "Error: Unable to finalize the files error: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
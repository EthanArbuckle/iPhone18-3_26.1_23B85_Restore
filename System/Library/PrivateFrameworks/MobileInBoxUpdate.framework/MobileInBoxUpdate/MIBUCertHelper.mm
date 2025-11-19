@interface MIBUCertHelper
+ (BOOL)SUCertPresent;
+ (__SecKey)suCertKeyFromData:(id)a3 isSEPKey:(BOOL)a4 error:(id *)a5;
+ (id)_getCertDataFromPath:(id)a3 error:(id *)a4;
+ (id)_pandoraCertificates:(id *)a3;
+ (id)_parseDERCertificates:(id)a3 error:(id *)a4;
+ (id)certificatesFromData:(id)a3 error:(id *)a4;
+ (id)pandoraCertsData:(id *)a3;
+ (void)deleteSUCert:(id *)a3;
+ (void)readSUIdentityWithCompletion:(id)a3;
+ (void)trustCertificatesWithCompletion:(id)a3;
@end

@implementation MIBUCertHelper

+ (BOOL)SUCertPresent
{
  v26 = *MEMORY[0x277D85DE8];
  if (os_variant_has_internal_content() && (+[MIBUTestPreferences sharedInstance](MIBUTestPreferences, "sharedInstance"), v2 = objc_claimAutoreleasedReturnValue(), v3 = [v2 factorySUCertExist], v2, v3))
  {
    if (MIBUOnceToken != -1)
    {
      +[MIBUCertHelper SUCertPresent];
    }

    v4 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259ABF000, v4, OS_LOG_TYPE_DEFAULT, "Overriding factory SU certificate existence to YES", buf, 2u);
    }

    v5 = 1;
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = suCertPaths;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v20;
      v5 = 1;
      *&v8 = 138543362;
      v18 = v8;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * v11);
          v13 = [MEMORY[0x277CCAA00] defaultManager];
          v14 = [v13 fileExistsAtPath:v12];

          if ((v14 & 1) == 0)
          {
            if (MIBUOnceToken != -1)
            {
              +[MIBUCertHelper SUCertPresent];
            }

            v15 = MIBUConnObj;
            v5 = 0;
            if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v18;
              v24 = v12;
              _os_log_impl(&dword_259ABF000, v15, OS_LOG_TYPE_DEFAULT, "Certificate file %{public}@ does not exist", buf, 0xCu);
              v5 = 0;
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }

    else
    {
      v5 = 1;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5 & 1;
}

void __31__MIBUCertHelper_SUCertPresent__block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __31__MIBUCertHelper_SUCertPresent__block_invoke_9()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __47__MIBUCertHelper_readSUIdentityWithCompletion___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __47__MIBUCertHelper_readSUIdentityWithCompletion___block_invoke_14()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

+ (void)trustCertificatesWithCompletion:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_variant_has_internal_content())
  {
    v9 = 0;
    v10 = 0;
    v32 = 0;
    v11 = 0;
    v12 = @"retail-wifi-cert.apple.com";
    goto LABEL_31;
  }

  v5 = +[MIBUTestPreferences sharedInstance];
  v6 = [v5 iseTrustCertPaths];

  if (v6)
  {
    v7 = +[MIBUTestPreferences sharedInstance];
    v31 = [v7 iseTrustCertPaths];

    if (MIBUOnceToken != -1)
    {
      +[MIBUCertHelper trustCertificatesWithCompletion:];
    }

    v8 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v41 = v31;
      _os_log_impl(&dword_259ABF000, v8, OS_LOG_TYPE_DEFAULT, "Overriding ISE trust certificate paths to: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v31 = 0;
  }

  v13 = +[MIBUTestPreferences sharedInstance];
  v14 = [v13 iseTrustCertName];

  if (!v14)
  {
    v12 = @"retail-wifi-cert.apple.com";
    v11 = v31;
    if (!v31)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  v15 = +[MIBUTestPreferences sharedInstance];
  v16 = [v15 iseTrustCertName];

  if (MIBUOnceToken != -1)
  {
    +[MIBUCertHelper trustCertificatesWithCompletion:];
  }

  v17 = MIBUConnObj;
  v11 = v31;
  if (!os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v16;
    if (!v31)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

  *buf = 138543362;
  v41 = v16;
  v12 = v16;
  _os_log_impl(&dword_259ABF000, v17, OS_LOG_TYPE_DEFAULT, "Overriding ISE trust certificate name to: %{public}@", buf, 0xCu);
  if (v31)
  {
LABEL_16:
    v29 = v12;
    v30 = v4;
    v32 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v10 = 0;
      v9 = 0;
      v21 = *v36;
      while (2)
      {
        v22 = 0;
        v23 = v10;
        v24 = v9;
        do
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v25 = *(*(&v35 + 1) + 8 * v22);
          v34 = 0;
          v9 = [a1 _getCertDataFromPath:v25 error:{&v34, v29, v30}];
          v26 = v34;

          if (v26)
          {
            v10 = v23;
LABEL_34:
            v11 = v18;

            v27 = 0;
            v12 = v29;
            v4 = v30;
            goto LABEL_32;
          }

          v33 = 0;
          v10 = [a1 _parseDERCertificates:v9 error:&v33];
          v26 = v33;

          if (v26)
          {
            goto LABEL_34;
          }

          [v32 addObjectsFromArray:v10];
          ++v22;
          v23 = v10;
          v24 = v9;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    v4 = v30;
    v11 = v31;
    v12 = v29;
    if (!v29)
    {
      goto LABEL_28;
    }

LABEL_31:
    v27 = objc_opt_new();
    [v27 addObject:v12];
    v26 = 0;
    goto LABEL_32;
  }

LABEL_27:
  v32 = 0;
  v10 = 0;
  v9 = 0;
  if (v12)
  {
    goto LABEL_31;
  }

LABEL_28:
  v26 = 0;
  v27 = 0;
LABEL_32:
  v4[2](v4, v32, v27, v26);

  v28 = *MEMORY[0x277D85DE8];
}

void __50__MIBUCertHelper_trustCertificatesWithCompletion___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __50__MIBUCertHelper_trustCertificatesWithCompletion___block_invoke_22()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

+ (__SecKey)suCertKeyFromData:(id)a3 isSEPKey:(BOOL)a4 error:(id *)a5
{
  v45[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  error = 0;
  if (!os_variant_has_internal_content() || a4)
  {
    if (MIBUOnceToken != -1)
    {
      +[MIBUCertHelper suCertKeyFromData:isSEPKey:error:];
    }

    v20 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259ABF000, v20, OS_LOG_TYPE_DEFAULT, "Factory SU key is SEP key", buf, 2u);
    }

    v21 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBF00], 0x40000000uLL, &error);
    if (v21)
    {
      v26 = *MEMORY[0x277CDC158];
      v42[0] = *MEMORY[0x277CDBFD0];
      v42[1] = v26;
      v27 = *MEMORY[0x277CDC160];
      v43[0] = MEMORY[0x277CBEC28];
      v43[1] = v27;
      v28 = *MEMORY[0x277CDBEC0];
      v42[2] = *MEMORY[0x277CDC178];
      v42[3] = v28;
      v43[2] = v7;
      v43[3] = v21;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:4];
      v17 = SecKeyCreateWithData([MEMORY[0x277CBEA90] data], v19, &error);
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v37 = 0;
        safeAssignError(&v37, 50331648, error, @"Failed to convert RK data blob.", v29, v30, v31, v32, v36);
        v18 = v37;
      }
    }

    else
    {
      v38 = 0;
      safeAssignError(&v38, 0x1000000, error, @"Failed to create access control.", v22, v23, v24, v25, v36);
      v18 = v38;
      v19 = 0;
      v17 = 0;
    }
  }

  else
  {
    if (MIBUOnceToken != -1)
    {
      +[MIBUCertHelper suCertKeyFromData:isSEPKey:error:];
    }

    v8 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259ABF000, v8, OS_LOG_TYPE_DEFAULT, "Factory SU key is not SEP key", buf, 2u);
    }

    v9 = *MEMORY[0x277CDC060];
    v10 = *MEMORY[0x277CDBFE0];
    v44[0] = *MEMORY[0x277CDC188];
    v44[1] = v10;
    v11 = *MEMORY[0x277CDBFF0];
    v45[0] = v9;
    v45[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
    v17 = SecKeyCreateWithData(v7, v12, &error);
    if (!v17 || error)
    {
      v39 = 0;
      safeAssignError(&v39, 50331648, error, @"Failed to create SecKeyRef with data", v13, v14, v15, v16, v36);
      v18 = v39;
    }

    else
    {
      v18 = 0;
    }

    v19 = 0;
  }

  if (a5)
  {
    v33 = v18;
    *a5 = v18;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v17;
}

void __51__MIBUCertHelper_suCertKeyFromData_isSEPKey_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __51__MIBUCertHelper_suCertKeyFromData_isSEPKey_error___block_invoke_32()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

+ (id)certificatesFromData:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = *v23;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = SecCertificateCreateWithData(0, *(*(&v22 + 1) + 8 * i));
        if (!v11)
        {
          v21 = 0;
          safeAssignError(&v21, 50331648, 0, @"Failed to create certificate from data.", v12, v13, v14, v15, v20);
          v8 = v21;
          goto LABEL_11;
        }

        v16 = v11;
        [v6 addObject:v11];
      }

      v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (a4)
  {
    v17 = v8;
    *a4 = v8;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)deleteSUCert:(id *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    +[MIBUCertHelper deleteSUCert:];
  }

  v3 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259ABF000, v3, OS_LOG_TYPE_DEFAULT, "Deleting SU Certificate ...", buf, 2u);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = suCertPaths;
  v5 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v26;
    do
    {
      v9 = 0;
      do
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v25 + 1) + 8 * v9);
        v11 = [MEMORY[0x277CCAA00] defaultManager];
        v12 = [v11 fileExistsAtPath:v10];

        if (v12)
        {
          v13 = [MEMORY[0x277CCAA00] defaultManager];
          v24 = v7;
          v14 = [v13 removeItemAtPath:v10 error:&v24];
          v15 = v24;

          if ((v14 & 1) == 0)
          {
            if (MIBUOnceToken != -1)
            {
              +[MIBUCertHelper deleteSUCert:];
            }

            v16 = MIBUConnObj;
            if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v30 = v10;
              v31 = 2114;
              v32 = v15;
              _os_log_error_impl(&dword_259ABF000, v16, OS_LOG_TYPE_ERROR, "Failed to delete %{public}@ with error: %{public}@", buf, 0x16u);
            }

            safeAssignError(a3, 50331650, v15, @"Failed to delete %@", v17, v18, v19, v20, v10);
          }

          v7 = v15;
        }

        else
        {
          if (MIBUOnceToken != -1)
          {
            +[MIBUCertHelper deleteSUCert:];
          }

          v21 = MIBUConnObj;
          if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v30 = v10;
            _os_log_impl(&dword_259ABF000, v21, OS_LOG_TYPE_DEFAULT, "Certificate file %{public}@ does not exist, skip deletion...", buf, 0xCu);
          }
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __31__MIBUCertHelper_deleteSUCert___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __31__MIBUCertHelper_deleteSUCert___block_invoke_47()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __31__MIBUCertHelper_deleteSUCert___block_invoke_50()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

+ (id)_getCertDataFromPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5];
    if (!v8)
    {
      [MIBUCertHelper _getCertDataFromPath:v5 error:a4];
    }
  }

  else
  {
    [MIBUCertHelper _getCertDataFromPath:v5 error:a4];
    v8 = 0;
  }

  return v8;
}

void __45__MIBUCertHelper__getCertDataFromPath_error___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

void __45__MIBUCertHelper__getCertDataFromPath_error___block_invoke_63()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

+ (id)_pandoraCertificates:(id *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (os_variant_has_internal_content())
  {
    v5 = +[MIBUTestPreferences sharedInstance];
    v6 = [v5 usePandoraNonProdCerts];
  }

  else
  {
    v6 = 0;
  }

  if (MIBUOnceToken != -1)
  {
    +[MIBUCertHelper _pandoraCertificates:];
  }

  v7 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"Prod";
    if (v6)
    {
      v8 = @"Non-Prod";
    }

    *v28 = 138543362;
    *&v28[4] = v8;
    _os_log_impl(&dword_259ABF000, v7, OS_LOG_TYPE_DEFAULT, "Use Pandora Key Server certificates of grade: %{public}@", v28, 0xCu);
  }

  v9 = objc_alloc(MEMORY[0x277CBEA90]);
  if (v6)
  {
    v10 = fdr_pandoraks_signing_ca_dc_nonprod_issuer_pem;
  }

  else
  {
    v10 = fdr_pandoraks_signing_ca_dc_prod_issuer_pem;
  }

  if (v6)
  {
    v11 = fdr_pandoraks_seaship_nonprod_cert_pem;
  }

  else
  {
    v11 = fdr_pandoraks_seaship_prod_cert_pem;
  }

  v12 = &fdr_pandoraks_signing_ca_dc_nonprod_issuer_pem_len;
  if (v6)
  {
    v13 = &fdr_pandoraks_seaship_nonprod_cert_pem_len;
  }

  else
  {
    v12 = &fdr_pandoraks_signing_ca_dc_prod_issuer_pem_len;
    v13 = &fdr_pandoraks_seaship_prod_cert_pem_len;
  }

  v14 = [v9 initWithBytesNoCopy:v10 length:*v12 freeWhenDone:0];
  v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v11 length:*v13 freeWhenDone:0];
  v16 = *MEMORY[0x277CBECE8];
  v17 = SecCertificateCreateWithPEM();
  if (v17 && (v22 = v17, [v4 addObject:v17], v22, (v23 = SecCertificateCreateWithPEM()) != 0))
  {
    v24 = v23;
    [v4 addObject:v23];

    v25 = [v4 copy];
  }

  else
  {
    safeAssignError(a3, 50331651, 0, @"Failed to create certificate from PEM data", v18, v19, v20, v21, *v28);
    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void __39__MIBUCertHelper__pandoraCertificates___block_invoke()
{
  v0 = os_log_create("com.apple.mobileinboxupdater", "device");
  v1 = MIBUConnObj;
  MIBUConnObj = v0;

  if (!MIBUConnObj)
  {
    v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      __authInstalllogHandler_block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }
}

+ (void)readSUIdentityWithCompletion:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!os_variant_has_internal_content())
  {
    v8 = @"/private/var/hardware/factory/su/su0-cert.der";
LABEL_14:
    v13 = @"/private/var/hardware/factory/su/su0-key.der";
    goto LABEL_15;
  }

  v5 = +[MIBUTestPreferences sharedInstance];
  v6 = [v5 factorySUCertPath];

  if (v6)
  {
    v7 = +[MIBUTestPreferences sharedInstance];
    v8 = [v7 factorySUCertPath];

    if (MIBUOnceToken != -1)
    {
      dispatch_once(&MIBUOnceToken, &__block_literal_global_13_1);
    }

    v9 = MIBUConnObj;
    if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = v8;
      _os_log_impl(&dword_259ABF000, v9, OS_LOG_TYPE_DEFAULT, "Overriding SU certificate path to %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v8 = @"/private/var/hardware/factory/su/su0-cert.der";
  }

  v10 = +[MIBUTestPreferences sharedInstance];
  v11 = [v10 factorySUKeyPath];

  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = +[MIBUTestPreferences sharedInstance];
  v13 = [v12 factorySUKeyPath];

  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_16_0);
  }

  v14 = MIBUConnObj;
  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v13;
    _os_log_impl(&dword_259ABF000, v14, OS_LOG_TYPE_DEFAULT, "Overriding SU key path to %{public}@", buf, 0xCu);
  }

LABEL_15:
  v24 = 0;
  v15 = [a1 _getCertDataFromPath:v8 error:&v24];
  v16 = v24;
  if (v16)
  {
    v20 = v16;
    v19 = 0;
    v17 = 0;
  }

  else
  {
    v23 = 0;
    v17 = [a1 _parseDERCertificates:v15 error:&v23];
    v18 = v23;
    if (v18)
    {
      v20 = v18;
      v19 = 0;
    }

    else
    {
      v22 = 0;
      v19 = [a1 _getCertDataFromPath:v13 error:&v22];
      v20 = v22;
    }
  }

  v4[2](v4, v17, v19, v20);

  v21 = *MEMORY[0x277D85DE8];
}

+ (id)pandoraCertsData:(id *)a3
{
  v13 = 0;
  v4 = [MIBUCertHelper _pandoraCertificates:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = 0;
    if (a3)
    {
LABEL_6:
      v10 = v5;
      *a3 = v5;
    }
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB28]);
    if ([v4 count])
    {
      v7 = 0;
      do
      {
        v8 = [v4 objectAtIndexedSubscript:v7];

        v9 = SecCertificateCopyData(v8);
        [v6 appendData:v9];

        ++v7;
      }

      while (v7 < [v4 count]);
    }

    if (a3)
    {
      goto LABEL_6;
    }
  }

  v11 = [v6 copy];

  return v11;
}

+ (id)_parseDERCertificates:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  v6 = [v5 bytes];
  v7 = CTParseCertificateSet(v6, v6 + [v5 length], v19, 3, &v18);
  if (v7 || !v18)
  {
    safeAssignError(a4, 50331648, 0, @"Failed to parse certificate set: 0x%08x", v8, v9, v10, v11, v7);
    v12 = 0;
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if (v12 && v18)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:*&v19[v13] length:*(&v19[v13] + 1)];
        [v12 setObject:v15 atIndexedSubscript:v13];

        v13 = ++v14;
      }

      while (v18 > v14);
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (void)_getCertDataFromPath:(uint64_t)a1 error:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_59_0);
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_5(&dword_259ABF000, v4, v5, "Certificate file %{public}@ does not exist", v6, v7, v8, v9, v11, v12, 2u);
  }

  safeAssignError(a2, 50331649, 0, @"%@ does not exist", v6, v7, v8, v9, a1);
  v10 = *MEMORY[0x277D85DE8];
}

+ (void)_getCertDataFromPath:(uint64_t)a1 error:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (MIBUOnceToken != -1)
  {
    dispatch_once(&MIBUOnceToken, &__block_literal_global_65_1);
  }

  if (os_log_type_enabled(MIBUConnObj, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_1_5(&dword_259ABF000, v4, v5, "Failed to load %{public}@", v6, v7, v8, v9, v11, v12, 2u);
  }

  safeAssignError(a2, 50331648, 0, @"Failed to load %@", v6, v7, v8, v9, a1);
  v10 = *MEMORY[0x277D85DE8];
}

@end
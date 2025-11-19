@interface MSDDemoManifestCheck
+ (id)sharedInstance;
- (BOOL)checkFileForEntitlements:(id)a3 forCorrespondingManifestEntry:(id)a4;
- (BOOL)isManualSigning:(id)a3;
- (BOOL)isValidDataContainerFile:(id)a3;
- (BOOL)runAppLayoutSecurityCheck:(id)a3;
- (BOOL)runFileSecurityChecksForSection:(id)a3 dataType:(id)a4 options:(id)a5;
- (BOOL)runSecurityCheck:(id)a3;
- (BOOL)runSecurityChecksForSection:(id)a3 dataType:(id)a4 componentName:(id)a5 options:(id)a6;
- (BOOL)runSettingsSecurityCheckForSection:(id)a3 component:(id)a4;
- (BOOL)secureManifestCheckForSegmentedManifest:(id)a3 options:(id)a4;
- (BOOL)validateISTSignedApp:(id)a3 manifest:(id)a4;
- (BOOL)verifySignature:(id)a3 forData:(id)a4 withKey:(__SecKey *)a5;
- (MSDDemoManifestCheck)init;
- (MSDDemoManifestCheck)initWithWhiteListChecker:(id)a3 andCheckType:(id)a4;
- (__SecKey)createPublicKey:(id)a3 usingPolicy:(__SecPolicy *)a4 anchors:(id)a5;
- (__SecKey)createPublicKeyAppleISTSigning:(id)a3;
- (__SecKey)createPublicKeyForDevelopmentSigning:(id)a3;
- (__SecKey)createPublicKeyForDevelopmentSigningStandard:(id)a3;
- (__SecKey)createPublicKeyForStrongSigning:(id)a3;
- (id)getAllowedISTSignedComponents:(id)a3;
- (id)getAllowedISTSignedComponentsFromManifest:(id)a3;
- (id)getAllowedSymLinks;
- (id)getBackupItemName:(id)a3;
- (id)getBackupSectionName;
- (id)getComponentData:(id)a3;
- (id)getInstallationOrder;
- (id)getManifestData:(id)a3;
- (id)getSecurityCheckSectionNames;
- (id)getappIconLayoutBackupName;
- (id)verifyFactoryManifestSignature:(id)a3 forDataSectionKeys:(id)a4;
- (id)verifyManifestSignature:(id)a3 forDataSectionKeys:(id)a4 withOptions:(id)a5;
- (void)init;
- (void)registerEntitlementNotificationHandler;
- (void)removeBlocklistedItemFromSection:(id)a3 withName:(id)a4;
@end

@implementation MSDDemoManifestCheck

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_2 != -1)
  {
    +[MSDDemoManifestCheck sharedInstance];
  }

  v3 = sharedInstance_shared_1;

  return v3;
}

uint64_t __38__MSDDemoManifestCheck_sharedInstance__block_invoke()
{
  sharedInstance_shared_1 = objc_alloc_init(MSDDemoManifestCheck);

  return MEMORY[0x2821F96F8]();
}

- (MSDDemoManifestCheck)init
{
  v12.receiver = self;
  v12.super_class = MSDDemoManifestCheck;
  v2 = [(MSDDemoManifestCheck *)&v12 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = [(MSDDemoManifestCheck *)v2 getAllowedSymLinks];
  [(MSDDemoManifestCheck *)v3 setAllowedSymLinks:v4];

  v5 = [(MSDDemoManifestCheck *)v3 getSettingsComponentNames];
  [(MSDDemoManifestCheck *)v3 setSettingsComponentNames:v5];

  v6 = objc_alloc_init(WhitelistChecker);
  [(MSDDemoManifestCheck *)v3 setWhitelistChecker:v6];

  v7 = [(MSDDemoManifestCheck *)v3 whitelistChecker];
  v8 = [v7 load];

  if ((v8 & 1) == 0)
  {
    [MSDDemoManifestCheck init];
LABEL_5:
    v10 = 0;
    goto LABEL_6;
  }

  v9 = objc_opt_new();
  [(MSDDemoManifestCheck *)v3 setBlocklistedItems:v9];

  v10 = v3;
LABEL_6:

  return v10;
}

- (MSDDemoManifestCheck)initWithWhiteListChecker:(id)a3 andCheckType:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = MSDDemoManifestCheck;
  v8 = [(MSDDemoManifestCheck *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v10 = [(MSDDemoManifestCheck *)v8 getAllowedSymLinks];
    [(MSDDemoManifestCheck *)v9 setAllowedSymLinks:v10];

    v11 = [(MSDDemoManifestCheck *)v9 getSettingsComponentNames];
    [(MSDDemoManifestCheck *)v9 setSettingsComponentNames:v11];

    [(MSDDemoManifestCheck *)v9 setWhitelistChecker:v6];
    [(MSDDemoManifestCheck *)v9 setCheckType:v7];
  }

  return v9;
}

- (id)verifyFactoryManifestSignature:(id)a3 forDataSectionKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v9 = MGCopyAnswer();
  v10 = [v6 objectForKey:@"Info"];
  v11 = 0;
  if (!v10)
  {
    v11 = [0 objectForKey:@"MinimumOSVersion"];
  }

  if (([v9 isEqualToString:v11] & 1) == 0)
  {
    [v8 setObject:MEMORY[0x277CBEC38] forKey:@"ExcludeBlocklistItem"];
  }

  v12 = [(MSDDemoManifestCheck *)self verifyManifestSignature:v6 forDataSectionKeys:v7 withOptions:v8];

  return v12;
}

- (id)verifyManifestSignature:(id)a3 forDataSectionKeys:(id)a4 withOptions:(id)a5
{
  v132 = *MEMORY[0x277D85DE8];
  v94 = a3;
  v87 = a4;
  v8 = a5;
  v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
  error = 0;
  v9 = defaultLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v121 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    _os_log_impl(&dword_259B7D000, v9, OS_LOG_TYPE_DEFAULT, "%s: Verifying a separate component manifest.", buf, 0xCu);
  }

  v86 = [v8 objectForKey:@"RigorousTestingOverride"];
  v10 = [v8 objectForKey:@"ExcludeBlocklistItem"];
  v11 = [(MSDDemoManifestCheck *)self allowedISTSignedComponents];

  if (!v11)
  {
    v12 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponents:v94];
    [(MSDDemoManifestCheck *)self setAllowedISTSignedComponents:v12];
  }

  v13 = objc_alloc(MEMORY[0x277CBEB58]);
  v14 = [v94 allKeys];
  v15 = [v13 initWithArray:v14];

  v16 = MGCopyAnswer();
  cf = v16;
  if (v16)
  {
    v92 = CFBooleanGetValue(v16) == 0;
  }

  else
  {
    v92 = 0;
  }

  v17 = [v94 objectForKey:@"Certificates"];
  v83 = v17;
  if (!v17)
  {
    [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
    v34 = 0;
    v21 = 0;
    v99 = 0;
    v46 = 0;
    v41 = 0;
LABEL_97:
    if (cf)
    {
      CFRelease(cf);
    }

    v72 = 0;
    goto LABEL_107;
  }

  v100 = self;
  v81 = v15;
  v84 = v8;
  v85 = v10;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v114 objects:v131 count:16];
  if (!v19)
  {
    v21 = 0;
    v22 = 0;
    v101 = 0;
    goto LABEL_31;
  }

  v20 = v19;
  v21 = 0;
  v22 = 0;
  v101 = 0;
  v97 = *v115;
  while (2)
  {
    v23 = 0;
    v24 = v21;
    v25 = v22;
    do
    {
      if (*v115 != v97)
      {
        objc_enumerationMutation(v18);
      }

      v26 = *(*(&v114 + 1) + 8 * v23);
      v27 = [v18 objectForKey:v26];
      v22 = [v27 objectForKey:@"TypeOfSignature"];

      v21 = [v27 objectForKey:@"Certificate"];

      if (!v22)
      {
        v59 = defaultLogHandle();
        v99 = 0;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
        }

        goto LABEL_92;
      }

      if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v59 = defaultLogHandle();
        v99 = v22;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
        }

        goto LABEL_92;
      }

      if (![v21 count])
      {
        v59 = defaultLogHandle();
        v99 = v22;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
        }

        goto LABEL_92;
      }

      if ([v22 isEqualToString:@"UAT"])
      {
        v28 = [(MSDDemoManifestCheck *)v100 createPublicKeyForDevelopmentSigning:v21];
        v29 = @"Skip";
        if (!v28)
        {
          goto LABEL_90;
        }

        goto LABEL_26;
      }

      v30 = [(MSDDemoManifestCheck *)v100 createPublicKeyForStrongSigning:v21];
      if (!v30)
      {
        v28 = [(MSDDemoManifestCheck *)v100 createPublicKeyAppleISTSigning:v21];
        v29 = @"AppleISTCertCheck";
        if (v28)
        {
LABEL_26:
          v31 = v21;
          goto LABEL_27;
        }

LABEL_90:
        v101 = v29;
        v59 = defaultLogHandle();
        v99 = v22;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
        }

LABEL_92:
        v15 = v81;

        v34 = 0;
        v46 = 0;
        v41 = v101;
        v8 = v84;
        goto LABEL_97;
      }

      v28 = v30;
      v31 = v21;
      v32 = [(MSDDemoManifestCheck *)v100 isManualSigning:v21];
      v29 = @"Skip";
      if (!v32)
      {
        v29 = @"Default";
      }

LABEL_27:
      v129[0] = @"publicKey";
      v129[1] = @"TypeOfSignature";
      v130[0] = v28;
      v130[1] = v22;
      v129[2] = @"RigorousCheckType";
      v101 = v29;
      v130[2] = v29;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:3];
      [v96 setObject:v33 forKeyedSubscript:v26];

      ++v23;
      v24 = v31;
      v25 = v22;
    }

    while (v20 != v23);
    v20 = [v18 countByEnumeratingWithState:&v114 objects:v131 count:16];
    v21 = v31;
    if (v20)
    {
      continue;
    }

    break;
  }

LABEL_31:
  v99 = v22;

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  obj = v87;
  v75 = [obj countByEnumeratingWithState:&v110 objects:v128 count:16];
  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (v75)
  {
    v76 = *v111;
    v77 = v21;
    v37 = *MEMORY[0x277CDC378];
    algorithm = *MEMORY[0x277CDC378];
    v90 = *MEMORY[0x277CBECE8];
    do
    {
      v38 = 0;
      do
      {
        if (*v111 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v98 = v34;
        v79 = v38;
        v39 = *(*(&v110 + 1) + 8 * v38);
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v95 = v39;
        v88 = [v94 objectForKey:?];
        v93 = [v88 countByEnumeratingWithState:&v106 objects:v127 count:16];
        if (!v93)
        {
          goto LABEL_50;
        }

        v91 = *v107;
        while (2)
        {
          for (i = 0; i != v93; ++i)
          {
            v41 = v101;
            v42 = v35;
            v43 = v99;
            if (*v107 != v91)
            {
              objc_enumerationMutation(v88);
            }

            v44 = *(*(&v106 + 1) + 8 * i);
            v45 = [v94 objectForKey:v95];
            v46 = [v45 objectForKey:v44];

            v47 = [v46 objectForKey:@"Certificate"];
            v48 = [v96 objectForKey:v47];
            v49 = v48;
            if (!v48)
            {
              v70 = defaultLogHandle();
              v34 = v98;
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
              }

              goto LABEL_96;
            }

            v50 = [v48 objectForKey:@"TypeOfSignature"];

            v99 = v50;
            v34 = v98;
            if (((v92 | [v50 isEqualToString:@"UAT"] ^ 1) & 1) == 0)
            {
              v70 = defaultLogHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
              }

              goto LABEL_95;
            }

            v51 = [(MSDDemoManifestCheck *)v100 getComponentData:v46];

            if (!v51)
            {
              v70 = defaultLogHandle();
              if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
                [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
              }

              v34 = 0;
LABEL_95:
              v43 = v99;
LABEL_96:
              v8 = v84;
              v10 = v85;
              v15 = v81;

              v99 = v43;
              v21 = v77;
              goto LABEL_97;
            }

            v52 = [v49 objectForKey:@"publicKey"];
            v98 = v51;
            v53 = _MobileAssetHashAssetData(v90, v44, v51);
            v54 = [v46 objectForKey:@"Signature"];
            LODWORD(v52) = SecKeyVerifySignature(v52, algorithm, [MEMORY[0x277CBEA90] dataWithBytes:v53 length:20], v54, &error);
            free(v53);
            if (!v52)
            {
              v35 = v46;
              v71 = defaultLogHandle();
              v8 = v84;
              v15 = v81;
              if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                v121 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
                v122 = 2114;
                *v123 = v44;
                *&v123[8] = 2114;
                v124 = v95;
                v125 = 2114;
                v126 = error;
                _os_log_error_impl(&dword_259B7D000, v71, OS_LOG_TYPE_ERROR, "%s: signature verification failed for %{public}@ in section %{public}@. Error: %{public}@", buf, 0x2Au);
              }

              goto LABEL_85;
            }

            v41 = [v49 objectForKey:@"RigorousCheckType"];

            v35 = v46;
            [v46 setObject:v41 forKey:@"RigorousCheckType"];
            v55 = [(__CFString *)v41 isEqualToString:@"Skip"];
            v101 = v41;
            if (-[__CFString isEqualToString:](v41, "isEqualToString:", @"AppleISTCertCheck") && [v95 isEqualToString:@"Apps"] && !-[MSDDemoManifestCheck validateISTSignedApp:manifest:](v100, "validateISTSignedApp:manifest:", v44, v94))
            {
              v8 = v84;
              v15 = v81;
LABEL_85:
              v34 = v98;

              v10 = v85;
              v21 = v77;
              v46 = v35;
              goto LABEL_97;
            }

            v36 |= v55 ^ 1;
          }

          v93 = [v88 countByEnumeratingWithState:&v106 objects:v127 count:16];
          if (v93)
          {
            continue;
          }

          break;
        }

LABEL_50:

        v21 = v77;
        v38 = v79 + 1;
        v34 = v98;
      }

      while (v79 + 1 != v75);
      v75 = [obj countByEnumeratingWithState:&v110 objects:v128 count:16];
    }

    while (v75);
  }

  v15 = v81;
  if (!os_variant_has_internal_content() || !v86 || (v36 & 1) == [v86 BOOLValue])
  {
    v46 = v35;
    if ((v36 & 1) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_64;
  }

  v46 = v35;
  v56 = defaultLogHandle();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    v57 = [v86 BOOLValue];
    *buf = 136315650;
    v121 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    v122 = 1024;
    *v123 = v36 & 1;
    *&v123[4] = 1024;
    *&v123[6] = v57;
    _os_log_impl(&dword_259B7D000, v56, OS_LOG_TYPE_DEFAULT, "%s: Overriding rigorous testing from %{BOOL}d to %{BOOL}d", buf, 0x18u);
  }

  if ([v86 BOOLValue])
  {
LABEL_64:
    v8 = v84;
    v10 = v85;
    if ([(MSDDemoManifestCheck *)v100 secureManifestCheckForSegmentedManifest:v94 options:v84])
    {
      goto LABEL_65;
    }

    [MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:];
    v41 = v101;
    goto LABEL_97;
  }

LABEL_58:
  v58 = defaultLogHandle();
  v10 = v85;
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v121 = "[MSDDemoManifestCheck verifyManifestSignature:forDataSectionKeys:withOptions:]";
    _os_log_impl(&dword_259B7D000, v58, OS_LOG_TYPE_DEFAULT, "%s: Skipping rigorous manifest testing.", buf, 0xCu);
  }

  v8 = v84;
LABEL_65:
  if (![v10 BOOLValue])
  {
    goto LABEL_104;
  }

  v60 = [(MSDDemoManifestCheck *)v100 blocklistedItems];
  v61 = [v60 count];

  if (!v61)
  {
    v62 = defaultLogHandle();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B7D000, v62, OS_LOG_TYPE_DEFAULT, "No items blocklisted, skip blocklist item exclusion", buf, 2u);
    }

    goto LABEL_102;
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v62 = v94;
  v63 = [v62 countByEnumeratingWithState:&v102 objects:v119 count:16];
  if (!v63)
  {
LABEL_102:
    v10 = v85;
    goto LABEL_103;
  }

  v64 = v63;
  v65 = v34;
  v78 = v21;
  v66 = *v103;
  do
  {
    for (j = 0; j != v64; ++j)
    {
      if (*v103 != v66)
      {
        objc_enumerationMutation(v62);
      }

      v68 = *(*(&v102 + 1) + 8 * j);
      v69 = [v62 objectForKey:v68 ofType:objc_opt_class()];
      if (v69)
      {
        [(MSDDemoManifestCheck *)v100 removeBlocklistedItemFromSection:v69 withName:v68];
      }
    }

    v64 = [v62 countByEnumeratingWithState:&v102 objects:v119 count:16];
  }

  while (v64);
  v8 = v84;
  v10 = v85;
  v21 = v78;
  v34 = v65;
LABEL_103:

LABEL_104:
  if (cf)
  {
    CFRelease(cf);
  }

  v72 = v94;
  v41 = v101;
LABEL_107:

  v73 = *MEMORY[0x277D85DE8];

  return v72;
}

- (BOOL)checkFileForEntitlements:(id)a3 forCorrespondingManifestEntry:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MSDDemoManifestCheck *)self itemBeingInstalled];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:@"TypeOfFiles"];
    v11 = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    v12 = [v11 objectForKey:v10];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MSDDemoManifestCheck checkFileForEntitlements:forCorrespondingManifestEntry:];
LABEL_27:
      v27 = v39;
      goto LABEL_11;
    }

    v13 = [(MSDDemoManifestCheck *)self getBackupSectionName];
    v14 = [v10 isEqualToString:v13];

    if (v14)
    {
      v36 = v10;
      v37 = v9;
      v38 = v6;
      v35 = [v9 objectForKey:@"Identifier"];
      v15 = [v35 rangeValue];
      v17 = v16;
      v18 = [(MSDDemoManifestCheck *)self getInstallationOrder];
      v19 = (v15 + v17 - 1);
      if (v15 + v17 - 1 >= 0)
      {
        while (1)
        {
          v20 = [v18 objectAtIndex:v19];
          v21 = [(MSDDemoManifestCheck *)self getBackupItemName:v20];

          v22 = [v12 objectForKey:v21];
          v23 = [v22 objectForKey:@"Manifest"];
          v24 = [(MSDDemoManifestCheck *)self getManifestData:v23];

          v25 = [v24 objectForKey:v7];

          if (v25)
          {
            break;
          }

          if (v19-- <= 0)
          {
            goto LABEL_8;
          }
        }

        v32 = [v22 objectForKey:@"RigorousCheckType"];
        v33 = [v32 isEqualToString:@"Skip"];

        v9 = v37;
        v6 = v38;
        v10 = v36;
        if (v33)
        {
          goto LABEL_21;
        }

LABEL_20:
        if (MISValidateSignatureAndCopyInfo())
        {
LABEL_21:
          v28 = 1;
          goto LABEL_22;
        }

        [MSDDemoManifestCheck checkFileForEntitlements:forCorrespondingManifestEntry:];
        goto LABEL_27;
      }

LABEL_8:

      v9 = v37;
      v6 = v38;
      v10 = v36;
    }

    else if (([v10 isEqualToString:@"ExtensionData"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"AppData") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"GroupData"))
    {
      v27 = [v9 objectForKey:@"Identifier"];
      v29 = [v12 objectForKey:v27];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MSDDemoManifestCheck checkFileForEntitlements:forCorrespondingManifestEntry:];
LABEL_11:

        v28 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v30 = [v29 objectForKey:@"RigorousCheckType"];
      v31 = [v30 isEqualToString:@"Skip"];

      if (v31)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    v27 = defaultLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MSDDemoManifestCheck checkFileForEntitlements:forCorrespondingManifestEntry:];
    }

    goto LABEL_11;
  }

  v28 = 1;
LABEL_23:

  return v28;
}

- (__SecKey)createPublicKeyForStrongSigning:(id)a3
{
  v4 = a3;
  MobileStoreSigner = SecPolicyCreateMobileStoreSigner();
  v6 = defaultLogHandle();
  v7 = v6;
  if (MobileStoreSigner)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, "Verifying strong signing", v10, 2u);
    }

    v8 = [(MSDDemoManifestCheck *)self createPublicKey:v4 usingPolicy:MobileStoreSigner anchors:0];
  }

  else
  {
    [MSDDemoManifestCheck createPublicKeyForStrongSigning:v6];
    v8 = 0;
  }

  return v8;
}

- (__SecKey)createPublicKeyForDevelopmentSigning:(id)a3
{
  v4 = a3;
  v5 = defaultLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_259B7D000, v5, OS_LOG_TYPE_DEFAULT, "Verifying development signing", v8, 2u);
  }

  v6 = [(MSDDemoManifestCheck *)self createPublicKeyForDevelopmentSigningStandard:v4];
  return v6;
}

- (__SecKey)createPublicKeyForDevelopmentSigningStandard:(id)a3
{
  v4 = a3;
  TestMobileStoreSigner = SecPolicyCreateTestMobileStoreSigner();
  if (TestMobileStoreSigner)
  {
    v6 = [(MSDDemoManifestCheck *)self createPublicKey:v4 usingPolicy:TestMobileStoreSigner anchors:0];
  }

  else
  {
    [MSDDemoManifestCheck createPublicKeyForDevelopmentSigningStandard:];
    v6 = 0;
  }

  return v6;
}

- (__SecKey)createPublicKey:(id)a3 usingPolicy:(__SecPolicy *)a4 anchors:(id)a5
{
  v7 = a3;
  v8 = a5;
  trust[0] = 0;
  v22 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v10 = v17[5];
  v17[5] = v9;

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__MSDDemoManifestCheck_createPublicKey_usingPolicy_anchors___block_invoke;
  v15[3] = &unk_2798EF580;
  v15[4] = &v16;
  [v7 enumerateObjectsUsingBlock:v15];
  v11 = v17[5];
  if (!v11)
  {
LABEL_14:
    v12 = 0;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (SecTrustCreateWithCertificates(v11, a4, trust))
  {
    defaultLogHandle();
    objc_claimAutoreleasedReturnValue();
    [MSDDemoManifestCheck createPublicKey:usingPolicy:anchors:];
LABEL_23:
    v13 = trust[1];
LABEL_13:

    goto LABEL_14;
  }

  if (v8 && SecTrustSetAnchorCertificates(trust[0], v8))
  {
    defaultLogHandle();
    objc_claimAutoreleasedReturnValue();
    [MSDDemoManifestCheck createPublicKey:usingPolicy:anchors:];
    goto LABEL_23;
  }

  if (MEMORY[0x259CB03D0](trust[0], &v22))
  {
    defaultLogHandle();
    objc_claimAutoreleasedReturnValue();
    [MSDDemoManifestCheck createPublicKey:usingPolicy:anchors:];
    goto LABEL_23;
  }

  if (v22 != 1 && v22 != 4)
  {
    v13 = defaultLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MSDDemoManifestCheck createPublicKey:? usingPolicy:? anchors:?];
    }

    goto LABEL_13;
  }

  v12 = MEMORY[0x259CB03B0](trust[0]);
  if (!v12)
  {
    defaultLogHandle();
    objc_claimAutoreleasedReturnValue();
    [MSDDemoManifestCheck createPublicKey:usingPolicy:anchors:];
    goto LABEL_23;
  }

  if (a4)
  {
LABEL_15:
    CFRelease(a4);
  }

LABEL_16:
  if (trust[0])
  {
    CFRelease(trust[0]);
    trust[0] = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v12;
}

void __60__MSDDemoManifestCheck_createPublicKey_usingPolicy_anchors___block_invoke(uint64_t a1, const __CFData *a2)
{
  v3 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], a2);
  if (v3)
  {
    v4 = v3;
    [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
  }

  else
  {
    __60__MSDDemoManifestCheck_createPublicKey_usingPolicy_anchors___block_invoke_cold_1();
  }
}

- (BOOL)verifySignature:(id)a3 forData:(id)a4 withKey:(__SecKey *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = defaultLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [MSDDemoManifestCheck verifySignature:v9 forData:? withKey:?];
  }

  v10 = malloc_type_calloc(1uLL, 0x14uLL, 0x100004077774924uLL);
  v11 = [v7 bytes];
  v12 = [v7 length];

  CC_SHA1(v11, v12, v10);
  v13 = [v8 bytes];
  v14 = [v8 length];

  v15 = SecKeyRawVerify(a5, 0x8002u, v10, 0x14uLL, v13, v14);
  free(v10);
  if (v15)
  {
    [MSDDemoManifestCheck verifySignature:v15 forData:? withKey:?];
  }

  return v15 == 0;
}

- (BOOL)isManualSigning:(id)a3
{
  commonName = 0;
  v3 = [a3 objectAtIndexedSubscript:0];
  if (!v3 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = defaultLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MSDDemoManifestCheck isManualSigning:];
    }

    goto LABEL_12;
  }

  v4 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], v3);
  if (!v4)
  {
    v9 = defaultLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [MSDDemoManifestCheck isManualSigning:];
    }

LABEL_12:

    v6 = 0;
    goto LABEL_13;
  }

  v5 = v4;
  SecCertificateCopyCommonName(v4, &commonName);
  CFRelease(v5);
  v6 = commonName;
  if ([(__CFString *)commonName isEqualToString:@"Demo Content Signing"])
  {
    v7 = defaultLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, "A certificate for manual signing is used.", buf, 2u);
    }

    v8 = 1;
    goto LABEL_16;
  }

LABEL_13:
  v7 = defaultLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_259B7D000, v7, OS_LOG_TYPE_DEFAULT, "A certificate for non-manual signing is used.", v11, 2u);
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (BOOL)validateISTSignedApp:(id)a3 manifest:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKey:@"Apps"];
  v7 = [v6 objectForKey:v5];

  v8 = [v7 objectForKey:@"Manifest"];

  v9 = [v8 objectForKey:@"Info"];
  v10 = [v9 objectForKey:@"AppType"];

  v11 = [v8 objectForKey:@"Dependencies"];
  v12 = v11;
  if (!v11 || [v11 count] == 1 && (objc_msgSend(v12, "objectForKey:", @"ProvisioningProfiles"), v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    v14 = 1;
  }

  else
  {
    [MSDDemoManifestCheck validateISTSignedApp:manifest:];
    v14 = 0;
  }

  return v14;
}

- (BOOL)secureManifestCheckForSegmentedManifest:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    [MSDDemoManifestCheck secureManifestCheckForSegmentedManifest:options:];
LABEL_9:
    v11 = 0;
    goto LABEL_6;
  }

  v8 = [(MSDDemoManifestCheck *)self allowedISTSignedComponents];

  if (!v8)
  {
    v9 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponents:v6];
    [(MSDDemoManifestCheck *)self setAllowedISTSignedComponents:v9];
  }

  [(MSDDemoManifestCheck *)self setSegmentedManifestWithRigorousFlag:v6];
  v10 = [v6 objectForKey:@"Version"];
  -[MSDDemoManifestCheck setManifestVersion:](self, "setManifestVersion:", [v10 unsignedIntValue]);

  if (![(MSDDemoManifestCheck *)self runSecurityCheck:v7])
  {
    [MSDDemoManifestCheck secureManifestCheckForSegmentedManifest:options:];
    goto LABEL_9;
  }

  [(MSDDemoManifestCheck *)self registerEntitlementNotificationHandler];
  v11 = 1;
LABEL_6:

  return v11;
}

- (BOOL)runSecurityCheck:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v5 = [(MSDDemoManifestCheck *)self getSecurityCheckSectionNames];
  v6 = [(MSDDemoManifestCheck *)self getappIconLayoutBackupName];
  v7 = [(MSDDemoManifestCheck *)self getBackupSectionName];
  v8 = defaultLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B7D000, v8, OS_LOG_TYPE_DEFAULT, "Starting rigorous security checks", buf, 2u);
  }

  v9 = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke;
  v18[3] = &unk_2798EF5D0;
  v10 = v5;
  v19 = v10;
  v20 = self;
  v24 = &v25;
  v11 = v4;
  v21 = v11;
  v12 = v6;
  v22 = v12;
  v13 = v7;
  v23 = v13;
  [v9 enumerateKeysAndObjectsUsingBlock:v18];

  if (v26[3])
  {
    v14 = defaultLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "[MSDDemoManifestCheck runSecurityCheck:]";
      _os_log_impl(&dword_259B7D000, v14, OS_LOG_TYPE_DEFAULT, "%s:Cleared all checks for manifest. Approving future installations", buf, 0xCu);
    }
  }

  else
  {
    defaultLogHandle();
    objc_claimAutoreleasedReturnValue();
    [MSDDemoManifestCheck runSecurityCheck:];
    v14 = *buf;
  }

  v15 = *(v26 + 24);
  _Block_object_dispose(&v25, 8);

  v16 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

void __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if ([*(a1 + 32) containsObject:v7])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke_2;
    v14[3] = &unk_2798EF5A8;
    v14[4] = *(a1 + 40);
    v15 = v7;
    v9 = *(a1 + 72);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    *&v12 = *(a1 + 64);
    *(&v12 + 1) = v9;
    *&v13 = v10;
    *(&v13 + 1) = v11;
    v16 = v13;
    v17 = v12;
    v18 = a4;
    [v8 enumerateKeysAndObjectsUsingBlock:v14];
  }
}

void __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) checkType];
  if (v9)
  {
    [*(a1 + 32) checkType];
  }

  else
  {
    [v8 objectForKey:@"RigorousCheckType"];
  }
  v10 = ;

  v11 = defaultLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 40);
    *buf = 138543874;
    v24 = v7;
    v25 = 2114;
    v26 = v12;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_259B7D000, v11, OS_LOG_TYPE_DEFAULT, "Name: %{public}@, Section Name: %{public}@, Check Type: %{public}@", buf, 0x20u);
  }

  v13 = [*(a1 + 32) getComponentData:v8];
  if ([v10 isEqualToString:@"Skip"])
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }

  else if ([v10 isEqualToString:@"Default"])
  {
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 32) runSecurityChecksForSection:v13 dataType:*(a1 + 40) componentName:v7 options:*(a1 + 48)];
  }

  else
  {
    if ([v10 isEqualToString:@"AppleISTCertCheck"])
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", *(a1 + 40), v7];
      v15 = [*(a1 + 32) allowedISTSignedComponents];
      v16 = [v15 containsObject:v14];

      if (v16)
      {
        if ([v7 isEqualToString:*(a1 + 56)] && objc_msgSend(*(a1 + 40), "isEqualToString:", *(a1 + 64)))
        {
          v17 = defaultLogHandle();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v24 = v14;
            _os_log_impl(&dword_259B7D000, v17, OS_LOG_TYPE_DEFAULT, "About to run app layout checks for %{public}@", buf, 0xCu);
          }

          v18 = [*(a1 + 32) runAppLayoutSecurityCheck:v13];
        }

        else
        {
          v18 = [*(a1 + 32) runSecurityChecksForSection:v13 dataType:*(a1 + 40) componentName:v7 options:*(a1 + 48)];
        }

        *(*(*(a1 + 72) + 8) + 24) = v18;
      }

      else
      {
        *(*(*(a1 + 72) + 8) + 24) = 0;
        v20 = defaultLogHandle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke_2_cold_1();
        }
      }
    }

    else
    {
      *(*(*(a1 + 72) + 8) + 24) = 0;
      v14 = defaultLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        *buf = 136315906;
        v24 = "[MSDDemoManifestCheck runSecurityCheck:]_block_invoke";
        v25 = 2114;
        v26 = v10;
        v27 = 2114;
        v28 = v7;
        v29 = 2114;
        v30 = v19;
        _os_log_error_impl(&dword_259B7D000, v14, OS_LOG_TYPE_ERROR, "%s: Unknown rigorous check type (%{public}@) for %{public}@ (from %{public}@).", buf, 0x2Au);
      }
    }
  }

  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v21 = defaultLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke_2_cold_2(v7, a1, v21);
    }

    *a4 = 1;
    **(a1 + 80) = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)runSecurityChecksForSection:(id)a3 dataType:(id)a4 componentName:(id)a5 options:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = a3;
  v14 = [(MSDDemoManifestCheck *)self settingsComponentNames];
  v15 = [v14 containsObject:v11];

  if (v15)
  {
    v16 = [(MSDDemoManifestCheck *)self runSettingsSecurityCheckForSection:v13 component:v11];
  }

  else
  {
    v16 = [(MSDDemoManifestCheck *)self runFileSecurityChecksForSection:v13 dataType:v10 options:v12];
  }

  v17 = v16;

  return v17;
}

- (BOOL)runSettingsSecurityCheckForSection:(id)a3 component:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 isEqualToString:@"locale"])
  {
    v7 = [v5 objectForKey:@"Data"];
    v8 = [v7 objectForKey:@"language"];

    if (!v8)
    {
      [MSDDemoManifestCheck runSettingsSecurityCheckForSection:component:];
      goto LABEL_14;
    }

    v9 = [v7 objectForKey:@"region"];

    if (!v9)
    {
      [MSDDemoManifestCheck runSettingsSecurityCheckForSection:component:];
LABEL_14:

LABEL_10:
LABEL_11:
      v11 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if (![v6 isEqualToString:@"display"])
    {
      v7 = defaultLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [MSDDemoManifestCheck runSettingsSecurityCheckForSection:component:];
      }

      goto LABEL_10;
    }

    v7 = [v5 objectForKey:@"Data"];
    v10 = [v7 objectForKey:@"HDR"];

    if (!v10)
    {
      [MSDDemoManifestCheck runSettingsSecurityCheckForSection:component:];
      goto LABEL_11;
    }
  }

  v11 = 1;
LABEL_12:

  return v11;
}

- (BOOL)runFileSecurityChecksForSection:(id)a3 dataType:(id)a4 options:(id)a5
{
  v110 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 objectForKey:@"ExcludeBlocklistItem"];
  v12 = +[MSDPlatform sharedInstance];
  LODWORD(a4) = [v12 macOS];

  v78 = v9;
  if (a4)
  {
    v13 = [v8 objectForKey:@"Data"];
    v14 = [(MSDDemoManifestCheck *)self whitelistChecker];
    v15 = v13;
    v16 = [v14 checkManifest:v13];

    if ([v11 BOOLValue])
    {
      v17 = [(MSDDemoManifestCheck *)self blocklistedItems];
      [v17 addObjectsFromArray:v16];
    }

    else if (v16)
    {
      [MSDDemoManifestCheck runFileSecurityChecksForSection:v16 dataType:? options:?];
LABEL_64:
      v33 = 0;
      goto LABEL_70;
    }

    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v15 = v15;
    v23 = [v15 countByEnumeratingWithState:&v102 objects:v109 count:16];
    if (v23)
    {
      v24 = v23;
      v88 = v16;
      v72 = v10;
      v74 = v8;
      v70 = v11;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = *v103;
      while (2)
      {
        v29 = 0;
        v30 = v25;
        v31 = v27;
        do
        {
          if (*v103 != v28)
          {
            objc_enumerationMutation(v15);
          }

          v32 = *(*(&v102 + 1) + 8 * v29);

          v25 = [v15 objectForKey:v32];

          v27 = [v25 valueForKey:@"MSDManifestFileAttributes"];

          if (!v27)
          {
            v66 = v32;
            v67 = defaultLogHandle();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              [MSDDemoManifestCheck runFileSecurityChecksForSection:dataType:options:];
            }

            v33 = 0;
            v9 = v78;
            v11 = v70;
            v10 = v72;
            v8 = v74;
            v15 = v66;
            goto LABEL_70;
          }

          ++v29;
          v30 = v25;
          v26 = v32;
          v31 = v27;
        }

        while (v24 != v29);
        v26 = v32;
        v24 = [v15 countByEnumeratingWithState:&v102 objects:v109 count:16];
        if (v24)
        {
          continue;
        }

        break;
      }

      v9 = v78;
      v11 = v70;
      v10 = v72;
      v8 = v74;
      v16 = v88;
    }

    v33 = 1;
    goto LABEL_70;
  }

  v77 = [MEMORY[0x277CBEB98] setWithArray:&unk_286AE1660];
  v18 = [(MSDDemoManifestCheck *)self getBackupSectionName];
  v19 = [(MSDDemoManifestCheck *)self getManifestData:v8];

  v76 = v18;
  v87 = self;
  if ([v9 isEqualToString:v18])
  {
    v20 = [(MSDDemoManifestCheck *)self whitelistChecker];
    v21 = [v20 checkManifest:v19];

    if ([v11 BOOLValue])
    {
      v22 = [(MSDDemoManifestCheck *)self blocklistedItems];
      [v22 addObjectsFromArray:v21];
    }

    else if (v21)
    {
      [MSDDemoManifestCheck runFileSecurityChecksForSection:dataType:options:];
      v33 = 0;
      v15 = v77;
      v8 = v19;
      goto LABEL_70;
    }
  }

  v71 = v11;
  v73 = v10;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v8 = v19;
  v81 = [v8 countByEnumeratingWithState:&v98 objects:v108 count:16];
  v34 = 0;
  v35 = 0;
  v15 = 0;
  if (!v81)
  {
    v37 = v76;
    v36 = v77;
    goto LABEL_66;
  }

  v80 = *v99;
  v37 = v76;
  v36 = v77;
  v75 = v8;
  while (2)
  {
    v38 = 0;
    v39 = v15;
    do
    {
      if (*v99 != v80)
      {
        v40 = v38;
        objc_enumerationMutation(v8);
        v38 = v40;
      }

      v82 = v38;
      v41 = *(*(&v98 + 1) + 8 * v38);
      context = objc_autoreleasePoolPush();
      v89 = v41;
      v85 = [v8 objectForKey:v41];
      v15 = [v85 valueForKey:@"MSDManifestFileAttributes"];

      if (!v15)
      {
        v65 = defaultLogHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          [MSDDemoManifestCheck runFileSecurityChecksForSection:dataType:options:];
        }

        goto LABEL_63;
      }

      v42 = [v36 containsObject:v9];
      v43 = [v15 valueForKey:@"NSFileType"];

      v84 = v43;
      v44 = [v43 isEqualToString:@"NSFileTypeRegular"];
      if (v42)
      {
        if ((v44 & 1) != 0 || ([v43 isEqualToString:@"NSFileTypeDirectory"]) && !-[MSDDemoManifestCheck isValidDataContainerFile:](v87, "isValidDataContainerFile:", v89, v71, v73))
        {
          goto LABEL_61;
        }
      }

      else if ((v44 & 1) == 0 && ([v43 isEqualToString:@"NSFileTypeDirectory"] & 1) == 0)
      {
        v79 = v15;
        v45 = [v85 valueForKey:@"MSDManifestSymbolicLinkTargetFile"];

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v46 = v87;
        v47 = [(MSDDemoManifestCheck *)v87 allowedSymLinks];
        v48 = [v47 countByEnumeratingWithState:&v94 objects:v107 count:16];
        if (!v48)
        {

          v34 = v45;
          v15 = v79;
LABEL_61:
          v65 = defaultLogHandle();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v35 = v84;
            [MSDDemoManifestCheck runFileSecurityChecksForSection:dataType:options:];
            goto LABEL_63;
          }

LABEL_62:
          v35 = v84;
LABEL_63:
          v11 = v71;
          v10 = v73;

          objc_autoreleasePoolPop(context);
          goto LABEL_64;
        }

        v49 = v48;
        v86 = 0;
        v50 = *v95;
        v51 = v89;
        do
        {
          for (i = 0; i != v49; ++i)
          {
            if (*v95 != v50)
            {
              objc_enumerationMutation(v47);
            }

            v53 = *(*(&v94 + 1) + 8 * i);
            if ([v51 rangeOfString:{v53, v71, v73}] != 0x7FFFFFFFFFFFFFFFLL)
            {
              v54 = [(MSDDemoManifestCheck *)v46 allowedSymLinks];
              v55 = [v54 objectForKey:v53];

              v92 = 0u;
              v93 = 0u;
              v90 = 0u;
              v91 = 0u;
              v56 = v55;
              v57 = [v56 countByEnumeratingWithState:&v90 objects:v106 count:16];
              if (v57)
              {
                v58 = v57;
                v59 = *v91;
                while (2)
                {
                  for (j = 0; j != v58; ++j)
                  {
                    if (*v91 != v59)
                    {
                      objc_enumerationMutation(v56);
                    }

                    if ([v45 rangeOfString:*(*(&v90 + 1) + 8 * j)] != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v86 = 1;
                      goto LABEL_49;
                    }
                  }

                  v58 = [v56 countByEnumeratingWithState:&v90 objects:v106 count:16];
                  if (v58)
                  {
                    continue;
                  }

                  break;
                }

LABEL_49:
                v46 = v87;
                v51 = v89;
              }
            }
          }

          v49 = [v47 countByEnumeratingWithState:&v94 objects:v107 count:16];
        }

        while (v49);

        v34 = v45;
        v9 = v78;
        v15 = v79;
        v8 = v75;
        v37 = v76;
        v36 = v77;
        if ((v86 & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      v61 = [v15 valueForKey:{@"NSFilePosixPermissions", v71, v73}];
      v62 = [v61 longValue];

      if ((v62 & 0xC00) != 0)
      {
        v65 = defaultLogHandle();
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          [MSDDemoManifestCheck runFileSecurityChecksForSection:dataType:options:];
        }

        goto LABEL_62;
      }

      if ([v9 isEqualToString:v37])
      {
        v63 = [(MSDDemoManifestCheck *)v87 whitelistChecker];
        v64 = [v63 handleSystemContainerFiles:v89 withMetadata:v85];

        if ((v64 & 1) == 0)
        {
          v65 = defaultLogHandle();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            [MSDDemoManifestCheck runFileSecurityChecksForSection:dataType:options:];
          }

          goto LABEL_62;
        }
      }

      objc_autoreleasePoolPop(context);
      v38 = v82 + 1;
      v35 = v84;
      v39 = v15;
    }

    while (v82 + 1 != v81);
    v35 = v84;
    v81 = [v8 countByEnumeratingWithState:&v98 objects:v108 count:16];
    if (v81)
    {
      continue;
    }

    break;
  }

LABEL_66:

  v33 = 1;
  v11 = v71;
  v10 = v73;
LABEL_70:

  v68 = *MEMORY[0x277D85DE8];
  return v33;
}

- (BOOL)runAppLayoutSecurityCheck:(id)a3
{
  v82 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = +[MSDPlatform sharedInstance];
  v9 = [v8 macOS];

  v69 = v6;
  v70 = v7;
  if (v9)
  {
    [v6 addObject:&unk_286AE1858];
    [v7 addObject:@"staff"];
    v71 = [MEMORY[0x277CBEB98] setWithArray:&unk_286AE1678];
    goto LABEL_11;
  }

  [v6 addObject:&unk_286AE1870];
  [v6 addObject:&unk_286AE1888];
  [v7 addObject:@"mobile"];
  [v7 addObject:@"wheel"];
  v10 = +[MSDPlatform sharedInstance];
  v11 = [v10 rOS];

  if (v11)
  {
    v12 = MEMORY[0x277CBEB98];
    v13 = &unk_286AE1690;
  }

  else
  {
    v14 = +[MSDPlatform sharedInstance];
    v15 = [v14 iOS];

    if (v15)
    {
      v12 = MEMORY[0x277CBEB98];
      v13 = &unk_286AE16A8;
    }

    else
    {
      v16 = +[MSDPlatform sharedInstance];
      v17 = [v16 tvOS];

      v12 = MEMORY[0x277CBEB98];
      if (!v17)
      {
        v18 = objc_alloc_init(MEMORY[0x277CBEB98]);
        goto LABEL_10;
      }

      v13 = &unk_286AE16C0;
    }
  }

  v18 = [v12 setWithArray:v13];
LABEL_10:
  v71 = v18;
LABEL_11:
  v19 = [(MSDDemoManifestCheck *)self getManifestData:v5];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (v21)
  {
    v23 = v21;
    v24 = 0x277CBE000uLL;
    v72 = *v74;
    v66 = *MEMORY[0x277CCA158];
    v65 = *MEMORY[0x277CCA118];
    v63 = *MEMORY[0x277CCA120];
    v64 = *MEMORY[0x277CCA160];
    v62 = *MEMORY[0x277CCA180];
    *&v22 = 134218242;
    v61 = v22;
    v67 = v20;
    do
    {
      v25 = 0;
      v68 = v23;
      do
      {
        if (*v74 != v72)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v73 + 1) + 8 * v25);
        v27 = [v20 objectForKey:{v26, v61}];
        if (!v27 || (v28 = *(v24 + 2752), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          [MSDDemoManifestCheck runAppLayoutSecurityCheck:];
LABEL_105:
          v33 = 6;
          goto LABEL_95;
        }

        v29 = [v27 objectForKey:@"MSDManifestSymbolicLinkTargetFile"];
        if (v29)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || ([v29 isEqualToString:&stru_286AD9A18] & 1) == 0)
          {
            [(MSDDemoManifestCheck *)v26 runAppLayoutSecurityCheck:v29, v27];
            goto LABEL_105;
          }
        }

        v30 = [v27 objectForKey:@"MSDManifestFileAttributes"];
        if (v30)
        {
          v31 = *(v24 + 2752);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v32 = [v30 objectForKey:@"NSFileType"];
            if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              if (([v32 isEqualToString:@"NSFileTypeDirectory"]& 1) != 0)
              {
                v33 = 3;
                goto LABEL_48;
              }

              if (([v32 isEqualToString:@"NSFileTypeRegular"]& 1) != 0)
              {
                if ([v71 containsObject:v26])
                {
                  v34 = [v30 objectForKey:v66];
                  if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    if ([v34 integerValue]== 501)
                    {
                      v35 = [v30 objectForKey:v65];

                      if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        if ([v6 containsObject:v35])
                        {
                          v36 = [v30 objectForKey:v64];
                          if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            if (([v36 isEqualToString:@"mobile"]& 1) != 0)
                            {
                              v37 = [v30 objectForKey:v63];

                              if (v37 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v23 = v68;
                                if ([v70 containsObject:v37])
                                {
                                  v38 = [v30 objectForKey:v62];
                                  if (v38 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    if (([v38 integerValue]& 0xC00) == 0)
                                    {
                                      v33 = 1;
                                      goto LABEL_45;
                                    }

                                    v51 = defaultLogHandle();
                                    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                                    {
LABEL_79:

                                      v33 = 6;
LABEL_80:
                                      v23 = v68;
LABEL_45:

LABEL_46:
                                      v6 = v69;
LABEL_47:

                                      v20 = v67;
                                      goto LABEL_48;
                                    }

                                    *buf = 138543362;
                                    v78 = v26;
                                    v52 = v51;
                                    v53 = "IS&T signed component contains setuid item: %{public}@";
                                  }

                                  else
                                  {
                                    v51 = defaultLogHandle();
                                    if (!os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                                    {
                                      goto LABEL_79;
                                    }

                                    *buf = 138543362;
                                    v78 = v26;
                                    v52 = v51;
                                    v53 = "IS&T signed component in wrong format (permission) for %{public}@";
                                  }

                                  _os_log_error_impl(&dword_259B7D000, v52, OS_LOG_TYPE_ERROR, v53, buf, 0xCu);
                                  goto LABEL_79;
                                }

                                v38 = defaultLogHandle();
                                if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                                {
LABEL_77:
                                  v33 = 6;
                                  goto LABEL_45;
                                }

                                *buf = 138543618;
                                v78 = v70;
                                v79 = 2114;
                                v80 = v26;
                                v48 = v38;
                                v49 = "IS&T signed component can only contain %{public}@ owned file - %{public}@";
                                v50 = 22;
                              }

                              else
                              {
                                v38 = defaultLogHandle();
                                v23 = v68;
                                if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                                {
                                  goto LABEL_77;
                                }

                                *buf = 138543362;
                                v78 = v26;
                                v48 = v38;
                                v49 = "IS&T signed component in wrong format (onwer name) for %{public}@";
                                v50 = 12;
                              }

                              _os_log_error_impl(&dword_259B7D000, v48, OS_LOG_TYPE_ERROR, v49, buf, v50);
                              goto LABEL_77;
                            }

                            v38 = defaultLogHandle();
                            if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                            {
LABEL_75:
                              v33 = 6;
                              v37 = v36;
                              goto LABEL_80;
                            }

                            *buf = 138543618;
                            v78 = @"mobile";
                            v79 = 2114;
                            v80 = v26;
                            v45 = v38;
                            v46 = "IS&T signed component can only contain %{public}@ owned file - %{public}@";
                            v47 = 22;
                          }

                          else
                          {
                            v38 = defaultLogHandle();
                            if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                            {
                              goto LABEL_75;
                            }

                            *buf = 138543362;
                            v78 = v26;
                            v45 = v38;
                            v46 = "IS&T signed component in wrong format (owner name) for %{public}@";
                            v47 = 12;
                          }

                          _os_log_error_impl(&dword_259B7D000, v45, OS_LOG_TYPE_ERROR, v46, buf, v47);
                          goto LABEL_75;
                        }

                        v37 = defaultLogHandle();
                        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                        {
LABEL_73:
                          v33 = 6;
                          goto LABEL_46;
                        }

                        *buf = 138543618;
                        v78 = v69;
                        v79 = 2114;
                        v80 = v26;
                        v42 = v37;
                        v43 = "IS&T signed component can only contain %{public}@ owned file - %{public}@";
                        v44 = 22;
                      }

                      else
                      {
                        v37 = defaultLogHandle();
                        if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_73;
                        }

                        *buf = 138543362;
                        v78 = v26;
                        v42 = v37;
                        v43 = "IS&T signed component in wrong format (owner ID) for %{public}@";
                        v44 = 12;
                      }

                      _os_log_error_impl(&dword_259B7D000, v42, OS_LOG_TYPE_ERROR, v43, buf, v44);
                      goto LABEL_73;
                    }

                    v37 = defaultLogHandle();
                    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
LABEL_71:
                      v33 = 6;
                      v35 = v34;
                      goto LABEL_46;
                    }

                    *buf = v61;
                    v78 = 501;
                    v79 = 2114;
                    v80 = v26;
                    v39 = v37;
                    v40 = "IS&T signed component can only contain %ld owned file - %{public}@";
                    v41 = 22;
                  }

                  else
                  {
                    v37 = defaultLogHandle();
                    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_71;
                    }

                    *buf = 138543362;
                    v78 = v26;
                    v39 = v37;
                    v40 = "IS&T signed component in wrong format (owner ID) for %{public}@";
                    v41 = 12;
                  }

                  _os_log_error_impl(&dword_259B7D000, v39, OS_LOG_TYPE_ERROR, v40, buf, v41);
                  goto LABEL_71;
                }

                v35 = defaultLogHandle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v78 = v26;
                  v54 = v35;
                  v55 = "%{public}@ is not allowed in IS&T signed component.";
                  goto LABEL_82;
                }
              }

              else
              {
                v35 = defaultLogHandle();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v78 = v26;
                  v54 = v35;
                  v55 = "IS&T signed component can only contain regular files - %{public}@";
                  goto LABEL_82;
                }
              }
            }

            else
            {
              v35 = defaultLogHandle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v78 = v26;
                v54 = v35;
                v55 = "IS&T signed component in wrong format (file type) for %{public}@";
LABEL_82:
                _os_log_error_impl(&dword_259B7D000, v54, OS_LOG_TYPE_ERROR, v55, buf, 0xCu);
              }
            }

            v33 = 6;
            goto LABEL_47;
          }
        }

        v32 = defaultLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v78 = v26;
          _os_log_error_impl(&dword_259B7D000, v32, OS_LOG_TYPE_ERROR, "IS&T signed component in wrong format (no file attributes) for %{public}@", buf, 0xCu);
        }

        v33 = 6;
LABEL_48:

        if (v33 != 3)
        {
          goto LABEL_95;
        }

        ++v25;
        v24 = 0x277CBE000;
      }

      while (v23 != v25);
      v56 = [v20 countByEnumeratingWithState:&v73 objects:v81 count:16];
      v23 = v56;
    }

    while (v56);
  }

  v33 = 0;
LABEL_95:

  if (v33)
  {
    v57 = v33 == 6;
  }

  else
  {
    v57 = 1;
  }

  v58 = !v57;

  v59 = *MEMORY[0x277D85DE8];
  return v58;
}

- (void)registerEntitlementNotificationHandler
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__MSDDemoManifestCheck_registerEntitlementNotificationHandler__block_invoke;
  v5[3] = &unk_2798EF5F8;
  v5[4] = self;
  v4 = [v3 addObserverForName:@"CheckEntitlementsNotify" object:0 queue:0 usingBlock:v5];
}

void __62__MSDDemoManifestCheck_registerEntitlementNotificationHandler__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = defaultLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 name];
    v6 = [v3 userInfo];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_259B7D000, v4, OS_LOG_TYPE_DEFAULT, "Notification received for entitlement check for: %{public}@ %{public}@", &v9, 0x16u);
  }

  v7 = [v3 userInfo];
  [*(a1 + 32) setItemBeingInstalled:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)getSecurityCheckSectionNames
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v2 = +[MSDPlatform sharedInstance];
    v3 = [v2 macOS];

    v4 = MEMORY[0x277CBEB98];
    if (v3)
    {
      v5 = &unk_286AE16D8;
    }

    else
    {
      v5 = &unk_286AE16F0;
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEB98];
    v5 = &unk_286AE1708;
  }

  v6 = [v4 setWithArray:v5];

  return v6;
}

- (id)getManifestData:(id)a3
{
  v4 = a3;
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v5 = [v4 objectForKey:@"Data" ofType:objc_opt_class()];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (id)getComponentData:(id)a3
{
  v3 = a3;
  v4 = @"Manifest";
  v5 = [v3 objectForKey:@"Manifest"];

  if (v5 || (v4 = @"Settings", [v3 objectForKey:@"Settings"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v3 objectForKey:v4 ofType:objc_opt_class()];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)getBackupSectionName
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    return @"BackupData";
  }

  else
  {
    return @"Backup";
  }
}

- (id)getappIconLayoutBackupName
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]!= 7)
  {
    return @"backup.Merge.AppIconLayout";
  }

  v2 = +[MSDPlatform sharedInstance];
  v3 = [v2 macOS];

  if (v3)
  {
    return @"dockLayout";
  }

  else
  {
    return @"appIconLayout";
  }
}

- (id)getInstallationOrder
{
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    v5 = [v4 objectForKey:@"InstallationOrder"];

    v6 = [v5 objectForKey:@"CriticalComponents"];
    if (v6)
    {
      [v3 addObjectsFromArray:v6];
    }

    v7 = [v5 objectForKey:@"Components"];
    if (v7)
    {
      [v3 addObjectsFromArray:v7];
    }
  }

  else
  {
    v5 = [(MSDDemoManifestCheck *)self segmentedManifestWithRigorousFlag];
    v3 = [v5 objectForKey:@"InstallationOrder"];
  }

  return v3;
}

- (id)getBackupItemName:(id)a3
{
  v4 = a3;
  if ([(MSDDemoManifestCheck *)self manifestVersion]== 7)
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"/BackupData/", "length")}];
  }

  else
  {
    v5 = v4;
  }

  v6 = v5;

  return v6;
}

- (BOOL)isValidDataContainerFile:(id)a3
{
  v3 = a3;
  v4 = [v3 pathComponents];
  v5 = v4;
  if (v4)
  {
    if ([v4 count])
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:v6];
        v9 = [v8 isEqualToString:@".."];

        if (v9)
        {
          if (!v7)
          {
            v14 = defaultLogHandle();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [MSDDemoManifestCheck isValidDataContainerFile:];
            }

            goto LABEL_12;
          }

          v10 = -1;
        }

        else
        {
          v11 = [v5 objectAtIndexedSubscript:v6];
          v12 = [v11 isEqualToString:@"."];

          v10 = v12 ^ 1;
        }

        v7 += v10;
        ++v6;
      }

      while ([v5 count] > v6);
    }

    v13 = 1;
  }

  else
  {
    v14 = defaultLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MSDDemoManifestCheck isValidDataContainerFile:];
    }

LABEL_12:

    v13 = 0;
  }

  return v13;
}

- (id)getAllowedSymLinks
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = +[MSDPlatform sharedInstance];
  if ([v3 iOS])
  {
  }

  else
  {
    v4 = +[MSDPlatform sharedInstance];
    v5 = [v4 rOS];

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = [MEMORY[0x277CBEB98] setWithArray:&unk_286AE1720];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.carrier"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator_1.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator_2.plist"];
  [v2 setObject:v6 forKey:@"/var/mobile/Library/Preferences/com.apple.operator.merged.plist"];
  v7 = [MEMORY[0x277CBEB98] setWithObject:@"/var/db/timezone/zoneinfo"];
  [v2 setObject:v7 forKey:@"/var/db/timezone/localtime"];

  v8 = [MEMORY[0x277CBEB98] setWithArray:&unk_286AE1738];
  [v2 setObject:v8 forKey:@"/var/mobile/Media/Books"];

  v9 = [MEMORY[0x277CBEB98] setWithObject:@"/var/mobile/Library/Shortcuts/ToolKit"];
  [v2 setObject:v9 forKey:@"/var/mobile/Library/Shortcuts/ToolKit/Tools-active"];

  v10 = [MEMORY[0x277CBEB98] setWithObject:@"Binaries/0/Debug-xros"];
  [v2 setObject:v10 forKey:@"/var/mobile/XcodeBuiltProducts/PressDemoScripts.xctestproducts/Tests/0/Debug-xros"];

  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v11 addObject:@"/var/mobile/Containers/Data/Application/"];
  [v11 addObject:@"/var/mobile/Containers/Shared/AppGroup/"];
  [v11 addObject:@"/var/mobile/Containers/Shared/Extension/"];
  [v11 addObject:@"/var/mobile/Library/Cookies"];
  [v11 addObject:@"/private/var/mobile/Library/Preferences/com.apple.PeoplePicker.plist"];
  [v11 addObject:@"/private/var/mobile/Library/Preferences/.GlobalPreferences.plist"];
  [v2 setObject:v11 forKey:@"/var/mobile/Containers/"];

LABEL_5:

  return v2;
}

- (id)getAllowedISTSignedComponents:(id)a3
{
  v14[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [v4 set];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"BackupData", @"appIconLayout"];
  v14[0] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"BackupData", @"dockLayout"];
  v14[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v10 = [(MSDDemoManifestCheck *)self getAllowedISTSignedComponentsFromManifest:v5];

  [v6 addObjectsFromArray:v9];
  [v6 addObjectsFromArray:v10];
  v11 = [MEMORY[0x277CBEB98] setWithSet:v6];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)getAllowedISTSignedComponentsFromManifest:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  [v4 addObject:@"com.apple.ist.DigitalCatalog"];
  [v4 addObject:@"com.apple.ist.demoloop"];
  [v4 addObject:@"com.apple.ist.windward"];
  [v4 addObject:@"com.apple.ist.DemoDiscoveryApp"];
  [v4 addObject:@"com.apple.ist.DigitalSignage.iOS"];
  [v4 addObject:@"com.retailtech.arkenstone"];
  v5 = [MEMORY[0x277CBEB18] array];
  v25 = v3;
  v28 = [v3 objectForKeyedSubscript:@"Apps"];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v4;
  v29 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v29)
  {
    v27 = *v43;
    do
    {
      v6 = 0;
      do
      {
        if (*v43 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v6;
        v7 = [v28 objectForKeyedSubscript:*(*(&v42 + 1) + 8 * v6)];
        v8 = [v7 objectForKeyedSubscript:@"Manifest"];
        v9 = [v8 objectForKeyedSubscript:@"Dependencies"];

        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v39;
          v31 = *v39;
          v32 = v10;
          do
          {
            v14 = 0;
            v33 = v12;
            do
            {
              if (*v39 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v38 + 1) + 8 * v14);
              if (([v15 isEqualToString:@"ProvisioningProfiles"] & 1) == 0)
              {
                v16 = [v10 objectForKeyedSubscript:v15];
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v37 = 0u;
                v17 = [v16 countByEnumeratingWithState:&v34 objects:v46 count:16];
                if (v17)
                {
                  v18 = v17;
                  v19 = *v35;
                  do
                  {
                    for (i = 0; i != v18; ++i)
                    {
                      if (*v35 != v19)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v15, *(*(&v34 + 1) + 8 * i)];
                      [v5 addObject:v21];
                    }

                    v18 = [v16 countByEnumeratingWithState:&v34 objects:v46 count:16];
                  }

                  while (v18);
                }

                v13 = v31;
                v10 = v32;
                v12 = v33;
              }

              ++v14;
            }

            while (v14 != v12);
            v12 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v12);
        }

        v6 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v29);
  }

  v22 = [MEMORY[0x277CBEA60] arrayWithArray:v5];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

- (void)removeBlocklistedItemFromSection:(id)a3 withName:(id)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v60;
    v11 = 0x277CBE000uLL;
    v38 = self;
    v39 = v6;
    v36 = *v60;
    v37 = v7;
    do
    {
      v12 = 0;
      v40 = v9;
      do
      {
        if (*v60 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(v11 + 2872);
        v44 = *(*(&v59 + 1) + 8 * v12);
        v14 = [v6 objectForKey:v44 ofType:objc_opt_class()];
        if (v14)
        {
          v15 = [(MSDDemoManifestCheck *)self getComponentData:v14];
          if (v15)
          {
            v16 = [(MSDDemoManifestCheck *)self getManifestData:v15];
            if (v16)
            {
              v41 = v15;
              v42 = v14;
              v43 = v12;
              v17 = objc_opt_new();
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              v58 = 0u;
              obj = [(MSDDemoManifestCheck *)self blocklistedItems];
              v18 = [obj countByEnumeratingWithState:&v55 objects:v71 count:16];
              if (v18)
              {
                v19 = v18;
                v46 = *v56;
                do
                {
                  for (i = 0; i != v19; ++i)
                  {
                    if (*v56 != v46)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v21 = *(*(&v55 + 1) + 8 * i);
                    v51 = 0u;
                    v52 = 0u;
                    v53 = 0u;
                    v54 = 0u;
                    v22 = v16;
                    v23 = [v22 countByEnumeratingWithState:&v51 objects:v70 count:16];
                    if (v23)
                    {
                      v24 = v23;
                      v25 = *v52;
                      do
                      {
                        for (j = 0; j != v24; ++j)
                        {
                          if (*v52 != v25)
                          {
                            objc_enumerationMutation(v22);
                          }

                          v27 = *(*(&v51 + 1) + 8 * j);
                          if (([v27 isEqualToString:{v21, v36}] & 1) != 0 || objc_msgSend(v27, "hasPrefix:", v21))
                          {
                            [v17 addObject:v27];
                          }
                        }

                        v24 = [v22 countByEnumeratingWithState:&v51 objects:v70 count:16];
                      }

                      while (v24);
                    }
                  }

                  v19 = [obj countByEnumeratingWithState:&v55 objects:v71 count:16];
                }

                while (v19);
              }

              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              v28 = v17;
              v29 = [v28 countByEnumeratingWithState:&v47 objects:v69 count:16];
              v7 = v37;
              if (v29)
              {
                v30 = v29;
                v31 = *v48;
                do
                {
                  for (k = 0; k != v30; ++k)
                  {
                    if (*v48 != v31)
                    {
                      objc_enumerationMutation(v28);
                    }

                    v33 = *(*(&v47 + 1) + 8 * k);
                    v34 = defaultLogHandle();
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543874;
                      v64 = v33;
                      v65 = 2114;
                      v66 = v37;
                      v67 = 2114;
                      v68 = v44;
                      _os_log_impl(&dword_259B7D000, v34, OS_LOG_TYPE_DEFAULT, "Excluding %{public}@ from section: %{public}@ component:%{public}@", buf, 0x20u);
                    }

                    [v16 removeObjectForKey:v33];
                  }

                  v30 = [v28 countByEnumeratingWithState:&v47 objects:v69 count:16];
                }

                while (v30);
              }

              self = v38;
              v6 = v39;
              v10 = v36;
              v11 = 0x277CBE000;
              v9 = v40;
              v15 = v41;
              v14 = v42;
              v12 = v43;
            }
          }
        }

        ++v12;
      }

      while (v12 != v9);
      v9 = [v6 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v9);
  }

  v35 = *MEMORY[0x277D85DE8];
}

- (__SecKey)createPublicKeyAppleISTSigning:(id)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = a3;
  commonName = 0;
  v6 = defaultLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_259B7D000, v6, OS_LOG_TYPE_DEFAULT, "Verifying AppleIST certificate\n", buf, 2u);
  }

  DemoDigitalCatalogSigning = SecPolicyCreateDemoDigitalCatalogSigning();
  if (!DemoDigitalCatalogSigning)
  {
    v29 = defaultLogHandle();
    if (OUTLINED_FUNCTION_12(v29))
    {
      *buf = 136315138;
      v55 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
      OUTLINED_FUNCTION_3_0();
LABEL_38:
      _os_log_error_impl(v30, v31, v32, v33, v34, v35);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v8 = DemoDigitalCatalogSigning;
  if ([v5 count] != 2)
  {
    v36 = defaultLogHandle();
    if (OUTLINED_FUNCTION_12(v36))
    {
      *buf = 0;
LABEL_37:
      OUTLINED_FUNCTION_10();
      goto LABEL_38;
    }

LABEL_23:
    v15 = 0;
    goto LABEL_35;
  }

  v9 = [v5 objectAtIndex:0];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v15 = 0;
    goto LABEL_21;
  }

  v11 = *MEMORY[0x277CBECE8];
  v3 = [v5 objectAtIndex:0];
  v12 = [(__CFString *)v3 bytes];
  v13 = [v5 objectAtIndex:0];
  v14 = CFDataCreate(v11, v12, [v13 length]);

  if (!v14)
  {
    v37 = defaultLogHandle();
    if (!OUTLINED_FUNCTION_12(v37))
    {
      goto LABEL_23;
    }

    *buf = 0;
    goto LABEL_37;
  }

  SecCertificateCreateWithData(v11, v14);
  v15 = SecCertificateCopyOrganizationalUnit();
  v3 = [(__CFString *)v15 objectAtIndex:0];
  v16 = [(__CFString *)v3 isEqualToString:@"1.2.840.113635.100.6.60"];

  if ((v16 & 1) == 0)
  {
    v38 = defaultLogHandle();
    if (OUTLINED_FUNCTION_12(v38))
    {
      *buf = 138543362;
      v55 = v15;
      OUTLINED_FUNCTION_3_0();
LABEL_28:
      _os_log_error_impl(v39, v40, v41, v42, v43, v44);
    }

LABEL_35:
    v25 = 0;
    v26 = 0;
    goto LABEL_14;
  }

  v17 = [v5 objectAtIndex:1];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if ((v18 & 1) == 0)
  {
LABEL_21:
    v25 = 0;
    v26 = 0;
    goto LABEL_15;
  }

  v19 = [v5 objectAtIndex:1];
  v20 = [v19 bytes];
  v21 = [v5 objectAtIndex:1];
  v3 = CFDataCreate(v11, v20, [v21 length]);

  if (!v3)
  {
    v45 = defaultLogHandle();
    if (OUTLINED_FUNCTION_12(v45))
    {
      *buf = 0;
      OUTLINED_FUNCTION_10();
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  v22 = SecCertificateCreateWithData(v11, v3);
  SecCertificateCopyCommonName(v22, &commonName);
  v3 = commonName;
  if (([(__CFString *)v3 isEqualToString:@"DemoUnit CA"]& 1) == 0)
  {
    v46 = defaultLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v55 = commonName;
      goto LABEL_40;
    }

LABEL_34:

    goto LABEL_35;
  }

  v23 = CFDataCreate(v11, demoUnitRootCACert_crt, demoUnitRootCACert_crt_len);
  if (!v23)
  {
    v46 = defaultLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v55 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v24 = SecCertificateCreateWithData(v11, v23);
  if (!v24)
  {
    v46 = defaultLogHandle();
    if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *buf = 136315138;
    v55 = "[MSDDemoManifestCheck createPublicKeyAppleISTSigning:]";
LABEL_40:
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v47, v48, v49, v50, v51, v52);
    goto LABEL_34;
  }

  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:{v24, 0}];
  v26 = [(MSDDemoManifestCheck *)self createPublicKey:v5 usingPolicy:v8 anchors:v25];
LABEL_14:

LABEL_15:
  v27 = *MEMORY[0x277D85DE8];
  return v26;
}

- (void)init
{
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)verifyManifestSignature:forDataSectionKeys:withOptions:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)verifyManifestSignature:forDataSectionKeys:withOptions:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)verifyManifestSignature:forDataSectionKeys:withOptions:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)verifyManifestSignature:forDataSectionKeys:withOptions:.cold.4()
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7(&dword_259B7D000, v0, v1, "%s: signature type for certificate %{public}@ does not exist", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)verifyManifestSignature:forDataSectionKeys:withOptions:.cold.5()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)verifyManifestSignature:forDataSectionKeys:withOptions:.cold.6()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)verifyManifestSignature:forDataSectionKeys:withOptions:.cold.7()
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 136315394;
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7(&dword_259B7D000, v0, v1, "%s: No matching certificate for %{public}@.", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)verifyManifestSignature:forDataSectionKeys:withOptions:.cold.8()
{
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)verifyManifestSignature:forDataSectionKeys:withOptions:.cold.9()
{
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)checkFileForEntitlements:forCorrespondingManifestEntry:.cold.1()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (OUTLINED_FUNCTION_4(v0))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x277D85DE8];
}

- (void)checkFileForEntitlements:forCorrespondingManifestEntry:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v9 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle();
  if (OUTLINED_FUNCTION_4(v2))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)checkFileForEntitlements:forCorrespondingManifestEntry:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (OUTLINED_FUNCTION_4(v0))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
  }

  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x277D85DE8];
}

- (void)checkFileForEntitlements:forCorrespondingManifestEntry:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createPublicKeyForStrongSigning:(NSObject *)a1 .cold.1(NSObject *a1)
{
  v2 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_14(a1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)createPublicKeyForDevelopmentSigningStandard:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)createPublicKey:usingPolicy:anchors:.cold.1()
{
  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_14(v1))
  {
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  OUTLINED_FUNCTION_6();
  v2 = *MEMORY[0x277D85DE8];
}

- (void)createPublicKey:usingPolicy:anchors:.cold.2()
{
  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_14(v1))
  {
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  OUTLINED_FUNCTION_6();
  v2 = *MEMORY[0x277D85DE8];
}

- (void)createPublicKey:usingPolicy:anchors:.cold.3()
{
  OUTLINED_FUNCTION_9();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_14(v1))
  {
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  }

  OUTLINED_FUNCTION_6();
  v2 = *MEMORY[0x277D85DE8];
}

- (void)createPublicKey:usingPolicy:anchors:.cold.4()
{
  OUTLINED_FUNCTION_16();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_14(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  OUTLINED_FUNCTION_6();
  v2 = *MEMORY[0x277D85DE8];
}

- (void)createPublicKey:(unsigned int *)a1 usingPolicy:anchors:.cold.5(unsigned int *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v5[0] = 136315394;
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_7(&dword_259B7D000, v2, v3, "%s: certificate trust evaluation failed: %ld", v5);
  v4 = *MEMORY[0x277D85DE8];
}

void __60__MSDDemoManifestCheck_createPublicKey_usingPolicy_anchors___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_16();
  v13 = *MEMORY[0x277D85DE8];
  v3 = defaultLogHandle();
  if (OUTLINED_FUNCTION_12(v3))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v7, v8, v9, v10, v11, v12);
  }

  v4 = *(*(v1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  *v0 = 1;
  v6 = *MEMORY[0x277D85DE8];
}

- (void)verifySignature:(int)a1 forData:withKey:.cold.2(int a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315394;
    v5 = "[MSDDemoManifestCheck verifySignature:forData:withKey:]";
    v6 = 1024;
    v7 = a1;
    _os_log_debug_impl(&dword_259B7D000, v2, OS_LOG_TYPE_DEBUG, "%s: Failed in verifying signature(%d)", &v4, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)isManualSigning:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isManualSigning:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)validateISTSignedApp:manifest:.cold.1()
{
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)secureManifestCheckForSegmentedManifest:options:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)secureManifestCheckForSegmentedManifest:options:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = defaultLogHandle();
  if (OUTLINED_FUNCTION_5(v1))
  {
    OUTLINED_FUNCTION_2();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)runSecurityCheck:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v0 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_14(v1))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  }

  OUTLINED_FUNCTION_6();
  v2 = *MEMORY[0x277D85DE8];
}

void __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke_2_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

void __41__MSDDemoManifestCheck_runSecurityCheck___block_invoke_2_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  v5 = 136315650;
  v6 = "[MSDDemoManifestCheck runSecurityCheck:]_block_invoke";
  v7 = 2114;
  v8 = a1;
  v9 = 2114;
  v10 = v3;
  _os_log_error_impl(&dword_259B7D000, log, OS_LOG_TYPE_ERROR, "%s: Failed rigorous check for:%{public}@ (from %{public}@)", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)runSettingsSecurityCheckForSection:component:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)runSettingsSecurityCheckForSection:component:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v9 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle();
  if (OUTLINED_FUNCTION_4(v2))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)runSettingsSecurityCheckForSection:component:.cold.3()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (OUTLINED_FUNCTION_4(v0))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x277D85DE8];
}

- (void)runSettingsSecurityCheckForSection:component:.cold.4()
{
  OUTLINED_FUNCTION_8();
  v7 = *MEMORY[0x277D85DE8];
  v0 = defaultLogHandle();
  if (OUTLINED_FUNCTION_4(v0))
  {
    OUTLINED_FUNCTION_1_0();
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  }

  OUTLINED_FUNCTION_6();
  v1 = *MEMORY[0x277D85DE8];
}

- (void)runFileSecurityChecksForSection:dataType:options:.cold.1()
{
  OUTLINED_FUNCTION_16();
  v3 = defaultLogHandle();
  if (OUTLINED_FUNCTION_12(v3))
  {
    OUTLINED_FUNCTION_10();
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
  }
}

- (void)runFileSecurityChecksForSection:dataType:options:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  v4 = 2114;
  v5 = v0;
  OUTLINED_FUNCTION_7(&dword_259B7D000, v1, v1, "Not a valid fileType (%{public}@) for file: %{public}@", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)runFileSecurityChecksForSection:dataType:options:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  v4 = 2048;
  v5 = v0;
  OUTLINED_FUNCTION_7(&dword_259B7D000, v1, v1, "File permissions failed for file:%{public}@(%ld)", v3);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)runFileSecurityChecksForSection:dataType:options:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)runFileSecurityChecksForSection:dataType:options:.cold.5()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)runFileSecurityChecksForSection:(void *)a1 dataType:options:.cold.6(void *a1)
{
  v3 = defaultLogHandle();
  if (OUTLINED_FUNCTION_4(v3))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }
}

- (void)runAppLayoutSecurityCheck:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = defaultLogHandle();
  if (OUTLINED_FUNCTION_12(v6))
  {
    OUTLINED_FUNCTION_3_0();
    _os_log_error_impl(v8, v9, v10, v11, v12, v13);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)runAppLayoutSecurityCheck:.cold.2()
{
  OUTLINED_FUNCTION_8();
  v9 = *MEMORY[0x277D85DE8];
  v2 = defaultLogHandle();
  if (OUTLINED_FUNCTION_4(v2))
  {
    OUTLINED_FUNCTION_1();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)isValidDataContainerFile:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isValidDataContainerFile:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

@end
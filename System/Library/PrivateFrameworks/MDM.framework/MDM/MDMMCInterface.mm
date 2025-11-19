@interface MDMMCInterface
+ (BOOL)clearPasscodeWithEscrowKeybagData:(id)a3 secret:(id)a4 outError:(id *)a5;
+ (BOOL)installProvisioningProfileData:(id)a3 managingProfileIdentifier:(id)a4 outError:(id *)a5;
+ (BOOL)isAutomaticDateAndTimeForced;
+ (BOOL)isAwaitingDeviceConfigured;
+ (BOOL)isDiagnosticsSubmissionRestricted;
+ (BOOL)isEnterpriseBookBackupAllowed;
+ (BOOL)isLimitedAppsMode;
+ (BOOL)isPasscodeSet;
+ (BOOL)isProfileWithIdentifier:(id)a3 managedByProfileWithIdentifier:(id)a4;
+ (BOOL)isProvisioningProfileWithUUID:(id)a3 managedByProfileWithIdentifier:(id)a4;
+ (BOOL)removeProvisioningProfileWithUUID:(id)a3 managingProfileIdentifier:(id)a4 outError:(id *)a5;
+ (id)cloudConfigurationDetails;
+ (id)filterMDMRestrictions:(id)a3 acceptingKeysFromDictionary:(id)a4;
+ (id)ipcuProfileList;
+ (id)ipcuRemoveProfileWithIdentifier:(id)a3;
+ (id)managedAppIDs;
+ (id)mdmProfileIdentifier;
+ (id)mdmQueryableRestrictions;
+ (int)_mcFilterFlagsForMDMFlags:(int)a3;
+ (void)enrollProvisionallyWithNonce:(id)a3 completion:(id)a4;
+ (void)flush;
+ (void)installStoredProfileDataWithCompletion:(id)a3;
+ (void)profiledCheckIn;
+ (void)retrieveCloudConfigurationDetailsCompletion:(id)a3;
+ (void)retrieveCloudConfigurationFromURL:(id)a3 username:(id)a4 password:(id)a5 anchorCertificates:(id)a6 completion:(id)a7;
+ (void)storeCertificateData:(id)a3 forHostIdentifier:(id)a4;
+ (void)storeCloudConfigurationDetails:(id)a3 completion:(id)a4;
+ (void)storeProfileData:(id)a3 completion:(id)a4;
+ (void)storedProfileDataWithCompletion:(id)a3;
@end

@implementation MDMMCInterface

+ (BOOL)isPasscodeSet
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isPasscodeSet];

  return v3;
}

+ (BOOL)isLimitedAppsMode
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isEffectivelyInAppAllowListMode];

  return v3;
}

+ (BOOL)isAwaitingDeviceConfigured
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isAwaitingDeviceConfigured];

  return v3;
}

+ (id)managedAppIDs
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 managedAppIDs];

  return v3;
}

+ (void)profiledCheckIn
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  [v2 checkIn];
}

+ (void)flush
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  [v2 flush];
}

+ (BOOL)clearPasscodeWithEscrowKeybagData:(id)a3 secret:(id)a4 outError:(id *)a5
{
  v7 = MEMORY[0x277D262A0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 sharedConnection];
  LOBYTE(a5) = [v10 clearPasscodeWithEscrowKeybagData:v9 secret:v8 outError:a5];

  return a5;
}

+ (void)storeCertificateData:(id)a3 forHostIdentifier:(id)a4
{
  v5 = MEMORY[0x277D262A0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedConnection];
  [v8 storeCertificateData:v7 forHostIdentifier:v6];
}

+ (id)mdmQueryableRestrictions
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"MDMQueryableRestrictionKeys" ofType:@"plist"];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];

  return v4;
}

+ (id)filterMDMRestrictions:(id)a3 acceptingKeysFromDictionary:(id)a4
{
  v4 = [MEMORY[0x277D262C0] filterRestrictionDictionary:a3 acceptedKeysDict:a4];
  v5 = [v4 mutableCopy];

  [v5 MCFixUpRestrictionsDictionaryForMDMReporting];

  return v5;
}

+ (BOOL)isAutomaticDateAndTimeForced
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D88]];

  return v3;
}

+ (BOOL)isDiagnosticsSubmissionRestricted
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25E58]];

  return v3;
}

+ (BOOL)isEnterpriseBookBackupAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 isEnterpriseBookBackupAllowed];

  return v3;
}

+ (id)mdmProfileIdentifier
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 installedMDMProfileIdentifier];

  return v3;
}

+ (BOOL)isProfileWithIdentifier:(id)a3 managedByProfileWithIdentifier:(id)a4
{
  v5 = MEMORY[0x277D262A0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedConnection];
  v9 = [v8 isProfileWithIdentifier:v7 managedByProfileWithIdentifier:v6];

  return v9;
}

+ (BOOL)isProvisioningProfileWithUUID:(id)a3 managedByProfileWithIdentifier:(id)a4
{
  v5 = MEMORY[0x277D262A0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedConnection];
  v9 = [v8 isProvisioningProfilesWithUUID:v7 managedByProfileWithIdentifier:v6];

  return v9;
}

+ (BOOL)installProvisioningProfileData:(id)a3 managingProfileIdentifier:(id)a4 outError:(id *)a5
{
  v7 = MEMORY[0x277D262A0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 sharedConnection];
  LOBYTE(a5) = [v10 installProvisioningProfileData:v9 managingProfileIdentifier:v8 outError:a5];

  return a5;
}

+ (BOOL)removeProvisioningProfileWithUUID:(id)a3 managingProfileIdentifier:(id)a4 outError:(id *)a5
{
  v7 = MEMORY[0x277D262A0];
  v8 = a4;
  v9 = a3;
  v10 = [v7 sharedConnection];
  LOBYTE(a5) = [v10 removeProvisioningProfileWithUUID:v9 managingProfileIdentifier:v8 outError:a5];

  return a5;
}

+ (id)ipcuProfileList
{
  v43 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 installedProfilesWithFilterFlags:69];

  v35 = objc_opt_new();
  v34 = objc_opt_new();
  v33 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v4)
  {
    v5 = v4;
    v32 = *v37;
    v31 = *MEMORY[0x277D24C28];
    v30 = *MEMORY[0x277D24C00];
    v29 = *MEMORY[0x277D24C88];
    v28 = *MEMORY[0x277D24C10];
    v27 = *MEMORY[0x277D24C60];
    v26 = *MEMORY[0x277D24C08];
    v6 = *MEMORY[0x277D24C90];
    v7 = *MEMORY[0x277D24C70];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v36 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = objc_opt_new();
        v12 = objc_opt_new();
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v31];
        v13 = [v9 displayName];
        [v11 setObject:v13 forKeyedSubscript:v30];

        v14 = [v9 UUID];
        [v12 setObject:v14 forKeyedSubscript:v29];

        v15 = [v9 displayName];
        [v12 setObject:v15 forKeyedSubscript:v28];

        v16 = [v9 organization];
        [v12 setObject:v16 forKeyedSubscript:v27];

        v17 = [v9 profileDescription];
        [v12 setObject:v17 forKeyedSubscript:v26];

        v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "version")}];
        [v12 setObject:v18 forKeyedSubscript:v6];

        v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isLocked")}];
        [v12 setObject:v19 forKeyedSubscript:v7];

        [v35 setObject:v11 forKeyedSubscript:v10];
        [v33 setObject:v12 forKeyedSubscript:v10];
        [v34 addObject:v10];
      }

      v5 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D24C48];
  v40[0] = @"Status";
  v40[1] = v20;
  v41[0] = @"Acknowledged";
  v41[1] = v35;
  v21 = *MEMORY[0x277D24C58];
  v40[2] = *MEMORY[0x277D24C50];
  v40[3] = v21;
  v41[2] = v33;
  v41[3] = v34;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:4];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)ipcuRemoveProfileWithIdentifier:(id)a3
{
  v3 = a3;
  cf2 = 0;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = 0;
    v5 = [MDMMCInterface profileIdentifierForProfileData:v3 allowEmptyPayload:1 outIsSupervisionProfile:0 outProfileSigner:&cf2 outMayInstallCloudProfile:0 outError:&v23];
    v6 = v23;
    if (v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D033C0];
      v15 = DMCErrorArray();
      v6 = [v13 DMCErrorWithDomain:v14 code:4000 descriptionArray:v15 errorType:{*MEMORY[0x277D032F8], 0}];

      v5 = 0;
      goto LABEL_18;
    }

    v5 = v3;
  }

  v7 = [v4 installedProfileIdentifiersWithFilterFlags:69];
  if ([v7 containsObject:v5])
  {
    v8 = [v4 installedProfileWithIdentifier:v5];
    if ([v8 isLocked] && objc_msgSend(v8, "isSigned") && (!cf2 || (v9 = objc_msgSend(v8, "signerCertificate"), !CFEqual(v9, cf2))))
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D033C0];
      v10 = [v8 friendlyName];
      v11 = DMCErrorArray();
      v20 = [v18 DMCErrorWithDomain:v19 code:4008 descriptionArray:v11 errorType:{*MEMORY[0x277D032F8], v10, 0}];
      v6 = [v20 DMCCopyAsPrimaryError];
    }

    else
    {
      v10 = objc_opt_new();
      [v10 setType:0];
      [v10 setProfileIdentifier:v5];
      v11 = [MEMORY[0x277D04BF8] systemConnection];
      v21 = 0;
      v12 = [v11 performRequest:v10 error:&v21];
      v6 = v21;
    }
  }

  else
  {
    v16 = *DMCLogObjects();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_2561F5000, v16, OS_LOG_TYPE_ERROR, "iPCU tried to uninstall a profile that was not found", buf, 2u);
    }

    v6 = 0;
  }

LABEL_18:
  if (cf2)
  {
    CFRelease(cf2);
  }

  return v6;
}

+ (void)storeProfileData:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277D262A0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedConnection];
  [v8 storeProfileData:v7 completion:v6];
}

+ (void)storedProfileDataWithCompletion:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 storedProfileDataWithCompletion:v4];
}

+ (void)installStoredProfileDataWithCompletion:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 installStoredProfileDataWithCompletion:v4];
}

+ (id)cloudConfigurationDetails
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 cloudConfigurationDetails];

  return v3;
}

+ (void)retrieveCloudConfigurationDetailsCompletion:(id)a3
{
  v3 = MEMORY[0x277D262A0];
  v4 = a3;
  v5 = [v3 sharedConnection];
  [v5 retrieveCloudConfigurationDetailsCompletionBlock:v4];
}

+ (void)retrieveCloudConfigurationFromURL:(id)a3 username:(id)a4 password:(id)a5 anchorCertificates:(id)a6 completion:(id)a7
{
  v11 = MEMORY[0x277D262A0];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v11 sharedConnection];
  [v17 retrieveCloudConfigurationFromURL:v16 username:v15 password:v14 anchorCertificates:v13 completionBlock:v12];
}

+ (void)storeCloudConfigurationDetails:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277D262A0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedConnection];
  [v8 storeCloudConfigurationDetails:v7 completion:v6];
}

+ (void)enrollProvisionallyWithNonce:(id)a3 completion:(id)a4
{
  v5 = MEMORY[0x277D262A0];
  v6 = a4;
  v7 = a3;
  v8 = [v5 sharedConnection];
  [v8 enrollProvisionallyWithNonce:v7 completionBlock:v6];
}

+ (int)_mcFilterFlagsForMDMFlags:(int)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3 & 0xFFFFFF80;
  if ((a3 & 0xFFFFFF80) != 0)
  {
    v5 = *DMCLogObjects();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v8 = 134217984;
      v9 = v4;
      _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_FAULT, "Untranslated profile filter flags will be ignored: %llx", &v8, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3 & 0x7F;
}

@end
@interface MDMMCInterface
+ (BOOL)clearPasscodeWithEscrowKeybagData:(id)data secret:(id)secret outError:(id *)error;
+ (BOOL)installProvisioningProfileData:(id)data managingProfileIdentifier:(id)identifier outError:(id *)error;
+ (BOOL)isAutomaticDateAndTimeForced;
+ (BOOL)isAwaitingDeviceConfigured;
+ (BOOL)isDiagnosticsSubmissionRestricted;
+ (BOOL)isEnterpriseBookBackupAllowed;
+ (BOOL)isLimitedAppsMode;
+ (BOOL)isPasscodeSet;
+ (BOOL)isProfileWithIdentifier:(id)identifier managedByProfileWithIdentifier:(id)withIdentifier;
+ (BOOL)isProvisioningProfileWithUUID:(id)d managedByProfileWithIdentifier:(id)identifier;
+ (BOOL)removeProvisioningProfileWithUUID:(id)d managingProfileIdentifier:(id)identifier outError:(id *)error;
+ (id)cloudConfigurationDetails;
+ (id)filterMDMRestrictions:(id)restrictions acceptingKeysFromDictionary:(id)dictionary;
+ (id)ipcuProfileList;
+ (id)ipcuRemoveProfileWithIdentifier:(id)identifier;
+ (id)managedAppIDs;
+ (id)mdmProfileIdentifier;
+ (id)mdmQueryableRestrictions;
+ (int)_mcFilterFlagsForMDMFlags:(int)flags;
+ (void)enrollProvisionallyWithNonce:(id)nonce completion:(id)completion;
+ (void)flush;
+ (void)installStoredProfileDataWithCompletion:(id)completion;
+ (void)profiledCheckIn;
+ (void)retrieveCloudConfigurationDetailsCompletion:(id)completion;
+ (void)retrieveCloudConfigurationFromURL:(id)l username:(id)username password:(id)password anchorCertificates:(id)certificates completion:(id)completion;
+ (void)storeCertificateData:(id)data forHostIdentifier:(id)identifier;
+ (void)storeCloudConfigurationDetails:(id)details completion:(id)completion;
+ (void)storeProfileData:(id)data completion:(id)completion;
+ (void)storedProfileDataWithCompletion:(id)completion;
@end

@implementation MDMMCInterface

+ (BOOL)isPasscodeSet
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  return isPasscodeSet;
}

+ (BOOL)isLimitedAppsMode
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isEffectivelyInAppAllowListMode = [mEMORY[0x277D262A0] isEffectivelyInAppAllowListMode];

  return isEffectivelyInAppAllowListMode;
}

+ (BOOL)isAwaitingDeviceConfigured
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isAwaitingDeviceConfigured = [mEMORY[0x277D262A0] isAwaitingDeviceConfigured];

  return isAwaitingDeviceConfigured;
}

+ (id)managedAppIDs
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  managedAppIDs = [mEMORY[0x277D262A0] managedAppIDs];

  return managedAppIDs;
}

+ (void)profiledCheckIn
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] checkIn];
}

+ (void)flush
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] flush];
}

+ (BOOL)clearPasscodeWithEscrowKeybagData:(id)data secret:(id)secret outError:(id *)error
{
  v7 = MEMORY[0x277D262A0];
  secretCopy = secret;
  dataCopy = data;
  sharedConnection = [v7 sharedConnection];
  LOBYTE(error) = [sharedConnection clearPasscodeWithEscrowKeybagData:dataCopy secret:secretCopy outError:error];

  return error;
}

+ (void)storeCertificateData:(id)data forHostIdentifier:(id)identifier
{
  v5 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  dataCopy = data;
  sharedConnection = [v5 sharedConnection];
  [sharedConnection storeCertificateData:dataCopy forHostIdentifier:identifierCopy];
}

+ (id)mdmQueryableRestrictions
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"MDMQueryableRestrictionKeys" ofType:@"plist"];

  v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];

  return v4;
}

+ (id)filterMDMRestrictions:(id)restrictions acceptingKeysFromDictionary:(id)dictionary
{
  v4 = [MEMORY[0x277D262C0] filterRestrictionDictionary:restrictions acceptedKeysDict:dictionary];
  v5 = [v4 mutableCopy];

  [v5 MCFixUpRestrictionsDictionaryForMDMReporting];

  return v5;
}

+ (BOOL)isAutomaticDateAndTimeForced
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D88]];

  return v3;
}

+ (BOOL)isDiagnosticsSubmissionRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25E58]];

  return v3;
}

+ (BOOL)isEnterpriseBookBackupAllowed
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  isEnterpriseBookBackupAllowed = [mEMORY[0x277D262A0] isEnterpriseBookBackupAllowed];

  return isEnterpriseBookBackupAllowed;
}

+ (id)mdmProfileIdentifier
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  installedMDMProfileIdentifier = [mEMORY[0x277D262A0] installedMDMProfileIdentifier];

  return installedMDMProfileIdentifier;
}

+ (BOOL)isProfileWithIdentifier:(id)identifier managedByProfileWithIdentifier:(id)withIdentifier
{
  v5 = MEMORY[0x277D262A0];
  withIdentifierCopy = withIdentifier;
  identifierCopy = identifier;
  sharedConnection = [v5 sharedConnection];
  v9 = [sharedConnection isProfileWithIdentifier:identifierCopy managedByProfileWithIdentifier:withIdentifierCopy];

  return v9;
}

+ (BOOL)isProvisioningProfileWithUUID:(id)d managedByProfileWithIdentifier:(id)identifier
{
  v5 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  dCopy = d;
  sharedConnection = [v5 sharedConnection];
  v9 = [sharedConnection isProvisioningProfilesWithUUID:dCopy managedByProfileWithIdentifier:identifierCopy];

  return v9;
}

+ (BOOL)installProvisioningProfileData:(id)data managingProfileIdentifier:(id)identifier outError:(id *)error
{
  v7 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  dataCopy = data;
  sharedConnection = [v7 sharedConnection];
  LOBYTE(error) = [sharedConnection installProvisioningProfileData:dataCopy managingProfileIdentifier:identifierCopy outError:error];

  return error;
}

+ (BOOL)removeProvisioningProfileWithUUID:(id)d managingProfileIdentifier:(id)identifier outError:(id *)error
{
  v7 = MEMORY[0x277D262A0];
  identifierCopy = identifier;
  dCopy = d;
  sharedConnection = [v7 sharedConnection];
  LOBYTE(error) = [sharedConnection removeProvisioningProfileWithUUID:dCopy managingProfileIdentifier:identifierCopy outError:error];

  return error;
}

+ (id)ipcuProfileList
{
  v43 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] installedProfilesWithFilterFlags:69];

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
        identifier = [v9 identifier];
        v11 = objc_opt_new();
        v12 = objc_opt_new();
        [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v31];
        displayName = [v9 displayName];
        [v11 setObject:displayName forKeyedSubscript:v30];

        uUID = [v9 UUID];
        [v12 setObject:uUID forKeyedSubscript:v29];

        displayName2 = [v9 displayName];
        [v12 setObject:displayName2 forKeyedSubscript:v28];

        organization = [v9 organization];
        [v12 setObject:organization forKeyedSubscript:v27];

        profileDescription = [v9 profileDescription];
        [v12 setObject:profileDescription forKeyedSubscript:v26];

        v18 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "version")}];
        [v12 setObject:v18 forKeyedSubscript:v6];

        v19 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v9, "isLocked")}];
        [v12 setObject:v19 forKeyedSubscript:v7];

        [v35 setObject:v11 forKeyedSubscript:identifier];
        [v33 setObject:v12 forKeyedSubscript:identifier];
        [v34 addObject:identifier];
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

+ (id)ipcuRemoveProfileWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  cf2 = 0;
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = 0;
    v5 = [MDMMCInterface profileIdentifierForProfileData:identifierCopy allowEmptyPayload:1 outIsSupervisionProfile:0 outProfileSigner:&cf2 outMayInstallCloudProfile:0 outError:&v23];
    dMCCopyAsPrimaryError = v23;
    if (dMCCopyAsPrimaryError)
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
      dMCCopyAsPrimaryError = [v13 DMCErrorWithDomain:v14 code:4000 descriptionArray:v15 errorType:{*MEMORY[0x277D032F8], 0}];

      v5 = 0;
      goto LABEL_18;
    }

    v5 = identifierCopy;
  }

  v7 = [mEMORY[0x277D262A0] installedProfileIdentifiersWithFilterFlags:69];
  if ([v7 containsObject:v5])
  {
    v8 = [mEMORY[0x277D262A0] installedProfileWithIdentifier:v5];
    if ([v8 isLocked] && objc_msgSend(v8, "isSigned") && (!cf2 || (v9 = objc_msgSend(v8, "signerCertificate"), !CFEqual(v9, cf2))))
    {
      v18 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277D033C0];
      friendlyName = [v8 friendlyName];
      systemConnection = DMCErrorArray();
      v20 = [v18 DMCErrorWithDomain:v19 code:4008 descriptionArray:systemConnection errorType:{*MEMORY[0x277D032F8], friendlyName, 0}];
      dMCCopyAsPrimaryError = [v20 DMCCopyAsPrimaryError];
    }

    else
    {
      friendlyName = objc_opt_new();
      [friendlyName setType:0];
      [friendlyName setProfileIdentifier:v5];
      systemConnection = [MEMORY[0x277D04BF8] systemConnection];
      v21 = 0;
      v12 = [systemConnection performRequest:friendlyName error:&v21];
      dMCCopyAsPrimaryError = v21;
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

    dMCCopyAsPrimaryError = 0;
  }

LABEL_18:
  if (cf2)
  {
    CFRelease(cf2);
  }

  return dMCCopyAsPrimaryError;
}

+ (void)storeProfileData:(id)data completion:(id)completion
{
  v5 = MEMORY[0x277D262A0];
  completionCopy = completion;
  dataCopy = data;
  sharedConnection = [v5 sharedConnection];
  [sharedConnection storeProfileData:dataCopy completion:completionCopy];
}

+ (void)storedProfileDataWithCompletion:(id)completion
{
  v3 = MEMORY[0x277D262A0];
  completionCopy = completion;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection storedProfileDataWithCompletion:completionCopy];
}

+ (void)installStoredProfileDataWithCompletion:(id)completion
{
  v3 = MEMORY[0x277D262A0];
  completionCopy = completion;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection installStoredProfileDataWithCompletion:completionCopy];
}

+ (id)cloudConfigurationDetails
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  cloudConfigurationDetails = [mEMORY[0x277D262A0] cloudConfigurationDetails];

  return cloudConfigurationDetails;
}

+ (void)retrieveCloudConfigurationDetailsCompletion:(id)completion
{
  v3 = MEMORY[0x277D262A0];
  completionCopy = completion;
  sharedConnection = [v3 sharedConnection];
  [sharedConnection retrieveCloudConfigurationDetailsCompletionBlock:completionCopy];
}

+ (void)retrieveCloudConfigurationFromURL:(id)l username:(id)username password:(id)password anchorCertificates:(id)certificates completion:(id)completion
{
  v11 = MEMORY[0x277D262A0];
  completionCopy = completion;
  certificatesCopy = certificates;
  passwordCopy = password;
  usernameCopy = username;
  lCopy = l;
  sharedConnection = [v11 sharedConnection];
  [sharedConnection retrieveCloudConfigurationFromURL:lCopy username:usernameCopy password:passwordCopy anchorCertificates:certificatesCopy completionBlock:completionCopy];
}

+ (void)storeCloudConfigurationDetails:(id)details completion:(id)completion
{
  v5 = MEMORY[0x277D262A0];
  completionCopy = completion;
  detailsCopy = details;
  sharedConnection = [v5 sharedConnection];
  [sharedConnection storeCloudConfigurationDetails:detailsCopy completion:completionCopy];
}

+ (void)enrollProvisionallyWithNonce:(id)nonce completion:(id)completion
{
  v5 = MEMORY[0x277D262A0];
  completionCopy = completion;
  nonceCopy = nonce;
  sharedConnection = [v5 sharedConnection];
  [sharedConnection enrollProvisionallyWithNonce:nonceCopy completionBlock:completionCopy];
}

+ (int)_mcFilterFlagsForMDMFlags:(int)flags
{
  flagsCopy = flags;
  v10 = *MEMORY[0x277D85DE8];
  v4 = flags & 0xFFFFFF80;
  if ((flags & 0xFFFFFF80) != 0)
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
  return flagsCopy & 0x7F;
}

@end
@interface MDMConfiguration
+ (BOOL)hasIncompleteMigration;
+ (BOOL)isDataSeparated;
+ (BOOL)isRapidReturnToService;
+ (BOOL)isUserEnrollmentDisregardingIdentityPresence;
+ (id)_failedToConvertTokenDataError;
+ (id)getOrgTokenForMAID:(id *)a3;
+ (id)sharedConfiguration;
+ (unint64_t)getManagementStateForMAID;
+ (void)getOrgTokenForMAIDWithCompletionHandler:(id)a3;
+ (void)getWatchPairingTokenForPhoneID:(id)a3 watchID:(id)a4 securityToken:(id)a5 completionHandler:(id)a6;
- (BOOL)isADEProfile;
- (BOOL)isProfileLocked;
- (BOOL)isUserEnrollment;
- (BOOL)memberQueueReadConfigurationOutError:(id *)a3;
- (BOOL)pinningRevocationCheckRequired;
- (BOOL)signMessage;
- (BOOL)supportUserChannel;
- (NSArray)checkInPinnedSecCertificateRefs;
- (NSArray)serverCapabilities;
- (NSDictionary)organizationInfo;
- (NSString)easEnrollmentID;
- (NSString)enrollmentID;
- (NSString)enrollmentMode;
- (NSString)managingProfileIdentifier;
- (NSString)personaID;
- (NSString)pushMagic;
- (NSString)rmAccountID;
- (NSString)topic;
- (NSURL)checkInURL;
- (NSURL)serverURL;
- (NSUUID)wallpaperConfigurationUUID;
- (__SecIdentity)copyMemberQueueIdentity;
- (unint64_t)accessRights;
- (void)memberQueueForgetCurrentConfiguration;
- (void)setWallpaperConfigurationUUID:(id)a3;
@end

@implementation MDMConfiguration

+ (BOOL)isUserEnrollmentDisregardingIdentityPresence
{
  v2 = MEMORY[0x277CBEA90];
  v3 = MDMFilePath();
  v4 = [v2 dataWithContentsOfFile:v3];

  v5 = [MEMORY[0x277CCAC58] DMCSafePropertyListWithData:v4 options:0 format:0 error:0];
  v6 = [v5 objectForKey:@"UserEnrollment"];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = MEMORY[0x277CCA9B8];
      v8 = *MEMORY[0x277D03480];
      v9 = DMCErrorArray();
      v10 = [v7 DMCErrorWithDomain:v8 code:12011 descriptionArray:v9 errorType:{*MEMORY[0x277D032F8], @"UserEnrollment", 0}];
    }
  }

  v11 = [v6 BOOLValue];

  return v11;
}

+ (id)sharedConfiguration
{
  if (sharedConfiguration_onceToken_0 != -1)
  {
    +[MDMConfiguration sharedConfiguration];
  }

  v3 = sharedConfiguration_config_0;

  return v3;
}

uint64_t __39__MDMConfiguration_sharedConfiguration__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedConfiguration_config_0;
  sharedConfiguration_config_0 = v0;

  out_token = 0;
  v2 = [@"com.apple.devicemanagementclient.mdmFileChanged" UTF8String];
  v3 = dispatch_get_global_queue(0, 0);
  LODWORD(v2) = notify_register_dispatch(v2, &out_token, v3, &__block_literal_global_3_0);

  if (v2)
  {
    v4 = *DMCLogObjects();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "Could not register for MDM file change notification.", v6, 2u);
    }
  }

  return [sharedConfiguration_config_0 refreshDetailsFromDisk];
}

void __39__MDMConfiguration_sharedConfiguration__block_invoke_2()
{
  [sharedConfiguration_config_0 refreshDetailsFromDisk];
  v0 = MEMORY[0x277D85CD0];

  dispatch_async(v0, &__block_literal_global_5_1);
}

void __39__MDMConfiguration_sharedConfiguration__block_invoke_3()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:@"com.apple.devicemanagementclient.mdmFileChanged" object:0];
}

- (BOOL)memberQueueReadConfigurationOutError:(id *)a3
{
  v65 = *MEMORY[0x277D85DE8];
  v62.receiver = self;
  v62.super_class = MDMConfiguration;
  if (![(MDMConfigurationBase *)&v62 memberQueueReadConfigurationOutError:?])
  {
    v33 = 0;
    goto LABEL_69;
  }

  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_DEBUG, "MDMConfiguration: memberQueueReadConfigurationOutError:", buf, 2u);
  }

  v6 = [(MDMConfigurationBase *)self memberQueueMDMDictionary];
  v7 = @"UserEnrollment";
  v8 = [v6 objectForKey:@"UserEnrollment"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  -[MDMConfiguration setMemberQueueIsUserEnrollment:](self, "setMemberQueueIsUserEnrollment:", [v8 BOOLValue]);

  v7 = @"PersonaID";
  v8 = [v6 objectForKey:@"PersonaID"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v9 = [v8 copy];
  [(MDMConfiguration *)self setMemberQueuePersonaID:v9];

  v7 = @"EnrollmentID";
  v8 = [v6 objectForKey:@"EnrollmentID"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v10 = [v8 copy];
  [(MDMConfiguration *)self setMemberQueueEnrollmentID:v10];

  v7 = @"EASEnrollmentID";
  v8 = [v6 objectForKey:@"EASEnrollmentID"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v11 = [v8 copy];
  [(MDMConfiguration *)self setMemberQueueEASEnrollmentID:v11];

  v7 = @"RMAccountIdentifier";
  v8 = [v6 objectForKey:@"RMAccountIdentifier"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v12 = [v8 copy];
  [(MDMConfiguration *)self setMemberQueueRMAccountID:v12];

  v7 = @"EnrollmentMode";
  v8 = [v6 objectForKey:@"EnrollmentMode"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v13 = [v8 copy];
  [(MDMConfiguration *)self setMemberQueueEnrollmentMode:v13];

  v7 = @"ServerCapabilities";
  v8 = [v6 objectForKey:@"ServerCapabilities"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  [(MDMConfiguration *)self setMemberQueueServerCapabilities:v8];
  -[MDMConfiguration setMemberQueueSupportUserChannel:](self, "setMemberQueueSupportUserChannel:", [v8 containsObject:@"com.apple.mdm.user-channel"]);

  v7 = @"IdentityPersistentRef";
  v8 = [v6 objectForKey:@"IdentityPersistentRef"];
  if (!v8)
  {
    goto LABEL_54;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_54;
  }

  v14 = [v8 copy];
  [(MDMConfiguration *)self setMemberQueueIdentityPersistentID:v14];

  v7 = @"CheckInURLPinningCertificatePersistentRefs";
  v8 = [v6 objectForKey:@"CheckInURLPinningCertificatePersistentRefs"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  v15 = objc_opt_class();
  v16 = [(MDMConfiguration *)self memberQueuePersonaID];
  v17 = [v15 copyCertificatesWithPersistentIDs:v8 useSystemKeychain:1 enforcePersonalPersona:v16 != 0];
  [(MDMConfiguration *)self setMemberQueueCheckInPinnedSecCertificateRefs:v17];

  v7 = @"PinningRevocationCheckRequired";
  v8 = [v6 objectForKey:@"PinningRevocationCheckRequired"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  -[MDMConfiguration setMemberQueuePinningRevocationCheckRequired:](self, "setMemberQueuePinningRevocationCheckRequired:", [v8 BOOLValue]);

  v18 = @"ManagingProfileIdentifier";
  v19 = [v6 objectForKey:@"ManagingProfileIdentifier"];
  [(MDMConfiguration *)self setMemberQueueManagingProfileIdentifier:v19];

  v20 = [(MDMConfiguration *)self memberQueueManagingProfileIdentifier];
  if (!v20)
  {
    goto LABEL_70;
  }

  v21 = v20;
  v22 = [(MDMConfiguration *)self memberQueueManagingProfileIdentifier];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_70;
  }

  v24 = [MEMORY[0x277D03498] sharedInstance];
  v25 = [v24 hrnMode];

  if (v25 != 2)
  {
    v18 = @"Topic";
    v26 = [v6 objectForKey:@"Topic"];
    [(MDMConfiguration *)self setMemberQueueTopic:v26];

    v27 = [(MDMConfiguration *)self memberQueueTopic];
    if (v27)
    {
      v28 = v27;
      v29 = [(MDMConfiguration *)self memberQueueTopic];
      objc_opt_class();
      v30 = objc_opt_isKindOfClass();

      if ((v30 & 1) == 0)
      {
        goto LABEL_70;
      }
    }
  }

  v7 = @"ServerURL";
  v8 = [v6 objectForKey:@"ServerURL"];
  if (!v8)
  {
    goto LABEL_54;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_54;
  }

  v31 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v8];
  [(MDMConfiguration *)self setMemberQueueServerURL:v31];

  v7 = @"CheckInURL";
  v8 = [v6 objectForKey:@"CheckInURL"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v8];
      [(MDMConfiguration *)self setMemberQueueCheckInURL:v32];
      goto LABEL_36;
    }

LABEL_54:
    v49 = MEMORY[0x277CCA9B8];
    v50 = *MEMORY[0x277D03480];
    v51 = DMCErrorArray();
    v46 = [v49 DMCErrorWithDomain:v50 code:12011 descriptionArray:v51 errorType:{*MEMORY[0x277D032F8], v7, 0}];

LABEL_55:
    v33 = 0;
    goto LABEL_56;
  }

  v32 = [(MDMConfiguration *)self memberQueueServerURL];
  v34 = [v32 copy];
  [(MDMConfiguration *)self setMemberQueueCheckInURL:v34];

LABEL_36:
  v7 = @"AccessRights";
  v8 = [v6 objectForKey:@"AccessRights"];
  if (!v8)
  {
    goto LABEL_54;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_54;
  }

  -[MDMConfiguration setMemberQueueAccessRights:](self, "setMemberQueueAccessRights:", [v8 unsignedIntValue]);

  v7 = @"UseDevelopmentAPNS";
  v8 = [v6 objectForKey:@"UseDevelopmentAPNS"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  -[MDMConfiguration setMemberQueueUseDevelopmentAPNS:](self, "setMemberQueueUseDevelopmentAPNS:", [v8 BOOLValue]);

  v7 = @"SignMessage";
  v8 = [v6 objectForKey:@"SignMessage"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  -[MDMConfiguration setMemberQueueSignMessage:](self, "setMemberQueueSignMessage:", [v8 BOOLValue]);

  v7 = @"IsProfileLocked";
  v8 = [v6 objectForKey:@"IsProfileLocked"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  -[MDMConfiguration setMemberQueueIsProfileLocked:](self, "setMemberQueueIsProfileLocked:", [v8 BOOLValue]);

  v7 = @"IsADEProfile";
  v8 = [v6 objectForKey:@"IsADEProfile"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_54;
    }
  }

  -[MDMConfiguration setMemberQueueIsADEProfile:](self, "setMemberQueueIsADEProfile:", [v8 BOOLValue]);

  v18 = @"PushMagic";
  v35 = [v6 objectForKey:@"PushMagic"];
  [(MDMConfiguration *)self setMemberQueuePushMagic:v35];

  v36 = [(MDMConfiguration *)self memberQueuePushMagic];
  if (!v36)
  {
    goto LABEL_70;
  }

  v37 = v36;
  v38 = [(MDMConfiguration *)self memberQueuePushMagic];
  objc_opt_class();
  v39 = objc_opt_isKindOfClass();

  if ((v39 & 1) == 0)
  {
    goto LABEL_70;
  }

  v18 = @"OrganizationInfo";
  v40 = [v6 objectForKey:@"OrganizationInfo"];
  [(MDMConfiguration *)self setMemberQueueOrganizationInfo:v40];

  v41 = [(MDMConfiguration *)self memberQueueOrganizationInfo];
  if (v41)
  {
    v42 = v41;
    v43 = [(MDMConfiguration *)self memberQueueOrganizationInfo];
    objc_opt_class();
    v44 = objc_opt_isKindOfClass();

    if ((v44 & 1) == 0)
    {
LABEL_70:
      v59 = MEMORY[0x277CCA9B8];
      v60 = *MEMORY[0x277D03480];
      v61 = v18;
      v8 = DMCErrorArray();
      v46 = [v59 DMCErrorWithDomain:v60 code:12011 descriptionArray:v8 errorType:{*MEMORY[0x277D032F8], v61, 0}];
      goto LABEL_55;
    }
  }

  v18 = @"MDMOptions";
  v45 = [v6 objectForKey:@"MDMOptions"];
  [(MDMConfiguration *)self setMemberQueueMDMOptions:v45];

  v46 = [(MDMConfiguration *)self memberQueueMDMOptions];
  if (v46)
  {
    v47 = [(MDMConfiguration *)self memberQueueMDMOptions];
    objc_opt_class();
    v48 = objc_opt_isKindOfClass();

    if (v48)
    {
      v46 = 0;
      goto LABEL_53;
    }

    goto LABEL_70;
  }

LABEL_53:
  v33 = 1;
LABEL_56:
  v52 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22E997000, v52, OS_LOG_TYPE_DEBUG, "MDMConfiguration: memberQueueReadConfigurationOutError: doneblock", buf, 2u);
  }

  v53 = *(DMCLogObjects() + 8);
  v54 = os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT);
  if (v33)
  {
    if (v54)
    {
      *buf = 0;
      _os_log_impl(&dword_22E997000, v53, OS_LOG_TYPE_DEFAULT, "MDMConfiguration: memberQueueReadConfigurationOutError: Valid MDM installation found.", buf, 2u);
    }
  }

  else
  {
    if (v54)
    {
      *buf = 0;
      _os_log_impl(&dword_22E997000, v53, OS_LOG_TYPE_DEFAULT, "MDMConfiguration: memberQueueReadConfigurationOutError: doneblock: Configuration not valid!", buf, 2u);
    }

    [(MDMConfiguration *)self memberQueueForgetCurrentConfiguration];
    v55 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v64 = v46;
      _os_log_impl(&dword_22E997000, v55, OS_LOG_TYPE_ERROR, "MDMConfiguration: memberQueueReadConfigurationOutError: Invalid MDM installation found. Error: %{public}@", buf, 0xCu);
    }

    if (a3 && v46)
    {
      v56 = v46;
      *a3 = v46;
    }
  }

LABEL_69:
  v57 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)memberQueueForgetCurrentConfiguration
{
  v3 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_22E997000, v3, OS_LOG_TYPE_DEBUG, "MDMConfiguration: Forgetting Current Configuration!", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = MDMConfiguration;
  [(MDMConfigurationBase *)&v4 memberQueueForgetCurrentConfiguration];
  [(MDMConfiguration *)self setMemberQueueIsUserEnrollment:0];
  [(MDMConfiguration *)self setMemberQueueEnrollmentID:0];
  [(MDMConfiguration *)self setMemberQueuePersonaID:0];
  [(MDMConfiguration *)self setMemberQueueEASEnrollmentID:0];
  [(MDMConfiguration *)self setMemberQueueRMAccountID:0];
  [(MDMConfiguration *)self setMemberQueueEnrollmentMode:0];
  [(MDMConfiguration *)self setMemberQueueSupportUserChannel:0];
  [(MDMConfiguration *)self setMemberQueueIdentityPersistentID:0];
  [(MDMConfiguration *)self setMemberQueueManagingProfileIdentifier:0];
  if ([(MDMConfiguration *)self memberQueueIdentity])
  {
    CFRelease([(MDMConfiguration *)self memberQueueIdentity]);
    [(MDMConfiguration *)self setMemberQueueIdentity:0];
  }

  [(MDMConfiguration *)self setMemberQueueCheckInPinnedSecCertificateRefs:0];
  [(MDMConfiguration *)self setMemberQueuePinningRevocationCheckRequired:0];
  [(MDMConfiguration *)self setMemberQueueSignMessage:0];
  [(MDMConfiguration *)self setMemberQueueTopic:0];
  [(MDMConfiguration *)self setMemberQueueOrganizationInfo:0];
  [(MDMConfiguration *)self setMemberQueueServerURL:0];
  [(MDMConfiguration *)self setMemberQueueCheckInURL:0];
  [(MDMConfiguration *)self setMemberQueueMDMOptions:0];
  [(MDMConfiguration *)self setMemberQueueAccessRights:0];
  [(MDMConfiguration *)self setMemberQueueUseDevelopmentAPNS:0];
  [(MDMConfiguration *)self setMemberQueuePushMagic:0];
  [(MDMConfiguration *)self setMemberQueueServerCapabilities:0];
  [(MDMConfiguration *)self setMemberQueueIsADEProfile:0];
}

- (__SecIdentity)copyMemberQueueIdentity
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__MDMConfiguration_copyMemberQueueIdentity__block_invoke;
  v6[3] = &unk_278856E48;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void __43__MDMConfiguration_copyMemberQueueIdentity__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueIdentityPersistentID];

  if (v2)
  {
    if ([*(a1 + 32) memberQueueIdentity])
    {
      goto LABEL_4;
    }

    v3 = MEMORY[0x277D03520];
    v4 = [*(a1 + 32) memberQueueIdentityPersistentID];
    v5 = [*(a1 + 32) memberQueuePersonaID];
    [*(a1 + 32) setMemberQueueIdentity:{objc_msgSend(v3, "copyIdentityWithPersistentID:useSystemKeychain:enforcePersonalPersona:", v4, 1, v5 != 0)}];

    if ([*(a1 + 32) memberQueueIdentity])
    {
LABEL_4:
      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) memberQueueIdentity];
      v6 = *(*(*(a1 + 40) + 8) + 24);
      if (v6)
      {

        CFRetain(v6);
      }
    }

    else
    {
      if ([MEMORY[0x277D03550] isCurrentPersonaEnterprise])
      {
        v7 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *v8 = 0;
          _os_log_impl(&dword_22E997000, v7, OS_LOG_TYPE_ERROR, "Failed to get MDM identity. This is likely due to the user initiating MDMConfiguration under enterprise persona, but don't have the entitlement to adopt personal persona.", v8, 2u);
        }
      }

      [*(a1 + 32) setMemberQueueIdentityPersistentID:0];
    }
  }
}

- (NSString)managingProfileIdentifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__MDMConfiguration_managingProfileIdentifier__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __45__MDMConfiguration_managingProfileIdentifier__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueManagingProfileIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)checkInPinnedSecCertificateRefs
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__MDMConfiguration_checkInPinnedSecCertificateRefs__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __51__MDMConfiguration_checkInPinnedSecCertificateRefs__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueCheckInPinnedSecCertificateRefs];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)pinningRevocationCheckRequired
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__MDMConfiguration_pinningRevocationCheckRequired__block_invoke;
  v5[3] = &unk_278856F08;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_async_and_wait(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __50__MDMConfiguration_pinningRevocationCheckRequired__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueuePinningRevocationCheckRequired];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)signMessage
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__MDMConfiguration_signMessage__block_invoke;
  v5[3] = &unk_278856F08;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_async_and_wait(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __31__MDMConfiguration_signMessage__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueSignMessage];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)isADEProfile
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__MDMConfiguration_isADEProfile__block_invoke;
  v5[3] = &unk_278856F08;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_async_and_wait(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __32__MDMConfiguration_isADEProfile__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueIsADEProfile];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSString)topic
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__MDMConfiguration_topic__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __25__MDMConfiguration_topic__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueTopic];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSDictionary)organizationInfo
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__MDMConfiguration_organizationInfo__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __36__MDMConfiguration_organizationInfo__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueOrganizationInfo];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSURL)serverURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__MDMConfiguration_serverURL__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __29__MDMConfiguration_serverURL__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueServerURL];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSURL)checkInURL
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__MDMConfiguration_checkInURL__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __30__MDMConfiguration_checkInURL__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueCheckInURL];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)serverCapabilities
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__MDMConfiguration_serverCapabilities__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __38__MDMConfiguration_serverCapabilities__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueServerCapabilities];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isUserEnrollment
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__MDMConfiguration_isUserEnrollment__block_invoke;
  v5[3] = &unk_278856F08;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_async_and_wait(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __36__MDMConfiguration_isUserEnrollment__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueIsUserEnrollment];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)supportUserChannel
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__MDMConfiguration_supportUserChannel__block_invoke;
  v5[3] = &unk_278856F08;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_async_and_wait(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __38__MDMConfiguration_supportUserChannel__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueSupportUserChannel];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSString)enrollmentID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__MDMConfiguration_enrollmentID__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __32__MDMConfiguration_enrollmentID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueEnrollmentID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)personaID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__MDMConfiguration_personaID__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __29__MDMConfiguration_personaID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueuePersonaID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)easEnrollmentID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__MDMConfiguration_easEnrollmentID__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __35__MDMConfiguration_easEnrollmentID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueEASEnrollmentID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)rmAccountID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__MDMConfiguration_rmAccountID__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __31__MDMConfiguration_rmAccountID__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueRMAccountID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)enrollmentMode
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __34__MDMConfiguration_enrollmentMode__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __34__MDMConfiguration_enrollmentMode__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueueEnrollmentMode];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isProfileLocked
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__MDMConfiguration_isProfileLocked__block_invoke;
  v5[3] = &unk_278856F08;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_async_and_wait(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __35__MDMConfiguration_isProfileLocked__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueIsProfileLocked];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)accessRights
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__MDMConfiguration_accessRights__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __32__MDMConfiguration_accessRights__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) memberQueueAccessRights];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (NSString)pushMagic
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  v3 = [(MDMConfigurationBase *)self memberQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__MDMConfiguration_pushMagic__block_invoke;
  v6[3] = &unk_278856F08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_async_and_wait(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __29__MDMConfiguration_pushMagic__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) memberQueuePushMagic];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

+ (unint64_t)getManagementStateForMAID
{
  v3 = +[MDMConfiguration sharedConfiguration];
  [v3 refreshDetailsFromDisk];
  v4 = +[MDMCloudConfiguration sharedConfiguration];
  [v4 refreshDetailsFromDisk];
  v5 = [v4 isSupervised];
  v6 = [v3 managingProfileIdentifier];

  v7 = [v4 enrollmentServerURL];

  v8 = DMCIsSetupBuddyDone();
  if (v6)
  {
    if (v5)
    {
      v9 = 3;
    }

    else
    {
      v9 = 1;
    }
  }

  else if (v8 & 1) == 0 && (v7 ? (v10 = v5) : (v10 = 0), (v10 & 1) != 0 || ([a1 hasIncompleteMigration]))
  {
    v9 = 6;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isDataSeparated
{
  v2 = +[MDMConfiguration sharedConfiguration];
  v3 = [v2 personaID];
  v4 = v3 != 0;

  return v4;
}

+ (id)getOrgTokenForMAID:(id *)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__2;
  v24 = __Block_byref_object_dispose__2;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__MDMConfiguration_getOrgTokenForMAID___block_invoke;
  v10[3] = &unk_278856F58;
  v12 = &v20;
  v13 = &v14;
  v6 = v5;
  v11 = v6;
  [a1 getOrgTokenForMAIDWithCompletionHandler:v10];
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    v7 = v15[5];
    if (v7)
    {
      *a3 = v7;
    }
  }

  v8 = v21[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __39__MDMConfiguration_getOrgTokenForMAID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)getOrgTokenForMAIDWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = +[MDMClient sharedClient];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__MDMConfiguration_getOrgTokenForMAIDWithCompletionHandler___block_invoke;
  v6[3] = &unk_278856F80;
  v7 = v3;
  v5 = v3;
  [v4 getOrgTokenForMAIDWithCompletionHandler:v6];
}

void __60__MDMConfiguration_getOrgTokenForMAIDWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v6;
      _os_log_impl(&dword_22E997000, v7, OS_LOG_TYPE_ERROR, "MDMConfiguration: Failed to get org token with error: %{public}@", &v13, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
    if (v8)
    {
      (*(*(a1 + 32) + 16))();
    }

    else
    {
      v9 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_22E997000, v9, OS_LOG_TYPE_ERROR, "MDMConfiguration: Failed to covert TokenData to a string. The data might not be properly encoded.", &v13, 2u);
      }

      v10 = *(a1 + 32);
      v11 = +[MDMConfiguration _failedToConvertTokenDataError];
      (*(v10 + 16))(v10, 0, v11);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

+ (void)getWatchPairingTokenForPhoneID:(id)a3 watchID:(id)a4 securityToken:(id)a5 completionHandler:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = +[MDMClient sharedClient];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __91__MDMConfiguration_getWatchPairingTokenForPhoneID_watchID_securityToken_completionHandler___block_invoke;
  v15[3] = &unk_278856F80;
  v16 = v9;
  v14 = v9;
  [v13 getWatchPairingTokenForPhoneID:v12 watchID:v11 securityToken:v10 completionHandler:v15];
}

void __91__MDMConfiguration_getWatchPairingTokenForPhoneID_watchID_securityToken_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  v7 = *(DMCLogObjects() + 8);
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v13 = 138543362;
      v14 = v5;
      v8 = "MDMConfiguration: Failed to get Watch pairing token with error: %{public}@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
LABEL_6:
      _os_log_impl(&dword_22E997000, v9, v10, v8, &v13, v11);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    v8 = "MDMConfiguration: getWatchPairingTokenForPhoneID finished";
    v9 = v7;
    v10 = OS_LOG_TYPE_INFO;
    v11 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);

  v12 = *MEMORY[0x277D85DE8];
}

+ (BOOL)isRapidReturnToService
{
  v2 = +[MDMCloudConfiguration sharedConfiguration];
  [v2 refreshDetailsFromDisk];

  v3 = +[MDMConfiguration sharedConfiguration];
  [v3 refreshDetailsFromDisk];

  v4 = +[MDMCloudConfiguration sharedConfiguration];
  v5 = [v4 isRapidReturnToService];

  v6 = +[MDMConfiguration sharedConfiguration];
  v7 = [v6 managingProfileIdentifier];

  if (v7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)hasIncompleteMigration
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277D03568]);
  v3 = MDMMigrationConfigFilePath();
  v4 = [v2 initWithFilePath:v3];

  v5 = *MEMORY[0x277D03418];
  v12 = 0;
  v6 = [v4 retrieveValueForKey:v5 error:&v12];
  v7 = v12;
  v8 = *DMCLogObjects();
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_22E997000, v8, OS_LOG_TYPE_ERROR, "Failed to retrieve HasIncompleteMigration info with error: %{public}@", buf, 0xCu);
    }

    v9 = 0;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v14 = "+[MDMConfiguration hasIncompleteMigration]";
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_22E997000, v8, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
    }

    v9 = [v6 BOOLValue];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (id)_failedToConvertTokenDataError
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277D032F0];
  v4 = DMCErrorArray();
  v5 = [v2 DMCErrorWithDomain:v3 code:15033 descriptionArray:v4 errorType:{*MEMORY[0x277D032F8], 0}];

  return v5;
}

- (NSUUID)wallpaperConfigurationUUID
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = [(MDMConfigurationBase *)self getPropertyForKey:@"wallpaperConfigUUID" error:&v8];
  v3 = v8;
  if (v3)
  {
    v4 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[MDMConfiguration(Wallpaper) wallpaperConfigurationUUID]";
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_22E997000, v4, OS_LOG_TYPE_ERROR, "%s Failed to get wallpaper config UUID with error: %{public}@", buf, 0x16u);
    }

    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v2];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)setWallpaperConfigurationUUID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 UUIDString];
  v8 = 0;
  [(MDMConfigurationBase *)self setPropertyForKey:@"wallpaperConfigUUID" value:v4 error:&v8];
  v5 = v8;
  if (v5)
  {
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v10 = "[MDMConfiguration(Wallpaper) setWallpaperConfigurationUUID:]";
      v11 = 2114;
      v12 = v5;
      _os_log_impl(&dword_22E997000, v6, OS_LOG_TYPE_ERROR, "%s Failed to set wallpaper config UUID with error: %{public}@", buf, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end
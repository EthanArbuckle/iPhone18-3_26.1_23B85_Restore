@interface MDMProvisioningProfileTrust
+ (BOOL)_enumerateProvisioningProfileUUIDsWithBlock:(id)a3;
+ (BOOL)_enumerateProvisioningProfilesWithBlock:(id)a3;
+ (BOOL)_isFreeSignedAppDeveloper:(void *)a3;
+ (BOOL)anyUPPExistsForManagedAppSigners;
+ (BOOL)enumerateProvisioningProfilesWithBlock:(id)a3;
+ (BOOL)manualTrustSignerIdentities:(id)a3;
+ (id)_appSignerIdentitiesFromBundleIDs:(id)a3;
+ (id)_developer:(id)a3 withoutPrefix:(id)a4;
+ (id)_labelForAMFITrust:(unsigned int)a3;
+ (id)_signerIdentitiesFromProvisioningProfile:(void *)a3;
+ (id)allTrustedSignerIdentities;
+ (id)appSignerIdentityForBundleID:(id)a3;
+ (id)developerFromIdentity:(id)a3 hasFreePP:(BOOL)a4 hasUPP:(BOOL)a5;
+ (id)managedAppSigners;
+ (id)provisioningProfileUUIDsForSignerIdentity:(id)a3;
+ (id)signerIdentitiesFromProvisioningProfileUUID:(id)a3;
+ (void)didSuperviseThroughADE;
+ (void)didSuperviseThroughConfigurator;
+ (void)untrustProvisioningProfileUUID:(id)a3;
- (MDMProvisioningProfileTrust)initWithValidationQueue:(id)a3;
- (id)_descriptionForMISState:(int64_t)a3;
- (void)_presentTrustAlertForDeveloper:(id)a3 restart:(BOOL)a4 completion:(id)a5;
- (void)_uiScheduleTrustForProvisioningProfileUUID:(id)a3 developer:(id)a4 completion:(id)a5;
- (void)_uiSetTrustForProvisioningProfiles:(id)a3 developer:(id)a4 completion:(id)a5;
- (void)_verifyProvisioningProfileUUID:(id)a3 completion:(id)a4;
- (void)didEnrollInMDMWithPasscodeContext:(id)a3 passcode:(id)a4 duringMigration:(BOOL)a5;
- (void)didUnenrollFromMDM;
- (void)uiTrustAndVerifyProvisioningProfiles:(id)a3 developer:(id)a4 completion:(id)a5;
- (void)uiVerifyProvisioningProfileUUID:(id)a3 completion:(id)a4;
- (void)untrustSignerIdentities:(id)a3;
- (void)updateTrustedCodeSigningIdentities:(id)a3 validateBundleIDs:(id)a4 validateManagedApps:(BOOL)a5;
@end

@implementation MDMProvisioningProfileTrust

- (MDMProvisioningProfileTrust)initWithValidationQueue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MDMProvisioningProfileTrust;
  v6 = [(MDMProvisioningProfileTrust *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_misVerificationQueue, a3);
    v7->_isUnenrollingFromMDM = 0;
  }

  return v7;
}

+ (id)allTrustedSignerIdentities
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = objc_opt_new();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __57__MDMProvisioningProfileTrust_allTrustedSignerIdentities__block_invoke;
  v6[3] = &unk_278857258;
  v6[4] = &v7;
  v6[5] = a1;
  if ([a1 _enumerateProvisioningProfilesWithBlock:v6])
  {
    v3 = v8[5];
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __57__MDMProvisioningProfileTrust_allTrustedSignerIdentities__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = MISProvisioningProfileGetUUID();
  if (v4 && [*(a1 + 40) isTrustedProvisioningProfileUUID:v4])
  {
    [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  }
}

+ (id)signerIdentitiesFromProvisioningProfileUUID:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v12 = MEMORY[0x277D85DD0];
  v5 = v4;
  v13 = v5;
  if (MISEnumerateInstalledProvisioningProfiles() || !v15[3])
  {
    v6 = MISCopyErrorStringForErrorCode();
    v7 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v5;
      v20 = 2114;
      v21 = v6;
      _os_log_impl(&dword_22E997000, v7, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust could not find provisioning profile for UUID %{public}@ with error: %{public}@", buf, 0x16u);
    }

    v8 = v15[3];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = 0;
  }

  else
  {
    v9 = [a1 _signerIdentitiesFromProvisioningProfile:{v12, 3221225472, __75__MDMProvisioningProfileTrust_signerIdentitiesFromProvisioningProfileUUID___block_invoke, &unk_278857280, v5, &v14}];
    CFRelease(v15[3]);
  }

  _Block_object_dispose(&v14, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

uint64_t __75__MDMProvisioningProfileTrust_signerIdentitiesFromProvisioningProfileUUID___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = MISProvisioningProfileGetUUID();
  v6 = [*(a1 + 32) isEqualToString:v5];
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    CFRetain(*(*(*(a1 + 40) + 8) + 24));
  }

  objc_autoreleasePoolPop(v4);
  return v6 ^ 1u;
}

+ (id)_signerIdentitiesFromProvisioningProfile:(void *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v5 = MISXMLProvisioningProfileGetDeveloperCertificates();
  v6 = v5;
  if (v5)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = SecCertificateCreateWithData(0, v11);
          if (v12)
          {
            v13 = v12;
            v14 = SecCertificateCopySubjectSummary(v12);
            if (v14)
            {
              [v4 addObject:v14];
            }

            else
            {
              v16 = *(DMCLogObjects() + 8);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v25 = a3;
                v26 = 2112;
                v27 = v13;
                _os_log_impl(&dword_22E997000, v16, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust cannot construct identity for profile %{public}@ from cert: %@", buf, 0x16u);
              }
            }

            CFRelease(v13);
          }

          else
          {
            v15 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v25 = a3;
              v26 = 2114;
              v27 = v11;
              _os_log_impl(&dword_22E997000, v15, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust cannot construct certificate for profile %{public}@ with cert data: %{public}@", buf, 0x16u);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v17 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = a3;
      _os_log_impl(&dword_22E997000, v17, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust cannot get dev certs from DER-encoded profile: %{public}@", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)provisioningProfileUUIDsForSignerIdentity:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__6;
  v16 = __Block_byref_object_dispose__6;
  v17 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__MDMProvisioningProfileTrust_provisioningProfileUUIDsForSignerIdentity___block_invoke;
  v9[3] = &unk_2788572A8;
  v5 = v4;
  v10 = v5;
  v11 = &v12;
  if ([a1 _enumerateProvisioningProfilesWithBlock:v9])
  {
    v6 = v13[5];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __73__MDMProvisioningProfileTrust_provisioningProfileUUIDsForSignerIdentity___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isEqualToString:?];
  if (result)
  {
    v3 = *(*(*(a1 + 40) + 8) + 40);
    UUID = MISProvisioningProfileGetUUID();

    return [v3 addObject:UUID];
  }

  return result;
}

+ (BOOL)_enumerateProvisioningProfilesWithBlock:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = MISEnumerateInstalledProvisioningProfiles();
  if (v4)
  {
    v5 = MISCopyErrorStringForErrorCode();
    v6 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v5;
      _os_log_impl(&dword_22E997000, v6, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust could not enumerate provisioning profiles with error: %{public}@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4 == 0;
}

uint64_t __71__MDMProvisioningProfileTrust__enumerateProvisioningProfilesWithBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = MISProvisioningProfileProvisionsAllDevices();
  v6 = [*(a1 + 40) _isFreeSignedAppDeveloper:a2];
  if (v5 || (v6 & 1) != 0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [*(a1 + 40) _signerIdentitiesFromProvisioningProfile:{a2, 0}];
    v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v16 + 1) + 8 * v12);
          (*(*(a1 + 32) + 16))();
          ++v12;
        }

        while (v10 != v12);
        v10 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = MISProvisioningProfileGetUUID();
    v8 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v22 = v7;
      _os_log_impl(&dword_22E997000, v8, OS_LOG_TYPE_INFO, "MDMProvisioningProfileTrust ignoring provisioning profile: %{public}@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v4);
  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

+ (BOOL)_enumerateProvisioningProfileUUIDsWithBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__MDMProvisioningProfileTrust__enumerateProvisioningProfileUUIDsWithBlock___block_invoke;
  v7[3] = &unk_2788572F8;
  v8 = v4;
  v5 = v4;
  LOBYTE(a1) = [a1 _enumerateProvisioningProfilesWithBlock:v7];

  return a1;
}

void __75__MDMProvisioningProfileTrust__enumerateProvisioningProfileUUIDsWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = MISProvisioningProfileGetUUID();
  v7 = v6;
  if (v6 && [v6 length])
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v8 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = a2;
      _os_log_impl(&dword_22E997000, v8, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust missing UUID for profile: %{public}@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (BOOL)enumerateProvisioningProfilesWithBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__MDMProvisioningProfileTrust_enumerateProvisioningProfilesWithBlock___block_invoke;
  v7[3] = &unk_2788572F8;
  v8 = v4;
  v5 = v4;
  LOBYTE(a1) = [a1 _enumerateProvisioningProfilesWithBlock:v7];

  return a1;
}

void __70__MDMProvisioningProfileTrust_enumerateProvisioningProfilesWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [[MDMProvisioningProfile alloc] initWithProfile:a2];
  (*(v4 + 16))(v4, v6, v5);
}

+ (BOOL)anyUPPExistsForManagedAppSigners
{
  v3 = +[MDMProvisioningProfileTrust managedAppSigners];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__MDMProvisioningProfileTrust_anyUPPExistsForManagedAppSigners__block_invoke;
  v6[3] = &unk_2788572A8;
  v4 = v3;
  v7 = v4;
  v8 = &v9;
  [a1 _enumerateProvisioningProfilesWithBlock:v6];
  LOBYTE(a1) = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  return a1;
}

uint64_t __63__MDMProvisioningProfileTrust_anyUPPExistsForManagedAppSigners__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) containsObject:?];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

- (void)uiTrustAndVerifyProvisioningProfiles:(id)a3 developer:(id)a4 completion:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v24 = a4;
  v23 = a5;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [v13 uuid];
        v15 = [v14 length];

        if (v15)
        {
          v16 = [v13 uuid];
          v17 = AMFIProfileRequiresReboot();

          if (v17)
          {
            v18 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v19 = v18;
              v20 = [v13 uuid];
              *buf = 138543618;
              v30 = v20;
              v31 = 1026;
              v32 = v17;
              _os_log_impl(&dword_22E997000, v19, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust failed to reboot check provisioning profile UUID %{public}@ with error: %{public}d", buf, 0x12u);
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v10);
  }

  [(MDMProvisioningProfileTrust *)self _uiSetTrustForProvisioningProfiles:v8 developer:v24 completion:v23];
  v21 = *MEMORY[0x277D85DE8];
}

- (void)uiVerifyProvisioningProfileUUID:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __74__MDMProvisioningProfileTrust_uiVerifyProvisioningProfileUUID_completion___block_invoke;
  v8[3] = &unk_278857320;
  v9 = v6;
  v7 = v6;
  [(MDMProvisioningProfileTrust *)self _verifyProvisioningProfileUUID:a3 completion:v8];
}

uint64_t __74__MDMProvisioningProfileTrust_uiVerifyProvisioningProfileUUID_completion___block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    DMCSendUPPVerificationOfflineNotification();
  }

  result = *(a1 + 32);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

+ (BOOL)manualTrustSignerIdentities:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __59__MDMProvisioningProfileTrust_manualTrustSignerIdentities___block_invoke;
  v9[3] = &unk_278857348;
  v4 = v3;
  v10 = v4;
  v5 = [MDMProvisioningProfileTrust _enumerateProvisioningProfilesWithBlock:v9];
  if (!v5)
  {
    v6 = *DMCLogObjects();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_impl(&dword_22E997000, v6, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust failed to manually trust signer identities: %{public}@", buf, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

void __59__MDMProvisioningProfileTrust_manualTrustSignerIdentities___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = MISProvisioningProfileGetUUID();
  if (v4 && [*(a1 + 32) containsObject:v5])
  {
    [MDMProvisioningProfileTrust _setAMFITrust:1 uuid:v4 signer:v5];
  }
}

+ (void)untrustProvisioningProfileUUID:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = AMFIProfileRemoveTrust();
  v5 = *(DMCLogObjects() + 8);
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = 67240192;
      LODWORD(v12) = v4;
      v6 = "MDMProvisioningProfileTrust AMFI failed to untrust provisioning profile with error: %{public}d";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 8;
LABEL_6:
      _os_log_impl(&dword_22E997000, v7, v8, v6, &v11, v9);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v3;
    v6 = "MDMProvisioningProfileTrust AMFI successfully untrusted provisioning profile: %{public}@";
    v7 = v5;
    v8 = OS_LOG_TYPE_DEFAULT;
    v9 = 12;
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)untrustSignerIdentities:(id)a3
{
  v3 = a3;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__MDMProvisioningProfileTrust_untrustSignerIdentities___block_invoke;
  v5[3] = &unk_278857370;
  v6 = v3;
  v4 = v3;
  [MDMProvisioningProfileTrust _enumerateProvisioningProfileUUIDsWithBlock:v5];
}

void __55__MDMProvisioningProfileTrust_untrustSignerIdentities___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([*(a1 + 32) containsObject:a3])
  {
    [MDMProvisioningProfileTrust untrustProvisioningProfileUUID:v5];
  }
}

- (void)_uiSetTrustForProvisioningProfiles:(id)a3 developer:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __87__MDMProvisioningProfileTrust__uiSetTrustForProvisioningProfiles_developer_completion___block_invoke;
  v12[3] = &unk_278857398;
  v14 = self;
  v15 = v9;
  v13 = v8;
  v10 = v8;
  v11 = v9;
  [(MDMProvisioningProfileTrust *)self _presentTrustAlertForDeveloper:a4 restart:0 completion:v12];
}

uint64_t __87__MDMProvisioningProfileTrust__uiSetTrustForProvisioningProfiles_developer_completion___block_invoke(uint64_t a1, char a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v3 = *(a1 + 32);
    v4 = [v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v26;
      *&v5 = 138543362;
      v24 = v5;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v26 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = *(*(&v25 + 1) + 8 * i);
          v10 = [v9 uuid];
          v11 = AMFIProfileSetTrust();

          v12 = *(DMCLogObjects() + 8);
          if (v11)
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = v12;
              v14 = [v9 uuid];
              *buf = 138543618;
              v30 = v14;
              v31 = 1026;
              v32 = v11;
              _os_log_impl(&dword_22E997000, v13, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust failed to set manual trust for provisioning profile UUID %{public}@ with error: %{public}d", buf, 0x12u);
            }

            DMCSendUPPTrustFailedNotification();
          }

          else
          {
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v15 = v12;
              v16 = [v9 uuid];
              *buf = v24;
              v30 = v16;
              _os_log_impl(&dword_22E997000, v15, OS_LOG_TYPE_DEFAULT, "MDMProvisioningProfileTrust successfully set manual trust for provisioning profile UUID %{public}@", buf, 0xCu);
            }

            v17 = *(a1 + 40);
            v18 = [v9 uuid];
            [v17 uiVerifyProvisioningProfileUUID:v18 completion:0];
          }
        }

        v6 = [v3 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v6);
    }

    result = (*(*(a1 + 48) + 16))();
    v20 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v21 = *(a1 + 48);
    v22 = *(*(a1 + 48) + 16);
    v23 = *MEMORY[0x277D85DE8];

    return v22();
  }

  return result;
}

- (void)_uiScheduleTrustForProvisioningProfileUUID:(id)a3 developer:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95__MDMProvisioningProfileTrust__uiScheduleTrustForProvisioningProfileUUID_developer_completion___block_invoke;
  v12[3] = &unk_2788573C0;
  v13 = v8;
  v14 = v9;
  v10 = v8;
  v11 = v9;
  [(MDMProvisioningProfileTrust *)self _presentTrustAlertForDeveloper:a4 restart:1 completion:v12];
}

uint64_t __95__MDMProvisioningProfileTrust__uiScheduleTrustForProvisioningProfileUUID_developer_completion___block_invoke(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = AMFIProfileScheduleTrust();
    v5 = *(DMCLogObjects() + 8);
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 32);
        v14 = 138543618;
        v15 = v6;
        v16 = 1026;
        v17 = v4;
        _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust failed to schedule trust for provisioning profile UUID %{public}@ with error: %{public}d", &v14, 0x12u);
      }

      DMCSendUPPTrustFailedNotification();
      v7 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_22E997000, v5, OS_LOG_TYPE_DEFAULT, "MDMProvisioningProfileTrust successfully scheduled trust for provisioning profile UUID %{public}@", &v14, 0xCu);
      }

      v7 = *(*(a1 + 40) + 16);
    }

    result = v7();
    v13 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = *(*(a1 + 40) + 16);
    v10 = *MEMORY[0x277D85DE8];

    return v9();
  }

  return result;
}

- (void)_presentTrustAlertForDeveloper:(id)a3 restart:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = v7;
    v25 = 1026;
    v26 = v6;
    _os_log_impl(&dword_22E997000, v9, OS_LOG_TYPE_DEFAULT, "MDMProvisioningProfileTrust presenting trust alert for developer “%{public}@” with restart: %{public}d", buf, 0x12u);
  }

  if (v7)
  {
    DMCLocalizedFormat();
  }

  else
  {
    DMCLocalizedString();
  }
  v10 = ;
  v11 = @"PROVISIONING_PROFILE_TRUST_ALLOW_RESTART";
  if (!v6)
  {
    v11 = @"PROVISIONING_PROFILE_TRUST_ALLOW";
  }

  v12 = MEMORY[0x277D034A0];
  v13 = v11;
  v14 = DMCLocalizedStringByDevice();
  v15 = DMCLocalizedString();
  v16 = DMCLocalizedString();

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __81__MDMProvisioningProfileTrust__presentTrustAlertForDeveloper_restart_completion___block_invoke;
  v20[3] = &unk_2788573E8;
  v21 = v7;
  v22 = v8;
  v17 = v7;
  v18 = v8;
  [v12 displayAlertWithTitle:v10 message:v14 defaultButtonText:v15 altButtonText:v16 destructive:1 completion:v20];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __81__MDMProvisioningProfileTrust__presentTrustAlertForDeveloper_restart_completion___block_invoke(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (a2 == 1)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);
    v5 = *MEMORY[0x277D85DE8];

    return v4();
  }

  else
  {
    v7 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&dword_22E997000, v7, OS_LOG_TYPE_DEFAULT, "MDMProvisioningProfileTrust not allowing trust for developer: %{public}@", &v10, 0xCu);
    }

    result = (*(*(a1 + 40) + 16))();
    v9 = *MEMORY[0x277D85DE8];
  }

  return result;
}

- (void)_verifyProvisioningProfileUUID:(id)a3 completion:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = v6;
    _os_log_impl(&dword_22E997000, v8, OS_LOG_TYPE_DEFAULT, "MDMProvisioningProfileTrust verifying provisioning profile UUID %{public}@...", buf, 0xCu);
  }

  misVerificationQueue = self->_misVerificationQueue;
  v13 = v6;
  v10 = v7;
  v11 = v6;
  MISValidateUPP();

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __73__MDMProvisioningProfileTrust__verifyProvisioningProfileUUID_completion___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = *(DMCLogObjects() + 8);
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[4];
      v15 = 138543618;
      v16 = v7;
      v17 = 2050;
      v18 = a3;
      _os_log_impl(&dword_22E997000, v6, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust failed to verify provisioning profile %{public}@ with error %{public}lld", &v15, 0x16u);
    }

    result = a1[6];
    if (result)
    {
      v9 = *(result + 16);
LABEL_10:
      result = v9();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a1[4];
      v10 = a1[5];
      v12 = v6;
      v13 = [v10 _descriptionForMISState:a2];
      v15 = 138543874;
      v16 = v11;
      v17 = 2114;
      v18 = v13;
      v19 = 2050;
      v20 = a2;
      _os_log_impl(&dword_22E997000, v12, OS_LOG_TYPE_DEFAULT, "MDMProvisioningProfileTrust successfully verified provisioning profile %{public}@ as %{public}@ (%{public}ld)", &v15, 0x20u);
    }

    result = a1[6];
    if (result)
    {
      v9 = *(result + 16);
      goto LABEL_10;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)didEnrollInMDMWithPasscodeContext:(id)a3 passcode:(id)a4 duringMigration:(BOOL)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  self->_isUnenrollingFromMDM = 0;
  if (a5)
  {
    v10 = 0;
  }

  else
  {
    LAContextClass = getLAContextClass();
    if (v8)
    {
      v10 = [[LAContextClass alloc] initWithExternalizedContext:v8];
    }

    else
    {
      v10 = objc_opt_new();
      if (v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = &stru_28434B568;
      }

      v13 = [(__CFString *)v12 dataUsingEncoding:4];
      v24 = 0;
      v14 = [v10 setCredential:v13 type:-1 error:&v24];
      v15 = v24;
      if ((v14 & 1) == 0)
      {
        v16 = *(DMCLogObjects() + 8);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v26 = v15;
          _os_log_impl(&dword_22E997000, v16, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust AMFI failed to set context credential with error: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  v17 = AMFIMDMModeEnroll();
  v18 = *(DMCLogObjects() + 8);
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240192;
      LODWORD(v26) = v17;
      v19 = "MDMProvisioningProfileTrust AMFI failed to enroll in MDM with error: %{public}d";
      v20 = v18;
      v21 = OS_LOG_TYPE_ERROR;
      v22 = 8;
LABEL_17:
      _os_log_impl(&dword_22E997000, v20, v21, v19, buf, v22);
    }
  }

  else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v19 = "MDMProvisioningProfileTrust AMFI successfully enrolled in MDM";
    v20 = v18;
    v21 = OS_LOG_TYPE_DEFAULT;
    v22 = 2;
    goto LABEL_17;
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)didUnenrollFromMDM
{
  v12 = *MEMORY[0x277D85DE8];
  self->_isUnenrollingFromMDM = 1;
  v3 = AMFIMDMModeRemove();
  v4 = *(DMCLogObjects() + 8);
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v11) = 67240192;
      HIDWORD(v11) = v3;
      v5 = "MDMProvisioningProfileTrust AMFI failed to unenroll from MDM with error: %{public}d";
      v6 = v4;
      v7 = OS_LOG_TYPE_ERROR;
      v8 = 8;
LABEL_6:
      _os_log_impl(&dword_22E997000, v6, v7, v5, &v11, v8);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    v5 = "MDMProvisioningProfileTrust AMFI successfully unenrolled from MDM";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 2;
    goto LABEL_6;
  }

  v9 = [MDMProvisioningProfileTrust managedAppSigners:v11];
  [(MDMProvisioningProfileTrust *)self untrustSignerIdentities:v9];

  v10 = *MEMORY[0x277D85DE8];
}

+ (void)didSuperviseThroughADE
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = AMFISupervisedModeSetState();
  v3 = *(DMCLogObjects() + 8);
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67240192;
      v9[1] = v2;
      v4 = "MDMProvisioningProfileTrust AMFI failed to supervise through ADE with error: %{public}d";
      v5 = v3;
      v6 = OS_LOG_TYPE_ERROR;
      v7 = 8;
LABEL_6:
      _os_log_impl(&dword_22E997000, v5, v6, v4, v9, v7);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    v4 = "MDMProvisioningProfileTrust AMFI successfully supervised through ADE";
    v5 = v3;
    v6 = OS_LOG_TYPE_DEFAULT;
    v7 = 2;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (void)didSuperviseThroughConfigurator
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = AMFISupervisedModeSetState();
  v3 = *(DMCLogObjects() + 8);
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v9[0] = 67240192;
      v9[1] = v2;
      v4 = "MDMProvisioningProfileTrust AMFI failed to supervise through Configurator with error: %{public}d";
      v5 = v3;
      v6 = OS_LOG_TYPE_ERROR;
      v7 = 8;
LABEL_6:
      _os_log_impl(&dword_22E997000, v5, v6, v4, v9, v7);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9[0]) = 0;
    v4 = "MDMProvisioningProfileTrust AMFI successfully supervised through Configurator";
    v5 = v3;
    v6 = OS_LOG_TYPE_DEFAULT;
    v7 = 2;
    goto LABEL_6;
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)updateTrustedCodeSigningIdentities:(id)a3 validateBundleIDs:(id)a4 validateManagedApps:(BOOL)a5
{
  v144 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  +[MDMProvisioningProfileTrust managedAppSigners];
  v80 = v9;
  v82 = self;
  v84 = v86 = a5;
  if (v9)
  {
    v81 = [MDMProvisioningProfileTrust _appSignerIdentitiesFromBundleIDs:v9];
  }

  else
  {
    v81 = 0;
  }

  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v129 = 0u;
  v130 = 0u;
  v131 = 0u;
  v132 = 0u;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v129 objects:v143 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v130;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v130 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v11 teamIDsWithSigningIdentity:*(*(&v129 + 1) + 8 * i)];
        v125 = 0u;
        v126 = 0u;
        v127 = 0u;
        v128 = 0u;
        v18 = [v17 countByEnumeratingWithState:&v125 objects:v142 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v126;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v126 != v20)
              {
                objc_enumerationMutation(v17);
              }

              [v10 addObject:*(*(&v125 + 1) + 8 * j)];
            }

            v19 = [v17 countByEnumeratingWithState:&v125 objects:v142 count:16];
          }

          while (v19);
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v129 objects:v143 count:16];
    }

    while (v14);
  }

  v22 = objc_opt_new();
  v119 = MEMORY[0x277D85DD0];
  v120 = 3221225472;
  v121 = __104__MDMProvisioningProfileTrust_updateTrustedCodeSigningIdentities_validateBundleIDs_validateManagedApps___block_invoke;
  v122 = &unk_278857438;
  v83 = v11;
  v123 = v83;
  v88 = v22;
  v124 = v88;
  MISEnumerateTrustedUPPs();
  v23 = objc_opt_new();
  v24 = objc_opt_new();
  v25 = objc_opt_new();
  v26 = objc_opt_new();
  v27 = objc_opt_new();
  v109[0] = MEMORY[0x277D85DD0];
  v109[1] = 3221225472;
  v109[2] = __104__MDMProvisioningProfileTrust_updateTrustedCodeSigningIdentities_validateBundleIDs_validateManagedApps___block_invoke_2;
  v109[3] = &unk_278857460;
  v28 = v84;
  v110 = v28;
  v29 = v23;
  v111 = v29;
  v118 = v86;
  v79 = v25;
  v112 = v79;
  v30 = v12;
  v113 = v30;
  v85 = v24;
  v114 = v85;
  v31 = v81;
  v115 = v31;
  v32 = v26;
  v116 = v32;
  v87 = v27;
  v117 = v87;
  if ([MDMProvisioningProfileTrust _enumerateProvisioningProfileUUIDsWithBlock:v109])
  {
    v75 = v32;
    v76 = v31;
    v78 = v30;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v77 = v29;
    v33 = v29;
    v34 = [v33 countByEnumeratingWithState:&v105 objects:v141 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v106;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v106 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v105 + 1) + 8 * k);
          [v88 removeObject:v38];
          [v85 removeObject:v38];
          if (v82->_isUnenrollingFromMDM)
          {
            v39 = *(DMCLogObjects() + 8);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_22E997000, v39, OS_LOG_TYPE_DEFAULT, "MDMProvisioningProfileTrust ignoring MDM trust because we are unenrolling from MDM", buf, 2u);
            }
          }

          else
          {
            v40 = [v87 objectForKeyedSubscript:v38];
            [MDMProvisioningProfileTrust _setAMFITrust:2 uuid:v38 signer:v40];
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v105 objects:v141 count:16];
      }

      while (v35);
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v41 = v85;
    v42 = [v41 countByEnumeratingWithState:&v101 objects:v140 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v102;
      do
      {
        for (m = 0; m != v43; ++m)
        {
          if (*v102 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v101 + 1) + 8 * m);
          [v88 removeObject:v46];
          v47 = [v87 objectForKeyedSubscript:v46];
          [MDMProvisioningProfileTrust _setAMFITrust:1 uuid:v46 signer:v47];
        }

        v43 = [v41 countByEnumeratingWithState:&v101 objects:v140 count:16];
      }

      while (v43);
    }

    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v48 = v88;
    v49 = [v48 countByEnumeratingWithState:&v97 objects:v139 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v98;
      do
      {
        for (n = 0; n != v50; ++n)
        {
          if (*v98 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v97 + 1) + 8 * n);
          v54 = [v83 teamIDWithProfileUUID:v53];
          v55 = [v10 containsObject:v54];
          v56 = *(DMCLogObjects() + 8);
          v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
          if (v55)
          {
            if (v57)
            {
              *buf = 138543618;
              v136 = v53;
              v137 = 2114;
              v138 = v54;
              _os_log_impl(&dword_22E997000, v56, OS_LOG_TYPE_DEFAULT, "MDMProvisioningProfileTrust skipping non-orphaned profile UUID %{public}@ because it is trusted by Team ID: %{public}@", buf, 0x16u);
            }
          }

          else
          {
            if (v57)
            {
              *buf = 138543362;
              v136 = v53;
              _os_log_impl(&dword_22E997000, v56, OS_LOG_TYPE_DEFAULT, "MDMProvisioningProfileTrust removing trust for orphaned profile UUID: %{public}@", buf, 0xCu);
            }

            [MDMProvisioningProfileTrust untrustProvisioningProfileUUID:v53];
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v97 objects:v139 count:16];
      }

      while (v50);
    }

    v58 = *(DMCLogObjects() + 8);
    v59 = v79;
    v32 = v75;
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v60 = v58;
      v61 = [v79 count];
      v62 = [v75 count];
      *buf = 134349312;
      v136 = v61;
      v137 = 2050;
      v138 = v62;
      _os_log_impl(&dword_22E997000, v60, OS_LOG_TYPE_DEFAULT, "MDMProvisioningProfileTrust will verify %{public}lu managed profiles and %{public}lu other profiles", buf, 0x16u);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v63 = v79;
    v64 = [v63 countByEnumeratingWithState:&v93 objects:v134 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v94;
      do
      {
        for (ii = 0; ii != v65; ++ii)
        {
          if (*v94 != v66)
          {
            objc_enumerationMutation(v63);
          }

          [(MDMProvisioningProfileTrust *)v82 _verifyProvisioningProfileUUID:*(*(&v93 + 1) + 8 * ii) completion:0];
        }

        v65 = [v63 countByEnumeratingWithState:&v93 objects:v134 count:16];
      }

      while (v65);
    }

    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v68 = v75;
    v69 = [v68 countByEnumeratingWithState:&v89 objects:v133 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v90;
      do
      {
        for (jj = 0; jj != v70; ++jj)
        {
          if (*v90 != v71)
          {
            objc_enumerationMutation(v68);
          }

          [(MDMProvisioningProfileTrust *)v82 _verifyProvisioningProfileUUID:*(*(&v89 + 1) + 8 * jj) completion:0];
        }

        v70 = [v68 countByEnumeratingWithState:&v89 objects:v133 count:16];
      }

      while (v70);
    }

    v30 = v78;
    v31 = v76;
    v29 = v77;
  }

  else
  {
    v73 = *(DMCLogObjects() + 8);
    v59 = v79;
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_22E997000, v73, OS_LOG_TYPE_ERROR, "MDMProvisioningProfileTrust skipping UPP sync because MIS enumeration failed", buf, 2u);
    }
  }

  v74 = *MEMORY[0x277D85DE8];
}

void __104__MDMProvisioningProfileTrust_updateTrustedCodeSigningIdentities_validateBundleIDs_validateManagedApps___block_invoke(uint64_t a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = a2;
  if (([*(a1 + 32) profileProvisionsAllDevices:v5] & 1) != 0 || objc_msgSend(*(a1 + 32), "profileIsForLocalProvisioning:", v5))
  {
    [*(a1 + 40) addObject:v5];
  }

  objc_autoreleasePoolPop(v4);
}

void __104__MDMProvisioningProfileTrust_updateTrustedCodeSigningIdentities_validateBundleIDs_validateManagedApps___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v5])
  {
    [*(a1 + 40) addObject:v7];
    if ((*(a1 + 96) & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = 48;
  }

  else
  {
    if (![*(a1 + 56) containsObject:v5])
    {
      goto LABEL_7;
    }

    v6 = 64;
  }

  [*(a1 + v6) addObject:v7];
LABEL_7:
  if ([*(a1 + 72) containsObject:v5])
  {
    [*(a1 + 80) addObject:v7];
  }

  [*(a1 + 88) setObject:v5 forKeyedSubscript:v7];
}

+ (id)_labelForAMFITrust:(unsigned int)a3
{
  v3 = @"Invalid";
  if (a3 == 1)
  {
    v3 = @"Manual";
  }

  if (a3 == 2)
  {
    return @"MDM";
  }

  else
  {
    return v3;
  }
}

+ (BOOL)_isFreeSignedAppDeveloper:(void *)a3
{
  Value = MISProfileGetValue();
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    LOBYTE(Value) = v5 == CFBooleanGetTypeID() && CFBooleanGetValue(v4) != 0;
  }

  return Value;
}

- (id)_descriptionForMISState:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"unknown";
  }

  else
  {
    return *(&off_2788574E0 + a3);
  }
}

+ (id)managedAppSigners
{
  v2 = +[MDMManagedMediaReader managedAppIDs];
  v3 = [MDMProvisioningProfileTrust _appSignerIdentitiesFromBundleIDs:v2];

  return v3;
}

+ (id)_appSignerIdentitiesFromBundleIDs:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        v12 = [MDMProvisioningProfileTrust appSignerIdentityForBundleID:v10, v15];
        if (v12)
        {
          [v4 addObject:v12];
        }

        objc_autoreleasePoolPop(v11);
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)appSignerIdentityForBundleID:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0;
  v4 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v11];
  v5 = v11;
  if (v4)
  {
    v6 = [v4 signerIdentity];
    if (!v6)
    {
      v7 = *(DMCLogObjects() + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v3;
        _os_log_impl(&dword_22E997000, v7, OS_LOG_TYPE_ERROR, "MDMProvisoningProfileTrust could not find signer identity of managed app '%{public}@'", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v13 = v3;
      v14 = 2114;
      v15 = v5;
      _os_log_impl(&dword_22E997000, v8, OS_LOG_TYPE_ERROR, "MDMProvisoningProfileTrust could not find record of managed app '%{public}@' with error: %{public}@", buf, 0x16u);
    }

    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)developerFromIdentity:(id)a3 hasFreePP:(BOOL)a4 hasUPP:(BOOL)a5
{
  v6 = a4;
  v8 = [a1 _developer:a3 withoutPrefix:@"iPhone Distribution: "];
  v9 = [a1 _developer:v8 withoutPrefix:@"iPhone Developer: "];

  v10 = [a1 _developer:v9 withoutPrefix:@"Apple Development: "];

  if (v6 && !a5)
  {
    v11 = objc_msgSend(v10, "rangeOfString:", @" (");
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = [v10 substringToIndex:v11];

      v10 = v12;
    }
  }

  return v10;
}

+ (id)_developer:(id)a3 withoutPrefix:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 hasPrefix:v6] && (v7 = objc_msgSend(v5, "length"), v7 > objc_msgSend(v6, "length")))
  {
    v8 = [v5 substringFromIndex:{objc_msgSend(v6, "length")}];
  }

  else
  {
    v8 = v5;
  }

  v9 = v8;

  return v9;
}

@end
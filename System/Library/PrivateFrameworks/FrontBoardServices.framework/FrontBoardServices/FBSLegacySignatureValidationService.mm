@interface FBSLegacySignatureValidationService
- (BOOL)_workQueue_signatureNeedsExplicitUserTrust;
- (FBSLegacySignatureValidationService)initWithApplicationInfo:(id)info andProvisioningProfiles:(id)profiles isManaged:(BOOL)managed;
- (id)_workQueue_expirationDateForProvisioningProfile;
- (unint64_t)trustStateForApplication:(id)application;
- (void)_initializeProfiles:(id)profiles;
@end

@implementation FBSLegacySignatureValidationService

- (FBSLegacySignatureValidationService)initWithApplicationInfo:(id)info andProvisioningProfiles:(id)profiles isManaged:(BOOL)managed
{
  infoCopy = info;
  profilesCopy = profiles;
  if (!infoCopy)
  {
    [FBSLegacySignatureValidationService initWithApplicationInfo:a2 andProvisioningProfiles:self isManaged:?];
  }

  v12 = profilesCopy;
  v16.receiver = self;
  v16.super_class = FBSLegacySignatureValidationService;
  v13 = [(FBSLegacySignatureValidationService *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_appInfo, info);
    v14->_isManaged = managed;
    [(FBSLegacySignatureValidationService *)v14 _initializeProfiles:v12];
    BSDispatchQueueCreateSerial();
  }

  return 0;
}

- (unint64_t)trustStateForApplication:(id)application
{
  applicationCopy = application;
  if (self->_appInfo != applicationCopy)
  {
    [(FBSLegacySignatureValidationService *)a2 trustStateForApplication:?];
  }

  v6 = applicationCopy;
  kdebug_trace();
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 8;
  workQueue = self->_workQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __64__FBSLegacySignatureValidationService_trustStateForApplication___block_invoke;
  v10[3] = &unk_1E76BD530;
  v10[4] = self;
  v10[5] = &v11;
  dispatch_sync(workQueue, v10);
  kdebug_trace();
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);

  return v8;
}

void __64__FBSLegacySignatureValidationService_trustStateForApplication___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) type];
  v3 = [*(*(a1 + 32) + 8) isBeta];
  if (v2 == 1)
  {
    *(*(*(a1 + 40) + 8) + 24) = 8;
    return;
  }

  v4 = v3;
  v5 = [*(*(a1 + 32) + 8) signerIdentity];

  if (v5)
  {
    v6 = [*(*(a1 + 32) + 8) isProvisioningProfileValidated];
    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = [v7 _workQueue_expirationDateForProvisioningProfile];
      v9 = [*(*(a1 + 32) + 8) bundleURL];
      v10 = [v9 path];

      if (v10)
      {
        v11 = soft_MISAppApprovalState(v10, 0);
        if (v11 == 4)
        {
          v12 = *(*(a1 + 40) + 8);
          v13 = 2;
          goto LABEL_38;
        }
      }

      else
      {
        v11 = 0;
      }

      if (!v8 || ([v8 timeIntervalSinceNow], v16 >= 0.0))
      {
        if (!v4 || [*(*(a1 + 32) + 24) count])
        {
          v17 = *(a1 + 32);
          if ((v17[16] & 1) != 0 || v17[17] == 1)
          {
            if (v11 == 3)
            {
LABEL_39:

              goto LABEL_40;
            }

            if (v11)
            {
              *(*(*(a1 + 40) + 8) + 24) = 7;
              if (v11 == 1)
              {
                v32 = v8;
                *(*(*(a1 + 40) + 8) + 24) = 6;
                v37 = 0u;
                v38 = 0u;
                v35 = 0u;
                v36 = 0u;
                v18 = *(*(a1 + 32) + 24);
                v19 = [v18 countByEnumeratingWithState:&v35 objects:v41 count:16];
                if (v19)
                {
                  v20 = v19;
                  v21 = *v36;
                  do
                  {
                    for (i = 0; i != v20; ++i)
                    {
                      if (*v36 != v21)
                      {
                        objc_enumerationMutation(v18);
                      }

                      v23 = *(*(&v35 + 1) + 8 * i);
                      if (([v23 provisionsAllDevices] & 1) != 0 || objc_msgSend(v23, "isFreeDeveloperProfile"))
                      {
                        v24 = [v23 UUID];
                        v25 = dispatch_get_global_queue(0, 0);
                        v33[0] = MEMORY[0x1E69E9820];
                        v33[1] = 3221225472;
                        v33[2] = __64__FBSLegacySignatureValidationService_trustStateForApplication___block_invoke_2;
                        v33[3] = &unk_1E76BFA10;
                        v34 = v24;
                        v26 = v24;
                        soft_MISValidateUPP(v26, v25, v33);
                      }
                    }

                    v20 = [v18 countByEnumeratingWithState:&v35 objects:v41 count:16];
                  }

                  while (v20);
                }

                v8 = v32;
              }

              goto LABEL_39;
            }
          }

          else if (v4)
          {
            v12 = *(*(a1 + 40) + 8);
            v13 = 8;
            goto LABEL_38;
          }

          if (![v17 _workQueue_signatureNeedsExplicitUserTrust])
          {
            goto LABEL_39;
          }

          v12 = *(*(a1 + 40) + 8);
          v13 = 7;
          goto LABEL_38;
        }
      }

      v12 = *(*(a1 + 40) + 8);
      v13 = 3;
LABEL_38:
      *(v12 + 24) = v13;
      goto LABEL_39;
    }

    v14 = [v7[1] cachedCDHashInfo];
    v8 = v14;
    if (v14)
    {
      if (soft_MISQueryBlacklistForCdHash([v14 cachedCodeDirectoryHash], objc_msgSend(v14, "cachedCodeDirectoryHashType"), 1, 0, 0))
      {
LABEL_10:
        v15 = 2;
LABEL_36:
        *(*(*(a1 + 40) + 8) + 24) = v15;
LABEL_40:

        return;
      }
    }

    else
    {
      v40 = 26;
      v39 = 0;
      v27 = [*(*(a1 + 32) + 8) bundleURL];
      v28 = soft_MISQueryBlacklistForBundle([v27 path], 0, 1, 0, &v39, &v40, 0);

      v29 = v39;
      if (v39)
      {
        v30 = *(*(a1 + 32) + 8);
        v31 = [_FBSCDHashCacheInfo cacheInfoWithData:v39 hashType:v40];
        [v30 setCachedCDHashInfo:v31];
      }

      if (v28)
      {
        goto LABEL_10;
      }
    }

    v15 = 8;
    goto LABEL_36;
  }
}

void __64__FBSLegacySignatureValidationService_trustStateForApplication___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = FBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __64__FBSLegacySignatureValidationService_trustStateForApplication___block_invoke_2_cold_1(a1, a3, v5);
    }
  }
}

- (void)_initializeProfiles:(id)profiles
{
  v35 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v6 = profilesCopy;
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if (([v11 isAppleInternalProfile] & 1) == 0)
        {
          isBeta = [(FBSApplicationInfo *)self->_appInfo isBeta];
          if (isBeta != [v11 isBeta])
          {
            continue;
          }

          _appIDEntitlement = [(FBSApplicationInfo *)self->_appInfo _appIDEntitlement];
          v14 = [v11 allowsApplicationIdentifierEntitlement:_appIDEntitlement];

          if (!v14)
          {
            continue;
          }
        }

        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = v5;
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = 0;
    v20 = *v26;
    while (2)
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v25 + 1) + 8 * j);
        v18 |= [v22 provisionsAllDevices];
        v19 |= [v22 isFreeDeveloperProfile];
        if (v18 & 1) != 0 && (v19)
        {
          LOBYTE(v18) = 1;
          LOBYTE(v19) = 1;
          goto LABEL_24;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v18) = 0;
    LOBYTE(v19) = 0;
  }

LABEL_24:

  v23 = [v6 copy];
  provisioningProfiles = self->_provisioningProfiles;
  self->_provisioningProfiles = v23;

  self->_hasUniversalProvisioningProfile = v18 & 1;
  self->_hasFreeDeveloperProvisioningProfile = v19 & 1;
}

- (id)_workQueue_expirationDateForProvisioningProfile
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_workQueue);
  if (![(FBSApplicationInfo *)self->_appInfo isProvisioningProfileValidated])
  {
    goto LABEL_20;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_provisioningProfiles;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v4)
  {
    v6 = v3;
LABEL_19:

LABEL_20:
    v6 = 0;
    goto LABEL_21;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v16;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v3);
      }

      expirationDate = [*(*(&v15 + 1) + 8 * i) expirationDate];
      if (expirationDate)
      {
        if (v6)
        {
          goto LABEL_11;
        }
      }

      else
      {
        expirationDate = [MEMORY[0x1E695DF00] distantFuture];
        if (v6)
        {
LABEL_11:
          [expirationDate timeIntervalSinceDate:v6];
          if (v10 <= 0.0)
          {
            goto LABEL_13;
          }
        }
      }

      v11 = expirationDate;

      v6 = v11;
LABEL_13:
    }

    v5 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v5);

  if (v6)
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    v13 = [(NSArray *)v6 isEqual:distantFuture];

    if (v13)
    {
      goto LABEL_19;
    }
  }

LABEL_21:

  return v6;
}

- (BOOL)_workQueue_signatureNeedsExplicitUserTrust
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_workQueue);
  if (![(FBSApplicationInfo *)self->_appInfo isProvisioningProfileValidated]|| self->_isManaged)
  {
    return 0;
  }

  sharedConnection = [getMCProfileConnectionClass() sharedConnection];
  trustedCodeSigningIdentities = [sharedConnection trustedCodeSigningIdentities];

  signerIdentity = [(FBSApplicationInfo *)self->_appInfo signerIdentity];
  v7 = [trustedCodeSigningIdentities containsObject:signerIdentity];

  if (v7)
  {
    v3 = 0;
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = self->_provisioningProfiles;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([v13 provisionsAllDevices] & 1) != 0 || (objc_msgSend(v13, "isFreeDeveloperProfile"))
          {
            v3 = 1;
            goto LABEL_18;
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
        v3 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v3 = 0;
    }

LABEL_18:
  }

  return v3;
}

- (void)initWithApplicationInfo:(const char *)a1 andProvisioningProfiles:(uint64_t)a2 isManaged:.cold.1(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"appInfo"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"FBSLegacySignatureValidationService.m";
    v16 = 1024;
    v17 = 34;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)trustStateForApplication:(const char *)a1 .cold.1(const char *a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"App info objects must match or we've done something wrong."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a2;
    v15 = 2114;
    v16 = @"FBSLegacySignatureValidationService.m";
    v17 = 1024;
    v18 = 50;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  v8 = v4;
  [v4 UTF8String];
  _bs_set_crash_log_message();
}

void __64__FBSLegacySignatureValidationService_trustStateForApplication___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138543618;
  v5 = v3;
  v6 = 2048;
  v7 = a2;
  _os_log_error_impl(&dword_1A2DBB000, log, OS_LOG_TYPE_ERROR, "Failed to verify universal provisioning profile %{public}@ with error %lld", &v4, 0x16u);
}

@end
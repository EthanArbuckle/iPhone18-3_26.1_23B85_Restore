@interface MCUIAppSigner
+ (id)_uppProfilesBySignerIDWithOutFreeDevProfilesBySignerID:(id *)a3;
+ (id)enterpriseAppSignersWithOutDeveloperAppSigners:(id *)a3;
+ (void)_addProfile:(id)a3 toSignerIdentity:(id)a4 inDictionary:(id)a5;
- (BOOL)isAppRemovalAllowed;
- (BOOL)isEnterpriseAppTrustAllowed;
- (BOOL)isTrustable;
- (BOOL)isTrusted;
- (void)_updateUntrustedAppCountsForBundleIDs:(id)a3;
- (void)main_removeMCUIReferenceForBundleID:(id)a3;
- (void)refreshApplications;
- (void)setIdentity:(id)a3;
@end

@implementation MCUIAppSigner

- (void)setIdentity:(id)a3
{
  v5 = a3;
  p_identity = &self->_identity;
  if (self->_identity != v5)
  {
    v9 = v5;
    objc_storeStrong(p_identity, a3);
    v7 = [MEMORY[0x277D24690] developerFromIdentity:v9 hasFreePP:self->_hasFreePP hasUPP:self->_hasUniversalPP];
    displayName = self->_displayName;
    self->_displayName = v7;
  }

  MEMORY[0x2821F9730](p_identity);
}

- (void)refreshApplications
{
  v3 = [(MCUIAppSigner *)self applications];
  [(MCUIAppSigner *)self _updateUntrustedAppCountsForBundleIDs:v3];
}

- (void)_updateUntrustedAppCountsForBundleIDs:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [(MCUIAppSigner *)self applications];
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [objc_alloc(MEMORY[0x277D03238]) initWithBundleID:v11 dataSource:0];
        v14 = [v13 misStateIncludingPending:1];
        if ((v14 - 2) >= 2)
        {
          if (v14 == 1)
          {
            ++v7;
          }

          else
          {
            if (v14 == 5)
            {

              objc_autoreleasePoolPop(v12);
              goto LABEL_16;
            }

            ++v8;
          }
        }

        objc_autoreleasePoolPop(v12);
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_16:

  self->_untrustedAppCount = v8;
  self->_almostUntrustedAppCount = v7;

  v15 = *MEMORY[0x277D85DE8];
}

- (void)main_removeMCUIReferenceForBundleID:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__MCUIAppSigner_main_removeMCUIReferenceForBundleID___block_invoke;
  v6[3] = &unk_279861A68;
  objc_copyWeak(&v9, &location);
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_sync(MEMORY[0x277D85CD0], v6);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __53__MCUIAppSigner_main_removeMCUIReferenceForBundleID___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v3 = [WeakRetained applications];
    v4 = [v3 mutableCopy];

    [v4 removeObject:*(a1 + 32)];
    v5 = [v4 copy];
    v6 = *(a1 + 40);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    WeakRetained = v8;
  }
}

- (BOOL)isTrusted
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(MCUIAppSigner *)self provisioningProfiles];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = MEMORY[0x277D24690];
        v9 = [v7 uuid];
        LOBYTE(v8) = [v8 isTrustedProvisioningProfileUUID:v9];

        if ((v8 & 1) == 0)
        {
          v11 = [v7 uuid];
          NSLog(&cfstr_McuiappsignerP.isa, v11);

          v10 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isAppRemovalAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25D20]] != 2;

  return v3;
}

- (BOOL)isEnterpriseAppTrustAllowed
{
  v2 = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:*MEMORY[0x277D25E70]] != 2;

  return v3;
}

- (BOOL)isTrustable
{
  if ([(MCUIAppSigner *)self isTrusted]&& [(MCUIAppSigner *)self isAppRemovalAllowed])
  {
    return 1;
  }

  if ([(MCUIAppSigner *)self isTrusted])
  {
    return 0;
  }

  return [(MCUIAppSigner *)self isEnterpriseAppTrustAllowed];
}

+ (id)enterpriseAppSignersWithOutDeveloperAppSigners:(id *)a3
{
  v81 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v77 = 0;
  v64 = [MCUIAppSigner _uppProfilesBySignerIDWithOutFreeDevProfilesBySignerID:&v77];
  v63 = v77;
  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v56 = [v4 managedAppIDs];

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v5 = [MEMORY[0x277D03238] userApplications];
  v6 = [v5 countByEnumeratingWithState:&v73 objects:v80 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v74;
    v57 = v3;
    v54 = *v74;
    v55 = v5;
    do
    {
      v9 = 0;
      v59 = v7;
      do
      {
        if (*v74 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v73 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [v10 signerID];

        if (v12)
        {
          v13 = [v10 isInstalled];
          v14 = [v10 bundleID];
          v15 = v14;
          if (v13)
          {
            v16 = [v56 containsObject:v14];

            if (v16)
            {
              v15 = [v10 bundleID];
              NSLog(&cfstr_McuiappsignerI_1.isa, v15);
            }

            else
            {
              v17 = [v10 signerID];
              v15 = [v64 objectForKey:v17];

              v18 = [v10 signerID];
              v19 = [v63 objectForKey:v18];

              v20 = objc_opt_new();
              v21 = v20;
              if (v15)
              {
                [v20 addObjectsFromArray:v15];
              }

              if (v19)
              {
                [v21 addObjectsFromArray:v19];
              }

              v61 = v19;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v22 = v21;
              v23 = [v22 countByEnumeratingWithState:&v69 objects:v79 count:16];
              if (v23)
              {
                v24 = v23;
                v25 = *v70;
                while (2)
                {
                  for (i = 0; i != v24; ++i)
                  {
                    if (*v70 != v25)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v27 = *(*(&v69 + 1) + 8 * i);
                    if (([v27 isAppleInternal] & 1) != 0 || (v28 = objc_msgSend(v10, "isBetaApp"), v28 == objc_msgSend(v27, "isBeta")) && (objc_msgSend(v10, "appIDEntitlement"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v27, "allowsAppIDEntitlement:", v29), v29, v30))
                    {
                      v33 = [v10 signerID];
                      v3 = v57;
                      v34 = [v57 objectForKey:v33];

                      if (v34)
                      {
                        v35 = [v10 bundleID];
                        [v34 addObject:v35];
                      }

                      else
                      {
                        v36 = MEMORY[0x277CBEB18];
                        v37 = [v10 bundleID];
                        v34 = [v36 arrayWithObject:v37];

                        v35 = [v10 signerID];
                        [v57 setObject:v34 forKey:v35];
                      }

                      goto LABEL_33;
                    }

                    v31 = [v10 bundleID];
                    v32 = [v10 appIDEntitlement];
                    NSLog(&cfstr_McuiappsignerS.isa, v31, v32);
                  }

                  v24 = [v22 countByEnumeratingWithState:&v69 objects:v79 count:16];
                  v3 = v57;
                  if (v24)
                  {
                    continue;
                  }

                  break;
                }
              }

LABEL_33:

              v8 = v54;
              v5 = v55;
              v7 = v59;
            }
          }

          else
          {
            NSLog(&cfstr_McuiappsignerI_0.isa, v14);
          }
        }

        else
        {
          v15 = [v10 bundleID];
          NSLog(&cfstr_McuiappsignerI.isa, v15);
        }

        objc_autoreleasePoolPop(v11);
        v9 = v9 + 1;
      }

      while (v9 != v7);
      v38 = [v5 countByEnumeratingWithState:&v73 objects:v80 count:16];
      v7 = v38;
    }

    while (v38);
  }

  v60 = objc_opt_new();
  v39 = objc_opt_new();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v40 = v3;
  v62 = [v40 countByEnumeratingWithState:&v65 objects:v78 count:16];
  if (v62)
  {
    v58 = *v66;
    do
    {
      for (j = 0; j != v62; ++j)
      {
        if (*v66 != v58)
        {
          objc_enumerationMutation(v40);
        }

        v42 = *(*(&v65 + 1) + 8 * j);
        v43 = [v40 objectForKey:v42];
        v44 = [v64 objectForKey:v42];
        v45 = [v63 objectForKey:v42];
        v46 = objc_opt_new();
        v47 = v46;
        if (v44)
        {
          [v46 addObjectsFromArray:v44];
        }

        if (v45)
        {
          [v47 addObjectsFromArray:v45];
        }

        v48 = -[MCUIAppSigner initWithIdentity:applications:provisioningProfiles:hasUPP:hasFreePP:]([MCUIAppSigner alloc], "initWithIdentity:applications:provisioningProfiles:hasUPP:hasFreePP:", v42, v43, v47, [v44 count] != 0, objc_msgSend(v45, "count") != 0);
        if ([v44 count])
        {
          v49 = v60;
        }

        else
        {
          v49 = v39;
        }

        [v49 addObject:v48];
      }

      v62 = [v40 countByEnumeratingWithState:&v65 objects:v78 count:16];
    }

    while (v62);
  }

  if (a3)
  {
    v50 = v39;
    *a3 = v39;
  }

  v51 = *MEMORY[0x277D85DE8];

  return v60;
}

+ (void)_addProfile:(id)a3 toSignerIdentity:(id)a4 inDictionary:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v8 objectForKey:v7];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEB18] array];
    [v8 setObject:v9 forKey:v7];
  }

  [v9 addObject:v10];
}

+ (id)_uppProfilesBySignerIDWithOutFreeDevProfilesBySignerID:(id *)a3
{
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = MEMORY[0x277D24690];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__MCUIAppSigner__uppProfilesBySignerIDWithOutFreeDevProfilesBySignerID___block_invoke;
  v13[3] = &unk_279861EE0;
  v7 = v4;
  v14 = v7;
  v8 = v5;
  v15 = v8;
  [v6 enumerateProvisioningProfilesWithBlock:v13];
  if (a3)
  {
    v9 = v8;
    *a3 = v8;
  }

  v10 = v15;
  v11 = v7;

  return v7;
}

void __72__MCUIAppSigner__uppProfilesBySignerIDWithOutFreeDevProfilesBySignerID___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v6 isUniversalPP])
  {
    [MCUIAppSigner _addProfile:v6 toSignerIdentity:v5 inDictionary:*(a1 + 32)];
  }

  if ([v6 isFreePP])
  {
    [MCUIAppSigner _addProfile:v6 toSignerIdentity:v5 inDictionary:*(a1 + 40)];
  }
}

@end
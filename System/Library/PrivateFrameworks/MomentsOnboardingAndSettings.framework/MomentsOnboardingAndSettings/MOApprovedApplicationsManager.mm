@interface MOApprovedApplicationsManager
+ (id)sharedInstance;
- (BOOL)isApplicationUsingDataAccess:(id)access;
- (BOOL)isClientUsingDataAccess:(id)access;
- (BOOL)isJournalingSuggestionsAvailableForBundleIdentifier:(id)identifier;
- (MOApprovedApplicationsManager)init;
- (id)_getApprovedApplicationsArray;
- (id)_getApprovedApplicationsArrayAndRequireAccess:(BOOL)access;
- (id)_getApprovedApplicationsWithAccessArray;
- (id)getJournalingSuggestionsApprovedApplicationRecordForBundleIdentifier:(id)identifier;
- (void)registerClientsForDataAccess:(id)access;
@end

@implementation MOApprovedApplicationsManager

- (id)_getApprovedApplicationsArray
{
  approvedApplications = self->_approvedApplications;
  if (!approvedApplications)
  {
    v4 = [(MOApprovedApplicationsManager *)self _getApprovedApplicationsArrayAndRequireAccess:0];
    v5 = self->_approvedApplications;
    self->_approvedApplications = v4;

    approvedApplications = self->_approvedApplications;
  }

  v6 = approvedApplications;

  return v6;
}

- (id)_getApprovedApplicationsWithAccessArray
{
  approvedApplicationsWithAccess = self->_approvedApplicationsWithAccess;
  if (!approvedApplicationsWithAccess)
  {
    v4 = [(MOApprovedApplicationsManager *)self _getApprovedApplicationsArrayAndRequireAccess:1];
    v5 = self->_approvedApplicationsWithAccess;
    self->_approvedApplicationsWithAccess = v4;

    approvedApplicationsWithAccess = self->_approvedApplicationsWithAccess;
  }

  v6 = approvedApplicationsWithAccess;

  return v6;
}

- (id)_getApprovedApplicationsArrayAndRequireAccess:(BOOL)access
{
  v5 = +[MOOnboardingAndSettingsManager sharedInstance];
  defaultManager = [v5 defaultManager];

  v7 = [defaultManager objectForKey:@"ApprovedJournalingApplicationsOverrideForcedList"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __79__MOApprovedApplicationsManager__getApprovedApplicationsArrayAndRequireAccess___block_invoke;
  v20 = &unk_27991EF40;
  v11 = v9;
  v21 = v11;
  v22 = @"Approved applications lookup";
  accessCopy = access;
  selfCopy = self;
  [v10 setFilter:&v17];
  v12 = objc_opt_new();
  nextObject = [v10 nextObject];
  if (nextObject)
  {
    v14 = nextObject;
    do
    {
      [v12 addObject:v14];
      nextObject2 = [v10 nextObject];

      v14 = nextObject2;
    }

    while (nextObject2);
  }

  return v12;
}

uint64_t __79__MOApprovedApplicationsManager__getApprovedApplicationsArrayAndRequireAccess___block_invoke(uint64_t a1, void *a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 entitlements];
  v5 = [v3 bundleIdentifier];
  v6 = *(a1 + 32);
  if (!v6)
  {
    goto LABEL_15;
  }

  v63 = v3;
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v83 objects:v98 count:16];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  v10 = *v84;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v84 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v83 + 1) + 8 * i);
      if ([v12 isEqualToString:v5])
      {
        v13 = [*(a1 + 32) objectForKey:v12];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v91 = @"ApprovedJournalingApplicationsOverrideForcedList";
            v92 = 2112;
            v93 = v5;
            _os_log_error_impl(&dword_25A200000, v14, OS_LOG_TYPE_ERROR, "Invalid defaults value type in %@.%@", buf, 0x16u);
          }

          continue;
        }

        v28 = [v13 BOOLValue];
        v30 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        if (v28)
        {
          v3 = v63;
          if (v31)
          {
            v32 = *(a1 + 40);
            *buf = 138412546;
            v91 = v32;
            v92 = 2112;
            v93 = v5;
            v33 = "%@: [%@:OverrideForcedSelected]";
LABEL_46:
            _os_log_impl(&dword_25A200000, v30, OS_LOG_TYPE_DEFAULT, v33, buf, 0x16u);
          }
        }

        else
        {
          v3 = v63;
          if (v31)
          {
            v34 = *(a1 + 40);
            *buf = 138412546;
            v91 = v34;
            v92 = 2112;
            v93 = v5;
            v33 = "%@: [%@:OverrideForcedUnselected]";
            goto LABEL_46;
          }
        }

        goto LABEL_97;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v83 objects:v98 count:16];
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_14:

  v3 = v63;
LABEL_15:
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v15 = [&unk_286BE0E30 countByEnumeratingWithState:&v79 objects:v97 count:16];
  if (v15)
  {
    v16 = v15;
    v7 = 0;
    v17 = *v80;
    while (2)
    {
      v18 = 0;
      v19 = v7;
      do
      {
        if (*v80 != v17)
        {
          objc_enumerationMutation(&unk_286BE0E30);
        }

        v7 = *(*(&v79 + 1) + 8 * v18);

        if ([v5 isEqualToString:v7])
        {
          v13 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *(a1 + 40);
            *buf = 138412546;
            v91 = v29;
            v92 = 2112;
            v93 = v5;
            _os_log_impl(&dword_25A200000, v13, OS_LOG_TYPE_DEFAULT, "%@: [%@:SpecialCaseUnselected]", buf, 0x16u);
          }

          v28 = 0;
          goto LABEL_97;
        }

        ++v18;
        v19 = v7;
      }

      while (v16 != v18);
      v16 = [&unk_286BE0E30 countByEnumeratingWithState:&v79 objects:v97 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v20 = [&unk_286BE0E48 countByEnumeratingWithState:&v75 objects:v96 count:16];
  if (v20)
  {
    v21 = v20;
    v7 = 0;
    v22 = *v76;
    while (2)
    {
      v23 = 0;
      v24 = v7;
      do
      {
        if (*v76 != v22)
        {
          objc_enumerationMutation(&unk_286BE0E48);
        }

        v7 = *(*(&v75 + 1) + 8 * v23);

        if ([v5 isEqualToString:v7])
        {
          if (*(a1 + 56) == 1)
          {
            v28 = [*(a1 + 48) isApplicationUsingDataAccess:v5];
          }

          else
          {
            v28 = 1;
          }

          v13 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v35 = *(a1 + 40);
            v36 = @"AccessBasedUnselected";
            *buf = 138412802;
            if (v28)
            {
              v36 = @"Selected";
            }

            v91 = v35;
            v92 = 2112;
            v93 = v5;
            v94 = 2112;
            v95 = v36;
            _os_log_impl(&dword_25A200000, v13, OS_LOG_TYPE_DEFAULT, "%@: [%@:Access%@]", buf, 0x20u);
          }

          goto LABEL_97;
        }

        ++v23;
        v24 = v7;
      }

      while (v21 != v23);
      v21 = [&unk_286BE0E48 countByEnumeratingWithState:&v75 objects:v96 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v25 = [v4 objectForKey:@"com.apple.momentsd.internal" ofClass:objc_opt_class()];
  v13 = v25;
  v65 = v4;
  if (v25 && (memset(v74, 0, sizeof(v74)), [v25 countByEnumeratingWithState:v74 objects:v89 count:16]))
  {
    v7 = **(&v74[0] + 1);
    v26 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = *(a1 + 40);
      *buf = 138412546;
      v91 = v27;
      v92 = 2112;
      v93 = v5;
      _os_log_impl(&dword_25A200000, v26, OS_LOG_TYPE_DEFAULT, "%@: [%@:InternalEntitlementSelected]", buf, 0x16u);
    }

    v28 = 1;
  }

  else
  {
    v37 = [v4 objectForKey:@"com.apple.developer.moments.allow" ofClass:objc_opt_class()];
    v38 = v37;
    if (v37)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v26 = v37;
      v39 = [v26 countByEnumeratingWithState:&v70 objects:v88 count:16];
      if (v39)
      {
        v40 = v39;
        v61 = v38;
        v7 = 0;
        v41 = *v71;
        while (2)
        {
          v42 = 0;
          v43 = v7;
          do
          {
            if (*v71 != v41)
            {
              objc_enumerationMutation(v26);
            }

            v7 = *(*(&v70 + 1) + 8 * v42);

            if ([v7 isEqualToString:@"suggestions"])
            {
              if (*(a1 + 56) == 1)
              {
                v28 = [*(a1 + 48) isApplicationUsingDataAccess:v5];
              }

              else
              {
                v28 = 1;
              }

              v53 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                v54 = *(a1 + 40);
                v55 = @"Unselected";
                *buf = 138412802;
                if (v28)
                {
                  v55 = @"Selected";
                }

                v91 = v54;
                v92 = 2112;
                v93 = v5;
                v94 = 2112;
                v95 = v55;
                _os_log_impl(&dword_25A200000, v53, OS_LOG_TYPE_DEFAULT, "%@: [%@:EntitlementAccess%@]", buf, 0x20u);
              }

              goto LABEL_96;
            }

            ++v42;
            v43 = v7;
          }

          while (v40 != v42);
          v40 = [v26 countByEnumeratingWithState:&v70 objects:v88 count:16];
          if (v40)
          {
            continue;
          }

          break;
        }

        v38 = v61;
      }

      v4 = v65;
    }

    v44 = [v4 objectForKey:@"com.apple.developer.journal.allow" ofClass:objc_opt_class()];
    v45 = v44;
    if (v44)
    {
      v64 = v3;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v46 = v44;
      v47 = [v46 countByEnumeratingWithState:&v66 objects:v87 count:16];
      if (v47)
      {
        v48 = v47;
        v60 = v45;
        v62 = v38;
        v7 = 0;
        v49 = *v67;
        while (2)
        {
          v50 = 0;
          v51 = v7;
          do
          {
            if (*v67 != v49)
            {
              objc_enumerationMutation(v46);
            }

            v7 = *(*(&v66 + 1) + 8 * v50);

            if ([v7 isEqualToString:@"suggestions"])
            {
              if (*(a1 + 56) == 1)
              {
                v28 = [*(a1 + 48) isApplicationUsingDataAccess:v5];
              }

              else
              {
                v28 = 1;
              }

              v45 = v60;
              v38 = v62;
              v52 = _mo_log_facility_get_os_log(MOLogFacilitySettings);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
              {
                v56 = *(a1 + 40);
                v57 = @"Unselected";
                *buf = 138412802;
                if (v28)
                {
                  v57 = @"Selected";
                }

                v91 = v56;
                v92 = 2112;
                v93 = v5;
                v94 = 2112;
                v95 = v57;
                _os_log_impl(&dword_25A200000, v52, OS_LOG_TYPE_DEFAULT, "%@: [%@:EntitlementAccess%@]", buf, 0x20u);
              }

              goto LABEL_93;
            }

            ++v50;
            v51 = v7;
          }

          while (v48 != v50);
          v48 = [v46 countByEnumeratingWithState:&v66 objects:v87 count:16];
          if (v48)
          {
            continue;
          }

          break;
        }

        v28 = 0;
        v52 = v7;
        v7 = 0;
        v45 = v60;
        v38 = v62;
LABEL_93:
      }

      else
      {
        v7 = 0;
        v28 = 0;
      }

      v3 = v64;
    }

    else
    {
      v7 = 0;
      v28 = 0;
    }

    v26 = v38;
  }

LABEL_96:

  v4 = v65;
LABEL_97:

  v58 = *MEMORY[0x277D85DE8];
  return v28;
}

- (MOApprovedApplicationsManager)init
{
  v7.receiver = self;
  v7.super_class = MOApprovedApplicationsManager;
  v2 = [(MOApprovedApplicationsManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    approvedApplications = v2->_approvedApplications;
    v2->_approvedApplications = 0;

    v5 = v3;
  }

  return v3;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__MOApprovedApplicationsManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_shared_0;

  return v2;
}

uint64_t __47__MOApprovedApplicationsManager_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_shared_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (BOOL)isJournalingSuggestionsAvailableForBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy && ([identifierCopy isEqualToString:&stru_286BDDEB8] & 1) == 0)
  {
    [(MOApprovedApplicationsManager *)self _getApprovedApplicationsArray];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v17 = 0u;
    v6 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v7);
          }

          bundleIdentifier = [*(*(&v14 + 1) + 8 * i) bundleIdentifier];
          v11 = [v5 isEqualToString:bundleIdentifier];

          if (v11)
          {
            LOBYTE(v6) = 1;
            goto LABEL_14;
          }
        }

        v6 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)getJournalingSuggestionsApprovedApplicationRecordForBundleIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy && ([identifierCopy isEqualToString:&stru_286BDDEB8] & 1) == 0)
  {
    [(MOApprovedApplicationsManager *)self _getApprovedApplicationsWithAccessArray];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v18 = 0u;
    v6 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v8 = *v16;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          bundleIdentifier = [v10 bundleIdentifier];
          v12 = [v5 isEqualToString:bundleIdentifier];

          if (v12)
          {
            v6 = [v10 copy];
            goto LABEL_14;
          }
        }

        v6 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v6 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (BOOL)isApplicationUsingDataAccess:(id)access
{
  accessCopy = access;
  v4 = +[MOOnboardingAndSettingsManager sharedInstance];
  v5 = [v4 isApplicationUsingDataAccess:accessCopy];

  return v5;
}

- (BOOL)isClientUsingDataAccess:(id)access
{
  accessCopy = access;
  v4 = +[MOOnboardingAndSettingsManager sharedInstance];
  v5 = [v4 isClientUsingDataAccess:accessCopy];

  return v5;
}

- (void)registerClientsForDataAccess:(id)access
{
  accessCopy = access;
  v4 = +[MOOnboardingAndSettingsManager sharedInstance];
  [v4 registerClientsForDataAccess:accessCopy];
}

@end
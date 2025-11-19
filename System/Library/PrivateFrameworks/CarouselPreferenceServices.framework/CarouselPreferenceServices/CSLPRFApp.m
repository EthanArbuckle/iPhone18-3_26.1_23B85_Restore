@interface CSLPRFApp
+ (id)appWithACXRemoteApplication:(id)a3;
+ (id)appWithApplicationRecord:(id)a3;
+ (id)appWithBBSectionInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)supportsSmartStack;
- (CSLPRFApp)initWithBundleIdentifier:(id)a3 localizedName:(id)a4 sdkVersion:(id)a5 supportsAlwaysOnDisplay:(BOOL)a6 defaultsToPrivateAlwaysOnDisplayTreatment:(BOOL)a7 applicationRecord:(id)a8 remoteApplicationRecord:(id)a9 bbSectionInfo:(id)a10;
- (LSApplicationRecord)applicationRecord;
- (NSMutableArray)unionedBackgroundModes;
- (NSString)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation CSLPRFApp

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendObject:self->_localizedName];
  v5 = [v3 appendObject:self->_bundleIdentifier];
  v6 = [v3 appendObject:self->_SDKVersion];
  v7 = [v3 appendBool:self->_supportsAlwaysOnDisplay];
  v8 = [v3 appendBool:self->_defaultsToPrivateAlwaysOnDisplayTreatment];
  v9 = [v3 appendBool:self->_local];
  v10 = [v3 appendObject:self->_URL];
  v11 = [v3 appendObject:self->_bbSectionInfo];
  v12 = [v3 hash];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  localizedName = self->_localizedName;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __21__CSLPRFApp_isEqual___block_invoke;
  v48[3] = &unk_278745500;
  v7 = v4;
  v49 = v7;
  v8 = [v5 appendObject:localizedName counterpart:v48];
  bundleIdentifier = self->_bundleIdentifier;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __21__CSLPRFApp_isEqual___block_invoke_2;
  v46[3] = &unk_278745500;
  v10 = v7;
  v47 = v10;
  v11 = [v5 appendObject:bundleIdentifier counterpart:v46];
  SDKVersion = self->_SDKVersion;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __21__CSLPRFApp_isEqual___block_invoke_3;
  v44[3] = &unk_278745500;
  v13 = v10;
  v45 = v13;
  v14 = [v5 appendObject:SDKVersion counterpart:v44];
  supportsAlwaysOnDisplay = self->_supportsAlwaysOnDisplay;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __21__CSLPRFApp_isEqual___block_invoke_4;
  v42[3] = &unk_278745630;
  v16 = v13;
  v43 = v16;
  v17 = [v5 appendBool:supportsAlwaysOnDisplay counterpart:v42];
  defaultsToPrivateAlwaysOnDisplayTreatment = self->_defaultsToPrivateAlwaysOnDisplayTreatment;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __21__CSLPRFApp_isEqual___block_invoke_5;
  v40[3] = &unk_278745630;
  v19 = v16;
  v41 = v19;
  v20 = [v5 appendBool:defaultsToPrivateAlwaysOnDisplayTreatment counterpart:v40];
  local = self->_local;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __21__CSLPRFApp_isEqual___block_invoke_6;
  v38[3] = &unk_278745630;
  v22 = v19;
  v39 = v22;
  v23 = [v5 appendBool:local counterpart:v38];
  URL = self->_URL;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __21__CSLPRFApp_isEqual___block_invoke_7;
  v36[3] = &unk_278745500;
  v25 = v22;
  v37 = v25;
  v26 = [v5 appendObject:URL counterpart:v36];
  bbSectionInfo = self->_bbSectionInfo;
  v31 = MEMORY[0x277D85DD0];
  v32 = 3221225472;
  v33 = __21__CSLPRFApp_isEqual___block_invoke_8;
  v34 = &unk_278745500;
  v35 = v25;
  v28 = v25;
  v29 = [v5 appendObject:bbSectionInfo counterpart:&v31];
  LOBYTE(v25) = [v5 isEqual];

  return v25;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_localizedName withName:@"name"];
  v5 = [v3 appendObject:self->_bundleIdentifier withName:@"bundleID"];
  v6 = [v3 appendObject:self->_SDKVersion withName:@"sdk"];
  v7 = [v3 appendBool:self->_supportsAlwaysOnDisplay withName:@"supportsAlwaysOn"];
  v8 = [v3 appendBool:self->_defaultsToPrivateAlwaysOnDisplayTreatment withName:@"privateByDefault"];
  v9 = [v3 appendBool:self->_local withName:@"local" ifEqualTo:1];
  v10 = [v3 appendBool:self->_isBBSourcedApplication withName:@"bbSourced" ifEqualTo:1];
  v11 = [v3 build];

  return v11;
}

- (BOOL)supportsSmartStack
{
  v24[3] = *MEMORY[0x277D85DE8];
  v3 = [(CSLPRFApp *)self unionedBackgroundModes];
  v24[0] = @"com.apple.Fitness";
  v24[1] = @"com.apple.Bridge";
  v24[2] = @"com.apple.NanoNowPlaying";
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  v5 = [(CSLPRFApp *)self bundleIdentifier];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v23[0] = @"com.apple.NanoCompass.watchkitapp";
    v23[1] = @"com.apple.NanoAlarm";
    v23[2] = @"com.apple.NanoPassbook";
    v23[3] = @"com.apple.VoiceMemos";
    v23[4] = @"com.apple.nanomusicrecognition";
    v23[5] = @"com.apple.NanoNowPlaying";
    v23[6] = @"com.apple.NanoStopwatch";
    v23[7] = @"com.apple.Mind";
    v23[8] = @"com.apple.private.NanoTimer";
    v23[9] = @"com.apple.NanoAllMusicApps";
    v23[10] = @"com.apple.NanoAllWorkoutApps";
    v23[11] = @"com.apple.NanoPhone";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:12];
    v9 = [(CSLPRFApp *)self bundleIdentifier];
    LOBYTE(v10) = [v8 containsObject:v9];

    if (v3 && (v10 & 1) == 0)
    {
      if (supportsSmartStack_onceToken != -1)
      {
        dispatch_once(&supportsSmartStack_onceToken, &__block_literal_global_1193);
      }

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = v3;
      v10 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v12 = *v19;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v11);
            }

            if ([supportsSmartStack___sessionCapableBackgroundModes containsObject:{*(*(&v18 + 1) + 8 * i), v18}])
            {
              LOBYTE(v10) = 1;
              goto LABEL_17;
            }
          }

          v10 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:
    }

    v14 = [(CSLPRFApp *)self applicationRecord];
    v15 = [v14 supportsLiveActivities];

    v7 = v10 | v15;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v7 & 1;
}

void __31__CSLPRFApp_supportsSmartStack__block_invoke()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = @"physical-therapy";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = supportsSmartStack___sessionCapableBackgroundModes;
  supportsSmartStack___sessionCapableBackgroundModes = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (NSMutableArray)unionedBackgroundModes
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(CSLPRFApp *)self applicationRecord];
  v5 = [v4 UIBackgroundModes];
  [v3 addObjectsFromArray:v5];

  v6 = NSSelectorFromString(&cfstr_Uibackgroundmo.isa);
  v7 = [(ACXRemoteApplication *)self->_remoteApplicationRecord backgroundModes];
  [v3 addObjectsFromArray:v7];

  v8 = [(CSLPRFApp *)self remoteApplicationRecord];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    [v3 addObjectsFromArray:{-[ACXRemoteApplication performSelector:](self->_remoteApplicationRecord, "performSelector:", v6)}];
  }

  return v3;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(CSLPRFApp *)self localizedName];
  v6 = [v4 localizedName];
  v7 = [v5 compare:v6 options:1];

  if (!v7)
  {
    v8 = [(CSLPRFApp *)self bundleIdentifier];
    v9 = [v4 bundleIdentifier];
    v7 = [v8 compare:v9 options:1];
  }

  return v7;
}

- (CSLPRFApp)initWithBundleIdentifier:(id)a3 localizedName:(id)a4 sdkVersion:(id)a5 supportsAlwaysOnDisplay:(BOOL)a6 defaultsToPrivateAlwaysOnDisplayTreatment:(BOOL)a7 applicationRecord:(id)a8 remoteApplicationRecord:(id)a9 bbSectionInfo:(id)a10
{
  v55 = *MEMORY[0x277D85DE8];
  v48 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a8;
  v19 = a9;
  v20 = a10;
  v50.receiver = self;
  v50.super_class = CSLPRFApp;
  v21 = [(CSLPRFApp *)&v50 init];
  v22 = v21;
  if (!v21)
  {
    goto LABEL_14;
  }

  v21->_lock._os_unfair_lock_opaque = 0;
  v23 = [v48 copy];
  bundleIdentifier = v22->_bundleIdentifier;
  v22->_bundleIdentifier = v23;

  v25 = [v16 copy];
  localizedName = v22->_localizedName;
  v22->_localizedName = v25;

  v27 = [v17 copy];
  SDKVersion = v22->_SDKVersion;
  v22->_SDKVersion = v27;

  v22->_supportsAlwaysOnDisplay = a6;
  v22->_defaultsToPrivateAlwaysOnDisplayTreatment = a7;
  if (v18)
  {
    v22->_local = 1;
    objc_storeWeak(&v22->_lock_applicationRecord, v18);
    v29 = [v18 URL];
    URL = v22->_URL;
    v22->_URL = v29;

    v31 = [v18 counterpartIdentifiers];
    v32 = [v31 copy];
    counterpartIdentifiers = v22->_counterpartIdentifiers;
    v22->_counterpartIdentifiers = v32;

    v34 = [v18 applicationState];
    if ([v34 isInstalled])
    {
      v22->_isRemovedSystemApp = 0;
    }

    else
    {
      v35 = [v18 applicationState];
      v22->_isRemovedSystemApp = [v35 isPlaceholder] ^ 1;
    }
  }

  objc_storeStrong(&v22->_remoteApplicationRecord, a9);
  v36 = [(CSLPRFApp *)v22 applicationRecord];
  if (!v36)
  {
    if (v22->_remoteApplicationRecord)
    {
      goto LABEL_10;
    }

    v39 = [MEMORY[0x277D2BCF8] sharedInstance];
    v36 = [v39 getActivePairedDevice];

    v40 = [MEMORY[0x277CEAF80] sharedDeviceConnection];
    v41 = v22->_bundleIdentifier;
    v49 = 0;
    v42 = [v40 applicationOnPairedDevice:v36 withBundleID:v41 error:&v49];
    v43 = v49;
    remoteApplicationRecord = v22->_remoteApplicationRecord;
    v22->_remoteApplicationRecord = v42;
    v45 = v43;

    if (v45)
    {
      v46 = cslprf_settings_log();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v47 = v22->_bundleIdentifier;
        *buf = 138412546;
        v52 = v47;
        v53 = 2112;
        v54 = v45;
        _os_log_error_impl(&dword_22CE92000, v46, OS_LOG_TYPE_ERROR, "error retrieving remote application record with bundleID:%@ error:%@", buf, 0x16u);
      }
    }
  }

LABEL_10:
  v22->_isBBSourcedApplication = v20 != 0;
  objc_storeStrong(&v22->_bbSectionInfo, a10);
  if (!v19 && !v22->_local && !v22->_isBBSourcedApplication)
  {
    v22->_local = 1;
  }

LABEL_14:

  v37 = *MEMORY[0x277D85DE8];
  return v22;
}

- (LSApplicationRecord)applicationRecord
{
  os_unfair_lock_lock(&self->_lock);
  WeakRetained = objc_loadWeakRetained(&self->_lock_applicationRecord);
  os_unfair_lock_unlock(&self->_lock);
  if (!WeakRetained)
  {
    URL = self->_URL;
    v5 = objc_alloc(MEMORY[0x277CC1E70]);
    if (URL)
    {
      v6 = [v5 initWithURL:self->_URL allowPlaceholder:0 error:0];
    }

    else
    {
      v6 = [v5 initWithBundleIdentifier:self->_bundleIdentifier allowPlaceholder:0 error:0];
    }

    WeakRetained = v6;
    os_unfair_lock_lock(&self->_lock);
    objc_storeWeak(&self->_lock_applicationRecord, WeakRetained);
    os_unfair_lock_unlock(&self->_lock);
  }

  return WeakRetained;
}

+ (id)appWithBBSectionInfo:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 sectionID];
  v6 = [v4 sectionID];
  v18 = 0;
  v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v18];
  v8 = v18;
  if (v8)
  {
    v9 = cslprf_settings_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v8;
      _os_log_error_impl(&dword_22CE92000, v9, OS_LOG_TYPE_ERROR, "error retrieving application record with bundleID:%@ error:%@", buf, 0x16u);
    }
  }

  v10 = [v4 displayName];

  if (v10)
  {
    v11 = [v4 displayName];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_10;
    }

    v11 = [v7 localizedName];
  }

  v12 = v11;

  v5 = v12;
LABEL_10:
  v13 = [a1 alloc];
  v14 = [v7 SDKVersion];
  v15 = [v13 initWithBundleIdentifier:v6 localizedName:v5 sdkVersion:v14 supportsAlwaysOnDisplay:objc_msgSend(v7 defaultsToPrivateAlwaysOnDisplayTreatment:"supportsAlwaysOnDisplay") applicationRecord:objc_msgSend(v7 bbSectionInfo:{"defaultsToPrivateAlwaysOnDisplayTreatment"), v7, v4}];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)appWithApplicationRecord:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 bundleIdentifier];
  v7 = [v4 localizedName];
  v8 = [v4 SDKVersion];
  v9 = [v5 initWithBundleIdentifier:v6 localizedName:v7 sdkVersion:v8 supportsAlwaysOnDisplay:objc_msgSend(v4 defaultsToPrivateAlwaysOnDisplayTreatment:"supportsAlwaysOnDisplay") applicationRecord:objc_msgSend(v4 bbSectionInfo:{"defaultsToPrivateAlwaysOnDisplayTreatment"), v4, 0}];

  return v9;
}

+ (id)appWithACXRemoteApplication:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 bundleIdentifier];
  v7 = [v4 cslprf_displayName];
  v8 = [v4 sdkVersion];
  v9 = [v5 initWithBundleIdentifier:v6 localizedName:v7 sdkVersion:v8 supportsAlwaysOnDisplay:objc_msgSend(v4 defaultsToPrivateAlwaysOnDisplayTreatment:"supportsAlwaysOnDisplay") applicationRecord:objc_msgSend(v4 remoteApplicationRecord:"defaultsToPrivateAlwaysOnDisplayTreatment") bbSectionInfo:{0, v4, 0}];

  return v9;
}

@end
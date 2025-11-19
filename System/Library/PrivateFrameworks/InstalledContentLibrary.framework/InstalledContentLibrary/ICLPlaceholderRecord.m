@interface ICLPlaceholderRecord
- (BOOL)isEqual:(id)a3;
- (ICLPlaceholderRecord)initWithCoder:(id)a3;
- (ICLPlaceholderRecord)initWithLegacyRecordDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)legacyRecordDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICLPlaceholderRecord

- (ICLPlaceholderRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ICLPlaceholderRecord;
  v5 = [(ICLBundleRecord *)&v31 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleContainerURL"];
    bundleContainerURL = v5->_bundleContainerURL;
    v5->_bundleContainerURL = v6;

    v5->_isOnDemandInstallCapable = [v4 decodeBoolForKey:@"isOnDemandInstallCapable"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"parentIdentifiers"];
    parentIdentifiers = v5->_parentIdentifiers;
    v5->_parentIdentifiers = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appManagementDomain"];
    appManagementDomain = v5->_appManagementDomain;
    v5->_appManagementDomain = v13;

    v5->_isSwiftPlaygroundsApp = [v4 decodeBoolForKey:@"isSwiftPlaygroundsApp"];
    v5->_isDeletable = [v4 decodeBoolForKey:@"isDeletable"];
    v5->_isBeta = [v4 decodeBoolForKey:@"isBeta"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"placeholderFailureReason"];
    v5->_placeholderFailureReason = [v15 unsignedIntegerValue];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alternateIconName"];
    alternateIconName = v5->_alternateIconName;
    v5->_alternateIconName = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installDate"];
    installDate = v5->_installDate;
    v5->_installDate = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lsInstallType"];
    lsInstallType = v5->_lsInstallType;
    v5->_lsInstallType = v20;

    v5->_isWebNotificationBundle = [v4 decodeBoolForKey:@"isWebNotificationBundle"];
    v5->_isEligibleForWatchAppInstall = [v4 decodeBoolForKey:@"isEligibleForWatchAppInstall"];
    v5->_isMarketplace = [v4 decodeBoolForKey:@"isMarketplace"];
    v5->_supportsAppMigration = [v4 decodeBoolForKey:@"supportsAppMigration"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sinfInfo"];
    sinfInfo = v5->_sinfInfo;
    v5->_sinfInfo = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueInstallID"];
    uniqueInstallID = v5->_uniqueInstallID;
    v5->_uniqueInstallID = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installSessionID"];
    installSessionID = v5->_installSessionID;
    v5->_installSessionID = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkedParentBundleID"];
    linkedParentBundleID = v5->_linkedParentBundleID;
    v5->_linkedParentBundleID = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v16.receiver = self;
  v16.super_class = ICLPlaceholderRecord;
  v4 = a3;
  [(ICLBundleRecord *)&v16 encodeWithCoder:v4];
  v5 = [(ICLPlaceholderRecord *)self bundleContainerURL:v16.receiver];
  [v4 encodeObject:v5 forKey:@"bundleContainerURL"];

  [v4 encodeBool:-[ICLPlaceholderRecord isOnDemandInstallCapable](self forKey:{"isOnDemandInstallCapable"), @"isOnDemandInstallCapable"}];
  v6 = [(ICLPlaceholderRecord *)self parentIdentifiers];
  [v4 encodeObject:v6 forKey:@"parentIdentifiers"];

  v7 = [(ICLPlaceholderRecord *)self appManagementDomain];
  [v4 encodeObject:v7 forKey:@"appManagementDomain"];

  [v4 encodeBool:-[ICLPlaceholderRecord isSwiftPlaygroundsApp](self forKey:{"isSwiftPlaygroundsApp"), @"isSwiftPlaygroundsApp"}];
  [v4 encodeBool:-[ICLPlaceholderRecord isDeletable](self forKey:{"isDeletable"), @"isDeletable"}];
  [v4 encodeBool:-[ICLPlaceholderRecord isBeta](self forKey:{"isBeta"), @"isBeta"}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICLPlaceholderRecord placeholderFailureReason](self, "placeholderFailureReason")}];
  [v4 encodeObject:v8 forKey:@"placeholderFailureReason"];

  v9 = [(ICLPlaceholderRecord *)self alternateIconName];
  [v4 encodeObject:v9 forKey:@"alternateIconName"];

  v10 = [(ICLPlaceholderRecord *)self installDate];
  [v4 encodeObject:v10 forKey:@"installDate"];

  v11 = [(ICLPlaceholderRecord *)self lsInstallType];
  [v4 encodeObject:v11 forKey:@"lsInstallType"];

  [v4 encodeBool:-[ICLPlaceholderRecord isWebNotificationBundle](self forKey:{"isWebNotificationBundle"), @"isWebNotificationBundle"}];
  [v4 encodeBool:-[ICLPlaceholderRecord isEligibleForWatchAppInstall](self forKey:{"isEligibleForWatchAppInstall"), @"isEligibleForWatchAppInstall"}];
  [v4 encodeBool:-[ICLPlaceholderRecord isMarketplace](self forKey:{"isMarketplace"), @"isMarketplace"}];
  [v4 encodeBool:-[ICLPlaceholderRecord supportsAppMigration](self forKey:{"supportsAppMigration"), @"supportsAppMigration"}];
  v12 = [(ICLPlaceholderRecord *)self sinfInfo];
  [v4 encodeObject:v12 forKey:@"sinfInfo"];

  v13 = [(ICLPlaceholderRecord *)self uniqueInstallID];
  [v4 encodeObject:v13 forKey:@"uniqueInstallID"];

  v14 = [(ICLPlaceholderRecord *)self installSessionID];
  [v4 encodeObject:v14 forKey:@"installSessionID"];

  v15 = [(ICLPlaceholderRecord *)self linkedParentBundleID];
  [v4 encodeObject:v15 forKey:@"linkedParentBundleID"];
}

- (ICLPlaceholderRecord)initWithLegacyRecordDictionary:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = ICLPlaceholderRecord;
  v5 = [(ICLBundleRecord *)&v46 initWithLegacyRecordDictionary:v4];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"BundleContainer"];
    objc_opt_class();
    v7 = v6;
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:1];
      [(ICLPlaceholderRecord *)v5 setBundleContainerURL:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"IsOnDemandInstallCapable"];
    [(ICLPlaceholderRecord *)v5 setIsOnDemandInstallCapable:MIBooleanValue(v10, 0)];

    v11 = [v4 objectForKeyedSubscript:@"ParentIdentifiers"];
    objc_opt_class();
    v12 = v11;
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      objc_opt_class();
      if (MIArrayContainsOnlyClass(v13))
      {
        [(ICLPlaceholderRecord *)v5 setParentIdentifiers:v13];
      }
    }

    v14 = [v4 objectForKeyedSubscript:@"AppManagementDomain"];
    objc_opt_class();
    v15 = v14;
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    [(ICLPlaceholderRecord *)v5 setAppManagementDomain:v16];
    v17 = [v4 objectForKeyedSubscript:@"IsSwiftPlaygroundsApp"];
    [(ICLPlaceholderRecord *)v5 setIsSwiftPlaygroundsApp:MIBooleanValue(v17, 0)];

    v18 = [v4 objectForKeyedSubscript:@"IsDeletable"];
    [(ICLPlaceholderRecord *)v5 setIsDeletable:MIBooleanValue(v18, 0)];

    v19 = [v4 objectForKeyedSubscript:@"PlaceholderFailureReason"];
    objc_opt_class();
    v20 = v19;
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    -[ICLPlaceholderRecord setPlaceholderFailureReason:](v5, "setPlaceholderFailureReason:", [v21 unsignedIntegerValue]);
    v22 = [v4 objectForKeyedSubscript:@"AlternateIconName"];
    objc_opt_class();
    v23 = v22;
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    [(ICLPlaceholderRecord *)v5 setAlternateIconName:v24];
    v25 = [v4 objectForKeyedSubscript:@"AppInstallDate"];
    objc_opt_class();
    v26 = v25;
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    [(ICLPlaceholderRecord *)v5 setInstallDate:v27];
    v28 = [v4 objectForKeyedSubscript:@"LSInstallType"];
    objc_opt_class();
    v29 = v28;
    if (objc_opt_isKindOfClass())
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    [(ICLPlaceholderRecord *)v5 setLsInstallType:v30];
    v31 = [v4 objectForKeyedSubscript:@"IsWebNotificationBundle"];
    [(ICLPlaceholderRecord *)v5 setIsWebNotificationBundle:MIBooleanValue(v31, 0)];

    v32 = [v4 objectForKeyedSubscript:@"IsEligibleForWatchAppInstall"];
    [(ICLPlaceholderRecord *)v5 setIsEligibleForWatchAppInstall:MIBooleanValue(v32, 0)];

    v33 = [v4 objectForKeyedSubscript:@"IsMarketplace"];
    [(ICLPlaceholderRecord *)v5 setIsMarketplace:MIBooleanValue(v33, 0)];

    v34 = [v4 objectForKeyedSubscript:@"SupportsAppMigration"];
    [(ICLPlaceholderRecord *)v5 setSupportsAppMigration:MIBooleanValue(v34, 0)];

    v35 = [[ICLSinfInfo alloc] initWithLegacySinfInfoDictionary:v4];
    [(ICLPlaceholderRecord *)v5 setSinfInfo:v35];

    v36 = [v4 objectForKeyedSubscript:@"UniqueInstallID"];
    objc_opt_class();
    v37 = v36;
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    [(ICLPlaceholderRecord *)v5 setUniqueInstallID:v38];
    v39 = [v4 objectForKeyedSubscript:@"InstallSessionID"];
    objc_opt_class();
    v40 = v39;
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    [(ICLPlaceholderRecord *)v5 setInstallSessionID:v41];
    v42 = [v4 objectForKeyedSubscript:@"LinkedParentBundleID"];
    objc_opt_class();
    v43 = v42;
    if (objc_opt_isKindOfClass())
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    [(ICLPlaceholderRecord *)v5 setLinkedParentBundleID:v44];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27.receiver = self;
  v27.super_class = ICLPlaceholderRecord;
  v5 = [(ICLBundleRecord *)&v27 copyWithZone:?];
  v6 = [(ICLPlaceholderRecord *)self bundleContainerURL];
  v7 = [v6 copyWithZone:a3];
  [v5 setBundleContainerURL:v7];

  [v5 setIsOnDemandInstallCapable:{-[ICLPlaceholderRecord isOnDemandInstallCapable](self, "isOnDemandInstallCapable")}];
  v8 = [(ICLPlaceholderRecord *)self parentIdentifiers];
  v9 = [v8 copyWithZone:a3];
  [v5 setParentIdentifiers:v9];

  v10 = [(ICLPlaceholderRecord *)self appManagementDomain];
  v11 = [v10 copyWithZone:a3];
  [v5 setAppManagementDomain:v11];

  [v5 setIsSwiftPlaygroundsApp:{-[ICLPlaceholderRecord isSwiftPlaygroundsApp](self, "isSwiftPlaygroundsApp")}];
  [v5 setIsDeletable:{-[ICLPlaceholderRecord isDeletable](self, "isDeletable")}];
  [v5 setIsBeta:{-[ICLPlaceholderRecord isBeta](self, "isBeta")}];
  [v5 setPlaceholderFailureReason:{-[ICLPlaceholderRecord placeholderFailureReason](self, "placeholderFailureReason")}];
  v12 = [(ICLPlaceholderRecord *)self alternateIconName];
  v13 = [v12 copyWithZone:a3];
  [v5 setAlternateIconName:v13];

  v14 = [(ICLPlaceholderRecord *)self installDate];
  v15 = [v14 copyWithZone:a3];
  [v5 setInstallDate:v15];

  v16 = [(ICLPlaceholderRecord *)self lsInstallType];
  v17 = [v16 copyWithZone:a3];
  [v5 setLsInstallType:v17];

  [v5 setIsWebNotificationBundle:{-[ICLPlaceholderRecord isWebNotificationBundle](self, "isWebNotificationBundle")}];
  [v5 setIsEligibleForWatchAppInstall:{-[ICLPlaceholderRecord isEligibleForWatchAppInstall](self, "isEligibleForWatchAppInstall")}];
  [v5 setIsMarketplace:{-[ICLPlaceholderRecord isMarketplace](self, "isMarketplace")}];
  [v5 setSupportsAppMigration:{-[ICLPlaceholderRecord supportsAppMigration](self, "supportsAppMigration")}];
  v18 = [(ICLPlaceholderRecord *)self sinfInfo];
  v19 = [v18 copyWithZone:a3];
  [v5 setSinfInfo:v19];

  v20 = [(ICLPlaceholderRecord *)self uniqueInstallID];
  v21 = [v20 copyWithZone:a3];
  [v5 setUniqueInstallID:v21];

  v22 = [(ICLPlaceholderRecord *)self installSessionID];
  v23 = [v22 copyWithZone:a3];
  [v5 setInstallSessionID:v23];

  v24 = [(ICLPlaceholderRecord *)self linkedParentBundleID];
  v25 = [v24 copyWithZone:a3];
  [v5 setLinkedParentBundleID:v25];

  return v5;
}

- (id)legacyRecordDictionary
{
  v3 = objc_opt_new();
  v30.receiver = self;
  v30.super_class = ICLPlaceholderRecord;
  v4 = [(ICLBundleRecord *)&v30 legacyRecordDictionary];
  [v3 addEntriesFromDictionary:v4];

  v5 = [(ICLPlaceholderRecord *)self bundleContainerURL];
  v6 = [v5 path];

  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"BundleContainer"];
  }

  v7 = [(ICLPlaceholderRecord *)self isOnDemandInstallCapable];
  v8 = MEMORY[0x1E695E110];
  v9 = MEMORY[0x1E695E118];
  if (v7)
  {
    v10 = MEMORY[0x1E695E118];
  }

  else
  {
    v10 = MEMORY[0x1E695E110];
  }

  [v3 setObject:v10 forKeyedSubscript:@"IsOnDemandInstallCapable"];
  v11 = [(ICLPlaceholderRecord *)self parentIdentifiers];
  if (v11)
  {
    [v3 setObject:v11 forKeyedSubscript:@"ParentIdentifiers"];
  }

  v12 = [(ICLPlaceholderRecord *)self appManagementDomain];
  if (v12)
  {
    [v3 setObject:v12 forKeyedSubscript:@"AppManagementDomain"];
  }

  if ([(ICLPlaceholderRecord *)self isSwiftPlaygroundsApp])
  {
    v13 = v9;
  }

  else
  {
    v13 = v8;
  }

  [v3 setObject:v13 forKeyedSubscript:@"IsSwiftPlaygroundsApp"];
  if ([(ICLPlaceholderRecord *)self isDeletable])
  {
    v14 = v9;
  }

  else
  {
    v14 = v8;
  }

  [v3 setObject:v14 forKeyedSubscript:@"IsDeletable"];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICLPlaceholderRecord placeholderFailureReason](self, "placeholderFailureReason")}];
  if (v15)
  {
    [v3 setObject:v15 forKeyedSubscript:@"PlaceholderFailureReason"];
  }

  v16 = [(ICLPlaceholderRecord *)self alternateIconName];
  if (v16)
  {
    [v3 setObject:v16 forKeyedSubscript:@"AlternateIconName"];
  }

  v17 = [(ICLPlaceholderRecord *)self installDate];
  if (v17)
  {
    [v3 setObject:v17 forKeyedSubscript:@"AppInstallDate"];
  }

  v18 = [(ICLPlaceholderRecord *)self lsInstallType];
  if (v18)
  {
    [v3 setObject:v18 forKeyedSubscript:@"LSInstallType"];
  }

  if ([(ICLPlaceholderRecord *)self isWebNotificationBundle])
  {
    v19 = v9;
  }

  else
  {
    v19 = v8;
  }

  [v3 setObject:v19 forKeyedSubscript:@"IsWebNotificationBundle"];
  if ([(ICLPlaceholderRecord *)self isEligibleForWatchAppInstall])
  {
    v20 = v9;
  }

  else
  {
    v20 = v8;
  }

  [v3 setObject:v20 forKeyedSubscript:@"IsEligibleForWatchAppInstall"];
  if ([(ICLPlaceholderRecord *)self isMarketplace])
  {
    v21 = v9;
  }

  else
  {
    v21 = v8;
  }

  [v3 setObject:v21 forKeyedSubscript:@"IsMarketplace"];
  if ([(ICLPlaceholderRecord *)self supportsAppMigration])
  {
    v22 = v9;
  }

  else
  {
    v22 = v8;
  }

  [v3 setObject:v22 forKeyedSubscript:@"SupportsAppMigration"];
  v23 = [(ICLPlaceholderRecord *)self sinfInfo];
  v24 = [v23 legacySinfInfoDictionary];
  [v3 addEntriesFromDictionary:v24];

  v25 = [(ICLPlaceholderRecord *)self uniqueInstallID];
  if (v25)
  {
    [v3 setObject:v25 forKeyedSubscript:@"UniqueInstallID"];
  }

  v26 = [(ICLPlaceholderRecord *)self installSessionID];
  if (v26)
  {
    [v3 setObject:v26 forKeyedSubscript:@"InstallSessionID"];
  }

  v27 = [(ICLPlaceholderRecord *)self linkedParentBundleID];
  if (v27)
  {
    [v3 setObject:v27 forKeyedSubscript:@"LinkedParentBundleID"];
  }

  v28 = [v3 copy];

  return v28;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v47.receiver = self;
      v47.super_class = ICLPlaceholderRecord;
      if ([(ICLBundleRecord *)&v47 isEqual:v4])
      {
        v5 = v4;
        v6 = [(ICLPlaceholderRecord *)self bundleContainerURL];
        v7 = [(ICLPlaceholderRecord *)v5 bundleContainerURL];
        v8 = MICompareObjects(v6, v7);

        if (v8)
        {
          v9 = [(ICLPlaceholderRecord *)self isOnDemandInstallCapable];
          if (v9 == [(ICLPlaceholderRecord *)v5 isOnDemandInstallCapable])
          {
            v12 = [(ICLPlaceholderRecord *)self parentIdentifiers];
            v13 = [(ICLPlaceholderRecord *)v5 parentIdentifiers];
            v14 = MICompareObjects(v12, v13);

            if (v14)
            {
              v15 = [(ICLPlaceholderRecord *)self appManagementDomain];
              v16 = [(ICLPlaceholderRecord *)v5 appManagementDomain];
              v17 = MICompareObjects(v15, v16);

              if (v17)
              {
                v18 = [(ICLPlaceholderRecord *)self isSwiftPlaygroundsApp];
                if (v18 == [(ICLPlaceholderRecord *)v5 isSwiftPlaygroundsApp])
                {
                  v19 = [(ICLPlaceholderRecord *)self isDeletable];
                  if (v19 == [(ICLPlaceholderRecord *)v5 isDeletable])
                  {
                    v20 = [(ICLPlaceholderRecord *)self isBeta];
                    if (v20 == [(ICLPlaceholderRecord *)v5 isBeta])
                    {
                      v21 = [(ICLPlaceholderRecord *)self placeholderFailureReason];
                      if (v21 == [(ICLPlaceholderRecord *)v5 placeholderFailureReason])
                      {
                        v22 = [(ICLPlaceholderRecord *)self alternateIconName];
                        v23 = [(ICLPlaceholderRecord *)v5 alternateIconName];
                        v24 = MICompareObjects(v22, v23);

                        if (v24)
                        {
                          v25 = [(ICLPlaceholderRecord *)self installDate];
                          v26 = [(ICLPlaceholderRecord *)v5 installDate];
                          v27 = MICompareObjects(v25, v26);

                          if (v27)
                          {
                            v28 = [(ICLPlaceholderRecord *)self lsInstallType];
                            v29 = [(ICLPlaceholderRecord *)v5 lsInstallType];
                            v30 = MICompareObjects(v28, v29);

                            if (v30)
                            {
                              v31 = [(ICLPlaceholderRecord *)self sinfInfo];
                              v32 = [(ICLPlaceholderRecord *)v5 sinfInfo];
                              v33 = MICompareObjects(v31, v32);

                              if (v33)
                              {
                                v34 = [(ICLPlaceholderRecord *)self isWebNotificationBundle];
                                if (v34 == [(ICLPlaceholderRecord *)v5 isWebNotificationBundle])
                                {
                                  v35 = [(ICLPlaceholderRecord *)self isEligibleForWatchAppInstall];
                                  if (v35 == [(ICLPlaceholderRecord *)v5 isEligibleForWatchAppInstall])
                                  {
                                    v36 = [(ICLPlaceholderRecord *)self isMarketplace];
                                    if (v36 == [(ICLPlaceholderRecord *)v5 isMarketplace])
                                    {
                                      v37 = [(ICLPlaceholderRecord *)self supportsAppMigration];
                                      if (v37 == [(ICLPlaceholderRecord *)v5 supportsAppMigration])
                                      {
                                        v38 = [(ICLPlaceholderRecord *)self uniqueInstallID];
                                        v39 = [(ICLPlaceholderRecord *)v5 uniqueInstallID];
                                        v40 = MICompareObjects(v38, v39);

                                        if (v40)
                                        {
                                          v41 = [(ICLPlaceholderRecord *)self installSessionID];
                                          v42 = [(ICLPlaceholderRecord *)v5 installSessionID];
                                          v43 = MICompareObjects(v41, v42);

                                          if (v43)
                                          {
                                            v44 = [(ICLPlaceholderRecord *)self linkedParentBundleID];
                                            v45 = [(ICLPlaceholderRecord *)v5 linkedParentBundleID];
                                            v46 = MICompareObjects(v44, v45);

                                            if (v46)
                                            {
                                              v10 = 1;
                                              goto LABEL_15;
                                            }

                                            if (gLogHandle && *(gLogHandle + 44) < 3)
                                            {
LABEL_14:
                                              v10 = 0;
LABEL_15:

                                              goto LABEL_16;
                                            }
                                          }

                                          else if (gLogHandle && *(gLogHandle + 44) < 3)
                                          {
                                            goto LABEL_14;
                                          }
                                        }

                                        else if (gLogHandle && *(gLogHandle + 44) < 3)
                                        {
                                          goto LABEL_14;
                                        }
                                      }

                                      else if (gLogHandle && *(gLogHandle + 44) < 3)
                                      {
                                        goto LABEL_14;
                                      }
                                    }

                                    else if (gLogHandle && *(gLogHandle + 44) < 3)
                                    {
                                      goto LABEL_14;
                                    }
                                  }

                                  else if (gLogHandle && *(gLogHandle + 44) < 3)
                                  {
                                    goto LABEL_14;
                                  }
                                }

                                else if (gLogHandle && *(gLogHandle + 44) < 3)
                                {
                                  goto LABEL_14;
                                }
                              }

                              else if (gLogHandle && *(gLogHandle + 44) < 3)
                              {
                                goto LABEL_14;
                              }
                            }

                            else if (gLogHandle && *(gLogHandle + 44) < 3)
                            {
                              goto LABEL_14;
                            }
                          }

                          else if (gLogHandle && *(gLogHandle + 44) < 3)
                          {
                            goto LABEL_14;
                          }
                        }

                        else if (gLogHandle && *(gLogHandle + 44) < 3)
                        {
                          goto LABEL_14;
                        }
                      }

                      else if (gLogHandle && *(gLogHandle + 44) < 3)
                      {
                        goto LABEL_14;
                      }
                    }

                    else if (gLogHandle && *(gLogHandle + 44) < 3)
                    {
                      goto LABEL_14;
                    }
                  }

                  else if (gLogHandle && *(gLogHandle + 44) < 3)
                  {
                    goto LABEL_14;
                  }
                }

                else if (gLogHandle && *(gLogHandle + 44) < 3)
                {
                  goto LABEL_14;
                }
              }

              else if (gLogHandle && *(gLogHandle + 44) < 3)
              {
                goto LABEL_14;
              }
            }

            else if (gLogHandle && *(gLogHandle + 44) < 3)
            {
              goto LABEL_14;
            }
          }

          else if (gLogHandle && *(gLogHandle + 44) < 3)
          {
            goto LABEL_14;
          }
        }

        else if (gLogHandle && *(gLogHandle + 44) < 3)
        {
          goto LABEL_14;
        }

        MOLogWrite();
        goto LABEL_14;
      }
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(ICLPlaceholderRecord *)self isOnDemandInstallCapable];
  v4 = [(ICLPlaceholderRecord *)self isSwiftPlaygroundsApp];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  if ([(ICLPlaceholderRecord *)self isDeletable])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(ICLPlaceholderRecord *)self isBeta];
  v9 = 8;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v6 | v7 | v9 | (16 * ([(ICLPlaceholderRecord *)self placeholderFailureReason]!= 0));
  if ([(ICLPlaceholderRecord *)self isWebNotificationBundle])
  {
    v11 = 32;
  }

  else
  {
    v11 = 0;
  }

  v12 = [(ICLPlaceholderRecord *)self isEligibleForWatchAppInstall];
  v13 = 64;
  if (!v12)
  {
    v13 = 0;
  }

  v14 = v10 | v11 | v13;
  if ([(ICLPlaceholderRecord *)self isMarketplace])
  {
    v15 = 128;
  }

  else
  {
    v15 = 0;
  }

  v16 = [(ICLPlaceholderRecord *)self supportsAppMigration];
  v17 = 256;
  if (!v16)
  {
    v17 = 0;
  }

  v18 = v15 ^ v17;
  v19 = [(ICLPlaceholderRecord *)self bundleContainerURL];
  v20 = v18 ^ [v19 hash];

  v21 = [(ICLPlaceholderRecord *)self parentIdentifiers];
  v22 = v20 ^ [v21 hash];

  v23 = [(ICLPlaceholderRecord *)self appManagementDomain];
  v24 = v22 ^ [v23 hash];

  v25 = [(ICLPlaceholderRecord *)self alternateIconName];
  v26 = v14 ^ v24 ^ [v25 hash];

  v27 = [(ICLPlaceholderRecord *)self installDate];
  v28 = [v27 hash];

  v29 = [(ICLPlaceholderRecord *)self lsInstallType];
  v30 = v28 ^ [v29 hash];

  v31 = [(ICLPlaceholderRecord *)self sinfInfo];
  v32 = v30 ^ [v31 hash];

  v33 = [(ICLPlaceholderRecord *)self uniqueInstallID];
  v34 = v32 ^ [v33 hash];

  v35 = [(ICLPlaceholderRecord *)self installSessionID];
  v36 = v34 ^ [v35 hash];

  v37 = [(ICLPlaceholderRecord *)self linkedParentBundleID];
  v38 = v36 ^ [v37 hash];

  v40.receiver = self;
  v40.super_class = ICLPlaceholderRecord;
  return v26 ^ v38 ^ [(ICLBundleRecord *)&v40 hash];
}

@end
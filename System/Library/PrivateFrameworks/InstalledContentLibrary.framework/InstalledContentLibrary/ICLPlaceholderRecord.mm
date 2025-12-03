@interface ICLPlaceholderRecord
- (BOOL)isEqual:(id)equal;
- (ICLPlaceholderRecord)initWithCoder:(id)coder;
- (ICLPlaceholderRecord)initWithLegacyRecordDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)legacyRecordDictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICLPlaceholderRecord

- (ICLPlaceholderRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = ICLPlaceholderRecord;
  v5 = [(ICLBundleRecord *)&v31 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleContainerURL"];
    bundleContainerURL = v5->_bundleContainerURL;
    v5->_bundleContainerURL = v6;

    v5->_isOnDemandInstallCapable = [coderCopy decodeBoolForKey:@"isOnDemandInstallCapable"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"parentIdentifiers"];
    parentIdentifiers = v5->_parentIdentifiers;
    v5->_parentIdentifiers = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appManagementDomain"];
    appManagementDomain = v5->_appManagementDomain;
    v5->_appManagementDomain = v13;

    v5->_isSwiftPlaygroundsApp = [coderCopy decodeBoolForKey:@"isSwiftPlaygroundsApp"];
    v5->_isDeletable = [coderCopy decodeBoolForKey:@"isDeletable"];
    v5->_isBeta = [coderCopy decodeBoolForKey:@"isBeta"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"placeholderFailureReason"];
    v5->_placeholderFailureReason = [v15 unsignedIntegerValue];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alternateIconName"];
    alternateIconName = v5->_alternateIconName;
    v5->_alternateIconName = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installDate"];
    installDate = v5->_installDate;
    v5->_installDate = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lsInstallType"];
    lsInstallType = v5->_lsInstallType;
    v5->_lsInstallType = v20;

    v5->_isWebNotificationBundle = [coderCopy decodeBoolForKey:@"isWebNotificationBundle"];
    v5->_isEligibleForWatchAppInstall = [coderCopy decodeBoolForKey:@"isEligibleForWatchAppInstall"];
    v5->_isMarketplace = [coderCopy decodeBoolForKey:@"isMarketplace"];
    v5->_supportsAppMigration = [coderCopy decodeBoolForKey:@"supportsAppMigration"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sinfInfo"];
    sinfInfo = v5->_sinfInfo;
    v5->_sinfInfo = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueInstallID"];
    uniqueInstallID = v5->_uniqueInstallID;
    v5->_uniqueInstallID = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installSessionID"];
    installSessionID = v5->_installSessionID;
    v5->_installSessionID = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkedParentBundleID"];
    linkedParentBundleID = v5->_linkedParentBundleID;
    v5->_linkedParentBundleID = v28;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v16.receiver = self;
  v16.super_class = ICLPlaceholderRecord;
  coderCopy = coder;
  [(ICLBundleRecord *)&v16 encodeWithCoder:coderCopy];
  v5 = [(ICLPlaceholderRecord *)self bundleContainerURL:v16.receiver];
  [coderCopy encodeObject:v5 forKey:@"bundleContainerURL"];

  [coderCopy encodeBool:-[ICLPlaceholderRecord isOnDemandInstallCapable](self forKey:{"isOnDemandInstallCapable"), @"isOnDemandInstallCapable"}];
  parentIdentifiers = [(ICLPlaceholderRecord *)self parentIdentifiers];
  [coderCopy encodeObject:parentIdentifiers forKey:@"parentIdentifiers"];

  appManagementDomain = [(ICLPlaceholderRecord *)self appManagementDomain];
  [coderCopy encodeObject:appManagementDomain forKey:@"appManagementDomain"];

  [coderCopy encodeBool:-[ICLPlaceholderRecord isSwiftPlaygroundsApp](self forKey:{"isSwiftPlaygroundsApp"), @"isSwiftPlaygroundsApp"}];
  [coderCopy encodeBool:-[ICLPlaceholderRecord isDeletable](self forKey:{"isDeletable"), @"isDeletable"}];
  [coderCopy encodeBool:-[ICLPlaceholderRecord isBeta](self forKey:{"isBeta"), @"isBeta"}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[ICLPlaceholderRecord placeholderFailureReason](self, "placeholderFailureReason")}];
  [coderCopy encodeObject:v8 forKey:@"placeholderFailureReason"];

  alternateIconName = [(ICLPlaceholderRecord *)self alternateIconName];
  [coderCopy encodeObject:alternateIconName forKey:@"alternateIconName"];

  installDate = [(ICLPlaceholderRecord *)self installDate];
  [coderCopy encodeObject:installDate forKey:@"installDate"];

  lsInstallType = [(ICLPlaceholderRecord *)self lsInstallType];
  [coderCopy encodeObject:lsInstallType forKey:@"lsInstallType"];

  [coderCopy encodeBool:-[ICLPlaceholderRecord isWebNotificationBundle](self forKey:{"isWebNotificationBundle"), @"isWebNotificationBundle"}];
  [coderCopy encodeBool:-[ICLPlaceholderRecord isEligibleForWatchAppInstall](self forKey:{"isEligibleForWatchAppInstall"), @"isEligibleForWatchAppInstall"}];
  [coderCopy encodeBool:-[ICLPlaceholderRecord isMarketplace](self forKey:{"isMarketplace"), @"isMarketplace"}];
  [coderCopy encodeBool:-[ICLPlaceholderRecord supportsAppMigration](self forKey:{"supportsAppMigration"), @"supportsAppMigration"}];
  sinfInfo = [(ICLPlaceholderRecord *)self sinfInfo];
  [coderCopy encodeObject:sinfInfo forKey:@"sinfInfo"];

  uniqueInstallID = [(ICLPlaceholderRecord *)self uniqueInstallID];
  [coderCopy encodeObject:uniqueInstallID forKey:@"uniqueInstallID"];

  installSessionID = [(ICLPlaceholderRecord *)self installSessionID];
  [coderCopy encodeObject:installSessionID forKey:@"installSessionID"];

  linkedParentBundleID = [(ICLPlaceholderRecord *)self linkedParentBundleID];
  [coderCopy encodeObject:linkedParentBundleID forKey:@"linkedParentBundleID"];
}

- (ICLPlaceholderRecord)initWithLegacyRecordDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v46.receiver = self;
  v46.super_class = ICLPlaceholderRecord;
  v5 = [(ICLBundleRecord *)&v46 initWithLegacyRecordDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"BundleContainer"];
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

    v10 = [dictionaryCopy objectForKeyedSubscript:@"IsOnDemandInstallCapable"];
    [(ICLPlaceholderRecord *)v5 setIsOnDemandInstallCapable:MIBooleanValue(v10, 0)];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"ParentIdentifiers"];
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

    v14 = [dictionaryCopy objectForKeyedSubscript:@"AppManagementDomain"];
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
    v17 = [dictionaryCopy objectForKeyedSubscript:@"IsSwiftPlaygroundsApp"];
    [(ICLPlaceholderRecord *)v5 setIsSwiftPlaygroundsApp:MIBooleanValue(v17, 0)];

    v18 = [dictionaryCopy objectForKeyedSubscript:@"IsDeletable"];
    [(ICLPlaceholderRecord *)v5 setIsDeletable:MIBooleanValue(v18, 0)];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"PlaceholderFailureReason"];
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
    v22 = [dictionaryCopy objectForKeyedSubscript:@"AlternateIconName"];
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
    v25 = [dictionaryCopy objectForKeyedSubscript:@"AppInstallDate"];
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
    v28 = [dictionaryCopy objectForKeyedSubscript:@"LSInstallType"];
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
    v31 = [dictionaryCopy objectForKeyedSubscript:@"IsWebNotificationBundle"];
    [(ICLPlaceholderRecord *)v5 setIsWebNotificationBundle:MIBooleanValue(v31, 0)];

    v32 = [dictionaryCopy objectForKeyedSubscript:@"IsEligibleForWatchAppInstall"];
    [(ICLPlaceholderRecord *)v5 setIsEligibleForWatchAppInstall:MIBooleanValue(v32, 0)];

    v33 = [dictionaryCopy objectForKeyedSubscript:@"IsMarketplace"];
    [(ICLPlaceholderRecord *)v5 setIsMarketplace:MIBooleanValue(v33, 0)];

    v34 = [dictionaryCopy objectForKeyedSubscript:@"SupportsAppMigration"];
    [(ICLPlaceholderRecord *)v5 setSupportsAppMigration:MIBooleanValue(v34, 0)];

    v35 = [[ICLSinfInfo alloc] initWithLegacySinfInfoDictionary:dictionaryCopy];
    [(ICLPlaceholderRecord *)v5 setSinfInfo:v35];

    v36 = [dictionaryCopy objectForKeyedSubscript:@"UniqueInstallID"];
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
    v39 = [dictionaryCopy objectForKeyedSubscript:@"InstallSessionID"];
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
    v42 = [dictionaryCopy objectForKeyedSubscript:@"LinkedParentBundleID"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v27.receiver = self;
  v27.super_class = ICLPlaceholderRecord;
  v5 = [(ICLBundleRecord *)&v27 copyWithZone:?];
  bundleContainerURL = [(ICLPlaceholderRecord *)self bundleContainerURL];
  v7 = [bundleContainerURL copyWithZone:zone];
  [v5 setBundleContainerURL:v7];

  [v5 setIsOnDemandInstallCapable:{-[ICLPlaceholderRecord isOnDemandInstallCapable](self, "isOnDemandInstallCapable")}];
  parentIdentifiers = [(ICLPlaceholderRecord *)self parentIdentifiers];
  v9 = [parentIdentifiers copyWithZone:zone];
  [v5 setParentIdentifiers:v9];

  appManagementDomain = [(ICLPlaceholderRecord *)self appManagementDomain];
  v11 = [appManagementDomain copyWithZone:zone];
  [v5 setAppManagementDomain:v11];

  [v5 setIsSwiftPlaygroundsApp:{-[ICLPlaceholderRecord isSwiftPlaygroundsApp](self, "isSwiftPlaygroundsApp")}];
  [v5 setIsDeletable:{-[ICLPlaceholderRecord isDeletable](self, "isDeletable")}];
  [v5 setIsBeta:{-[ICLPlaceholderRecord isBeta](self, "isBeta")}];
  [v5 setPlaceholderFailureReason:{-[ICLPlaceholderRecord placeholderFailureReason](self, "placeholderFailureReason")}];
  alternateIconName = [(ICLPlaceholderRecord *)self alternateIconName];
  v13 = [alternateIconName copyWithZone:zone];
  [v5 setAlternateIconName:v13];

  installDate = [(ICLPlaceholderRecord *)self installDate];
  v15 = [installDate copyWithZone:zone];
  [v5 setInstallDate:v15];

  lsInstallType = [(ICLPlaceholderRecord *)self lsInstallType];
  v17 = [lsInstallType copyWithZone:zone];
  [v5 setLsInstallType:v17];

  [v5 setIsWebNotificationBundle:{-[ICLPlaceholderRecord isWebNotificationBundle](self, "isWebNotificationBundle")}];
  [v5 setIsEligibleForWatchAppInstall:{-[ICLPlaceholderRecord isEligibleForWatchAppInstall](self, "isEligibleForWatchAppInstall")}];
  [v5 setIsMarketplace:{-[ICLPlaceholderRecord isMarketplace](self, "isMarketplace")}];
  [v5 setSupportsAppMigration:{-[ICLPlaceholderRecord supportsAppMigration](self, "supportsAppMigration")}];
  sinfInfo = [(ICLPlaceholderRecord *)self sinfInfo];
  v19 = [sinfInfo copyWithZone:zone];
  [v5 setSinfInfo:v19];

  uniqueInstallID = [(ICLPlaceholderRecord *)self uniqueInstallID];
  v21 = [uniqueInstallID copyWithZone:zone];
  [v5 setUniqueInstallID:v21];

  installSessionID = [(ICLPlaceholderRecord *)self installSessionID];
  v23 = [installSessionID copyWithZone:zone];
  [v5 setInstallSessionID:v23];

  linkedParentBundleID = [(ICLPlaceholderRecord *)self linkedParentBundleID];
  v25 = [linkedParentBundleID copyWithZone:zone];
  [v5 setLinkedParentBundleID:v25];

  return v5;
}

- (id)legacyRecordDictionary
{
  v3 = objc_opt_new();
  v30.receiver = self;
  v30.super_class = ICLPlaceholderRecord;
  legacyRecordDictionary = [(ICLBundleRecord *)&v30 legacyRecordDictionary];
  [v3 addEntriesFromDictionary:legacyRecordDictionary];

  bundleContainerURL = [(ICLPlaceholderRecord *)self bundleContainerURL];
  path = [bundleContainerURL path];

  if (path)
  {
    [v3 setObject:path forKeyedSubscript:@"BundleContainer"];
  }

  isOnDemandInstallCapable = [(ICLPlaceholderRecord *)self isOnDemandInstallCapable];
  v8 = MEMORY[0x1E695E110];
  v9 = MEMORY[0x1E695E118];
  if (isOnDemandInstallCapable)
  {
    v10 = MEMORY[0x1E695E118];
  }

  else
  {
    v10 = MEMORY[0x1E695E110];
  }

  [v3 setObject:v10 forKeyedSubscript:@"IsOnDemandInstallCapable"];
  parentIdentifiers = [(ICLPlaceholderRecord *)self parentIdentifiers];
  if (parentIdentifiers)
  {
    [v3 setObject:parentIdentifiers forKeyedSubscript:@"ParentIdentifiers"];
  }

  appManagementDomain = [(ICLPlaceholderRecord *)self appManagementDomain];
  if (appManagementDomain)
  {
    [v3 setObject:appManagementDomain forKeyedSubscript:@"AppManagementDomain"];
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

  alternateIconName = [(ICLPlaceholderRecord *)self alternateIconName];
  if (alternateIconName)
  {
    [v3 setObject:alternateIconName forKeyedSubscript:@"AlternateIconName"];
  }

  installDate = [(ICLPlaceholderRecord *)self installDate];
  if (installDate)
  {
    [v3 setObject:installDate forKeyedSubscript:@"AppInstallDate"];
  }

  lsInstallType = [(ICLPlaceholderRecord *)self lsInstallType];
  if (lsInstallType)
  {
    [v3 setObject:lsInstallType forKeyedSubscript:@"LSInstallType"];
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
  sinfInfo = [(ICLPlaceholderRecord *)self sinfInfo];
  legacySinfInfoDictionary = [sinfInfo legacySinfInfoDictionary];
  [v3 addEntriesFromDictionary:legacySinfInfoDictionary];

  uniqueInstallID = [(ICLPlaceholderRecord *)self uniqueInstallID];
  if (uniqueInstallID)
  {
    [v3 setObject:uniqueInstallID forKeyedSubscript:@"UniqueInstallID"];
  }

  installSessionID = [(ICLPlaceholderRecord *)self installSessionID];
  if (installSessionID)
  {
    [v3 setObject:installSessionID forKeyedSubscript:@"InstallSessionID"];
  }

  linkedParentBundleID = [(ICLPlaceholderRecord *)self linkedParentBundleID];
  if (linkedParentBundleID)
  {
    [v3 setObject:linkedParentBundleID forKeyedSubscript:@"LinkedParentBundleID"];
  }

  v28 = [v3 copy];

  return v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
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
      if ([(ICLBundleRecord *)&v47 isEqual:equalCopy])
      {
        v5 = equalCopy;
        bundleContainerURL = [(ICLPlaceholderRecord *)self bundleContainerURL];
        bundleContainerURL2 = [(ICLPlaceholderRecord *)v5 bundleContainerURL];
        v8 = MICompareObjects(bundleContainerURL, bundleContainerURL2);

        if (v8)
        {
          isOnDemandInstallCapable = [(ICLPlaceholderRecord *)self isOnDemandInstallCapable];
          if (isOnDemandInstallCapable == [(ICLPlaceholderRecord *)v5 isOnDemandInstallCapable])
          {
            parentIdentifiers = [(ICLPlaceholderRecord *)self parentIdentifiers];
            parentIdentifiers2 = [(ICLPlaceholderRecord *)v5 parentIdentifiers];
            v14 = MICompareObjects(parentIdentifiers, parentIdentifiers2);

            if (v14)
            {
              appManagementDomain = [(ICLPlaceholderRecord *)self appManagementDomain];
              appManagementDomain2 = [(ICLPlaceholderRecord *)v5 appManagementDomain];
              v17 = MICompareObjects(appManagementDomain, appManagementDomain2);

              if (v17)
              {
                isSwiftPlaygroundsApp = [(ICLPlaceholderRecord *)self isSwiftPlaygroundsApp];
                if (isSwiftPlaygroundsApp == [(ICLPlaceholderRecord *)v5 isSwiftPlaygroundsApp])
                {
                  isDeletable = [(ICLPlaceholderRecord *)self isDeletable];
                  if (isDeletable == [(ICLPlaceholderRecord *)v5 isDeletable])
                  {
                    isBeta = [(ICLPlaceholderRecord *)self isBeta];
                    if (isBeta == [(ICLPlaceholderRecord *)v5 isBeta])
                    {
                      placeholderFailureReason = [(ICLPlaceholderRecord *)self placeholderFailureReason];
                      if (placeholderFailureReason == [(ICLPlaceholderRecord *)v5 placeholderFailureReason])
                      {
                        alternateIconName = [(ICLPlaceholderRecord *)self alternateIconName];
                        alternateIconName2 = [(ICLPlaceholderRecord *)v5 alternateIconName];
                        v24 = MICompareObjects(alternateIconName, alternateIconName2);

                        if (v24)
                        {
                          installDate = [(ICLPlaceholderRecord *)self installDate];
                          installDate2 = [(ICLPlaceholderRecord *)v5 installDate];
                          v27 = MICompareObjects(installDate, installDate2);

                          if (v27)
                          {
                            lsInstallType = [(ICLPlaceholderRecord *)self lsInstallType];
                            lsInstallType2 = [(ICLPlaceholderRecord *)v5 lsInstallType];
                            v30 = MICompareObjects(lsInstallType, lsInstallType2);

                            if (v30)
                            {
                              sinfInfo = [(ICLPlaceholderRecord *)self sinfInfo];
                              sinfInfo2 = [(ICLPlaceholderRecord *)v5 sinfInfo];
                              v33 = MICompareObjects(sinfInfo, sinfInfo2);

                              if (v33)
                              {
                                isWebNotificationBundle = [(ICLPlaceholderRecord *)self isWebNotificationBundle];
                                if (isWebNotificationBundle == [(ICLPlaceholderRecord *)v5 isWebNotificationBundle])
                                {
                                  isEligibleForWatchAppInstall = [(ICLPlaceholderRecord *)self isEligibleForWatchAppInstall];
                                  if (isEligibleForWatchAppInstall == [(ICLPlaceholderRecord *)v5 isEligibleForWatchAppInstall])
                                  {
                                    isMarketplace = [(ICLPlaceholderRecord *)self isMarketplace];
                                    if (isMarketplace == [(ICLPlaceholderRecord *)v5 isMarketplace])
                                    {
                                      supportsAppMigration = [(ICLPlaceholderRecord *)self supportsAppMigration];
                                      if (supportsAppMigration == [(ICLPlaceholderRecord *)v5 supportsAppMigration])
                                      {
                                        uniqueInstallID = [(ICLPlaceholderRecord *)self uniqueInstallID];
                                        uniqueInstallID2 = [(ICLPlaceholderRecord *)v5 uniqueInstallID];
                                        v40 = MICompareObjects(uniqueInstallID, uniqueInstallID2);

                                        if (v40)
                                        {
                                          installSessionID = [(ICLPlaceholderRecord *)self installSessionID];
                                          installSessionID2 = [(ICLPlaceholderRecord *)v5 installSessionID];
                                          v43 = MICompareObjects(installSessionID, installSessionID2);

                                          if (v43)
                                          {
                                            linkedParentBundleID = [(ICLPlaceholderRecord *)self linkedParentBundleID];
                                            linkedParentBundleID2 = [(ICLPlaceholderRecord *)v5 linkedParentBundleID];
                                            v46 = MICompareObjects(linkedParentBundleID, linkedParentBundleID2);

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
  isOnDemandInstallCapable = [(ICLPlaceholderRecord *)self isOnDemandInstallCapable];
  isSwiftPlaygroundsApp = [(ICLPlaceholderRecord *)self isSwiftPlaygroundsApp];
  v5 = 2;
  if (!isSwiftPlaygroundsApp)
  {
    v5 = 0;
  }

  v6 = v5 | isOnDemandInstallCapable;
  if ([(ICLPlaceholderRecord *)self isDeletable])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  isBeta = [(ICLPlaceholderRecord *)self isBeta];
  v9 = 8;
  if (!isBeta)
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

  isEligibleForWatchAppInstall = [(ICLPlaceholderRecord *)self isEligibleForWatchAppInstall];
  v13 = 64;
  if (!isEligibleForWatchAppInstall)
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

  supportsAppMigration = [(ICLPlaceholderRecord *)self supportsAppMigration];
  v17 = 256;
  if (!supportsAppMigration)
  {
    v17 = 0;
  }

  v18 = v15 ^ v17;
  bundleContainerURL = [(ICLPlaceholderRecord *)self bundleContainerURL];
  v20 = v18 ^ [bundleContainerURL hash];

  parentIdentifiers = [(ICLPlaceholderRecord *)self parentIdentifiers];
  v22 = v20 ^ [parentIdentifiers hash];

  appManagementDomain = [(ICLPlaceholderRecord *)self appManagementDomain];
  v24 = v22 ^ [appManagementDomain hash];

  alternateIconName = [(ICLPlaceholderRecord *)self alternateIconName];
  v26 = v14 ^ v24 ^ [alternateIconName hash];

  installDate = [(ICLPlaceholderRecord *)self installDate];
  v28 = [installDate hash];

  lsInstallType = [(ICLPlaceholderRecord *)self lsInstallType];
  v30 = v28 ^ [lsInstallType hash];

  sinfInfo = [(ICLPlaceholderRecord *)self sinfInfo];
  v32 = v30 ^ [sinfInfo hash];

  uniqueInstallID = [(ICLPlaceholderRecord *)self uniqueInstallID];
  v34 = v32 ^ [uniqueInstallID hash];

  installSessionID = [(ICLPlaceholderRecord *)self installSessionID];
  v36 = v34 ^ [installSessionID hash];

  linkedParentBundleID = [(ICLPlaceholderRecord *)self linkedParentBundleID];
  v38 = v36 ^ [linkedParentBundleID hash];

  v40.receiver = self;
  v40.super_class = ICLPlaceholderRecord;
  return v26 ^ v38 ^ [(ICLBundleRecord *)&v40 hash];
}

@end
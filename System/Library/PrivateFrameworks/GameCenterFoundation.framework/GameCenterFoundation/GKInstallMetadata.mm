@interface GKInstallMetadata
+ (id)secureCodedPropertyKeys;
- (GKInstallMetadata)initWithBundleID:(id)d adamID:(id)iD bundleShortVersion:(id)version name:(id)name shortName:(id)shortName estimatedInstallDate:(id)date supportsGameController:(BOOL)controller isArcade:(BOOL)self0 platform:(int64_t)self1 isHidden:(BOOL)self2 metadataEligibility:(int64_t)self3 applicationType:(int64_t)self4 isBeta:(BOOL)self5 persistentRecordID:(id)self6;
@end

@implementation GKInstallMetadata

- (GKInstallMetadata)initWithBundleID:(id)d adamID:(id)iD bundleShortVersion:(id)version name:(id)name shortName:(id)shortName estimatedInstallDate:(id)date supportsGameController:(BOOL)controller isArcade:(BOOL)self0 platform:(int64_t)self1 isHidden:(BOOL)self2 metadataEligibility:(int64_t)self3 applicationType:(int64_t)self4 isBeta:(BOOL)self5 persistentRecordID:(id)self6
{
  dCopy = d;
  iDCopy = iD;
  obj = version;
  versionCopy = version;
  nameCopy = name;
  shortNameCopy = shortName;
  shortNameCopy2 = shortName;
  dateCopy = date;
  dateCopy2 = date;
  recordIDCopy = recordID;
  v36.receiver = self;
  v36.super_class = GKInstallMetadata;
  v28 = [(GKInstallMetadata *)&v36 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_bundleID, d);
    objc_storeStrong(&v29->_adamID, iD);
    objc_storeStrong(&v29->_bundleShortVersion, obj);
    objc_storeStrong(&v29->_name, name);
    objc_storeStrong(&v29->_shortName, shortNameCopy);
    objc_storeStrong(&v29->_estimatedInstallDate, dateCopy);
    v29->_supportsGameController = controller;
    v29->_isArcade = arcade;
    v29->_platform = platform;
    v29->_isHidden = hidden;
    v29->_metadataEligibility = eligibility;
    v29->_applicationType = type;
    v29->_isBeta = beta;
    objc_storeStrong(&v29->_persistentRecordID, recordID);
  }

  return v29;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_11 != -1)
  {
    +[GKInstallMetadata secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_11;

  return v3;
}

void __44__GKInstallMetadata_secureCodedPropertyKeys__block_invoke()
{
  v4[13] = *MEMORY[0x277D85DE8];
  v3[0] = @"bundleID";
  v4[0] = objc_opt_class();
  v3[1] = @"adamID";
  v4[1] = objc_opt_class();
  v3[2] = @"bundleShortVersion";
  v4[2] = objc_opt_class();
  v3[3] = @"name";
  v4[3] = objc_opt_class();
  v3[4] = @"shortName";
  v4[4] = objc_opt_class();
  v3[5] = @"estimatedInstallDate";
  v4[5] = objc_opt_class();
  v3[6] = @"supportsGameController";
  v4[6] = objc_opt_class();
  v3[7] = @"isArcade";
  v4[7] = objc_opt_class();
  v3[8] = @"platform";
  v4[8] = objc_opt_class();
  v3[9] = @"isHidden";
  v4[9] = objc_opt_class();
  v3[10] = @"metadataEligibility";
  v4[10] = objc_opt_class();
  v3[11] = @"applicationType";
  v4[11] = objc_opt_class();
  v3[12] = @"isBeta";
  v4[12] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:13];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_11;
  secureCodedPropertyKeys_sSecureCodedKeys_11 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end
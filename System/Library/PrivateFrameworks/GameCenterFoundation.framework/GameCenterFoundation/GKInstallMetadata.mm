@interface GKInstallMetadata
+ (id)secureCodedPropertyKeys;
- (GKInstallMetadata)initWithBundleID:(id)a3 adamID:(id)a4 bundleShortVersion:(id)a5 name:(id)a6 shortName:(id)a7 estimatedInstallDate:(id)a8 supportsGameController:(BOOL)a9 isArcade:(BOOL)a10 platform:(int64_t)a11 isHidden:(BOOL)a12 metadataEligibility:(int64_t)a13 applicationType:(int64_t)a14 isBeta:(BOOL)a15 persistentRecordID:(id)a16;
@end

@implementation GKInstallMetadata

- (GKInstallMetadata)initWithBundleID:(id)a3 adamID:(id)a4 bundleShortVersion:(id)a5 name:(id)a6 shortName:(id)a7 estimatedInstallDate:(id)a8 supportsGameController:(BOOL)a9 isArcade:(BOOL)a10 platform:(int64_t)a11 isHidden:(BOOL)a12 metadataEligibility:(int64_t)a13 applicationType:(int64_t)a14 isBeta:(BOOL)a15 persistentRecordID:(id)a16
{
  v23 = a3;
  v24 = a4;
  obj = a5;
  v25 = a5;
  v35 = a6;
  v32 = a7;
  v34 = a7;
  v33 = a8;
  v26 = a8;
  v27 = a16;
  v36.receiver = self;
  v36.super_class = GKInstallMetadata;
  v28 = [(GKInstallMetadata *)&v36 init];
  v29 = v28;
  if (v28)
  {
    objc_storeStrong(&v28->_bundleID, a3);
    objc_storeStrong(&v29->_adamID, a4);
    objc_storeStrong(&v29->_bundleShortVersion, obj);
    objc_storeStrong(&v29->_name, a6);
    objc_storeStrong(&v29->_shortName, v32);
    objc_storeStrong(&v29->_estimatedInstallDate, v33);
    v29->_supportsGameController = a9;
    v29->_isArcade = a10;
    v29->_platform = a11;
    v29->_isHidden = a12;
    v29->_metadataEligibility = a13;
    v29->_applicationType = a14;
    v29->_isBeta = a15;
    objc_storeStrong(&v29->_persistentRecordID, a16);
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
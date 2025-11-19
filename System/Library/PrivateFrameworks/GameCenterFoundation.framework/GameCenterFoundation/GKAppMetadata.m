@interface GKAppMetadata
+ (id)secureCodedPropertyKeys;
- (GKAppMetadata)initWithBundleID:(id)a3 adamID:(id)a4 platform:(id)a5 name:(id)a6 shortName:(id)a7 artwork:(id)a8 customIconArtwork:(id)a9 supportsGameCenter:(id)a10 supportsArcade:(BOOL)a11 supportsGameController:(id)a12 isEligibleForGamesApp:(BOOL)a13 supportedGameCenterFeatures:(id)a14 deviceFamilies:(id)a15 genreDisplayName:(id)a16 rawResponse:(id)a17 isIOSBinaryMacOSCompatible:(id)a18 gameDisplayName:(id)a19 miniGamesDeepLink:(id)a20 isGameGenre:(id)a21 ageRating:(id)a22 gkGameGenres:(id)a23;
- (id)description;
@end

@implementation GKAppMetadata

- (GKAppMetadata)initWithBundleID:(id)a3 adamID:(id)a4 platform:(id)a5 name:(id)a6 shortName:(id)a7 artwork:(id)a8 customIconArtwork:(id)a9 supportsGameCenter:(id)a10 supportsArcade:(BOOL)a11 supportsGameController:(id)a12 isEligibleForGamesApp:(BOOL)a13 supportedGameCenterFeatures:(id)a14 deviceFamilies:(id)a15 genreDisplayName:(id)a16 rawResponse:(id)a17 isIOSBinaryMacOSCompatible:(id)a18 gameDisplayName:(id)a19 miniGamesDeepLink:(id)a20 isGameGenre:(id)a21 ageRating:(id)a22 gkGameGenres:(id)a23
{
  v53 = a3;
  v38 = a4;
  v52 = a4;
  v39 = a5;
  v51 = a5;
  v40 = a6;
  v50 = a6;
  v49 = a7;
  v41 = a8;
  v48 = a8;
  v47 = a9;
  v54 = a10;
  v55 = a12;
  v46 = a14;
  v45 = a15;
  v44 = a16;
  v28 = a17;
  v29 = a18;
  v30 = a19;
  v31 = a20;
  v43 = a21;
  v32 = a22;
  v33 = a23;
  v56.receiver = self;
  v56.super_class = GKAppMetadata;
  v34 = [(GKAppMetadata *)&v56 init];
  v35 = v34;
  if (v34)
  {
    objc_storeStrong(&v34->_bundleID, a3);
    objc_storeStrong(&v35->_adamID, v38);
    objc_storeStrong(&v35->_platform, v39);
    objc_storeStrong(&v35->_name, v40);
    objc_storeStrong(&v35->_shortName, a7);
    objc_storeStrong(&v35->_artwork, v41);
    objc_storeStrong(&v35->_customIconArtwork, a9);
    v35->_supportsGameCenter = v54;
    v35->_supportsArcade = a11;
    v35->_supportsGameController = v55;
    objc_storeStrong(&v35->_supportedGameCenterFeatures, a14);
    v35->_isEligibleForGamesApp = a13;
    objc_storeStrong(&v35->_deviceFamilies, a15);
    objc_storeStrong(&v35->_genreDisplayName, a16);
    objc_storeStrong(&v35->_rawResponse, a17);
    objc_storeStrong(&v35->_isIOSBinaryMacOSCompatible, a18);
    objc_storeStrong(&v35->_gameDisplayName, a19);
    objc_storeStrong(&v35->_miniGamesDeepLink, a20);
    objc_storeStrong(&v35->_isGameGenre, a21);
    objc_storeStrong(&v35->_ageRating, a22);
    objc_storeStrong(&v35->_gkGameGenres, a23);
  }

  return v35;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_22 != -1)
  {
    +[GKAppMetadata secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_22;

  return v3;
}

void __40__GKAppMetadata_secureCodedPropertyKeys__block_invoke()
{
  v13[21] = *MEMORY[0x277D85DE8];
  v12[0] = @"bundleID";
  v13[0] = objc_opt_class();
  v12[1] = @"adamID";
  v13[1] = objc_opt_class();
  v12[2] = @"platform";
  v13[2] = objc_opt_class();
  v12[3] = @"name";
  v13[3] = objc_opt_class();
  v12[4] = @"shortName";
  v13[4] = objc_opt_class();
  v12[5] = @"artwork";
  v13[5] = objc_opt_class();
  v12[6] = @"customIconArtwork";
  v13[6] = objc_opt_class();
  v12[7] = @"genreDisplayName";
  v13[7] = objc_opt_class();
  v12[8] = @"supportsGameCenter";
  v13[8] = objc_opt_class();
  v12[9] = @"supportsArcade";
  v13[9] = objc_opt_class();
  v12[10] = @"supportsGameController";
  v13[10] = objc_opt_class();
  v12[11] = @"isEligibleForGamesApp";
  v13[11] = objc_opt_class();
  v12[12] = @"supportedGameCenterFeatures";
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v13[12] = v2;
  v12[13] = @"deviceFamilies";
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  v13[13] = v5;
  v12[14] = @"rawResponse";
  v13[14] = objc_opt_class();
  v12[15] = @"isIOSBinaryMacOSCompatible";
  v13[15] = objc_opt_class();
  v12[16] = @"gameDisplayName";
  v13[16] = objc_opt_class();
  v12[17] = @"miniGamesDeepLink";
  v13[17] = objc_opt_class();
  v12[18] = @"isGameGenre";
  v13[18] = objc_opt_class();
  v12[19] = @"ageRating";
  v13[19] = objc_opt_class();
  v12[20] = @"gkGameGenres";
  v6 = MEMORY[0x277CBEA60];
  v7 = objc_opt_class();
  v8 = [v6 arrayWithObjects:{v7, objc_opt_class(), 0}];
  v13[20] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:21];
  v10 = secureCodedPropertyKeys_sSecureCodedKeys_22;
  secureCodedPropertyKeys_sSecureCodedKeys_22 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(GKAppMetadata *)self adamID];
  v7 = [(GKAppMetadata *)self bundleID];
  v8 = [v3 stringWithFormat:@"%@: adamID: %@, bundleID: %@", v5, v6, v7];

  return v8;
}

@end
@interface GKAppMetadata
+ (id)secureCodedPropertyKeys;
- (GKAppMetadata)initWithBundleID:(id)d adamID:(id)iD platform:(id)platform name:(id)name shortName:(id)shortName artwork:(id)artwork customIconArtwork:(id)iconArtwork supportsGameCenter:(id)self0 supportsArcade:(BOOL)self1 supportsGameController:(id)self2 isEligibleForGamesApp:(BOOL)self3 supportedGameCenterFeatures:(id)self4 deviceFamilies:(id)self5 genreDisplayName:(id)self6 rawResponse:(id)self7 isIOSBinaryMacOSCompatible:(id)self8 gameDisplayName:(id)self9 miniGamesDeepLink:(id)link isGameGenre:(id)genre ageRating:(id)rating gkGameGenres:(id)genres;
- (id)description;
@end

@implementation GKAppMetadata

- (GKAppMetadata)initWithBundleID:(id)d adamID:(id)iD platform:(id)platform name:(id)name shortName:(id)shortName artwork:(id)artwork customIconArtwork:(id)iconArtwork supportsGameCenter:(id)self0 supportsArcade:(BOOL)self1 supportsGameController:(id)self2 isEligibleForGamesApp:(BOOL)self3 supportedGameCenterFeatures:(id)self4 deviceFamilies:(id)self5 genreDisplayName:(id)self6 rawResponse:(id)self7 isIOSBinaryMacOSCompatible:(id)self8 gameDisplayName:(id)self9 miniGamesDeepLink:(id)link isGameGenre:(id)genre ageRating:(id)rating gkGameGenres:(id)genres
{
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  platformCopy = platform;
  platformCopy2 = platform;
  nameCopy = name;
  nameCopy2 = name;
  shortNameCopy = shortName;
  artworkCopy = artwork;
  artworkCopy2 = artwork;
  iconArtworkCopy = iconArtwork;
  centerCopy = center;
  controllerCopy = controller;
  featuresCopy = features;
  familiesCopy = families;
  displayNameCopy = displayName;
  responseCopy = response;
  compatibleCopy = compatible;
  gameDisplayNameCopy = gameDisplayName;
  linkCopy = link;
  genreCopy = genre;
  ratingCopy = rating;
  genresCopy = genres;
  v56.receiver = self;
  v56.super_class = GKAppMetadata;
  v34 = [(GKAppMetadata *)&v56 init];
  v35 = v34;
  if (v34)
  {
    objc_storeStrong(&v34->_bundleID, d);
    objc_storeStrong(&v35->_adamID, iDCopy);
    objc_storeStrong(&v35->_platform, platformCopy);
    objc_storeStrong(&v35->_name, nameCopy);
    objc_storeStrong(&v35->_shortName, shortName);
    objc_storeStrong(&v35->_artwork, artworkCopy);
    objc_storeStrong(&v35->_customIconArtwork, iconArtwork);
    v35->_supportsGameCenter = centerCopy;
    v35->_supportsArcade = arcade;
    v35->_supportsGameController = controllerCopy;
    objc_storeStrong(&v35->_supportedGameCenterFeatures, features);
    v35->_isEligibleForGamesApp = app;
    objc_storeStrong(&v35->_deviceFamilies, families);
    objc_storeStrong(&v35->_genreDisplayName, displayName);
    objc_storeStrong(&v35->_rawResponse, response);
    objc_storeStrong(&v35->_isIOSBinaryMacOSCompatible, compatible);
    objc_storeStrong(&v35->_gameDisplayName, gameDisplayName);
    objc_storeStrong(&v35->_miniGamesDeepLink, link);
    objc_storeStrong(&v35->_isGameGenre, genre);
    objc_storeStrong(&v35->_ageRating, rating);
    objc_storeStrong(&v35->_gkGameGenres, genres);
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
  adamID = [(GKAppMetadata *)self adamID];
  bundleID = [(GKAppMetadata *)self bundleID];
  v8 = [v3 stringWithFormat:@"%@: adamID: %@, bundleID: %@", v5, adamID, bundleID];

  return v8;
}

@end
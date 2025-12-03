@interface BLDownload
- (BLDownload)initWithCoder:(id)coder;
- (double)transferProgressFraction;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BLDownload

- (BLDownload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = BLDownload;
  v5 = [(BLDownload *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadID"];
    [(BLDownload *)v5 setDownloadID:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buyParameters"];
    [(BLDownload *)v5 setBuyParameters:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"permlink"];
    [(BLDownload *)v5 setPermlink:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storeIdentifier"];
    [(BLDownload *)v5 setStoreIdentifier:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
    [(BLDownload *)v5 setPersistentIdentifier:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"originalURL"];
    [(BLDownload *)v5 setUrl:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    [(BLDownload *)v5 setOriginalURL:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"target"];
    [(BLDownload *)v5 setTargetDownloadDirectory:v13];

    -[BLDownload setState:](v5, "setState:", [coderCopy decodeIntegerForKey:@"state"]);
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    [(BLDownload *)v5 setStartTime:v14];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetPath"];
    [(BLDownload *)v5 setAssetPath:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicationVersion"];
    [(BLDownload *)v5 setPublicationVersion:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  downloadID = [(BLDownload *)self downloadID];
  [coderCopy encodeObject:downloadID forKey:@"downloadID"];

  buyParameters = [(BLDownload *)self buyParameters];
  [coderCopy encodeObject:buyParameters forKey:@"buyParameters"];

  permlink = [(BLDownload *)self permlink];
  [coderCopy encodeObject:permlink forKey:@"permlink"];

  storeIdentifier = [(BLDownload *)self storeIdentifier];
  [coderCopy encodeObject:storeIdentifier forKey:@"storeIdentifier"];

  v9 = [(BLDownload *)self url];
  [coderCopy encodeObject:v9 forKey:@"url"];

  originalURL = [(BLDownload *)self originalURL];
  [coderCopy encodeObject:originalURL forKey:@"originalURL"];

  targetDownloadDirectory = [(BLDownload *)self targetDownloadDirectory];
  [coderCopy encodeObject:targetDownloadDirectory forKey:@"target"];

  [coderCopy encodeInteger:-[BLDownload state](self forKey:{"state"), @"state"}];
  startTime = [(BLDownload *)self startTime];
  [coderCopy encodeObject:startTime forKey:@"startTime"];

  assetPath = [(BLDownload *)self assetPath];
  [coderCopy encodeObject:assetPath forKey:@"assetPath"];

  persistentIdentifier = [(BLDownload *)self persistentIdentifier];
  [coderCopy encodeObject:persistentIdentifier forKey:@"persistentIdentifier"];

  publicationVersion = [(BLDownload *)self publicationVersion];
  [coderCopy encodeObject:publicationVersion forKey:@"publicationVersion"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  if (v4)
  {
    downloadID = [(BLDownload *)self downloadID];
    [v4 setDownloadID:downloadID];

    v6 = [(BLDownload *)self url];
    [v4 setUrl:v6];

    targetDownloadDirectory = [(BLDownload *)self targetDownloadDirectory];
    [v4 setTargetDownloadDirectory:targetDownloadDirectory];

    [v4 setState:{-[BLDownload state](self, "state")}];
    startTime = [(BLDownload *)self startTime];
    [v4 setStartTime:startTime];

    assetPath = [(BLDownload *)self assetPath];
    [v4 setAssetPath:assetPath];

    buyParameters = [(BLDownload *)self buyParameters];
    [v4 setBuyParameters:buyParameters];

    permlink = [(BLDownload *)self permlink];
    [v4 setPermlink:permlink];

    storeIdentifier = [(BLDownload *)self storeIdentifier];
    [v4 setStoreIdentifier:storeIdentifier];

    storePlaylistIdentifier = [(BLDownload *)self storePlaylistIdentifier];
    [v4 setStorePlaylistIdentifier:storePlaylistIdentifier];

    clientIdentifier = [(BLDownload *)self clientIdentifier];
    [v4 setClientIdentifier:clientIdentifier];

    persistentIdentifier = [(BLDownload *)self persistentIdentifier];
    [v4 setPersistentIdentifier:persistentIdentifier];

    [v4 setFileSize:{-[BLDownload fileSize](self, "fileSize")}];
    lastStateChangeTime = [(BLDownload *)self lastStateChangeTime];
    [v4 setLastStateChangeTime:lastStateChangeTime];

    hashType = [(BLDownload *)self hashType];
    [v4 setHashType:hashType];

    md5HashStrings = [(BLDownload *)self md5HashStrings];
    [v4 setMd5HashStrings:md5HashStrings];

    [v4 setNumberOfBytesToHash:{-[BLDownload numberOfBytesToHash](self, "numberOfBytesToHash")}];
    serverNumberOfBytesToHash = [(BLDownload *)self serverNumberOfBytesToHash];
    [v4 setServerNumberOfBytesToHash:serverNumberOfBytesToHash];

    publicationVersion = [(BLDownload *)self publicationVersion];
    [v4 setPublicationVersion:publicationVersion];

    isAutomaticDownload = [(BLDownload *)self isAutomaticDownload];
    [v4 setIsAutomaticDownload:isAutomaticDownload];

    isRestore = [(BLDownload *)self isRestore];
    [v4 setIsRestore:isRestore];

    downloadKey = [(BLDownload *)self downloadKey];
    [v4 setDownloadKey:downloadKey];

    accountID = [(BLDownload *)self accountID];
    [v4 setAccountID:accountID];

    familyAccountID = [(BLDownload *)self familyAccountID];
    [v4 setFamilyAccountID:familyAccountID];

    isZipStreamable = [(BLDownload *)self isZipStreamable];
    [v4 setIsZipStreamable:isZipStreamable];

    dpInfo = [(BLDownload *)self dpInfo];
    [v4 setDpInfo:dpInfo];

    sinfData = [(BLDownload *)self sinfData];
    [v4 setSinfData:sinfData];

    isSample = [(BLDownload *)self isSample];
    [v4 setIsSample:isSample];

    isPurchase = [(BLDownload *)self isPurchase];
    [v4 setIsPurchase:isPurchase];

    isLocalCacheServer = [(BLDownload *)self isLocalCacheServer];
    [v4 setIsLocalCacheServer:isLocalCacheServer];

    originalURL = [(BLDownload *)self originalURL];
    [v4 setOriginalURL:originalURL];

    encryptionKey = [(BLDownload *)self encryptionKey];
    [v4 setEncryptionKey:encryptionKey];

    salt = [(BLDownload *)self salt];
    [v4 setSalt:salt];

    cleanupPending = [(BLDownload *)self cleanupPending];
    [v4 setCleanupPending:cleanupPending];

    purchaseDate = [(BLDownload *)self purchaseDate];
    [v4 setPurchaseDate:purchaseDate];

    artistName = [(BLDownload *)self artistName];
    [v4 setArtistName:artistName];

    title = [(BLDownload *)self title];
    [v4 setTitle:title];

    subtitle = [(BLDownload *)self subtitle];
    [v4 setSubtitle:subtitle];

    collectionArtistName = [(BLDownload *)self collectionArtistName];
    [v4 setCollectionArtistName:collectionArtistName];

    collectionTitle = [(BLDownload *)self collectionTitle];
    [v4 setCollectionTitle:collectionTitle];

    genre = [(BLDownload *)self genre];
    [v4 setGenre:genre];

    kind = [(BLDownload *)self kind];
    [v4 setKind:kind];

    thumbnailImageURL = [(BLDownload *)self thumbnailImageURL];
    [v4 setThumbnailImageURL:thumbnailImageURL];
  }

  return v4;
}

- (double)transferProgressFraction
{
  dpInfo = [(BLDownload *)self dpInfo];

  if (dpInfo)
  {
    return 0.6;
  }

  isZipStreamable = [(BLDownload *)self isZipStreamable];
  bOOLValue = [isZipStreamable BOOLValue];

  result = 0.8;
  if (bOOLValue)
  {
    return 1.0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  downloadID = [(BLDownload *)self downloadID];
  title = [(BLDownload *)self title];
  v6 = NSStringFromBLDownloadState([(BLDownload *)self state]);
  v7 = MEMORY[0x277CCA968];
  startTime = [(BLDownload *)self startTime];
  v9 = [v7 localizedStringFromDate:startTime dateStyle:1 timeStyle:3];
  v10 = [v3 stringWithFormat:@"{ DownloadID: %@ Title: %@ State:%@ Started at: %@}", downloadID, title, v6, v9];

  return v10;
}

@end
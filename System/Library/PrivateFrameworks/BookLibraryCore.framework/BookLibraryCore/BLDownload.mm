@interface BLDownload
- (BLDownload)initWithCoder:(id)a3;
- (double)transferProgressFraction;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BLDownload

- (BLDownload)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = BLDownload;
  v5 = [(BLDownload *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadID"];
    [(BLDownload *)v5 setDownloadID:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buyParameters"];
    [(BLDownload *)v5 setBuyParameters:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"permlink"];
    [(BLDownload *)v5 setPermlink:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storeIdentifier"];
    [(BLDownload *)v5 setStoreIdentifier:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistentIdentifier"];
    [(BLDownload *)v5 setPersistentIdentifier:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"originalURL"];
    [(BLDownload *)v5 setUrl:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    [(BLDownload *)v5 setOriginalURL:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"target"];
    [(BLDownload *)v5 setTargetDownloadDirectory:v13];

    -[BLDownload setState:](v5, "setState:", [v4 decodeIntegerForKey:@"state"]);
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startTime"];
    [(BLDownload *)v5 setStartTime:v14];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetPath"];
    [(BLDownload *)v5 setAssetPath:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publicationVersion"];
    [(BLDownload *)v5 setPublicationVersion:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BLDownload *)self downloadID];
  [v4 encodeObject:v5 forKey:@"downloadID"];

  v6 = [(BLDownload *)self buyParameters];
  [v4 encodeObject:v6 forKey:@"buyParameters"];

  v7 = [(BLDownload *)self permlink];
  [v4 encodeObject:v7 forKey:@"permlink"];

  v8 = [(BLDownload *)self storeIdentifier];
  [v4 encodeObject:v8 forKey:@"storeIdentifier"];

  v9 = [(BLDownload *)self url];
  [v4 encodeObject:v9 forKey:@"url"];

  v10 = [(BLDownload *)self originalURL];
  [v4 encodeObject:v10 forKey:@"originalURL"];

  v11 = [(BLDownload *)self targetDownloadDirectory];
  [v4 encodeObject:v11 forKey:@"target"];

  [v4 encodeInteger:-[BLDownload state](self forKey:{"state"), @"state"}];
  v12 = [(BLDownload *)self startTime];
  [v4 encodeObject:v12 forKey:@"startTime"];

  v13 = [(BLDownload *)self assetPath];
  [v4 encodeObject:v13 forKey:@"assetPath"];

  v14 = [(BLDownload *)self persistentIdentifier];
  [v4 encodeObject:v14 forKey:@"persistentIdentifier"];

  v15 = [(BLDownload *)self publicationVersion];
  [v4 encodeObject:v15 forKey:@"publicationVersion"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [(BLDownload *)self downloadID];
    [v4 setDownloadID:v5];

    v6 = [(BLDownload *)self url];
    [v4 setUrl:v6];

    v7 = [(BLDownload *)self targetDownloadDirectory];
    [v4 setTargetDownloadDirectory:v7];

    [v4 setState:{-[BLDownload state](self, "state")}];
    v8 = [(BLDownload *)self startTime];
    [v4 setStartTime:v8];

    v9 = [(BLDownload *)self assetPath];
    [v4 setAssetPath:v9];

    v10 = [(BLDownload *)self buyParameters];
    [v4 setBuyParameters:v10];

    v11 = [(BLDownload *)self permlink];
    [v4 setPermlink:v11];

    v12 = [(BLDownload *)self storeIdentifier];
    [v4 setStoreIdentifier:v12];

    v13 = [(BLDownload *)self storePlaylistIdentifier];
    [v4 setStorePlaylistIdentifier:v13];

    v14 = [(BLDownload *)self clientIdentifier];
    [v4 setClientIdentifier:v14];

    v15 = [(BLDownload *)self persistentIdentifier];
    [v4 setPersistentIdentifier:v15];

    [v4 setFileSize:{-[BLDownload fileSize](self, "fileSize")}];
    v16 = [(BLDownload *)self lastStateChangeTime];
    [v4 setLastStateChangeTime:v16];

    v17 = [(BLDownload *)self hashType];
    [v4 setHashType:v17];

    v18 = [(BLDownload *)self md5HashStrings];
    [v4 setMd5HashStrings:v18];

    [v4 setNumberOfBytesToHash:{-[BLDownload numberOfBytesToHash](self, "numberOfBytesToHash")}];
    v19 = [(BLDownload *)self serverNumberOfBytesToHash];
    [v4 setServerNumberOfBytesToHash:v19];

    v20 = [(BLDownload *)self publicationVersion];
    [v4 setPublicationVersion:v20];

    v21 = [(BLDownload *)self isAutomaticDownload];
    [v4 setIsAutomaticDownload:v21];

    v22 = [(BLDownload *)self isRestore];
    [v4 setIsRestore:v22];

    v23 = [(BLDownload *)self downloadKey];
    [v4 setDownloadKey:v23];

    v24 = [(BLDownload *)self accountID];
    [v4 setAccountID:v24];

    v25 = [(BLDownload *)self familyAccountID];
    [v4 setFamilyAccountID:v25];

    v26 = [(BLDownload *)self isZipStreamable];
    [v4 setIsZipStreamable:v26];

    v27 = [(BLDownload *)self dpInfo];
    [v4 setDpInfo:v27];

    v28 = [(BLDownload *)self sinfData];
    [v4 setSinfData:v28];

    v29 = [(BLDownload *)self isSample];
    [v4 setIsSample:v29];

    v30 = [(BLDownload *)self isPurchase];
    [v4 setIsPurchase:v30];

    v31 = [(BLDownload *)self isLocalCacheServer];
    [v4 setIsLocalCacheServer:v31];

    v32 = [(BLDownload *)self originalURL];
    [v4 setOriginalURL:v32];

    v33 = [(BLDownload *)self encryptionKey];
    [v4 setEncryptionKey:v33];

    v34 = [(BLDownload *)self salt];
    [v4 setSalt:v34];

    v35 = [(BLDownload *)self cleanupPending];
    [v4 setCleanupPending:v35];

    v36 = [(BLDownload *)self purchaseDate];
    [v4 setPurchaseDate:v36];

    v37 = [(BLDownload *)self artistName];
    [v4 setArtistName:v37];

    v38 = [(BLDownload *)self title];
    [v4 setTitle:v38];

    v39 = [(BLDownload *)self subtitle];
    [v4 setSubtitle:v39];

    v40 = [(BLDownload *)self collectionArtistName];
    [v4 setCollectionArtistName:v40];

    v41 = [(BLDownload *)self collectionTitle];
    [v4 setCollectionTitle:v41];

    v42 = [(BLDownload *)self genre];
    [v4 setGenre:v42];

    v43 = [(BLDownload *)self kind];
    [v4 setKind:v43];

    v44 = [(BLDownload *)self thumbnailImageURL];
    [v4 setThumbnailImageURL:v44];
  }

  return v4;
}

- (double)transferProgressFraction
{
  v3 = [(BLDownload *)self dpInfo];

  if (v3)
  {
    return 0.6;
  }

  v5 = [(BLDownload *)self isZipStreamable];
  v6 = [v5 BOOLValue];

  result = 0.8;
  if (v6)
  {
    return 1.0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(BLDownload *)self downloadID];
  v5 = [(BLDownload *)self title];
  v6 = NSStringFromBLDownloadState([(BLDownload *)self state]);
  v7 = MEMORY[0x277CCA968];
  v8 = [(BLDownload *)self startTime];
  v9 = [v7 localizedStringFromDate:v8 dateStyle:1 timeStyle:3];
  v10 = [v3 stringWithFormat:@"{ DownloadID: %@ Title: %@ State:%@ Started at: %@}", v4, v5, v6, v9];

  return v10;
}

@end
@interface BLPipelineDownloadTaskState
- (BLPipelineDownloadTaskState)initWithPrepareDownloadResponse:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_overallProgress;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setFinishProgress:(double)a3;
- (void)setTransferProgress:(double)a3;
- (void)setTransferProgressWithBytesWritten:(int64_t)a3 totalBytesExpected:(int64_t)a4;
@end

@implementation BLPipelineDownloadTaskState

- (BLPipelineDownloadTaskState)initWithPrepareDownloadResponse:(id)a3
{
  v4 = a3;
  v40.receiver = self;
  v40.super_class = BLPipelineDownloadTaskState;
  v5 = [(BLPipelineDownloadTaskState *)&v40 init];
  if (v5)
  {
    v5->_assetIdentifier = [v4 assetIdentifier];
    v6 = [v4 playlistIdentifier];
    playlistIdentifier = v5->_playlistIdentifier;
    v5->_playlistIdentifier = v6;

    v8 = [v4 permLink];
    permLink = v5->_permLink;
    v5->_permLink = v8;

    v5->_automaticType = [v4 automaticType];
    v10 = [v4 bundleIdentifier];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v10;

    v12 = [v4 kind];
    kind = v5->_kind;
    v5->_kind = v12;

    v14 = [v4 downloadIdentifier];
    downloadIdentifier = v5->_downloadIdentifier;
    v5->_downloadIdentifier = v14;

    [v4 transferProgressFraction];
    v5->_transferProgressFraction = v16;
    v17 = [v4 artistName];
    artistName = v5->_artistName;
    v5->_artistName = v17;

    v19 = [v4 title];
    title = v5->_title;
    v5->_title = v19;

    v21 = [v4 subtitle];
    subtitle = v5->_subtitle;
    v5->_subtitle = v21;

    v23 = [v4 collectionArtistName];
    collectionArtistName = v5->_collectionArtistName;
    v5->_collectionArtistName = v23;

    v25 = [v4 collectionTitle];
    collectionTitle = v5->_collectionTitle;
    v5->_collectionTitle = v25;

    v27 = [v4 genre];
    genre = v5->_genre;
    v5->_genre = v27;

    v29 = [v4 thumbnailImageURL];
    thumbnailImageURL = v5->_thumbnailImageURL;
    v5->_thumbnailImageURL = v29;

    v5->_isLocalCacheServer = [v4 isLocalCacheServer];
    v31 = [v4 transactionIdentifier];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = v31;

    v33 = [v4 cancelDownloadURL];
    cancelDownloadURL = v5->_cancelDownloadURL;
    v5->_cancelDownloadURL = v33;

    v5->_isRestore = [v4 isRestore];
    v5->_isSample = [v4 isSample];
    v5->_isPurchase = [v4 isPurchase];
    v35 = [v4 purchaseDate];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = v35;

    v5->_persistentIdentifier = [v4 persistentIdentifier];
    v37 = [v4 storeAccountIdentifier];
    storeAccountIdentifier = v5->_storeAccountIdentifier;
    v5->_storeAccountIdentifier = v37;
  }

  return v5;
}

- (void)setFinishProgress:(double)a3
{
  v3 = self->_transferProgressFraction + (1.0 - self->_transferProgressFraction) * a3;
  v4 = [(BLPipelineDownloadTaskState *)self _overallProgress];
  [v4 setCurrentValue:{(v3 * objc_msgSend(v4, "maxValue"))}];
}

- (void)setTransferProgress:(double)a3
{
  v3 = self->_transferProgressFraction * a3;
  v4 = [(BLPipelineDownloadTaskState *)self _overallProgress];
  [v4 setCurrentValue:{(v3 * objc_msgSend(v4, "maxValue"))}];
}

- (void)setTransferProgressWithBytesWritten:(int64_t)a3 totalBytesExpected:(int64_t)a4
{
  self->_transferBytesExpected = a4;
  self->_transferBytesWritten = a3;
  if (a4 >= 1)
  {
    [(BLPipelineDownloadTaskState *)self setTransferProgress:a3 / a4];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = [(BLPipelineDownloadTaskState *)self downloadIdentifier];
    v8 = [v4 downloadIdentifier];
    v6 = [v7 isEqualToString:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setAutomaticType:{-[BLPipelineDownloadTaskState automaticType](self, "automaticType")}];
  v6 = [(BLPipelineDownloadTaskState *)self bundleIdentifier];
  v7 = [v6 copyWithZone:a3];
  [v5 setBundleIdentifier:v7];

  v8 = [(BLPipelineDownloadTaskState *)self downloadIdentifier];
  v9 = [v8 copyWithZone:a3];
  [v5 setDownloadIdentifier:v9];

  v10 = [(BLPipelineDownloadTaskState *)self kind];
  v11 = [v10 copyWithZone:a3];
  [v5 setKind:v11];

  [v5 setAssetIdentifier:{-[BLPipelineDownloadTaskState assetIdentifier](self, "assetIdentifier")}];
  v12 = [(BLPipelineDownloadTaskState *)self playlistIdentifier];
  [v5 setPlaylistIdentifier:v12];

  v13 = [(BLPipelineDownloadTaskState *)self overallProgress];
  v14 = [v13 copyWithZone:a3];
  [v5 setOverallProgress:v14];

  [v5 setRequiresDownloadHandler:{-[BLPipelineDownloadTaskState requiresDownloadHandler](self, "requiresDownloadHandler")}];
  [v5 setDownloadPhase:{-[BLPipelineDownloadTaskState downloadPhase](self, "downloadPhase")}];
  [v5 setTransferBytesExpected:{-[BLPipelineDownloadTaskState transferBytesExpected](self, "transferBytesExpected")}];
  [v5 setTransferBytesWritten:{-[BLPipelineDownloadTaskState transferBytesWritten](self, "transferBytesWritten")}];
  [(BLPipelineDownloadTaskState *)self transferProgressFraction];
  [v5 setTransferProgressFraction:?];
  v15 = [(BLPipelineDownloadTaskState *)self artistName];
  [v5 setArtistName:v15];

  v16 = [(BLPipelineDownloadTaskState *)self title];
  [v5 setTitle:v16];

  v17 = [(BLPipelineDownloadTaskState *)self subtitle];
  [v5 setSubtitle:v17];

  v18 = [(BLPipelineDownloadTaskState *)self collectionArtistName];
  [v5 setCollectionArtistName:v18];

  v19 = [(BLPipelineDownloadTaskState *)self collectionTitle];
  [v5 setCollectionTitle:v19];

  v20 = [(BLPipelineDownloadTaskState *)self genre];
  [v5 setGenre:v20];

  v21 = [(BLPipelineDownloadTaskState *)self thumbnailImageURL];
  [v5 setThumbnailImageURL:v21];

  v22 = [(BLPipelineDownloadTaskState *)self cancelDownloadURL];
  [v5 setCancelDownloadURL:v22];

  v23 = [(BLPipelineDownloadTaskState *)self transactionIdentifier];
  [v5 setTransactionIdentifier:v23];

  return v5;
}

- (id)_overallProgress
{
  overallProgress = self->_overallProgress;
  if (!overallProgress)
  {
    v4 = objc_alloc_init(BLOperationProgress);
    v5 = self->_overallProgress;
    self->_overallProgress = v4;

    [(BLOperationProgress *)self->_overallProgress setMaxValue:1000000];
    overallProgress = self->_overallProgress;
  }

  return overallProgress;
}

@end
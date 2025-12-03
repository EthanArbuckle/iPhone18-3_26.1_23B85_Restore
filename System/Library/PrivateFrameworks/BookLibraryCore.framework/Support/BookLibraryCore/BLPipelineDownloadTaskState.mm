@interface BLPipelineDownloadTaskState
- (BLPipelineDownloadTaskState)initWithPrepareDownloadResponse:(id)response;
- (BOOL)isEqual:(id)equal;
- (id)_overallProgress;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setFinishProgress:(double)progress;
- (void)setTransferProgress:(double)progress;
- (void)setTransferProgressWithBytesWritten:(int64_t)written totalBytesExpected:(int64_t)expected;
@end

@implementation BLPipelineDownloadTaskState

- (BLPipelineDownloadTaskState)initWithPrepareDownloadResponse:(id)response
{
  responseCopy = response;
  v40.receiver = self;
  v40.super_class = BLPipelineDownloadTaskState;
  v5 = [(BLPipelineDownloadTaskState *)&v40 init];
  if (v5)
  {
    v5->_assetIdentifier = [responseCopy assetIdentifier];
    playlistIdentifier = [responseCopy playlistIdentifier];
    playlistIdentifier = v5->_playlistIdentifier;
    v5->_playlistIdentifier = playlistIdentifier;

    permLink = [responseCopy permLink];
    permLink = v5->_permLink;
    v5->_permLink = permLink;

    v5->_automaticType = [responseCopy automaticType];
    bundleIdentifier = [responseCopy bundleIdentifier];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = bundleIdentifier;

    kind = [responseCopy kind];
    kind = v5->_kind;
    v5->_kind = kind;

    downloadIdentifier = [responseCopy downloadIdentifier];
    downloadIdentifier = v5->_downloadIdentifier;
    v5->_downloadIdentifier = downloadIdentifier;

    [responseCopy transferProgressFraction];
    v5->_transferProgressFraction = v16;
    artistName = [responseCopy artistName];
    artistName = v5->_artistName;
    v5->_artistName = artistName;

    title = [responseCopy title];
    title = v5->_title;
    v5->_title = title;

    subtitle = [responseCopy subtitle];
    subtitle = v5->_subtitle;
    v5->_subtitle = subtitle;

    collectionArtistName = [responseCopy collectionArtistName];
    collectionArtistName = v5->_collectionArtistName;
    v5->_collectionArtistName = collectionArtistName;

    collectionTitle = [responseCopy collectionTitle];
    collectionTitle = v5->_collectionTitle;
    v5->_collectionTitle = collectionTitle;

    genre = [responseCopy genre];
    genre = v5->_genre;
    v5->_genre = genre;

    thumbnailImageURL = [responseCopy thumbnailImageURL];
    thumbnailImageURL = v5->_thumbnailImageURL;
    v5->_thumbnailImageURL = thumbnailImageURL;

    v5->_isLocalCacheServer = [responseCopy isLocalCacheServer];
    transactionIdentifier = [responseCopy transactionIdentifier];
    transactionIdentifier = v5->_transactionIdentifier;
    v5->_transactionIdentifier = transactionIdentifier;

    cancelDownloadURL = [responseCopy cancelDownloadURL];
    cancelDownloadURL = v5->_cancelDownloadURL;
    v5->_cancelDownloadURL = cancelDownloadURL;

    v5->_isRestore = [responseCopy isRestore];
    v5->_isSample = [responseCopy isSample];
    v5->_isPurchase = [responseCopy isPurchase];
    purchaseDate = [responseCopy purchaseDate];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = purchaseDate;

    v5->_persistentIdentifier = [responseCopy persistentIdentifier];
    storeAccountIdentifier = [responseCopy storeAccountIdentifier];
    storeAccountIdentifier = v5->_storeAccountIdentifier;
    v5->_storeAccountIdentifier = storeAccountIdentifier;
  }

  return v5;
}

- (void)setFinishProgress:(double)progress
{
  v3 = self->_transferProgressFraction + (1.0 - self->_transferProgressFraction) * progress;
  _overallProgress = [(BLPipelineDownloadTaskState *)self _overallProgress];
  [_overallProgress setCurrentValue:{(v3 * objc_msgSend(_overallProgress, "maxValue"))}];
}

- (void)setTransferProgress:(double)progress
{
  v3 = self->_transferProgressFraction * progress;
  _overallProgress = [(BLPipelineDownloadTaskState *)self _overallProgress];
  [_overallProgress setCurrentValue:{(v3 * objc_msgSend(_overallProgress, "maxValue"))}];
}

- (void)setTransferProgressWithBytesWritten:(int64_t)written totalBytesExpected:(int64_t)expected
{
  self->_transferBytesExpected = expected;
  self->_transferBytesWritten = written;
  if (expected >= 1)
  {
    [(BLPipelineDownloadTaskState *)self setTransferProgress:written / expected];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    downloadIdentifier = [(BLPipelineDownloadTaskState *)self downloadIdentifier];
    downloadIdentifier2 = [equalCopy downloadIdentifier];
    v6 = [downloadIdentifier isEqualToString:downloadIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setAutomaticType:{-[BLPipelineDownloadTaskState automaticType](self, "automaticType")}];
  bundleIdentifier = [(BLPipelineDownloadTaskState *)self bundleIdentifier];
  v7 = [bundleIdentifier copyWithZone:zone];
  [v5 setBundleIdentifier:v7];

  downloadIdentifier = [(BLPipelineDownloadTaskState *)self downloadIdentifier];
  v9 = [downloadIdentifier copyWithZone:zone];
  [v5 setDownloadIdentifier:v9];

  kind = [(BLPipelineDownloadTaskState *)self kind];
  v11 = [kind copyWithZone:zone];
  [v5 setKind:v11];

  [v5 setAssetIdentifier:{-[BLPipelineDownloadTaskState assetIdentifier](self, "assetIdentifier")}];
  playlistIdentifier = [(BLPipelineDownloadTaskState *)self playlistIdentifier];
  [v5 setPlaylistIdentifier:playlistIdentifier];

  overallProgress = [(BLPipelineDownloadTaskState *)self overallProgress];
  v14 = [overallProgress copyWithZone:zone];
  [v5 setOverallProgress:v14];

  [v5 setRequiresDownloadHandler:{-[BLPipelineDownloadTaskState requiresDownloadHandler](self, "requiresDownloadHandler")}];
  [v5 setDownloadPhase:{-[BLPipelineDownloadTaskState downloadPhase](self, "downloadPhase")}];
  [v5 setTransferBytesExpected:{-[BLPipelineDownloadTaskState transferBytesExpected](self, "transferBytesExpected")}];
  [v5 setTransferBytesWritten:{-[BLPipelineDownloadTaskState transferBytesWritten](self, "transferBytesWritten")}];
  [(BLPipelineDownloadTaskState *)self transferProgressFraction];
  [v5 setTransferProgressFraction:?];
  artistName = [(BLPipelineDownloadTaskState *)self artistName];
  [v5 setArtistName:artistName];

  title = [(BLPipelineDownloadTaskState *)self title];
  [v5 setTitle:title];

  subtitle = [(BLPipelineDownloadTaskState *)self subtitle];
  [v5 setSubtitle:subtitle];

  collectionArtistName = [(BLPipelineDownloadTaskState *)self collectionArtistName];
  [v5 setCollectionArtistName:collectionArtistName];

  collectionTitle = [(BLPipelineDownloadTaskState *)self collectionTitle];
  [v5 setCollectionTitle:collectionTitle];

  genre = [(BLPipelineDownloadTaskState *)self genre];
  [v5 setGenre:genre];

  thumbnailImageURL = [(BLPipelineDownloadTaskState *)self thumbnailImageURL];
  [v5 setThumbnailImageURL:thumbnailImageURL];

  cancelDownloadURL = [(BLPipelineDownloadTaskState *)self cancelDownloadURL];
  [v5 setCancelDownloadURL:cancelDownloadURL];

  transactionIdentifier = [(BLPipelineDownloadTaskState *)self transactionIdentifier];
  [v5 setTransactionIdentifier:transactionIdentifier];

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
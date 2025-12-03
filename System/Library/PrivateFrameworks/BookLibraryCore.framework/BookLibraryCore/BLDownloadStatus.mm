@interface BLDownloadStatus
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BLDownloadStatus

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    [v4 setStoreID:self->_storeID];
    storePlaylistID = [(BLDownloadStatus *)self storePlaylistID];
    [v5 setStorePlaylistID:storePlaylistID];

    permLink = [(BLDownloadStatus *)self permLink];
    [v5 setPermLink:permLink];

    downloadID = [(BLDownloadStatus *)self downloadID];
    [v5 setDownloadID:downloadID];

    [v5 setPersistentIdentifier:{-[BLDownloadStatus persistentIdentifier](self, "persistentIdentifier")}];
    percentComplete = [(BLDownloadStatus *)self percentComplete];
    [v5 setPercentComplete:percentComplete];

    estimatedTimeRemaining = [(BLDownloadStatus *)self estimatedTimeRemaining];
    [v5 setEstimatedTimeRemaining:estimatedTimeRemaining];

    transferBytesWritten = [(BLDownloadStatus *)self transferBytesWritten];
    [v5 setTransferBytesWritten:transferBytesWritten];

    transferBytesExpected = [(BLDownloadStatus *)self transferBytesExpected];
    [v5 setTransferBytesExpected:transferBytesExpected];

    [v5 setDownloadPhase:{-[BLDownloadStatus downloadPhase](self, "downloadPhase")}];
    [v5 setIsAudiobook:{-[BLDownloadStatus isAudiobook](self, "isAudiobook")}];
    [v5 setIsRestore:{-[BLDownloadStatus isRestore](self, "isRestore")}];
    [v5 setIsSample:{-[BLDownloadStatus isSample](self, "isSample")}];
    [v5 setIsPurchase:{-[BLDownloadStatus isPurchase](self, "isPurchase")}];
    purchaseDate = [(BLDownloadStatus *)self purchaseDate];
    [v5 setPurchaseDate:purchaseDate];

    [v5 setPersistentIdentifier:{-[BLDownloadStatus persistentIdentifier](self, "persistentIdentifier")}];
    storeAccountIdentifier = [(BLDownloadStatus *)self storeAccountIdentifier];
    [v5 setStoreAccountIdentifier:storeAccountIdentifier];

    artistName = [(BLDownloadStatus *)self artistName];
    [v5 setArtistName:artistName];

    title = [(BLDownloadStatus *)self title];
    [v5 setTitle:title];

    subtitle = [(BLDownloadStatus *)self subtitle];
    [v5 setSubtitle:subtitle];

    collectionArtistName = [(BLDownloadStatus *)self collectionArtistName];
    [v5 setCollectionArtistName:collectionArtistName];

    collectionTitle = [(BLDownloadStatus *)self collectionTitle];
    [v5 setCollectionTitle:collectionTitle];

    genre = [(BLDownloadStatus *)self genre];
    [v5 setGenre:genre];

    thumbnailImageURL = [(BLDownloadStatus *)self thumbnailImageURL];
    [v5 setThumbnailImageURL:thumbnailImageURL];

    assetKind = [(BLDownloadStatus *)self assetKind];
    [v5 setAssetKind:assetKind];
  }

  return v5;
}

@end
@interface BLDownloadStatus
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BLDownloadStatus

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = v4;
  if (v4)
  {
    [v4 setStoreID:self->_storeID];
    v6 = [(BLDownloadStatus *)self storePlaylistID];
    [v5 setStorePlaylistID:v6];

    v7 = [(BLDownloadStatus *)self permLink];
    [v5 setPermLink:v7];

    v8 = [(BLDownloadStatus *)self downloadID];
    [v5 setDownloadID:v8];

    [v5 setPersistentIdentifier:{-[BLDownloadStatus persistentIdentifier](self, "persistentIdentifier")}];
    v9 = [(BLDownloadStatus *)self percentComplete];
    [v5 setPercentComplete:v9];

    v10 = [(BLDownloadStatus *)self estimatedTimeRemaining];
    [v5 setEstimatedTimeRemaining:v10];

    v11 = [(BLDownloadStatus *)self transferBytesWritten];
    [v5 setTransferBytesWritten:v11];

    v12 = [(BLDownloadStatus *)self transferBytesExpected];
    [v5 setTransferBytesExpected:v12];

    [v5 setDownloadPhase:{-[BLDownloadStatus downloadPhase](self, "downloadPhase")}];
    [v5 setIsAudiobook:{-[BLDownloadStatus isAudiobook](self, "isAudiobook")}];
    [v5 setIsRestore:{-[BLDownloadStatus isRestore](self, "isRestore")}];
    [v5 setIsSample:{-[BLDownloadStatus isSample](self, "isSample")}];
    [v5 setIsPurchase:{-[BLDownloadStatus isPurchase](self, "isPurchase")}];
    v13 = [(BLDownloadStatus *)self purchaseDate];
    [v5 setPurchaseDate:v13];

    [v5 setPersistentIdentifier:{-[BLDownloadStatus persistentIdentifier](self, "persistentIdentifier")}];
    v14 = [(BLDownloadStatus *)self storeAccountIdentifier];
    [v5 setStoreAccountIdentifier:v14];

    v15 = [(BLDownloadStatus *)self artistName];
    [v5 setArtistName:v15];

    v16 = [(BLDownloadStatus *)self title];
    [v5 setTitle:v16];

    v17 = [(BLDownloadStatus *)self subtitle];
    [v5 setSubtitle:v17];

    v18 = [(BLDownloadStatus *)self collectionArtistName];
    [v5 setCollectionArtistName:v18];

    v19 = [(BLDownloadStatus *)self collectionTitle];
    [v5 setCollectionTitle:v19];

    v20 = [(BLDownloadStatus *)self genre];
    [v5 setGenre:v20];

    v21 = [(BLDownloadStatus *)self thumbnailImageURL];
    [v5 setThumbnailImageURL:v21];

    v22 = [(BLDownloadStatus *)self assetKind];
    [v5 setAssetKind:v22];
  }

  return v5;
}

@end
@interface BLDownloadMetadata
- (BLDownloadMetadata)initWithDictionary:(id)a3;
- (BOOL)hasHDR;
- (BOOL)isAutomaticDownload;
- (BOOL)isCompilation;
- (BOOL)isDeviceBasedVPP;
- (BOOL)isExplicitContent;
- (BOOL)isHighDefinition;
- (BOOL)isMusicShow;
- (BOOL)isRedownloadDownload;
- (BOOL)isRental;
- (BOOL)isSample;
- (BOOL)isSharedResource;
- (BOOL)shouldDownloadAutomatically;
- (NSArray)MD5HashStrings;
- (NSArray)sinfs;
- (NSData)epubRightsData;
- (NSDate)releaseDate;
- (NSDictionary)primaryAssetDictionary;
- (NSNumber)downloaderAccountIdentifier;
- (NSNumber)numberOfBytesToHash;
- (NSNumber)releaseYear;
- (NSNumber)rentalID;
- (NSNumber)requestPersistentID;
- (NSString)appleID;
- (NSString)artistName;
- (NSString)copyright;
- (NSString)downloadKey;
- (NSString)fileExtension;
- (NSString)genre;
- (NSString)kind;
- (NSString)longDescription;
- (NSString)pageProgressionDirection;
- (NSString)preferredAssetFlavor;
- (NSString)redownloadActionParameters;
- (NSString)releaseDateString;
- (NSString)shortDescription;
- (NSString)sortArtistName;
- (NSString)sortCollectionName;
- (NSString)sortTitle;
- (NSString)title;
- (NSString)transactionIdentifier;
- (NSURL)cancelDownloadURL;
- (NSURL)fullSizeImageURL;
- (NSURL)hlsPlaylistURL;
- (NSURL)launchExtrasUrl;
- (NSURL)primaryAssetURL;
- (NSURL)thumbnailImageURL;
- (id)_assetDictionary;
- (id)_dateValueForValue:(id)a3;
- (id)_newDateFormatter;
- (id)_newImageCollectionWithURLString:(id)a3;
- (id)_stringValueForValue:(id)a3;
- (id)_thumbnailArtworkImage;
- (id)_urlValueForValue:(id)a3;
- (id)_valueForFirstAvailableTopLevelKey:(id)a3;
- (id)betaExternalVersionIdentifier;
- (id)bundleIdentifier;
- (id)cloudIdentifier;
- (id)collectionArtistName;
- (id)collectionIndexInCollectionGroup;
- (id)collectionName;
- (id)composerName;
- (id)contentRating;
- (id)copyWithZone:(_NSZone *)a3;
- (id)downloadPermalink;
- (id)durationInMilliseconds;
- (id)episodeIdentifier;
- (id)episodeSortIdentifier;
- (id)indexInCollection;
- (id)longSeasonDescription;
- (id)movementCount;
- (id)movementName;
- (id)movementNumber;
- (id)networkName;
- (id)numberOfCollectionsInCollectionGroup;
- (id)numberOfItemsInCollection;
- (id)podcastEpisodeGUID;
- (id)podcastFeedURL;
- (id)podcastType;
- (id)publicationVersion;
- (id)purchaseDate;
- (id)racGUID;
- (id)requiredDeviceCapabilities;
- (id)seasonNumber;
- (id)seriesName;
- (id)showComposer;
- (id)thumbnailImageCollection;
- (id)valueForFirstAvailableKey:(id)a3;
- (id)variantIdentifier;
- (id)videoDetailsDictionary;
- (id)viewStoreItemURL;
- (id)workName;
- (int64_t)keyStyle;
- (unint64_t)artistIdentifier;
- (unint64_t)collectionIdentifier;
- (unint64_t)composerIdentifier;
- (unint64_t)genreIdentifier;
- (unint64_t)itemIdentifier;
- (unint64_t)preOrderIdentifier;
- (void)_setValue:(id)a3 forTopLevelKey:(id)a4;
- (void)_setValueCopy:(id)a3 forMetadataKey:(id)a4;
- (void)setArtistIdentifier:(unint64_t)a3;
- (void)setArtistName:(id)a3;
- (void)setCancelDownloadURL:(id)a3;
- (void)setCollectionIdentifier:(unint64_t)a3;
- (void)setCollectionIndexInCollectionGroup:(id)a3;
- (void)setCollectionName:(id)a3;
- (void)setComposerIdentifier:(unint64_t)a3;
- (void)setContentRating:(id)a3;
- (void)setDictionary:(id)a3;
- (void)setExplicitContent:(BOOL)a3;
- (void)setFullSizeImageURL:(id)a3;
- (void)setGenreIdentifier:(unint64_t)a3;
- (void)setHlsPlaylistURL:(id)a3;
- (void)setIndexInCollection:(id)a3;
- (void)setItemIdentifier:(unint64_t)a3;
- (void)setKeyStyle:(int64_t)a3;
- (void)setLaunchExtrasUrl:(id)a3;
- (void)setLongDescription:(id)a3;
- (void)setMD5HashStrings:(id)a3 numberOfBytesToHash:(id)a4;
- (void)setNumberOfCollectionsInCollectionGroup:(id)a3;
- (void)setNumberOfItemsInCollection:(id)a3;
- (void)setPodcastFeedURL:(id)a3;
- (void)setPreOrderIdentifier:(unint64_t)a3;
- (void)setPreferredAssetFlavor:(id)a3;
- (void)setPrimaryAssetURL:(id)a3;
- (void)setRacGUID:(id)a3;
- (void)setReleaseDate:(id)a3;
- (void)setReleaseDateString:(id)a3;
- (void)setRequestPersistentID:(id)a3;
- (void)setThumbnailImageURL:(id)a3;
- (void)setTitle:(id)a3;
- (void)setValue:(id)a3 forMetadataKey:(id)a4;
- (void)setViewStoreItemURL:(id)a3;
@end

@implementation BLDownloadMetadata

- (BLDownloadMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = BLDownloadMetadata;
  v5 = [(BLDownloadMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v8 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v5->_lock;
    v5->_lock = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [(NSLock *)self->_lock lock];
  v6 = [(NSMutableDictionary *)self->_dictionary mutableCopyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  [(NSLock *)self->_lock unlock];
  return v5;
}

- (unint64_t)artistIdentifier
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"artistId", @"artist-id", 0];
  v3 = BLGetItemIdentifierFromValue();

  return v3;
}

- (NSString)artistName
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"artistName", @"artist-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)betaExternalVersionIdentifier
{
  v2 = [(BLDownloadMetadata *)self valueForMetadataKey:@"betaExternalVersionIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)bundleIdentifier
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"softwareVersionBundleId", @"bundle-id", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)cloudIdentifier
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"cloud-id", @"sagaId", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)collectionArtistName
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"playlistArtistName", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (unint64_t)collectionIdentifier
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"playlistId", @"collection-id", 0];
  v3 = BLGetItemIdentifierFromValue();

  return v3;
}

- (id)collectionIndexInCollectionGroup
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"discNumber", @"disc-number", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)collectionName
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"playlistName", @"collection-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (unint64_t)composerIdentifier
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"composerId", @"composer-id", 0];
  v3 = BLGetItemIdentifierFromValue();

  return v3;
}

- (id)composerName
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"composerName", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)contentRating
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"rating", 0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [[BLItemContentRating alloc] initWithDictionary:v2];
  }

  return v3;
}

- (id)downloadPermalink
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"download-permalink", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)durationInMilliseconds
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"duration", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)episodeIdentifier
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"episode-number", 0];
  v4 = [(BLDownloadMetadata *)self _stringValueForValue:v3];

  return v4;
}

- (id)episodeSortIdentifier
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"episode-sort-id", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [(BLDownloadMetadata *)self indexInCollection];
  }

  v5 = v4;

  return v5;
}

- (NSURL)fullSizeImageURL
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"artworkURL", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];
  }

  else
  {
    v5 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"artwork-urls", 0];

    if (v5)
    {
      v6 = [[BLItemImageCollection alloc] initWithImageCollection:v5];
      v7 = [(BLItemImageCollection *)v6 bestImageForSize:0.0, 0.0];
      v4 = [v7 URL];

      v3 = v5;
    }

    else
    {
      v3 = 0;
      v4 = 0;
    }
  }

  return v4;
}

- (NSString)genre
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"genre", @"genreName", @"genre-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (unint64_t)genreIdentifier
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"genreId", @"genre-id", 0];
  v3 = BLGetItemIdentifierFromValue();

  return v3;
}

- (NSURL)hlsPlaylistURL
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"hls-playlist-url", 0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  return v3;
}

- (id)indexInCollection
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"trackNumber", @"track-number", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)isCompilation
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"compilation", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isDeviceBasedVPP
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"isDeviceBased", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isExplicitContent
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"explicit", 0];
  v3 = (objc_opt_respondsToSelector() & 1) != 0 && [v2 integerValue] == 1;

  return v3;
}

- (BOOL)hasHDR
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"has-hdr", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isHighDefinition
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"high-definition", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isRental
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"isRental", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isSample
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"isSample", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isSharedResource
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"isSharedResource", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (unint64_t)itemIdentifier
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"itemId", @"songId", @"item-id", 0];
  v3 = BLGetItemIdentifierFromValue();

  return v3;
}

- (NSString)kind
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"kind", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSURL)launchExtrasUrl
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"launch-extras-url", 0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  return v3;
}

- (NSString)longDescription
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"longDescription", @"long-description", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)networkName
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"network-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)numberOfCollectionsInCollectionGroup
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"discCount", @"disc-count", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)numberOfItemsInCollection
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"trackCount", @"track-count", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)racGUID
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"sgGuid", 0];
  v4 = [(BLDownloadMetadata *)self _stringValueForValue:v3];

  if ([v4 length])
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)podcastEpisodeGUID
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"episode-guid", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)podcastFeedURL
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"podcast-feed-url", 0];
  v4 = [(BLDownloadMetadata *)self _urlValueForValue:v3];

  return v4;
}

- (id)podcastType
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"podcast-type", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSDictionary)primaryAssetDictionary
{
  [(NSLock *)self->_lock lock];
  v3 = [(BLDownloadMetadata *)self _assetDictionary];
  v4 = [v3 copy];

  [(NSLock *)self->_lock unlock];

  return v4;
}

- (id)purchaseDate
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"purchaseDate", 0];
  v4 = [(BLDownloadMetadata *)self _dateValueForValue:v3];

  return v4;
}

- (NSDate)releaseDate
{
  v3 = [(BLDownloadMetadata *)self _releaseDateValue];
  v4 = [(BLDownloadMetadata *)self _dateValueForValue:v3];

  return v4;
}

- (NSNumber)releaseYear
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"year", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)rentalID
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"rental-id", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)seasonNumber
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"season-number", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)seriesName
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"show-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [(BLDownloadMetadata *)self collectionName];
  }

  v5 = v4;

  return v5;
}

- (id)longSeasonDescription
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"longSeasonDescription", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setArtistIdentifier:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] bl_numberWithItemIdentifier:a3];
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"artist-id";
  }

  else
  {
    v4 = @"artistId";
  }

  [(BLDownloadMetadata *)self setValue:v5 forMetadataKey:v4];
}

- (void)setArtistName:(id)a3
{
  v5 = a3;
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"artist-name";
  }

  else
  {
    v4 = @"artistName";
  }

  [(BLDownloadMetadata *)self _setValueCopy:v5 forMetadataKey:v4];
}

- (void)setCollectionIdentifier:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] bl_numberWithItemIdentifier:a3];
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"collection-id";
  }

  else
  {
    v4 = @"playlistId";
  }

  [(BLDownloadMetadata *)self setValue:v5 forMetadataKey:v4];
}

- (void)setCollectionIndexInCollectionGroup:(id)a3
{
  v5 = a3;
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"disc-number";
  }

  else
  {
    v4 = @"discNumber";
  }

  [(BLDownloadMetadata *)self setValue:v5 forMetadataKey:v4];
}

- (void)setCollectionName:(id)a3
{
  v5 = a3;
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"collection-name";
  }

  else
  {
    v4 = @"playlistName";
  }

  [(BLDownloadMetadata *)self setValue:v5 forMetadataKey:v4];
}

- (void)setComposerIdentifier:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] bl_numberWithItemIdentifier:a3];
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"composer-id";
  }

  else
  {
    v4 = @"composerId";
  }

  [(BLDownloadMetadata *)self setValue:v5 forMetadataKey:v4];
}

- (void)setContentRating:(id)a3
{
  v4 = [a3 contentRatingDictionary];
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"rating"];
}

- (void)setExplicitContent:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"explicit"];
}

- (void)setFullSizeImageURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"artworkURL"];
}

- (void)setGenreIdentifier:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] bl_numberWithItemIdentifier:a3];
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"genre-id";
  }

  else
  {
    v4 = @"genreId";
  }

  [(BLDownloadMetadata *)self setValue:v5 forMetadataKey:v4];
}

- (void)setHlsPlaylistURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"hls-playlist-url"];
}

- (void)setIndexInCollection:(id)a3
{
  v5 = a3;
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"track-number";
  }

  else
  {
    v4 = @"trackNumber";
  }

  [(BLDownloadMetadata *)self setValue:v5 forMetadataKey:v4];
}

- (void)setItemIdentifier:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCABB0] bl_numberWithItemIdentifier:a3];
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"item-id";
  }

  else
  {
    v4 = @"itemId";
  }

  [(BLDownloadMetadata *)self setValue:v5 forMetadataKey:v4];
}

- (void)setLaunchExtrasUrl:(id)a3
{
  v4 = [a3 absoluteString];
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"launch-extras-url"];
}

- (void)setLongDescription:(id)a3
{
  v5 = a3;
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"long-description";
  }

  else
  {
    v4 = @"longDescription";
  }

  [(BLDownloadMetadata *)self _setValueCopy:v5 forMetadataKey:v4];
}

- (void)setNumberOfCollectionsInCollectionGroup:(id)a3
{
  v5 = a3;
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"disc-count";
  }

  else
  {
    v4 = @"discCount";
  }

  [(BLDownloadMetadata *)self setValue:v5 forMetadataKey:v4];
}

- (void)setNumberOfItemsInCollection:(id)a3
{
  v5 = a3;
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"track-count";
  }

  else
  {
    v4 = @"trackCount";
  }

  [(BLDownloadMetadata *)self setValue:v5 forMetadataKey:v4];
}

- (void)setRacGUID:(id)a3
{
  v4 = [a3 UUIDString];
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"sgGuid"];
}

- (void)setPodcastFeedURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"podcast-feed-url"];
}

- (void)setReleaseDate:(id)a3
{
  v5 = a3;
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"release-date";
  }

  else
  {
    v4 = @"releaseDate";
  }

  [(BLDownloadMetadata *)self setValue:v5 forMetadataKey:v4];
}

- (void)setThumbnailImageURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"thumbnail-url"];
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"title"];
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"unmodified-title"];
}

- (void)setViewStoreItemURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"url"];
}

- (NSString)shortDescription
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"description", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)sortArtistName
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"sort-artist", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [(BLDownloadMetadata *)self subtitle];
  }

  v5 = v4;

  return v5;
}

- (NSString)sortCollectionName
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"sort-album", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [(BLDownloadMetadata *)self collectionName];
  }

  v5 = v4;

  return v5;
}

- (NSString)sortTitle
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"sort-name", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [(BLDownloadMetadata *)self title];
  }

  v5 = v4;

  return v5;
}

- (id)thumbnailImageCollection
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"thumbnail-url", 0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [(BLDownloadMetadata *)self _newImageCollectionWithURLString:v3]) != 0)
  {
    v5 = v4;
  }

  else
  {
    v6 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"artwork-urls", 0];
    if (!v6 || (v7 = v6, v5 = [[BLItemImageCollection alloc] initWithImageCollection:v6], v7, !v5))
    {
      v8 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"softwareIcon57x57URL", @"icon-url", 0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [(BLDownloadMetadata *)self _newImageCollectionWithURLString:v8];
      }

      else
      {
        v5 = 0;
      }

      v3 = v8;
    }
  }

  return v5;
}

- (NSURL)thumbnailImageURL
{
  v2 = [(BLDownloadMetadata *)self _thumbnailArtworkImage];
  v3 = [v2 URL];

  return v3;
}

- (NSString)title
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"unmodified-title", @"title", @"itemName", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)transactionIdentifier
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"download-id", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)variantIdentifier
{
  v2 = [(BLDownloadMetadata *)self valueForMetadataKey:@"variantId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)videoDetailsDictionary
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"videoDetails", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)viewStoreItemURL
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"url", 0];
  v4 = [(BLDownloadMetadata *)self _urlValueForValue:v3];

  return v4;
}

- (id)showComposer
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"show-composer", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (BOOL)isMusicShow
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"is-apple-music-show", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)workName
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"work", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)movementName
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"movement", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)movementNumber
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"movement-number", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)movementCount
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"movement-count", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSURL)cancelDownloadURL
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"cancel-download-url", 0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  return v3;
}

- (NSString)copyright
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"copyright", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSNumber)downloaderAccountIdentifier
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"com.apple.iTunesStore.downloadInfo", 0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 objectForKey:@"accountInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [v4 objectForKey:@"DownloaderID"];
    }

    else
    {
      v3 = 0;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (NSString)downloadKey
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"downloadKey", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSData)epubRightsData
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"epr", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)fileExtension
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"fileExtension", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (int64_t)keyStyle
{
  [(NSLock *)self->_lock lock];
  keyStyle = self->_keyStyle;
  [(NSLock *)self->_lock unlock];
  return keyStyle;
}

- (BOOL)isAutomaticDownload
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"is-auto-download", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isRedownloadDownload
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"is-redownload", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)MD5HashStrings
{
  v3 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"chunks", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 objectForKey:@"chunks"];
  }

  else
  {
    v5 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"md5", 0];
    objc_opt_class();
    v4 = 0;
    if (objc_opt_isKindOfClass())
    {
      v4 = [MEMORY[0x277CBEA60] arrayWithObject:v5];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (NSNumber)numberOfBytesToHash
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"chunks", 0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"chunkSize"];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)pageProgressionDirection
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"page-progression-direction", @"pageProgressionDirection", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)preferredAssetFlavor
{
  v2 = [(BLDownloadMetadata *)self valueForMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"preferredAssetFlavor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)publicationVersion
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"publication-version", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (unint64_t)preOrderIdentifier
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"preorder-id", 0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 bl_itemIdentifierValue];
  }

  return v3;
}

- (NSURL)primaryAssetURL
{
  v2 = [(BLDownloadMetadata *)self _valueForFirstAvailableTopLevelKey:@"URL", @"url", 0];
  objc_opt_class();
  v3 = 0;
  if (objc_opt_isKindOfClass())
  {
    v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];
  }

  return v3;
}

- (NSString)redownloadActionParameters
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"buy-params-256", @"buyParams", @"action-params", @"redownload-params", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)releaseDateString
{
  v3 = [(BLDownloadMetadata *)self _releaseDateValue];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(BLDownloadMetadata *)self _newDateFormatter];
    v5 = [v4 stringFromDate:v3];

    v3 = v5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (NSNumber)requestPersistentID
{
  v2 = [(BLDownloadMetadata *)self valueForMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 objectForKey:@"requestPersistentID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 copy];
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)requiredDeviceCapabilities
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"UIRequiredDeviceCapabilities", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (NSString)appleID
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"appleId", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)setCancelDownloadURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"cancel-download-url"];
}

- (void)setDictionary:(id)a3
{
  v6 = a3;
  [(NSLock *)self->_lock lock];
  if (self->_dictionary != v6)
  {
    v4 = [(NSMutableDictionary *)v6 mutableCopy];
    dictionary = self->_dictionary;
    self->_dictionary = v4;
  }

  [(NSLock *)self->_lock unlock];
}

- (void)setKeyStyle:(int64_t)a3
{
  [(NSLock *)self->_lock lock];
  self->_keyStyle = a3;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setMD5HashStrings:(id)a3 numberOfBytesToHash:(id)a4
{
  v11 = a3;
  v6 = a4;
  if ([v11 count])
  {
    if ([v11 count] == 1)
    {
      [(BLDownloadMetadata *)self setValue:0 forMetadataKey:@"chunks"];
      v7 = [v11 objectAtIndex:0];
      v8 = self;
      v9 = v7;
    }

    else
    {
      v10 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"chunks", 0];
      v7 = [v10 mutableCopy];

      if (!v7)
      {
        v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      [v7 setObject:v11 forKey:@"chunks"];
      [v7 setObject:v6 forKey:@"chunkSize"];
      [(BLDownloadMetadata *)self setValue:v7 forMetadataKey:@"chunks"];
      v8 = self;
      v9 = 0;
    }

    [(BLDownloadMetadata *)v8 setValue:v9 forMetadataKey:@"md5"];
  }

  else
  {
    [(BLDownloadMetadata *)self setValue:0 forMetadataKey:@"chunks"];
    [(BLDownloadMetadata *)self setValue:0 forMetadataKey:@"md5"];
  }
}

- (void)setPreferredAssetFlavor:(id)a3
{
  v7 = a3;
  v4 = [(BLDownloadMetadata *)self valueForMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
  }

  v6 = v5;

  if (v7)
  {
    [v6 setObject:v7 forKey:@"preferredAssetFlavor"];
  }

  else
  {
    [v6 removeObjectForKey:@"preferredAssetFlavor"];
  }

  [(BLDownloadMetadata *)self setValue:v6 forMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
}

- (void)setPreOrderIdentifier:(unint64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] bl_numberWithItemIdentifier:a3];
  [(BLDownloadMetadata *)self setValue:v4 forMetadataKey:@"preorder-id"];
}

- (void)setPrimaryAssetURL:(id)a3
{
  v4 = [a3 absoluteString];
  [(BLDownloadMetadata *)self _setValue:v4 forTopLevelKey:@"URL"];
}

- (void)setReleaseDateString:(id)a3
{
  v5 = a3;
  if ([(BLDownloadMetadata *)self keyStyle]== 1)
  {
    v4 = @"release-date";
  }

  else
  {
    v4 = @"releaseDate";
  }

  [(BLDownloadMetadata *)self setValue:v5 forMetadataKey:v4];
}

- (void)setRequestPersistentID:(id)a3
{
  v7 = a3;
  v4 = [(BLDownloadMetadata *)self valueForMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 mutableCopy];
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
  }

  v6 = v5;

  if (v7)
  {
    [v6 setObject:v7 forKey:@"requestPersistentID"];
  }

  else
  {
    [v6 removeObjectForKey:@"requestPersistentID"];
  }

  [(BLDownloadMetadata *)self setValue:v6 forMetadataKey:@"com.apple.iTunesStore.downloadInfo"];
}

- (void)setValue:(id)a3 forMetadataKey:(id)a4
{
  v13 = a3;
  v6 = a4;
  [(NSLock *)self->_lock lock];
  dictionary = self->_dictionary;
  if (!dictionary)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_dictionary;
    self->_dictionary = v8;

    dictionary = self->_dictionary;
  }

  v10 = [(NSMutableDictionary *)dictionary objectForKey:@"metadata"];
  if (v10)
  {
    v11 = v10;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ([-[NSMutableDictionary classForCoder](v11 "classForCoder")] & 1) == 0)
    {
      v12 = [(NSMutableDictionary *)v11 mutableCopy];

      [(NSMutableDictionary *)self->_dictionary setObject:v12 forKey:@"metadata"];
      v11 = v12;
    }
  }

  else
  {
    v11 = self->_dictionary;
  }

  if (v13)
  {
    [(NSMutableDictionary *)v11 setObject:v13 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)v11 removeObjectForKey:v6];
    [(NSMutableDictionary *)self->_dictionary removeObjectForKey:v6];
  }

  [(NSLock *)self->_lock unlock];
}

- (BOOL)shouldDownloadAutomatically
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"auto-download", 0];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)sinfs
{
  v2 = [(BLDownloadMetadata *)self valueForFirstAvailableKey:@"sinfs", 0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (id)valueForFirstAvailableKey:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  v5 = [(BLDownloadMetadata *)self _assetDictionary];
  v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"metadata"];
  if (!v6)
  {
    v6 = [v5 objectForKey:@"metadata"];
  }

  v13 = &v15;
  if (v4)
  {
    do
    {
      v7 = [v5 objectForKey:v4];
      if (!v7)
      {
        v7 = [v6 objectForKey:v4];
        if (!v7)
        {
          v7 = [(NSMutableDictionary *)self->_dictionary objectForKey:v4];
        }
      }

      v8 = v7;
      v9 = v13++;
      v10 = *v9;

      if (v10)
      {
        v11 = v8 == 0;
      }

      else
      {
        v11 = 0;
      }

      v4 = v10;
    }

    while (v11);
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  [(NSLock *)self->_lock unlock];

  return v8;
}

- (id)_assetDictionary
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"metadata"];
  v4 = [v3 objectForKey:@"kind"];
  v5 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"assets"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v5 = 0;
    }
  }

  if (!v4)
  {
    v4 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"kind"];
    if (!v4)
    {
      v6 = [v5 firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v6 objectForKey:@"metadata"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = [v7 objectForKey:@"kind"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v4 = v8;
          }

          else
          {
            v4 = 0;
          }
        }

        else
        {
          v4 = 0;
        }
      }

      else
      {
        v4 = 0;
      }
    }
  }

  if ([v5 count])
  {
    v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v9 = [v3 objectForKey:@"com.apple.iTunesStore.downloadInfo"];
    if (!v9)
    {
      v9 = [(NSMutableDictionary *)self->_dictionary objectForKey:@"com.apple.iTunesStore.downloadInfo"];
    }

    v10 = 0x277CBE000uLL;
    objc_opt_class();
    v11 = v43;
    if (objc_opt_isKindOfClass())
    {
      v12 = [v9 objectForKey:@"preferredAssetFlavor"];
      if ([v12 length])
      {
        [v43 addObject:v12];
      }
    }

    if ([v4 isEqualToString:@"ebook"])
    {
      GSMainScreenScaleFactor();
      if (v13 == 1.0)
      {
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"lrpluspub", @"lrpub", 0}];
        [v43 addObjectsFromArray:v14];
      }

      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"pluspub", @"pub", 0}];
      [v43 addObjectsFromArray:v15];
    }

    v42 = v3;
    v40 = v9;
    v41 = v4;
    if ([v43 count])
    {
      v16 = [v5 count];
      if (v16 < 1)
      {
        v45 = 0;
      }

      else
      {
        v17 = v16;
        v45 = 0;
        v18 = 0;
        v44 = 0x7FFFFFFFFFFFFFFFLL;
        v19 = 0x277CCA000uLL;
        do
        {
          v20 = [v5 objectAtIndex:v18];
          v21 = *(v10 + 2752);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = [v20 objectForKey:@"flavor"];
            v23 = *(v19 + 3240);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24 = v19;
              v25 = v5;
              v26 = v10;
              v27 = [v11 indexOfObject:v22];
              if (v27 < v44)
              {
                v28 = v27;
                v29 = v20;

                v44 = v28;
                v45 = v29;
                v11 = v43;
              }

              v10 = v26;
              v5 = v25;
              v19 = v24;
            }
          }

          ++v18;
        }

        while (v17 != v18);
      }
    }

    else
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v31 = v5;
      v32 = [v31 countByEnumeratingWithState:&v46 objects:v50 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v47;
        while (2)
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v47 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v46 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v45 = v36;
              goto LABEL_50;
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v46 objects:v50 count:16];
          if (v33)
          {
            continue;
          }

          break;
        }
      }

      v45 = 0;
LABEL_50:

      v11 = v43;
    }

    v4 = v41;
    v3 = v42;
    v30 = v45;
  }

  else
  {
    v30 = 0;
  }

  v37 = v30;

  v38 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)_dateValueForValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(BLDownloadMetadata *)self _newDateFormatter];
    v6 = [v5 dateFromString:v4];

    v4 = v6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)_newImageCollectionWithURLString:(id)a3
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = a3;
  v5 = [[v3 alloc] initWithString:v4];

  if (v5)
  {
    v6 = objc_alloc_init(BLItemArtworkImage);
    [(BLItemArtworkImage *)v6 setURL:v5];
    [(BLItemArtworkImage *)v6 setImageKind:@"download-queue-item.default"];
    v7 = [BLItemImageCollection alloc];
    v8 = [MEMORY[0x277CBEA60] arrayWithObject:v6];
    v9 = [(BLItemImageCollection *)v7 initWithItemImages:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_newDateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v2 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
  [v2 setLenient:1];
  v3 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v2 setTimeZone:v3];

  return v2;
}

- (void)_setValue:(id)a3 forTopLevelKey:(id)a4
{
  v10 = a3;
  v6 = a4;
  [(NSLock *)self->_lock lock];
  if (!self->_dictionary)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dictionary = self->_dictionary;
    self->_dictionary = v7;
  }

  v9 = self->_dictionary;
  if (v10)
  {
    [(NSMutableDictionary *)v9 setObject:v10 forKey:v6];
  }

  else
  {
    [(NSMutableDictionary *)v9 removeObjectForKey:v6];
  }

  [(NSLock *)self->_lock unlock];
}

- (void)_setValueCopy:(id)a3 forMetadataKey:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  [(BLDownloadMetadata *)self setValue:v7 forMetadataKey:v6];
}

- (id)_stringValueForValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 stringValue];

    v3 = v4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_thumbnailArtworkImage
{
  v2 = [(BLDownloadMetadata *)self thumbnailImageCollection];
  v3 = [v2 imagesForKind:@"download-queue-item.default"];
  if ([v3 count])
  {
    v4 = [v3 lastObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_urlValueForValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [MEMORY[0x277CBEBC0] URLWithString:v3];

    v3 = v4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)_valueForFirstAvailableTopLevelKey:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_lock lock];
  v5 = [(BLDownloadMetadata *)self _assetDictionary];
  v11 = &v13;
  if (v4)
  {
    do
    {
      v6 = [v5 objectForKey:v4];
      if (!v6)
      {
        v6 = [(NSMutableDictionary *)self->_dictionary objectForKey:v4];
      }

      v7 = v11++;
      v8 = *v7;

      if (v8)
      {
        v9 = v6 == 0;
      }

      else
      {
        v9 = 0;
      }

      v4 = v8;
    }

    while (v9);
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  [(NSLock *)self->_lock unlock];

  return v6;
}

@end
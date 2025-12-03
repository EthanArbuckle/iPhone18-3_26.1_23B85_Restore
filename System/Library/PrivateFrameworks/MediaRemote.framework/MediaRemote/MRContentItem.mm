@interface MRContentItem
+ (id)extractedIdentifierFromNowPlayingInfo:(id)info;
+ (id)mergeContentItems:(id)items;
- (BOOL)isEffectivelyEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (MRContentItem)initWithData:(id)data;
- (MRContentItem)initWithIdentifier:(id)identifier;
- (MRContentItem)initWithNowPlayingInfo:(id)info;
- (MRContentItem)initWithProtobuf:(id)protobuf;
- (MRContentItem)skeleton;
- (MRContentItemMetadata)metadata;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (NSDictionary)nowPlayingInfo;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)protobufWithEncoding:(int64_t)encoding;
- (void)mergeFrom:(id)from;
- (void)setNowPlayingInfo:(id)info policy:(unsigned __int8)policy request:(id)request;
@end

@implementation MRContentItem

- (MRContentItemMetadata)metadata
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  metadata = selfCopy->_metadata;
  if (!metadata)
  {
    v4 = objc_alloc_init(MRContentItemMetadata);
    v5 = selfCopy->_metadata;
    selfCopy->_metadata = v4;

    metadata = selfCopy->_metadata;
  }

  v6 = metadata;
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSDictionary)nowPlayingInfo
{
  v305[4] = *MEMORY[0x1E69E9840];
  metadata = [(MRContentItem *)self metadata];
  nowPlayingInfo = [metadata nowPlayingInfo];
  v5 = [nowPlayingInfo mutableCopy];

  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  identifier = [(MRContentItem *)self identifier];

  if (identifier)
  {
    identifier2 = [(MRContentItem *)self identifier];
    [(NSDictionary *)v5 setObject:identifier2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoContentItemIdentifier"];
  }

  metadata2 = [(MRContentItem *)self metadata];
  albumName = [metadata2 albumName];

  if (albumName)
  {
    metadata3 = [(MRContentItem *)self metadata];
    albumName2 = [metadata3 albumName];
    [(NSDictionary *)v5 setObject:albumName2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAlbum"];
  }

  metadata4 = [(MRContentItem *)self metadata];
  trackArtistName = [metadata4 trackArtistName];

  if (trackArtistName)
  {
    metadata5 = [(MRContentItem *)self metadata];
    trackArtistName2 = [metadata5 trackArtistName];
    [(NSDictionary *)v5 setObject:trackArtistName2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtist"];
  }

  metadata6 = [(MRContentItem *)self metadata];
  assetURL = [metadata6 assetURL];

  if (assetURL)
  {
    metadata7 = [(MRContentItem *)self metadata];
    assetURL2 = [metadata7 assetURL];
    [(NSDictionary *)v5 setObject:assetURL2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAssetURL"];
  }

  metadata8 = [(MRContentItem *)self metadata];
  composer = [metadata8 composer];

  if (composer)
  {
    metadata9 = [(MRContentItem *)self metadata];
    composer2 = [metadata9 composer];
    [(NSDictionary *)v5 setObject:composer2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoComposer"];
  }

  metadata10 = [(MRContentItem *)self metadata];
  hasDiscNumber = [metadata10 hasDiscNumber];

  if (hasDiscNumber)
  {
    v26 = MEMORY[0x1E696AD98];
    metadata11 = [(MRContentItem *)self metadata];
    v28 = [v26 numberWithInteger:{objc_msgSend(metadata11, "discNumber")}];
    [(NSDictionary *)v5 setObject:v28 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDiscNumber"];
  }

  metadata12 = [(MRContentItem *)self metadata];
  genre = [metadata12 genre];

  if (genre)
  {
    metadata13 = [(MRContentItem *)self metadata];
    genre2 = [metadata13 genre];
    [(NSDictionary *)v5 setObject:genre2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoGenre"];
  }

  metadata14 = [(MRContentItem *)self metadata];
  hasPlaybackRate = [metadata14 hasPlaybackRate];

  if (hasPlaybackRate)
  {
    v35 = MEMORY[0x1E696AD98];
    metadata15 = [(MRContentItem *)self metadata];
    [metadata15 playbackRate];
    v37 = [v35 numberWithFloat:?];
    [(NSDictionary *)v5 setObject:v37 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPlaybackRate"];
  }

  metadata16 = [(MRContentItem *)self metadata];
  currentPlaybackDate = [metadata16 currentPlaybackDate];

  if (currentPlaybackDate)
  {
    metadata17 = [(MRContentItem *)self metadata];
    currentPlaybackDate2 = [metadata17 currentPlaybackDate];
    [(NSDictionary *)v5 setObject:currentPlaybackDate2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCurrentPlaybackDate"];
  }

  metadata18 = [(MRContentItem *)self metadata];
  hasAlwaysLive = [metadata18 hasAlwaysLive];

  if (hasAlwaysLive)
  {
    v44 = MEMORY[0x1E696AD98];
    metadata19 = [(MRContentItem *)self metadata];
    v46 = [v44 numberWithBool:{objc_msgSend(metadata19, "isAlwaysLive")}];
    [(NSDictionary *)v5 setObject:v46 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsAlwaysLive"];
  }

  metadata20 = [(MRContentItem *)self metadata];
  isAlwaysLive = [metadata20 isAlwaysLive];

  if ((isAlwaysLive & 1) == 0)
  {
    metadata21 = [(MRContentItem *)self metadata];
    hasDuration = [metadata21 hasDuration];

    if (hasDuration)
    {
      v51 = MEMORY[0x1E696AD98];
      metadata22 = [(MRContentItem *)self metadata];
      [metadata22 duration];
      v53 = [v51 numberWithDouble:?];
      [(NSDictionary *)v5 setObject:v53 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDuration"];
    }

    metadata23 = [(MRContentItem *)self metadata];
    hasElapsedTime = [metadata23 hasElapsedTime];

    if (hasElapsedTime)
    {
      v56 = MEMORY[0x1E696AD98];
      metadata24 = [(MRContentItem *)self metadata];
      [metadata24 elapsedTime];
      v58 = [v56 numberWithDouble:?];
      [(NSDictionary *)v5 setObject:v58 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoElapsedTime"];
    }
  }

  metadata25 = [(MRContentItem *)self metadata];
  hasInTransition = [metadata25 hasInTransition];

  if (hasInTransition)
  {
    v61 = MEMORY[0x1E696AD98];
    metadata26 = [(MRContentItem *)self metadata];
    v63 = [v61 numberWithBool:{objc_msgSend(metadata26, "isInTransition")}];
    [(NSDictionary *)v5 setObject:v63 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsInTransition"];
  }

  metadata27 = [(MRContentItem *)self metadata];
  hasInferredTimestamp = [metadata27 hasInferredTimestamp];

  if (hasInferredTimestamp)
  {
    v66 = MEMORY[0x1E696AD98];
    metadata28 = [(MRContentItem *)self metadata];
    [metadata28 inferredTimestamp];
    v68 = [v66 numberWithDouble:?];
    [(NSDictionary *)v5 setObject:v68 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
  }

  metadata29 = [(MRContentItem *)self metadata];
  hasElapsedTimeTimestamp = [metadata29 hasElapsedTimeTimestamp];

  if (hasElapsedTimeTimestamp)
  {
    v71 = MEMORY[0x1E696AD98];
    metadata30 = [(MRContentItem *)self metadata];
    [metadata30 elapsedTimeTimestamp];
    v73 = [v71 numberWithDouble:?];
    [(NSDictionary *)v5 setObject:v73 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
  }

  v74 = [(NSDictionary *)v5 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
  v75 = v74;
  if (v74)
  {
    v76 = MEMORY[0x1E695DF00];
    [v74 doubleValue];
    v77 = [v76 dateWithTimeIntervalSinceReferenceDate:?];
    [(NSDictionary *)v5 setObject:v77 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
  }

  metadata31 = [(MRContentItem *)self metadata];
  hasStartTime = [metadata31 hasStartTime];

  if (hasStartTime)
  {
    v80 = MEMORY[0x1E695DF00];
    metadata32 = [(MRContentItem *)self metadata];
    [metadata32 startTime];
    v82 = [v80 dateWithTimeIntervalSinceReferenceDate:?];

    [(NSDictionary *)v5 setObject:v82 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoStartTime"];
  }

  metadata33 = [(MRContentItem *)self metadata];
  title = [metadata33 title];

  if (title)
  {
    metadata34 = [(MRContentItem *)self metadata];
    title2 = [metadata34 title];
    [(NSDictionary *)v5 setObject:title2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTitle"];
  }

  metadata35 = [(MRContentItem *)self metadata];
  hasTotalDiscCount = [metadata35 hasTotalDiscCount];

  if (hasTotalDiscCount)
  {
    v89 = MEMORY[0x1E696AD98];
    metadata36 = [(MRContentItem *)self metadata];
    v91 = [v89 numberWithInteger:{objc_msgSend(metadata36, "totalDiscCount")}];
    [(NSDictionary *)v5 setObject:v91 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTotalDiscCount"];
  }

  metadata37 = [(MRContentItem *)self metadata];
  hasTotalTrackCount = [metadata37 hasTotalTrackCount];

  if (hasTotalTrackCount)
  {
    v94 = MEMORY[0x1E696AD98];
    metadata38 = [(MRContentItem *)self metadata];
    v96 = [v94 numberWithInteger:{objc_msgSend(metadata38, "totalTrackCount")}];
    [(NSDictionary *)v5 setObject:v96 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTotalTrackCount"];
  }

  metadata39 = [(MRContentItem *)self metadata];
  hasTrackNumber = [metadata39 hasTrackNumber];

  if (hasTrackNumber)
  {
    v99 = MEMORY[0x1E696AD98];
    metadata40 = [(MRContentItem *)self metadata];
    v101 = [v99 numberWithInteger:{objc_msgSend(metadata40, "trackNumber")}];
    [(NSDictionary *)v5 setObject:v101 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTrackNumber"];
  }

  metadata41 = [(MRContentItem *)self metadata];
  collectionIdentifier = [metadata41 collectionIdentifier];

  if (collectionIdentifier)
  {
    metadata42 = [(MRContentItem *)self metadata];
    collectionIdentifier2 = [metadata42 collectionIdentifier];
    [(NSDictionary *)v5 setObject:collectionIdentifier2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCollectionIdentifier"];
  }

  metadata43 = [(MRContentItem *)self metadata];
  contentIdentifier = [metadata43 contentIdentifier];

  if (contentIdentifier)
  {
    metadata44 = [(MRContentItem *)self metadata];
    contentIdentifier2 = [metadata44 contentIdentifier];
    [(NSDictionary *)v5 setObject:contentIdentifier2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExternalContentIdentifier"];
  }

  metadata45 = [(MRContentItem *)self metadata];
  profileIdentifier = [metadata45 profileIdentifier];

  if (profileIdentifier)
  {
    metadata46 = [(MRContentItem *)self metadata];
    profileIdentifier2 = [metadata46 profileIdentifier];
    [(NSDictionary *)v5 setObject:profileIdentifier2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExternalProfileIdentifier"];
  }

  metadata47 = [(MRContentItem *)self metadata];
  serviceIdentifier = [metadata47 serviceIdentifier];

  if (serviceIdentifier)
  {
    metadata48 = [(MRContentItem *)self metadata];
    serviceIdentifier2 = [metadata48 serviceIdentifier];
    [(NSDictionary *)v5 setObject:serviceIdentifier2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoServiceIdentifier"];
  }

  metadata49 = [(MRContentItem *)self metadata];
  brandIdentifier = [metadata49 brandIdentifier];

  if (brandIdentifier)
  {
    metadata50 = [(MRContentItem *)self metadata];
    brandIdentifier2 = [metadata50 brandIdentifier];
    [(NSDictionary *)v5 setObject:brandIdentifier2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoBrandIdentifier"];
  }

  metadata51 = [(MRContentItem *)self metadata];
  hasPlaybackProgress = [metadata51 hasPlaybackProgress];

  if (hasPlaybackProgress)
  {
    v124 = MEMORY[0x1E696AD98];
    metadata52 = [(MRContentItem *)self metadata];
    [metadata52 playbackProgress];
    v126 = [v124 numberWithFloat:?];
    [(NSDictionary *)v5 setObject:v126 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPlaybackProgress"];
  }

  metadata53 = [(MRContentItem *)self metadata];
  hasExplicitItem = [metadata53 hasExplicitItem];

  if (hasExplicitItem)
  {
    v129 = MEMORY[0x1E696AD98];
    metadata54 = [(MRContentItem *)self metadata];
    v131 = [v129 numberWithBool:{objc_msgSend(metadata54, "isExplicitItem")}];
    [(NSDictionary *)v5 setObject:v131 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsExplicitTrack"];
  }

  metadata55 = [(MRContentItem *)self metadata];
  hasSharable = [metadata55 hasSharable];

  if (hasSharable)
  {
    v134 = MEMORY[0x1E696AD98];
    metadata56 = [(MRContentItem *)self metadata];
    v136 = [v134 numberWithBool:{objc_msgSend(metadata56, "isSharable")}];
    [(NSDictionary *)v5 setObject:v136 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsSharable"];
  }

  metadata57 = [(MRContentItem *)self metadata];
  hasLiked = [metadata57 hasLiked];

  if (hasLiked)
  {
    v139 = MEMORY[0x1E696AD98];
    metadata58 = [(MRContentItem *)self metadata];
    v141 = [v139 numberWithBool:{objc_msgSend(metadata58, "isLiked")}];
    [(NSDictionary *)v5 setObject:v141 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsLiked"];
  }

  metadata59 = [(MRContentItem *)self metadata];
  hasInWishList = [metadata59 hasInWishList];

  if (hasInWishList)
  {
    v144 = MEMORY[0x1E696AD98];
    metadata60 = [(MRContentItem *)self metadata];
    v146 = [v144 numberWithBool:{objc_msgSend(metadata60, "isInWishList")}];
    [(NSDictionary *)v5 setObject:v146 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsInWishList"];
  }

  metadata61 = [(MRContentItem *)self metadata];
  hasRadioStationIdentifier = [metadata61 hasRadioStationIdentifier];

  if (hasRadioStationIdentifier)
  {
    v149 = MEMORY[0x1E696AD98];
    metadata62 = [(MRContentItem *)self metadata];
    v151 = [v149 numberWithLongLong:{objc_msgSend(metadata62, "radioStationIdentifier")}];
    [(NSDictionary *)v5 setObject:v151 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationIdentifier"];
  }

  metadata63 = [(MRContentItem *)self metadata];
  radioStationName = [metadata63 radioStationName];

  if (radioStationName)
  {
    metadata64 = [(MRContentItem *)self metadata];
    radioStationName2 = [metadata64 radioStationName];
    [(NSDictionary *)v5 setObject:radioStationName2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationName"];
  }

  metadata65 = [(MRContentItem *)self metadata];
  hasRadioStationIdentifier2 = [metadata65 hasRadioStationIdentifier];

  if (hasRadioStationIdentifier2)
  {
    v158 = MEMORY[0x1E696AD98];
    metadata66 = [(MRContentItem *)self metadata];
    v160 = [v158 numberWithLongLong:{objc_msgSend(metadata66, "radioStationIdentifier")}];
    [(NSDictionary *)v5 setObject:v160 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationStringIdentifier"];
  }

  metadata67 = [(MRContentItem *)self metadata];
  hasITunesStoreIdentifier = [metadata67 hasITunesStoreIdentifier];

  if (hasITunesStoreIdentifier)
  {
    v163 = MEMORY[0x1E696AD98];
    metadata68 = [(MRContentItem *)self metadata];
    v165 = [v163 numberWithLongLong:{objc_msgSend(metadata68, "iTunesStoreIdentifier")}];
    [(NSDictionary *)v5 setObject:v165 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier"];
  }

  metadata69 = [(MRContentItem *)self metadata];
  hasITunesStoreSubscriptionIdentifier = [metadata69 hasITunesStoreSubscriptionIdentifier];

  if (hasITunesStoreSubscriptionIdentifier)
  {
    v168 = MEMORY[0x1E696AD98];
    metadata70 = [(MRContentItem *)self metadata];
    v170 = [v168 numberWithLongLong:{objc_msgSend(metadata70, "iTunesStoreSubscriptionIdentifier")}];
    [(NSDictionary *)v5 setObject:v170 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier"];
  }

  metadata71 = [(MRContentItem *)self metadata];
  hasITunesStoreArtistIdentifier = [metadata71 hasITunesStoreArtistIdentifier];

  if (hasITunesStoreArtistIdentifier)
  {
    v173 = MEMORY[0x1E696AD98];
    metadata72 = [(MRContentItem *)self metadata];
    v175 = [v173 numberWithLongLong:{objc_msgSend(metadata72, "iTunesStoreArtistIdentifier")}];
    [(NSDictionary *)v5 setObject:v175 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtistiTunesStoreAdamIdentifier"];
  }

  metadata73 = [(MRContentItem *)self metadata];
  hasITunesStoreAlbumIdentifier = [metadata73 hasITunesStoreAlbumIdentifier];

  if (hasITunesStoreAlbumIdentifier)
  {
    v178 = MEMORY[0x1E696AD98];
    metadata74 = [(MRContentItem *)self metadata];
    v180 = [v178 numberWithLongLong:{objc_msgSend(metadata74, "iTunesStoreAlbumIdentifier")}];
    [(NSDictionary *)v5 setObject:v180 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAlbumiTunesStoreAdamIdentifier"];
  }

  metadata75 = [(MRContentItem *)self metadata];
  purchaseInfoData = [metadata75 purchaseInfoData];

  if (purchaseInfoData)
  {
    metadata76 = [(MRContentItem *)self metadata];
    purchaseInfoData2 = [metadata76 purchaseInfoData];
    [(NSDictionary *)v5 setObject:purchaseInfoData2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPurchaseInfoData"];
  }

  metadata77 = [(MRContentItem *)self metadata];
  hasDefaultPlaybackRate = [metadata77 hasDefaultPlaybackRate];

  if (hasDefaultPlaybackRate)
  {
    v187 = MEMORY[0x1E696AD98];
    metadata78 = [(MRContentItem *)self metadata];
    [metadata78 defaultPlaybackRate];
    v189 = [v187 numberWithFloat:?];
    [(NSDictionary *)v5 setObject:v189 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate"];
  }

  metadata79 = [(MRContentItem *)self metadata];
  hasDownloadState = [metadata79 hasDownloadState];

  if (hasDownloadState)
  {
    v192 = MEMORY[0x1E696AD98];
    metadata80 = [(MRContentItem *)self metadata];
    v194 = [v192 numberWithInteger:{objc_msgSend(metadata80, "downloadState")}];
    [(NSDictionary *)v5 setObject:v194 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDownloadState"];
  }

  metadata81 = [(MRContentItem *)self metadata];
  hasDownloadProgress = [metadata81 hasDownloadProgress];

  if (hasDownloadProgress)
  {
    v197 = MEMORY[0x1E696AD98];
    metadata82 = [(MRContentItem *)self metadata];
    [metadata82 downloadProgress];
    v199 = [v197 numberWithFloat:?];
    [(NSDictionary *)v5 setObject:v199 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDownloadProgress"];
  }

  metadata83 = [(MRContentItem *)self metadata];
  hasAdvertisement = [metadata83 hasAdvertisement];

  if (hasAdvertisement)
  {
    v202 = MEMORY[0x1E696AD98];
    metadata84 = [(MRContentItem *)self metadata];
    v204 = [v202 numberWithBool:{objc_msgSend(metadata84, "isAdvertisement")}];
    [(NSDictionary *)v5 setObject:v204 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsAdvertisement"];
  }

  metadata85 = [(MRContentItem *)self metadata];
  hasSteerable = [metadata85 hasSteerable];

  if (hasSteerable)
  {
    v207 = MEMORY[0x1E696AD98];
    metadata86 = [(MRContentItem *)self metadata];
    v209 = [v207 numberWithBool:{objc_msgSend(metadata86, "isSteerable")}];
    [(NSDictionary *)v5 setObject:v209 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsSteerable"];
  }

  metadata87 = [(MRContentItem *)self metadata];
  artworkIdentifier = [metadata87 artworkIdentifier];

  if (artworkIdentifier)
  {
    metadata88 = [(MRContentItem *)self metadata];
    artworkIdentifier2 = [metadata88 artworkIdentifier];
    [(NSDictionary *)v5 setObject:artworkIdentifier2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkIdentifier"];
  }

  metadata89 = [(MRContentItem *)self metadata];
  artworkURL = [metadata89 artworkURL];

  if (artworkURL)
  {
    metadata90 = [(MRContentItem *)self metadata];
    artworkURL2 = [metadata90 artworkURL];
    absoluteString = [artworkURL2 absoluteString];
    [(NSDictionary *)v5 setObject:absoluteString forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkURL"];
  }

  metadata91 = [(MRContentItem *)self metadata];
  hasLegacyUniqueIdentifier = [metadata91 hasLegacyUniqueIdentifier];

  if (hasLegacyUniqueIdentifier)
  {
    v221 = MEMORY[0x1E696AD98];
    metadata92 = [(MRContentItem *)self metadata];
    v223 = [v221 numberWithLongLong:{objc_msgSend(metadata92, "legacyUniqueIdentifier")}];
    [(NSDictionary *)v5 setObject:v223 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoUniqueIdentifier"];
  }

  metadata93 = [(MRContentItem *)self metadata];
  appMetrics = [metadata93 appMetrics];

  if (appMetrics)
  {
    metadata94 = [(MRContentItem *)self metadata];
    appMetrics2 = [metadata94 appMetrics];
    v228 = [appMetrics2 copy];
    [(NSDictionary *)v5 setObject:v228 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAppMetrics"];
  }

  metadata95 = [(MRContentItem *)self metadata];
  collectionInfo = [metadata95 collectionInfo];

  if (collectionInfo)
  {
    metadata96 = [(MRContentItem *)self metadata];
    collectionInfo2 = [metadata96 collectionInfo];
    v233 = [collectionInfo2 copy];
    [(NSDictionary *)v5 setObject:v233 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCollectionInfo"];
  }

  metadata97 = [(MRContentItem *)self metadata];
  userInfo = [metadata97 userInfo];

  if (userInfo)
  {
    metadata98 = [(MRContentItem *)self metadata];
    userInfo2 = [metadata98 userInfo];
    v238 = [userInfo2 copy];
    [(NSDictionary *)v5 setObject:v238 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoUserInfo"];
  }

  metadata99 = [(MRContentItem *)self metadata];
  internationalStandardRecordingCode = [metadata99 internationalStandardRecordingCode];

  if (internationalStandardRecordingCode)
  {
    metadata100 = [(MRContentItem *)self metadata];
    internationalStandardRecordingCode2 = [metadata100 internationalStandardRecordingCode];
    v243 = [internationalStandardRecordingCode2 copy];
    [(NSDictionary *)v5 setObject:v243 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoInternationalStandardRecordingCode"];
  }

  metadata101 = [(MRContentItem *)self metadata];
  hasExcludeFromSuggestions = [metadata101 hasExcludeFromSuggestions];

  if (hasExcludeFromSuggestions)
  {
    v246 = MEMORY[0x1E696AD98];
    metadata102 = [(MRContentItem *)self metadata];
    v248 = [v246 numberWithBool:{objc_msgSend(metadata102, "excludeFromSuggestions")}];
    [(NSDictionary *)v5 setObject:v248 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExcludeFromSuggestions"];
  }

  metadata103 = [(MRContentItem *)self metadata];
  collectionInfo3 = [metadata103 collectionInfo];

  if (collectionInfo3)
  {
    v251 = [collectionInfo3 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingCollectionInfoKeyIdentifiers"];

    if (v251)
    {
      v299 = v75;
      v305[0] = @"kMRMediaRemoteNowPlayingInfoRadioStationHash";
      v305[1] = @"kMRMediaRemoteNowPlayingInfoRadioStationIdentifier";
      v305[2] = @"kMRMediaRemoteNowPlayingInfoRadioStationStringIdentifier";
      v305[3] = @"kMRMediaRemoteNowPlayingInfoRadioStationName";
      [MEMORY[0x1E695DEC8] arrayWithObjects:v305 count:4];
      v300 = 0u;
      v301 = 0u;
      v302 = 0u;
      v252 = v303 = 0u;
      v253 = [v252 countByEnumeratingWithState:&v300 objects:v304 count:16];
      if (v253)
      {
        v254 = v253;
        v255 = *v301;
        do
        {
          for (i = 0; i != v254; ++i)
          {
            if (*v301 != v255)
            {
              objc_enumerationMutation(v252);
            }

            v257 = *(*(&v300 + 1) + 8 * i);
            v258 = [v251 objectForKeyedSubscript:v257];
            if (v258)
            {
              [(NSDictionary *)v5 setObject:v258 forKeyedSubscript:v257];
            }
          }

          v254 = [v252 countByEnumeratingWithState:&v300 objects:v304 count:16];
        }

        while (v254);
      }

      v75 = v299;
    }
  }

  metadata104 = [(MRContentItem *)self metadata];
  hasMediaType = [metadata104 hasMediaType];

  if (hasMediaType)
  {
    metadata105 = [(MRContentItem *)self metadata];
    mediaType = [metadata105 mediaType];

    metadata106 = [(MRContentItem *)self metadata];
    mediaSubType = [metadata106 mediaSubType];

    if (mediaType == 1)
    {
      v265 = kMRMediaRemoteNowPlayingInfoTypeAudio;
    }

    else
    {
      if (mediaType != 2)
      {
        v266 = 0;
LABEL_127:
        metadata107 = [(MRContentItem *)self metadata];
        hasMediaSubType = [metadata107 hasMediaSubType];

        if (!hasMediaSubType)
        {
          goto LABEL_145;
        }

        if (mediaSubType > 3)
        {
          switch(mediaSubType)
          {
            case 4:
              v269 = kMRMediaRemoteMediaTypePodcast;
              goto LABEL_143;
            case 5:
              v269 = kMRMediaRemoteMediaTypeAudioBook;
              goto LABEL_143;
            case 6:
              v269 = kMRMediaRemoteMediaTypeITunesU;
              goto LABEL_143;
          }
        }

        else
        {
          if ((mediaSubType - 2) < 2)
          {
            v269 = kMRMediaRemoteNowPlayingInfoTypeVideo;
            goto LABEL_143;
          }

          if (!mediaSubType)
          {
            if (v266)
            {
LABEL_146:
              [(NSDictionary *)v5 setObject:v266 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoMediaType"];

              goto LABEL_147;
            }

            v266 = @"kMRMediaRemoteNowPlayingInfoTypeAudio";
LABEL_145:
            if (!v266)
            {
              goto LABEL_147;
            }

            goto LABEL_146;
          }

          if (mediaSubType == 1)
          {
            v269 = kMRMediaRemoteMediaTypeMusic;
LABEL_143:
            v270 = *v269;
            goto LABEL_144;
          }
        }

        v270 = @"kMRMediaRemoteNowPlayingInfoTypeAudio";
LABEL_144:
        v271 = v270;

        v266 = v271;
        goto LABEL_145;
      }

      v265 = kMRMediaRemoteNowPlayingInfoTypeVideo;
    }

    v266 = *v265;
    goto LABEL_127;
  }

LABEL_147:
  availableLanguageOptions = [(MRContentItem *)self availableLanguageOptions];

  if (availableLanguageOptions)
  {
    availableLanguageOptions2 = [(MRContentItem *)self availableLanguageOptions];
    ExternalRepresentation = MRLanguageOptionGroupsCreateExternalRepresentation(availableLanguageOptions2);

    if (ExternalRepresentation)
    {
      [(NSDictionary *)v5 setObject:ExternalRepresentation forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAvailableLanguageOptionsData"];
    }
  }

  currentLanguageOptions = [(MRContentItem *)self currentLanguageOptions];

  if (currentLanguageOptions)
  {
    currentLanguageOptions2 = [(MRContentItem *)self currentLanguageOptions];
    v277 = MRLanguageOptionsCreateExternalRepresentation(currentLanguageOptions2);

    if (v277)
    {
      [(NSDictionary *)v5 setObject:v277 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCurrentLanguageOptionsData"];
    }
  }

  metadata108 = [(MRContentItem *)self metadata];
  artworkMIMEType = [metadata108 artworkMIMEType];

  if (artworkMIMEType)
  {
    metadata109 = [(MRContentItem *)self metadata];
    artworkMIMEType2 = [metadata109 artworkMIMEType];
    [(NSDictionary *)v5 setObject:artworkMIMEType2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkMIMEType"];
  }

  artwork = [(MRContentItem *)self artwork];
  imageData = [artwork imageData];

  if (imageData)
  {
    artwork2 = [(MRContentItem *)self artwork];
    imageData2 = [artwork2 imageData];
    [(NSDictionary *)v5 setObject:imageData2 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkData"];
  }

  artwork3 = [(MRContentItem *)self artwork];
  width = [artwork3 width];

  if (width >= 1)
  {
    v288 = MEMORY[0x1E696AD98];
    artwork4 = [(MRContentItem *)self artwork];
    v290 = [v288 numberWithInteger:{objc_msgSend(artwork4, "width")}];
    [(NSDictionary *)v5 setObject:v290 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkDataWidth"];
  }

  artwork5 = [(MRContentItem *)self artwork];
  height = [artwork5 height];

  if (height >= 1)
  {
    v293 = MEMORY[0x1E696AD98];
    artwork6 = [(MRContentItem *)self artwork];
    v295 = [v293 numberWithInteger:{objc_msgSend(artwork6, "height")}];
    [(NSDictionary *)v5 setObject:v295 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkDataHeight"];
  }

  v296 = v5;

  v297 = *MEMORY[0x1E69E9840];
  return v5;
}

- (MRContentItem)skeleton
{
  v3 = [MRContentItem alloc];
  identifier = [(MRContentItem *)self identifier];
  v5 = [(MRContentItem *)v3 initWithIdentifier:identifier];

  parentIdentifier = [(MRContentItem *)self parentIdentifier];
  [(MRContentItem *)v5 setParentIdentifier:parentIdentifier];

  ancestorIdentifier = [(MRContentItem *)self ancestorIdentifier];
  [(MRContentItem *)v5 setAncestorIdentifier:ancestorIdentifier];

  associatedParticipantIdentifier = [(MRContentItem *)self associatedParticipantIdentifier];
  [(MRContentItem *)v5 setAssociatedParticipantIdentifier:associatedParticipantIdentifier];

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  dictionaryRepresentation = [(MRContentItem *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, dictionaryRepresentation];

  return v6;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  identifier = [(MRContentItem *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"identifier"];

  info = [(MRContentItem *)self info];
  [v3 setObject:info forKeyedSubscript:@"info"];

  parentIdentifier = [(MRContentItem *)self parentIdentifier];
  [v3 setObject:parentIdentifier forKeyedSubscript:@"parentIdentifier"];

  ancestorIdentifier = [(MRContentItem *)self ancestorIdentifier];
  [v3 setObject:ancestorIdentifier forKeyedSubscript:@"ancestorIdentifier"];

  associatedParticipantIdentifier = [(MRContentItem *)self associatedParticipantIdentifier];
  [v3 setObject:associatedParticipantIdentifier forKeyedSubscript:@"associatedParticipantIdentifier"];

  queueIdentifier = [(MRContentItem *)self queueIdentifier];
  [v3 setObject:queueIdentifier forKeyedSubscript:@"queueIdentifier"];

  requestIdentifier = [(MRContentItem *)self requestIdentifier];
  [v3 setObject:requestIdentifier forKeyedSubscript:@"requestIdentifier"];

  metadata = [(MRContentItem *)self metadata];
  dictionaryRepresentation = [metadata dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"metadata"];

  artwork = [(MRContentItem *)self artwork];
  dictionaryRepresentation2 = [artwork dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"artwork"];

  transcriptAlignments = [(MRContentItem *)self transcriptAlignments];
  v16 = [transcriptAlignments mr_map:&__block_literal_global_67_0];
  [v3 setObject:v16 forKeyedSubscript:@"transcriptAlignments"];

  availableLanguageOptions = [(MRContentItem *)self availableLanguageOptions];
  v18 = [availableLanguageOptions mr_map:&__block_literal_global_72_0];
  [v3 setObject:v18 forKeyedSubscript:@"availableLanguageOptions"];

  currentLanguageOptions = [(MRContentItem *)self currentLanguageOptions];
  v20 = [currentLanguageOptions mr_map:&__block_literal_global_77_1];
  [v3 setObject:v20 forKeyedSubscript:@"currentLanguageOptions"];

  sections = [(MRContentItem *)self sections];
  v22 = [sections mr_map:&__block_literal_global_82_0];
  [v3 setObject:v22 forKeyedSubscript:@"sections"];

  availableArtworkFormats = [(MRContentItem *)self availableArtworkFormats];
  [v3 setObject:availableArtworkFormats forKeyedSubscript:@"availableArtworkFormats"];

  availableRemoteArtworkFormats = [(MRContentItem *)self availableRemoteArtworkFormats];
  [v3 setObject:availableRemoteArtworkFormats forKeyedSubscript:@"availableRemoteArtworkFormats"];

  availableAnimatedArtworkFormats = [(MRContentItem *)self availableAnimatedArtworkFormats];
  [v3 setObject:availableAnimatedArtworkFormats forKeyedSubscript:@"availableAnimatedArtworkFormats"];

  artworks = [(MRContentItem *)self artworks];
  [v3 setObject:artworks forKeyedSubscript:@"artworks"];

  remoteArtworks = [(MRContentItem *)self remoteArtworks];
  [v3 setObject:remoteArtworks forKeyedSubscript:@"remoteArtworks"];

  animatedArtworkPreviewFrames = [(MRContentItem *)self animatedArtworkPreviewFrames];
  [v3 setObject:animatedArtworkPreviewFrames forKeyedSubscript:@"animatedArtworkPreviewFrames"];

  animatedArtworks = [(MRContentItem *)self animatedArtworks];
  [v3 setObject:animatedArtworks forKeyedSubscript:@"animatedArtworks"];

  return v3;
}

- (MRContentItem)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9.receiver = self;
    v9.super_class = MRContentItem;
    v5 = [(MRContentItem *)&v9 init];
    v6 = v5;
    if (v5)
    {
      [(MRContentItem *)v5 setIdentifier:identifierCopy];
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRContentItem)initWithNowPlayingInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    uUIDString = [objc_opt_class() extractedIdentifierFromNowPlayingInfo:infoCopy];
    if (!uUIDString)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
    }

    v7 = [(MRContentItem *)self initWithIdentifier:uUIDString];
    v8 = v7;
    if (v7)
    {
      [(MRContentItem *)v7 setNowPlayingInfo:infoCopy policy:1 request:0];
    }

    self = v8;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MRContentItem)initWithProtobuf:(id)protobuf
{
  v131 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  v5 = protobufCopy;
  if (protobufCopy)
  {
    identifier = [protobufCopy identifier];
    v7 = [(MRContentItem *)self initWithIdentifier:identifier];

    if (v7)
    {
      info = [v5 info];
      v9 = [info copy];
      info = v7->_info;
      v7->_info = v9;

      parentIdentifier = [v5 parentIdentifier];
      v12 = [parentIdentifier copy];
      parentIdentifier = v7->_parentIdentifier;
      v7->_parentIdentifier = v12;

      ancestorIdentifier = [v5 ancestorIdentifier];
      v15 = [ancestorIdentifier copy];
      ancestorIdentifier = v7->_ancestorIdentifier;
      v7->_ancestorIdentifier = v15;

      associatedParticipantIdentifier = [v5 associatedParticipantIdentifier];
      v18 = [associatedParticipantIdentifier copy];
      associatedParticipantIdentifier = v7->_associatedParticipantIdentifier;
      v7->_associatedParticipantIdentifier = v18;

      queueIdentifier = [v5 queueIdentifier];
      v21 = [queueIdentifier copy];
      queueIdentifier = v7->_queueIdentifier;
      v7->_queueIdentifier = v21;

      requestIdentifier = [v5 requestIdentifier];
      v24 = [requestIdentifier copy];
      requestIdentifier = v7->_requestIdentifier;
      v7->_requestIdentifier = v24;

      v26 = [[MRArtwork alloc] initWithProtobuf:v5];
      artwork = v7->_artwork;
      v7->_artwork = v26;

      if ([v5 hasMetadata])
      {
        v28 = [MRContentItemMetadata alloc];
        metadata = [v5 metadata];
        v30 = [(MRContentItemMetadata *)v28 initWithProtobuf:metadata];
        metadata = v7->_metadata;
        v7->_metadata = v30;
      }

      transcriptAlignments = [v5 transcriptAlignments];
      v33 = [transcriptAlignments mr_map:&__block_literal_global_70];
      transcriptAlignments = v7->_transcriptAlignments;
      v7->_transcriptAlignments = v33;

      availableLanguageOptions = [v5 availableLanguageOptions];
      v36 = [availableLanguageOptions mr_map:&__block_literal_global_10_3];
      availableLanguageOptions = v7->_availableLanguageOptions;
      v7->_availableLanguageOptions = v36;

      currentLanguageOptions = [v5 currentLanguageOptions];
      v39 = [currentLanguageOptions mr_map:&__block_literal_global_14_1];
      currentLanguageOptions = v7->_currentLanguageOptions;
      v7->_currentLanguageOptions = v39;

      sections = [v5 sections];
      v42 = [sections mr_map:&__block_literal_global_18_0];
      sections = v7->_sections;
      v7->_sections = v42;

      availableArtworkFormats = [v5 availableArtworkFormats];
      availableArtworkFormats = v7->_availableArtworkFormats;
      v7->_availableArtworkFormats = availableArtworkFormats;

      availableRemoteArtworkFormats = [v5 availableRemoteArtworkFormats];
      availableRemoteArtworkFormats = v7->_availableRemoteArtworkFormats;
      v7->_availableRemoteArtworkFormats = availableRemoteArtworkFormats;

      if (_os_feature_enabled_impl())
      {
        availableAnimatedArtworkFormats = [v5 availableAnimatedArtworkFormats];
        availableAnimatedArtworkFormats = v7->_availableAnimatedArtworkFormats;
        v7->_availableAnimatedArtworkFormats = availableAnimatedArtworkFormats;
      }

      v106 = v5;
      if ([v5 dataArtworksCount])
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v119 = 0u;
        v120 = 0u;
        v121 = 0u;
        v122 = 0u;
        dataArtworks = [v5 dataArtworks];
        v52 = [dataArtworks countByEnumeratingWithState:&v119 objects:v130 count:16];
        if (v52)
        {
          v53 = v52;
          v54 = *v120;
          do
          {
            for (i = 0; i != v53; ++i)
            {
              if (*v120 != v54)
              {
                objc_enumerationMutation(dataArtworks);
              }

              v56 = *(*(&v119 + 1) + 8 * i);
              if ([v56 hasType])
              {
                v57 = [MRDataArtwork alloc];
                imageData = [v56 imageData];
                v59 = [(MRDataArtwork *)v57 initWithImageData:imageData];
                type = [v56 type];
                [dictionary setObject:v59 forKeyedSubscript:type];
              }

              else
              {
                imageData = _MRLogForCategory(0);
                if (os_log_type_enabled(imageData, OS_LOG_TYPE_FAULT))
                {
                  identifier = v7->_identifier;
                  *buf = 138412546;
                  v127 = v56;
                  v128 = 2112;
                  v129 = identifier;
                  _os_log_fault_impl(&dword_1A2860000, imageData, OS_LOG_TYPE_FAULT, "FAULT: No type for artwork protobuf %@ in content item %@", buf, 0x16u);
                }
              }
            }

            v53 = [dataArtworks countByEnumeratingWithState:&v119 objects:v130 count:16];
          }

          while (v53);
        }

        v62 = [dictionary copy];
        artworks = v7->_artworks;
        v7->_artworks = v62;

        v5 = v106;
      }

      if ([v5 remoteArtworksCount])
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        v118 = 0u;
        remoteArtworks = [v5 remoteArtworks];
        v66 = [remoteArtworks countByEnumeratingWithState:&v115 objects:v125 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v116;
          do
          {
            for (j = 0; j != v67; ++j)
            {
              if (*v116 != v68)
              {
                objc_enumerationMutation(remoteArtworks);
              }

              v70 = *(*(&v115 + 1) + 8 * j);
              if ([v70 hasType])
              {
                v71 = [[MRRemoteArtwork alloc] initWithProtobuf:v70];
                type2 = [v70 type];
                [dictionary2 setObject:v71 forKeyedSubscript:type2];
              }

              else
              {
                v71 = _MRLogForCategory(0);
                if (os_log_type_enabled(&v71->super, OS_LOG_TYPE_FAULT))
                {
                  v73 = v7->_identifier;
                  *buf = 138412546;
                  v127 = v70;
                  v128 = 2112;
                  v129 = v73;
                  _os_log_fault_impl(&dword_1A2860000, &v71->super, OS_LOG_TYPE_FAULT, "FAULT: No type for artwork protobuf %@ in content item %@", buf, 0x16u);
                }
              }
            }

            v67 = [remoteArtworks countByEnumeratingWithState:&v115 objects:v125 count:16];
          }

          while (v67);
        }

        v74 = [dictionary2 copy];
        remoteArtworks = v7->_remoteArtworks;
        v7->_remoteArtworks = v74;

        v5 = v106;
      }

      if (_os_feature_enabled_impl())
      {
        if ([v5 animatedArtworkPreviewFramesCount])
        {
          dictionary3 = [MEMORY[0x1E695DF90] dictionary];
          v111 = 0u;
          v112 = 0u;
          v113 = 0u;
          v114 = 0u;
          animatedArtworkPreviewFrames = [v5 animatedArtworkPreviewFrames];
          v78 = [animatedArtworkPreviewFrames countByEnumeratingWithState:&v111 objects:v124 count:16];
          if (v78)
          {
            v79 = v78;
            v80 = *v112;
            do
            {
              for (k = 0; k != v79; ++k)
              {
                if (*v112 != v80)
                {
                  objc_enumerationMutation(animatedArtworkPreviewFrames);
                }

                v82 = *(*(&v111 + 1) + 8 * k);
                if ([v82 hasType])
                {
                  v83 = [MRDataArtwork alloc];
                  imageData2 = [v82 imageData];
                  v85 = [(MRDataArtwork *)v83 initWithImageData:imageData2];
                  type3 = [v82 type];
                  [dictionary3 setObject:v85 forKeyedSubscript:type3];
                }

                else
                {
                  imageData2 = _MRLogForCategory(0);
                  if (os_log_type_enabled(imageData2, OS_LOG_TYPE_FAULT))
                  {
                    v87 = v7->_identifier;
                    *buf = 138412546;
                    v127 = v82;
                    v128 = 2112;
                    v129 = v87;
                    _os_log_fault_impl(&dword_1A2860000, imageData2, OS_LOG_TYPE_FAULT, "FAULT: No type for animated artwork preview frame protobuf %@ in content item %@", buf, 0x16u);
                  }
                }
              }

              v79 = [animatedArtworkPreviewFrames countByEnumeratingWithState:&v111 objects:v124 count:16];
            }

            while (v79);
          }

          v88 = [dictionary3 copy];
          animatedArtworkPreviewFrames = v7->_animatedArtworkPreviewFrames;
          v7->_animatedArtworkPreviewFrames = v88;

          v5 = v106;
        }

        if ([v5 animatedArtworksCount])
        {
          dictionary4 = [MEMORY[0x1E695DF90] dictionary];
          v107 = 0u;
          v108 = 0u;
          v109 = 0u;
          v110 = 0u;
          animatedArtworks = [v5 animatedArtworks];
          v92 = [animatedArtworks countByEnumeratingWithState:&v107 objects:v123 count:16];
          if (v92)
          {
            v93 = v92;
            v94 = *v108;
            do
            {
              for (m = 0; m != v93; ++m)
              {
                if (*v108 != v94)
                {
                  objc_enumerationMutation(animatedArtworks);
                }

                v96 = *(*(&v107 + 1) + 8 * m);
                if ([v96 hasType])
                {
                  v97 = [[MRAnimatedArtwork alloc] initWithProtobuf:v96];
                  if (v97)
                  {
                    type4 = [v96 type];
                    [dictionary4 setObject:v97 forKeyedSubscript:type4];
                  }

                  else
                  {
                    type4 = _MRLogForCategory(0);
                    if (os_log_type_enabled(type4, OS_LOG_TYPE_ERROR))
                    {
                      v100 = v7->_identifier;
                      *buf = 138412546;
                      v127 = v96;
                      v128 = 2112;
                      v129 = v100;
                      _os_log_error_impl(&dword_1A2860000, type4, OS_LOG_TYPE_ERROR, "Could not build animated artwork from protobuf %@ in content item %@", buf, 0x16u);
                    }
                  }
                }

                else
                {
                  v97 = _MRLogForCategory(0);
                  if (os_log_type_enabled(&v97->super, OS_LOG_TYPE_FAULT))
                  {
                    v99 = v7->_identifier;
                    *buf = 138412546;
                    v127 = v96;
                    v128 = 2112;
                    v129 = v99;
                    _os_log_fault_impl(&dword_1A2860000, &v97->super, OS_LOG_TYPE_FAULT, "FAULT: No type for animated artwork protobuf %@ in content item %@", buf, 0x16u);
                  }
                }
              }

              v93 = [animatedArtworks countByEnumeratingWithState:&v107 objects:v123 count:16];
            }

            while (v93);
          }

          v101 = [dictionary4 copy];
          animatedArtworks = v7->_animatedArtworks;
          v7->_animatedArtworks = v101;

          v5 = v106;
        }
      }
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v104 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

MRTranscriptAlignment *__34__MRContentItem_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRTranscriptAlignment alloc] initWithProtobuf:v2];

  return v3;
}

MRLanguageOptionGroup *__34__MRContentItem_initWithProtobuf___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRLanguageOptionGroup alloc] initWithProtobuf:v2];

  return v3;
}

MRLanguageOption *__34__MRContentItem_initWithProtobuf___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRLanguageOption alloc] initWithProtobuf:v2];

  return v3;
}

MRContentItem *__34__MRContentItem_initWithProtobuf___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRContentItem alloc] initWithProtobuf:v2];

  return v3;
}

- (MRContentItem)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRContentItemProtobuf alloc] initWithData:dataCopy];

    self = [(MRContentItem *)self initWithProtobuf:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)protobufWithEncoding:(int64_t)encoding
{
  v107 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(_MRContentItemProtobuf);
  artwork = [(MRContentItem *)self artwork];
  -[_MRContentItemProtobuf setArtworkDataWidth:](v5, "setArtworkDataWidth:", [artwork width]);

  artwork2 = [(MRContentItem *)self artwork];
  -[_MRContentItemProtobuf setHasArtworkDataWidth:](v5, "setHasArtworkDataWidth:", [artwork2 width] > 0);

  artwork3 = [(MRContentItem *)self artwork];
  -[_MRContentItemProtobuf setArtworkDataHeight:](v5, "setArtworkDataHeight:", [artwork3 height]);

  artwork4 = [(MRContentItem *)self artwork];
  -[_MRContentItemProtobuf setHasArtworkDataHeight:](v5, "setHasArtworkDataHeight:", [artwork4 height] > 0);

  identifier = [(MRContentItem *)self identifier];
  [(_MRContentItemProtobuf *)v5 setIdentifier:identifier];

  artwork5 = [(MRContentItem *)self artwork];
  imageData = [artwork5 imageData];
  [(_MRContentItemProtobuf *)v5 setArtworkData:imageData];

  info = [(MRContentItem *)self info];
  [(_MRContentItemProtobuf *)v5 setInfo:info];

  parentIdentifier = [(MRContentItem *)self parentIdentifier];
  [(_MRContentItemProtobuf *)v5 setParentIdentifier:parentIdentifier];

  ancestorIdentifier = [(MRContentItem *)self ancestorIdentifier];
  [(_MRContentItemProtobuf *)v5 setAncestorIdentifier:ancestorIdentifier];

  associatedParticipantIdentifier = [(MRContentItem *)self associatedParticipantIdentifier];
  [(_MRContentItemProtobuf *)v5 setAssociatedParticipantIdentifier:associatedParticipantIdentifier];

  queueIdentifier = [(MRContentItem *)self queueIdentifier];
  [(_MRContentItemProtobuf *)v5 setQueueIdentifier:queueIdentifier];

  requestIdentifier = [(MRContentItem *)self requestIdentifier];
  [(_MRContentItemProtobuf *)v5 setRequestIdentifier:requestIdentifier];

  metadata = [(MRContentItem *)self metadata];
  v20 = [metadata protobufWithEncoding:encoding];
  [(_MRContentItemProtobuf *)v5 setMetadata:v20];

  transcriptAlignments = [(MRContentItem *)self transcriptAlignments];
  v22 = [transcriptAlignments mr_map:&__block_literal_global_29_1];
  v23 = [v22 mutableCopy];
  [(_MRContentItemProtobuf *)v5 setTranscriptAlignments:v23];

  availableLanguageOptions = [(MRContentItem *)self availableLanguageOptions];
  v25 = [availableLanguageOptions mr_map:&__block_literal_global_32_1];
  v26 = [v25 mutableCopy];
  [(_MRContentItemProtobuf *)v5 setAvailableLanguageOptions:v26];

  currentLanguageOptions = [(MRContentItem *)self currentLanguageOptions];
  v28 = [currentLanguageOptions mr_map:&__block_literal_global_35];
  v29 = [v28 mutableCopy];
  [(_MRContentItemProtobuf *)v5 setCurrentLanguageOptions:v29];

  sections = [(MRContentItem *)self sections];
  v102[0] = MEMORY[0x1E69E9820];
  v102[1] = 3221225472;
  v102[2] = __38__MRContentItem_protobufWithEncoding___block_invoke_4;
  v102[3] = &__block_descriptor_40_e23__16__0__MRContentItem_8l;
  v102[4] = encoding;
  v31 = [sections mr_map:v102];
  v32 = [v31 mutableCopy];
  [(_MRContentItemProtobuf *)v5 setSections:v32];

  availableArtworkFormats = [(MRContentItem *)self availableArtworkFormats];
  v34 = [availableArtworkFormats mutableCopy];
  [(_MRContentItemProtobuf *)v5 setAvailableArtworkFormats:v34];

  availableRemoteArtworkFormats = [(MRContentItem *)self availableRemoteArtworkFormats];
  v36 = [availableRemoteArtworkFormats mutableCopy];
  v85 = v5;
  [(_MRContentItemProtobuf *)v5 setAvailableRemoteArtworkFormats:v36];

  if (_os_feature_enabled_impl())
  {
    availableAnimatedArtworkFormats = [(MRContentItem *)self availableAnimatedArtworkFormats];
    v38 = [availableAnimatedArtworkFormats mutableCopy];
    [(_MRContentItemProtobuf *)v5 setAvailableAnimatedArtworkFormats:v38];
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  selfCopy = self;
  artworks = [(MRContentItem *)self artworks];
  v41 = [artworks countByEnumeratingWithState:&v98 objects:v106 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v99;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v99 != v43)
        {
          objc_enumerationMutation(artworks);
        }

        v45 = *(*(&v98 + 1) + 8 * i);
        v46 = objc_alloc_init(_MRDataArtworkProtobuf);
        [(_MRDataArtworkProtobuf *)v46 setType:v45];
        artworks2 = [(MRContentItem *)selfCopy artworks];
        v48 = [artworks2 objectForKeyedSubscript:v45];
        imageData2 = [v48 imageData];
        [(_MRDataArtworkProtobuf *)v46 setImageData:imageData2];

        [(_MRContentItemProtobuf *)v85 addDataArtworks:v46];
      }

      v42 = [artworks countByEnumeratingWithState:&v98 objects:v106 count:16];
    }

    while (v42);
  }

  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v50 = selfCopy;
  obj = [(MRContentItem *)selfCopy remoteArtworks];
  v51 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v95;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v95 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v94 + 1) + 8 * j);
        v56 = objc_alloc_init(_MRRemoteArtworkProtobuf);
        [(_MRRemoteArtworkProtobuf *)v56 setType:v55];
        remoteArtworks = [(MRContentItem *)v50 remoteArtworks];
        v58 = [remoteArtworks objectForKeyedSubscript:v55];
        artworkURLString = [v58 artworkURLString];
        [(_MRRemoteArtworkProtobuf *)v56 setArtworkURLString:artworkURLString];

        v50 = selfCopy;
        remoteArtworks2 = [(MRContentItem *)selfCopy remoteArtworks];
        v61 = [remoteArtworks2 objectForKeyedSubscript:v55];
        artworkURLTemplateData = [v61 artworkURLTemplateData];
        [(_MRRemoteArtworkProtobuf *)v56 setArtworkURLTemplateData:artworkURLTemplateData];

        [(_MRContentItemProtobuf *)v85 addRemoteArtworks:v56];
      }

      v52 = [obj countByEnumeratingWithState:&v94 objects:v105 count:16];
    }

    while (v52);
  }

  if (_os_feature_enabled_impl())
  {
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    animatedArtworkPreviewFrames = [(MRContentItem *)v50 animatedArtworkPreviewFrames];
    v64 = [animatedArtworkPreviewFrames countByEnumeratingWithState:&v90 objects:v104 count:16];
    if (v64)
    {
      v65 = v64;
      v66 = *v91;
      do
      {
        for (k = 0; k != v65; ++k)
        {
          if (*v91 != v66)
          {
            objc_enumerationMutation(animatedArtworkPreviewFrames);
          }

          v68 = *(*(&v90 + 1) + 8 * k);
          v69 = objc_alloc_init(_MRDataArtworkProtobuf);
          [(_MRDataArtworkProtobuf *)v69 setType:v68];
          animatedArtworkPreviewFrames2 = [(MRContentItem *)selfCopy animatedArtworkPreviewFrames];
          v71 = [animatedArtworkPreviewFrames2 objectForKeyedSubscript:v68];
          imageData3 = [v71 imageData];
          [(_MRDataArtworkProtobuf *)v69 setImageData:imageData3];

          [(_MRContentItemProtobuf *)v85 addAnimatedArtworkPreviewFrames:v69];
        }

        v65 = [animatedArtworkPreviewFrames countByEnumeratingWithState:&v90 objects:v104 count:16];
      }

      while (v65);
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    animatedArtworks = [(MRContentItem *)selfCopy animatedArtworks];
    v74 = [animatedArtworks countByEnumeratingWithState:&v86 objects:v103 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v87;
      do
      {
        for (m = 0; m != v75; ++m)
        {
          if (*v87 != v76)
          {
            objc_enumerationMutation(animatedArtworks);
          }

          v78 = *(*(&v86 + 1) + 8 * m);
          animatedArtworks2 = [(MRContentItem *)selfCopy animatedArtworks];
          v80 = [animatedArtworks2 objectForKeyedSubscript:v78];
          v81 = [v80 protobufWithFormat:v78];

          if (v81)
          {
            [(_MRContentItemProtobuf *)v85 addAnimatedArtworks:v81];
          }
        }

        v75 = [animatedArtworks countByEnumeratingWithState:&v86 objects:v103 count:16];
      }

      while (v75);
    }
  }

  v82 = *MEMORY[0x1E69E9840];

  return v85;
}

- (NSData)data
{
  v2 = [(MRContentItem *)self protobufWithEncoding:0];
  data = [v2 data];

  return data;
}

- (void)setNowPlayingInfo:(id)info policy:(unsigned __int8)policy request:(id)request
{
  policyCopy = policy;
  infoCopy = info;
  requestCopy = request;
  v10 = [infoCopy mutableCopy];
  if (v10)
  {
    v198 = infoCopy;
    metadata = [(MRContentItem *)self metadata];

    if (!metadata)
    {
      v12 = objc_alloc_init(MRContentItemMetadata);
      [(MRContentItem *)self setMetadata:v12];
    }

    v195 = policyCopy;
    if (!policyCopy)
    {
      metadata2 = [(MRContentItem *)self metadata];
      nowPlayingInfo = [metadata2 nowPlayingInfo];
      v15 = [nowPlayingInfo copy];

      v214[0] = MEMORY[0x1E69E9820];
      v214[1] = 3221225472;
      v214[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke;
      v214[3] = &unk_1E769EC90;
      v215 = v10;
      [v15 enumerateKeysAndObjectsUsingBlock:v214];
    }

    if ((!requestCopy || [requestCopy includeMetadata]) && (v213[0] = MEMORY[0x1E69E9820], v213[1] = 3221225472, v213[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_2, v213[3] = &unk_1E76A0C78, v213[4] = self, _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoAlbum", v213), !requestCopy) || objc_msgSend(requestCopy, "includeMetadata"))
    {
      v212[0] = MEMORY[0x1E69E9820];
      v212[1] = 3221225472;
      v212[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_3;
      v212[3] = &unk_1E76A0C78;
      v212[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoArtist", v212);
      if (!requestCopy)
      {
        goto LABEL_261;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_261:
      v16 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAssetURL"];
      if (v16)
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        v18 = v16;
        if ((isKindOfClass & 1) == 0)
        {
          v18 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v16];
        }

        metadata3 = [(MRContentItem *)self metadata];
        [metadata3 setAssetURL:v18];

        if ((isKindOfClass & 1) == 0)
        {
        }
      }

      if (!requestCopy)
      {
        goto LABEL_259;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_259:
      v211[0] = MEMORY[0x1E69E9820];
      v211[1] = 3221225472;
      v211[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_4;
      v211[3] = &unk_1E76A0C78;
      v211[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoComposer", v211);
      if (!requestCopy)
      {
        goto LABEL_257;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_257:
      v20 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDiscNumber"];
      v21 = v20;
      if (v20)
      {
        longValue = [v20 longValue];
        metadata4 = [(MRContentItem *)self metadata];
        [metadata4 setDiscNumber:longValue];
      }

      if (!requestCopy)
      {
        goto LABEL_255;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_255:
      v210[0] = MEMORY[0x1E69E9820];
      v210[1] = 3221225472;
      v210[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_5;
      v210[3] = &unk_1E76A0C78;
      v210[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoGenre", v210);
      if (!requestCopy)
      {
        goto LABEL_253;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_253:
      v24 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPlaybackRate"];
      v25 = v24;
      if (v24)
      {
        [v24 floatValue];
        v27 = v26;
        metadata5 = [(MRContentItem *)self metadata];
        LODWORD(v29) = v27;
        [metadata5 setPlaybackRate:v29];
      }

      if (!requestCopy)
      {
        goto LABEL_251;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_251:
      v30 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCurrentPlaybackDate"];
      if (v30)
      {
        metadata6 = [(MRContentItem *)self metadata];
        [metadata6 setCurrentPlaybackDate:v30];
      }

      if (!requestCopy)
      {
        goto LABEL_249;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_249:
      v32 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsAlwaysLive"];
      v33 = v32;
      if (v32)
      {
        bOOLValue = [v32 BOOLValue];
        metadata7 = [(MRContentItem *)self metadata];
        [metadata7 setAlwaysLive:bOOLValue];
      }

      if (!requestCopy)
      {
        goto LABEL_39;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_39:
      v36 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsInTransition"];
      v37 = v36;
      if (v36)
      {
        bOOLValue2 = [v36 BOOLValue];
        metadata8 = [(MRContentItem *)self metadata];
        [metadata8 setInTransition:bOOLValue2];
      }
    }

    metadata9 = [(MRContentItem *)self metadata];
    isAlwaysLive = [metadata9 isAlwaysLive];

    if ((isAlwaysLive & 1) == 0)
    {
      if (!requestCopy || [requestCopy includeMetadata])
      {
        v42 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDuration"];
        v43 = v42;
        if (v42)
        {
          [v42 doubleValue];
          v45 = v44;
          metadata10 = [(MRContentItem *)self metadata];
          [metadata10 setDuration:v45];
        }

        if (!requestCopy)
        {
          goto LABEL_49;
        }
      }

      if ([requestCopy includeMetadata])
      {
LABEL_49:
        v47 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoElapsedTime"];
        v48 = v47;
        if (v47)
        {
          [v47 doubleValue];
          v50 = v49;
          metadata11 = [(MRContentItem *)self metadata];
          [metadata11 setElapsedTime:v50];
        }
      }
    }

    v52 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
    v53 = v52;
    if (v52)
    {
      v54 = MEMORY[0x1E696AD98];
      [v52 timeIntervalSinceReferenceDate];
      v55 = [v54 numberWithDouble:?];
      [v10 setObject:v55 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
    }

    if (!requestCopy || [requestCopy includeMetadata])
    {
      v56 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
      v57 = v56;
      if (v56)
      {
        [v56 doubleValue];
        v59 = v58;
        metadata12 = [(MRContentItem *)self metadata];
        [metadata12 setElapsedTimeTimestamp:v59];
      }
    }

    v61 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoStartTime"];
    v62 = v61;
    if (v61)
    {
      v63 = MEMORY[0x1E696AD98];
      [v61 timeIntervalSinceReferenceDate];
      v64 = [v63 numberWithDouble:?];
      [v10 setObject:v64 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoStartTime"];
    }

    if (!requestCopy || [requestCopy includeMetadata])
    {
      v65 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoStartTime"];
      v66 = v65;
      if (v65)
      {
        [v65 doubleValue];
        v68 = v67;
        metadata13 = [(MRContentItem *)self metadata];
        [metadata13 setStartTime:v68];
      }

      if (!requestCopy)
      {
        goto LABEL_290;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_290:
      v209[0] = MEMORY[0x1E69E9820];
      v209[1] = 3221225472;
      v209[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_6;
      v209[3] = &unk_1E76A0C78;
      v209[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoTitle", v209);
      if (!requestCopy)
      {
        goto LABEL_289;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_289:
      v70 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTotalDiscCount"];
      v71 = v70;
      if (v70)
      {
        longValue2 = [v70 longValue];
        metadata14 = [(MRContentItem *)self metadata];
        [metadata14 setTotalDiscCount:longValue2];
      }

      if (!requestCopy)
      {
        goto LABEL_288;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_288:
      v74 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTotalTrackCount"];
      v75 = v74;
      if (v74)
      {
        longValue3 = [v74 longValue];
        metadata15 = [(MRContentItem *)self metadata];
        [metadata15 setTotalTrackCount:longValue3];
      }

      if (!requestCopy)
      {
        goto LABEL_287;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_287:
      v78 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTrackNumber"];
      v79 = v78;
      if (v78)
      {
        longValue4 = [v78 longValue];
        metadata16 = [(MRContentItem *)self metadata];
        [metadata16 setTrackNumber:longValue4];
      }

      if (!requestCopy)
      {
        goto LABEL_286;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_286:
      v208[0] = MEMORY[0x1E69E9820];
      v208[1] = 3221225472;
      v208[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_7;
      v208[3] = &unk_1E76A0C78;
      v208[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoCollectionIdentifier", v208);
      if (!requestCopy)
      {
        goto LABEL_285;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_285:
      v207[0] = MEMORY[0x1E69E9820];
      v207[1] = 3221225472;
      v207[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_8;
      v207[3] = &unk_1E76A0C78;
      v207[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoExternalContentIdentifier", v207);
      if (!requestCopy)
      {
        goto LABEL_284;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_284:
      v206[0] = MEMORY[0x1E69E9820];
      v206[1] = 3221225472;
      v206[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_9;
      v206[3] = &unk_1E76A0C78;
      v206[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoInternationalStandardRecordingCode", v206);
      if (!requestCopy)
      {
        goto LABEL_283;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_283:
      v82 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExcludeFromSuggestions"];
      v83 = v82;
      if (v82)
      {
        bOOLValue3 = [v82 BOOLValue];
        metadata17 = [(MRContentItem *)self metadata];
        [metadata17 setExcludeFromSuggestions:bOOLValue3];
      }

      if (!requestCopy)
      {
        goto LABEL_282;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_282:
      v205[0] = MEMORY[0x1E69E9820];
      v205[1] = 3221225472;
      v205[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_10;
      v205[3] = &unk_1E76A0C78;
      v205[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoExternalProfileIdentifier", v205);
      if (!requestCopy)
      {
        goto LABEL_281;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_281:
      v204[0] = MEMORY[0x1E69E9820];
      v204[1] = 3221225472;
      v204[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_11;
      v204[3] = &unk_1E76A0C78;
      v204[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoServiceIdentifier", v204);
      if (!requestCopy)
      {
        goto LABEL_280;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_280:
      v203[0] = MEMORY[0x1E69E9820];
      v203[1] = 3221225472;
      v203[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_12;
      v203[3] = &unk_1E76A0C78;
      v203[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoBrandIdentifier", v203);
      if (!requestCopy)
      {
        goto LABEL_279;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_279:
      v86 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPlaybackProgress"];
      v87 = v86;
      if (v86)
      {
        [v86 floatValue];
        v89 = v88;
        metadata18 = [(MRContentItem *)self metadata];
        LODWORD(v91) = v89;
        [metadata18 setPlaybackProgress:v91];
      }

      if (!requestCopy)
      {
        goto LABEL_278;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_278:
      v92 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsExplicitTrack"];
      v93 = v92;
      if (v92)
      {
        bOOLValue4 = [v92 BOOLValue];
        metadata19 = [(MRContentItem *)self metadata];
        [metadata19 setExplicitItem:bOOLValue4];
      }

      if (!requestCopy)
      {
        goto LABEL_277;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_277:
      v96 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsSharable"];
      v97 = v96;
      if (v96)
      {
        bOOLValue5 = [v96 BOOLValue];
        metadata20 = [(MRContentItem *)self metadata];
        [metadata20 setSharable:bOOLValue5];
      }

      if (!requestCopy)
      {
        goto LABEL_276;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_276:
      v100 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsLiked"];
      v101 = v100;
      if (v100)
      {
        bOOLValue6 = [v100 BOOLValue];
        metadata21 = [(MRContentItem *)self metadata];
        [metadata21 setLiked:bOOLValue6];
      }

      if (!requestCopy)
      {
        goto LABEL_275;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_275:
      v104 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsInWishList"];
      v105 = v104;
      if (v104)
      {
        bOOLValue7 = [v104 BOOLValue];
        metadata22 = [(MRContentItem *)self metadata];
        [metadata22 setInWishList:bOOLValue7];
      }

      if (!requestCopy)
      {
        goto LABEL_274;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_274:
      v108 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationIdentifier"];
      v109 = v108;
      if (v108)
      {
        longLongValue = [v108 longLongValue];
        metadata23 = [(MRContentItem *)self metadata];
        [metadata23 setRadioStationIdentifier:longLongValue];
      }

      if (!requestCopy)
      {
        goto LABEL_273;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_273:
      v202[0] = MEMORY[0x1E69E9820];
      v202[1] = 3221225472;
      v202[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_13;
      v202[3] = &unk_1E76A0C78;
      v202[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoRadioStationName", v202);
      if (!requestCopy)
      {
        goto LABEL_272;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_272:
      v201[0] = MEMORY[0x1E69E9820];
      v201[1] = 3221225472;
      v201[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_14;
      v201[3] = &unk_1E76A0C78;
      v201[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoRadioStationStringIdentifier", v201);
      if (!requestCopy)
      {
        goto LABEL_271;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_271:
      v112 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier"];
      v113 = v112;
      if (v112)
      {
        longLongValue2 = [v112 longLongValue];
        metadata24 = [(MRContentItem *)self metadata];
        [metadata24 setITunesStoreIdentifier:longLongValue2];
      }

      if (!requestCopy)
      {
        goto LABEL_270;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_270:
      v116 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier"];
      v117 = v116;
      if (v116)
      {
        longLongValue3 = [v116 longLongValue];
        metadata25 = [(MRContentItem *)self metadata];
        [metadata25 setITunesStoreSubscriptionIdentifier:longLongValue3];
      }

      if (!requestCopy)
      {
        goto LABEL_269;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_269:
      v120 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtistiTunesStoreAdamIdentifier"];
      v121 = v120;
      if (v120)
      {
        longLongValue4 = [v120 longLongValue];
        metadata26 = [(MRContentItem *)self metadata];
        [metadata26 setITunesStoreArtistIdentifier:longLongValue4];
      }

      if (!requestCopy)
      {
        goto LABEL_268;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_268:
      v124 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAlbumiTunesStoreAdamIdentifier"];
      v125 = v124;
      if (v124)
      {
        longLongValue5 = [v124 longLongValue];
        metadata27 = [(MRContentItem *)self metadata];
        [metadata27 setITunesStoreAlbumIdentifier:longLongValue5];
      }

      if (!requestCopy)
      {
        goto LABEL_267;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_267:
      v128 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPurchaseInfoData"];
      if (v128)
      {
        metadata28 = [(MRContentItem *)self metadata];
        [metadata28 setPurchaseInfoData:v128];
      }

      if (!requestCopy)
      {
        goto LABEL_266;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_266:
      v130 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate"];
      v131 = v130;
      if (v130)
      {
        [v130 floatValue];
        v133 = v132;
        metadata29 = [(MRContentItem *)self metadata];
        LODWORD(v135) = v133;
        [metadata29 setDefaultPlaybackRate:v135];
      }

      if (!requestCopy)
      {
        goto LABEL_265;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_265:
      v136 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDownloadState"];
      v137 = v136;
      if (v136)
      {
        intValue = [v136 intValue];
        metadata30 = [(MRContentItem *)self metadata];
        [metadata30 setDownloadState:intValue];
      }

      if (!requestCopy)
      {
        goto LABEL_264;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_264:
      v140 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDownloadProgress"];
      v141 = v140;
      if (v140)
      {
        [v140 floatValue];
        v143 = v142;
        metadata31 = [(MRContentItem *)self metadata];
        LODWORD(v145) = v143;
        [metadata31 setDownloadProgress:v145];
      }

      if (!requestCopy)
      {
        goto LABEL_263;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_263:
      v146 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAppMetrics"];
      if (v146)
      {
        metadata32 = [(MRContentItem *)self metadata];
        [metadata32 setAppMetrics:v146];
      }

      if (!requestCopy)
      {
        goto LABEL_262;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_262:
      v148 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCollectionInfo"];
      if (v148)
      {
        metadata33 = [(MRContentItem *)self metadata];
        [metadata33 setCollectionInfo:v148];
      }

      if (!requestCopy)
      {
        goto LABEL_260;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_260:
      v200[0] = MEMORY[0x1E69E9820];
      v200[1] = 3221225472;
      v200[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_15;
      v200[3] = &unk_1E76A0C78;
      v200[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoArtworkMIMEType", v200);
      if (!requestCopy)
      {
        goto LABEL_258;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_258:
      v150 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsAdvertisement"];
      v151 = v150;
      if (v150)
      {
        bOOLValue8 = [v150 BOOLValue];
        metadata34 = [(MRContentItem *)self metadata];
        [metadata34 setAdvertisement:bOOLValue8];
      }

      if (!requestCopy)
      {
        goto LABEL_256;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_256:
      v154 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsSteerable"];
      v155 = v154;
      if (v154)
      {
        bOOLValue9 = [v154 BOOLValue];
        metadata35 = [(MRContentItem *)self metadata];
        [metadata35 setSteerable:bOOLValue9];
      }

      if (!requestCopy)
      {
        goto LABEL_254;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_254:
      v199[0] = MEMORY[0x1E69E9820];
      v199[1] = 3221225472;
      v199[2] = __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_16;
      v199[3] = &unk_1E76A0C78;
      v199[4] = self;
      _MRReadNowPlayingInfoString(v10, @"kMRMediaRemoteNowPlayingInfoArtworkIdentifier", v199);
      if (!requestCopy)
      {
        goto LABEL_252;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_252:
      v158 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkURL"];
      if (v158)
      {
        v159 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v158];
        metadata36 = [(MRContentItem *)self metadata];
        [metadata36 setArtworkURL:v159];
      }

      if (!requestCopy)
      {
        goto LABEL_250;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_250:
      v161 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoUniqueIdentifier"];
      v162 = v161;
      if (v161)
      {
        longLongValue6 = [v161 longLongValue];
        metadata37 = [(MRContentItem *)self metadata];
        [metadata37 setLegacyUniqueIdentifier:longLongValue6];
      }

      if (!requestCopy)
      {
        goto LABEL_185;
      }
    }

    if ([requestCopy includeMetadata])
    {
LABEL_185:
      v165 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoUserInfo"];
      if (v165)
      {
        metadata38 = [(MRContentItem *)self metadata];
        [metadata38 setUserInfo:v165];
      }
    }

    v196 = v62;
    v197 = v53;
    v167 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoMediaType"];
    v168 = v167;
    if (!v167)
    {
LABEL_199:
      v177 = [v10 objectForKeyedSubscript:?];
      if ((!requestCopy || [requestCopy includeLanguageOptions]) && v177)
      {
        v178 = MRLanguageOptionsCreateFromExternalRepresentation(v177);
        if (v178)
        {
          [(MRContentItem *)self setCurrentLanguageOptions:v178];
          metadata39 = [(MRContentItem *)self metadata];
          [metadata39 setLanguageOptionsAvailable:1];
        }
      }

      v180 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAvailableLanguageOptionsData"];
      v181 = v180;
      if (requestCopy)
      {
        if (![requestCopy includeLanguageOptions] || !v181)
        {

          goto LABEL_213;
        }
      }

      else if (!v180)
      {
        goto LABEL_214;
      }

      v182 = MRLanguageOptionGroupsCreateFromExternalRepresentation(v181);
      if (v182)
      {
        [(MRContentItem *)self setAvailableLanguageOptions:v182];
        metadata40 = [(MRContentItem *)self metadata];
        [metadata40 setLanguageOptionsAvailable:1];
      }

      if (requestCopy)
      {
LABEL_213:
        if (![requestCopy includeArtwork])
        {
          goto LABEL_230;
        }
      }

LABEL_214:
      if (v195)
      {
        artwork = 0;
      }

      else
      {
        artwork = [(MRContentItem *)self artwork];
      }

      v185 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkData"];
      if (v185)
      {
        if (!artwork)
        {
          artwork = objc_alloc_init(MRArtwork);
        }

        [(MRArtwork *)artwork setImageData:v185];
      }

      v186 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkDataHeight"];
      if (v186)
      {
        if (!artwork)
        {
          artwork = objc_alloc_init(MRArtwork);
        }

        -[MRArtwork setHeight:](artwork, "setHeight:", [v186 longValue]);
      }

      v187 = [v10 objectForKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkDataWidth"];
      if (v187)
      {
        if (!artwork)
        {
          artwork = objc_alloc_init(MRArtwork);
        }

        -[MRArtwork setWidth:](artwork, "setWidth:", [v187 longValue]);
      }

      [(MRContentItem *)self setArtwork:artwork];

LABEL_230:
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoContentItemIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAlbum"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtist"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAssetURL"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoComposer"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDiscNumber"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoGenre"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPlaybackRate"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCurrentPlaybackDate"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsAlwaysLive"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsInTransition"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDuration"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoElapsedTime"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTimestamp"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoStartTime"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTitle"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTotalDiscCount"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTotalTrackCount"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTrackNumber"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCollectionIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExternalContentIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoInternationalStandardRecordingCode"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExcludeFromSuggestions"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoExternalProfileIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoServiceIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoBrandIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPlaybackProgress"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsExplicitTrack"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsSharable"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsLiked"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsInWishList"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationName"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoRadioStationStringIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoiTunesStoreSubscriptionAdamIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtistiTunesStoreAdamIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAlbumiTunesStoreAdamIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoPurchaseInfoData"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDefaultPlaybackRate"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDownloadState"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoDownloadProgress"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAppMetrics"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCollectionInfo"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkMIMEType"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsAdvertisement"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoIsSteerable"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkURL"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoUniqueIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoUserInfo"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoCurrentLanguageOptionsData"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoAvailableLanguageOptionsData"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoArtworkData"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoSquareAnimatedArtwork"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoSquareAnimatedArtworkIdentifier"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTallAnimatedArtwork"];
      [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoTallAnimatedArtworkIdentifier"];
      metadata41 = [(MRContentItem *)self metadata];
      nowPlayingInfo2 = [metadata41 nowPlayingInfo];
      v190 = nowPlayingInfo2;
      if (nowPlayingInfo2 == v10)
      {
      }

      else
      {
        metadata42 = [(MRContentItem *)self metadata];
        nowPlayingInfo3 = [metadata42 nowPlayingInfo];
        v193 = [nowPlayingInfo3 isEqualToDictionary:v10];

        if (v193)
        {
LABEL_235:

          infoCopy = v198;
          goto LABEL_236;
        }

        metadata41 = [(MRContentItem *)self metadata];
        [metadata41 setNowPlayingInfo:v10];
      }

      goto LABEL_235;
    }

    if ([v167 isEqualToString:@"kMRMediaRemoteNowPlayingInfoTypeAudio"])
    {
      v169 = 0;
    }

    else
    {
      if ([v168 isEqualToString:@"kMRMediaRemoteNowPlayingInfoTypeVideo"])
      {
        v169 = 0;
        v170 = 2;
        goto LABEL_194;
      }

      if (([v168 isEqualToString:@"MRMediaRemoteMediaTypeMusic"] & 1) == 0)
      {
        if ([v168 isEqualToString:@"MRMediaRemoteMediaTypePodcast"])
        {
          v170 = 1;
          v169 = 4;
        }

        else if ([v168 isEqualToString:@"MRMediaRemoteMediaTypeAudioBook"])
        {
          v170 = 1;
          v169 = 5;
        }

        else
        {
          v194 = [v168 isEqualToString:@"MRMediaRemoteMediaTypeITunesU"];
          if (v194)
          {
            v169 = 6;
          }

          else
          {
            v169 = 0;
          }

          v170 = v194;
        }

        goto LABEL_194;
      }

      v169 = 1;
    }

    v170 = 1;
LABEL_194:
    metadata43 = [(MRContentItem *)self metadata];
    hasMediaType = [metadata43 hasMediaType];

    if ((hasMediaType & 1) == 0)
    {
      metadata44 = [(MRContentItem *)self metadata];
      [metadata44 setMediaType:v170];
    }

    metadata45 = [(MRContentItem *)self metadata];
    hasMediaSubType = [metadata45 hasMediaSubType];

    if ((hasMediaSubType & 1) == 0)
    {
      metadata46 = [(MRContentItem *)self metadata];
      [metadata46 setMediaSubType:v169];
    }

    [v10 setObject:0 forKeyedSubscript:@"kMRMediaRemoteNowPlayingInfoMediaType"];
    goto LABEL_199;
  }

LABEL_236:
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setAlbumName:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setTrackArtistName:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setComposer:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setGenre:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setTitle:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setCollectionIdentifier:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setContentIdentifier:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setInternationalStandardRecordingCode:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setProfileIdentifier:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_11(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setServiceIdentifier:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setBrandIdentifier:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_13(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setRadioStationName:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_14(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setRadioStationString:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_15(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setArtworkMIMEType:v3];
}

void __50__MRContentItem_setNowPlayingInfo_policy_request___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 metadata];
  [v4 setArtworkIdentifier:v3];
}

- (void)mergeFrom:(id)from
{
  v123 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  identifier = [fromCopy identifier];

  if (identifier)
  {
    identifier2 = [fromCopy identifier];
    [(MRContentItem *)self setIdentifier:identifier2];
  }

  metadata = [(MRContentItem *)self metadata];

  metadata2 = [fromCopy metadata];
  metadata3 = metadata2;
  if (metadata)
  {

    if (!metadata3)
    {
      goto LABEL_8;
    }

    metadata3 = [(MRContentItem *)self metadata];
    metadata4 = [fromCopy metadata];
    [metadata3 mergeFrom:metadata4];
  }

  else
  {
    [(MRContentItem *)self setMetadata:metadata2];
  }

LABEL_8:
  info = [fromCopy info];

  if (info)
  {
    info2 = [fromCopy info];
    [(MRContentItem *)self setInfo:info2];
  }

  transcriptAlignments = [fromCopy transcriptAlignments];

  if (transcriptAlignments)
  {
    transcriptAlignments2 = [fromCopy transcriptAlignments];
    [(MRContentItem *)self setTranscriptAlignments:transcriptAlignments2];
  }

  parentIdentifier = [fromCopy parentIdentifier];

  if (parentIdentifier)
  {
    parentIdentifier2 = [fromCopy parentIdentifier];
    [(MRContentItem *)self setParentIdentifier:parentIdentifier2];
  }

  ancestorIdentifier = [fromCopy ancestorIdentifier];

  if (ancestorIdentifier)
  {
    ancestorIdentifier2 = [fromCopy ancestorIdentifier];
    [(MRContentItem *)self setAncestorIdentifier:ancestorIdentifier2];
  }

  associatedParticipantIdentifier = [fromCopy associatedParticipantIdentifier];

  if (associatedParticipantIdentifier)
  {
    associatedParticipantIdentifier2 = [fromCopy associatedParticipantIdentifier];
    [(MRContentItem *)self setAssociatedParticipantIdentifier:associatedParticipantIdentifier2];
  }

  queueIdentifier = [fromCopy queueIdentifier];

  if (queueIdentifier)
  {
    queueIdentifier2 = [fromCopy queueIdentifier];
    [(MRContentItem *)self setQueueIdentifier:queueIdentifier2];
  }

  requestIdentifier = [fromCopy requestIdentifier];

  if (requestIdentifier)
  {
    requestIdentifier2 = [fromCopy requestIdentifier];
    [(MRContentItem *)self setRequestIdentifier:requestIdentifier2];
  }

  artwork = [fromCopy artwork];

  if (artwork)
  {
    artwork2 = [fromCopy artwork];
    [(MRContentItem *)self setArtwork:artwork2];
  }

  availableLanguageOptions = [fromCopy availableLanguageOptions];
  v28 = [availableLanguageOptions count];

  if (v28)
  {
    availableLanguageOptions2 = [fromCopy availableLanguageOptions];
    [(MRContentItem *)self setAvailableLanguageOptions:availableLanguageOptions2];
  }

  currentLanguageOptions = [fromCopy currentLanguageOptions];
  v31 = [currentLanguageOptions count];

  if (v31)
  {
    currentLanguageOptions2 = [fromCopy currentLanguageOptions];
    [(MRContentItem *)self setCurrentLanguageOptions:currentLanguageOptions2];
  }

  sections = [fromCopy sections];
  v34 = [sections count];

  if (v34)
  {
    sections2 = [fromCopy sections];
    [(MRContentItem *)self setSections:sections2];
  }

  availableArtworkFormats = [fromCopy availableArtworkFormats];

  if (availableArtworkFormats)
  {
    availableArtworkFormats2 = [fromCopy availableArtworkFormats];
    [(MRContentItem *)self setAvailableArtworkFormats:availableArtworkFormats2];
  }

  availableRemoteArtworkFormats = [fromCopy availableRemoteArtworkFormats];

  if (availableRemoteArtworkFormats)
  {
    availableRemoteArtworkFormats2 = [fromCopy availableRemoteArtworkFormats];
    [(MRContentItem *)self setAvailableRemoteArtworkFormats:availableRemoteArtworkFormats2];
  }

  availableAnimatedArtworkFormats = [fromCopy availableAnimatedArtworkFormats];

  if (availableAnimatedArtworkFormats)
  {
    availableAnimatedArtworkFormats2 = [fromCopy availableAnimatedArtworkFormats];
    [(MRContentItem *)self setAvailableAnimatedArtworkFormats:availableAnimatedArtworkFormats2];
  }

  artworks = [fromCopy artworks];
  v43 = [artworks count];

  if (v43)
  {
    artworks2 = [(MRContentItem *)self artworks];

    if (artworks2)
    {
      artworks3 = [(MRContentItem *)self artworks];
      artworks6 = [artworks3 mutableCopy];

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      artworks4 = [fromCopy artworks];
      allKeys = [artworks4 allKeys];

      v49 = [allKeys countByEnumeratingWithState:&v115 objects:v122 count:16];
      if (v49)
      {
        v50 = v49;
        v51 = *v116;
        do
        {
          for (i = 0; i != v50; ++i)
          {
            if (*v116 != v51)
            {
              objc_enumerationMutation(allKeys);
            }

            v53 = *(*(&v115 + 1) + 8 * i);
            artworks5 = [fromCopy artworks];
            v55 = [artworks5 objectForKeyedSubscript:v53];
            [artworks6 setObject:v55 forKeyedSubscript:v53];
          }

          v50 = [allKeys countByEnumeratingWithState:&v115 objects:v122 count:16];
        }

        while (v50);
      }

      v56 = [artworks6 copy];
      [(MRContentItem *)self setArtworks:v56];
    }

    else
    {
      artworks6 = [fromCopy artworks];
      [(MRContentItem *)self setArtworks:artworks6];
    }
  }

  remoteArtworks = [fromCopy remoteArtworks];
  v58 = [remoteArtworks count];

  if (v58)
  {
    remoteArtworks2 = [(MRContentItem *)self remoteArtworks];

    if (remoteArtworks2)
    {
      remoteArtworks3 = [(MRContentItem *)self remoteArtworks];
      remoteArtworks6 = [remoteArtworks3 mutableCopy];

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      remoteArtworks4 = [fromCopy remoteArtworks];
      allKeys2 = [remoteArtworks4 allKeys];

      v64 = [allKeys2 countByEnumeratingWithState:&v111 objects:v121 count:16];
      if (v64)
      {
        v65 = v64;
        v66 = *v112;
        do
        {
          for (j = 0; j != v65; ++j)
          {
            if (*v112 != v66)
            {
              objc_enumerationMutation(allKeys2);
            }

            v68 = *(*(&v111 + 1) + 8 * j);
            remoteArtworks5 = [fromCopy remoteArtworks];
            v70 = [remoteArtworks5 objectForKeyedSubscript:v68];
            [remoteArtworks6 setObject:v70 forKeyedSubscript:v68];
          }

          v65 = [allKeys2 countByEnumeratingWithState:&v111 objects:v121 count:16];
        }

        while (v65);
      }

      v71 = [remoteArtworks6 copy];
      [(MRContentItem *)self setRemoteArtworks:v71];
    }

    else
    {
      remoteArtworks6 = [fromCopy remoteArtworks];
      [(MRContentItem *)self setRemoteArtworks:remoteArtworks6];
    }
  }

  if (_os_feature_enabled_impl())
  {
    animatedArtworkPreviewFrames = [fromCopy animatedArtworkPreviewFrames];
    v73 = [animatedArtworkPreviewFrames count];

    if (v73)
    {
      animatedArtworkPreviewFrames2 = [(MRContentItem *)self animatedArtworkPreviewFrames];

      if (animatedArtworkPreviewFrames2)
      {
        animatedArtworkPreviewFrames3 = [(MRContentItem *)self animatedArtworkPreviewFrames];
        animatedArtworkPreviewFrames6 = [animatedArtworkPreviewFrames3 mutableCopy];

        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        animatedArtworkPreviewFrames4 = [fromCopy animatedArtworkPreviewFrames];
        allKeys3 = [animatedArtworkPreviewFrames4 allKeys];

        v79 = [allKeys3 countByEnumeratingWithState:&v107 objects:v120 count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v108;
          do
          {
            for (k = 0; k != v80; ++k)
            {
              if (*v108 != v81)
              {
                objc_enumerationMutation(allKeys3);
              }

              v83 = *(*(&v107 + 1) + 8 * k);
              animatedArtworkPreviewFrames5 = [fromCopy animatedArtworkPreviewFrames];
              v85 = [animatedArtworkPreviewFrames5 objectForKeyedSubscript:v83];
              [animatedArtworkPreviewFrames6 setObject:v85 forKeyedSubscript:v83];
            }

            v80 = [allKeys3 countByEnumeratingWithState:&v107 objects:v120 count:16];
          }

          while (v80);
        }

        v86 = [animatedArtworkPreviewFrames6 copy];
        [(MRContentItem *)self setAnimatedArtworkPreviewFrames:v86];
      }

      else
      {
        animatedArtworkPreviewFrames6 = [fromCopy animatedArtworkPreviewFrames];
        [(MRContentItem *)self setAnimatedArtworkPreviewFrames:animatedArtworkPreviewFrames6];
      }
    }

    animatedArtworks = [fromCopy animatedArtworks];
    v88 = [animatedArtworks count];

    if (v88)
    {
      animatedArtworks2 = [(MRContentItem *)self animatedArtworks];

      if (animatedArtworks2)
      {
        animatedArtworks3 = [(MRContentItem *)self animatedArtworks];
        animatedArtworks6 = [animatedArtworks3 mutableCopy];

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        animatedArtworks4 = [fromCopy animatedArtworks];
        allKeys4 = [animatedArtworks4 allKeys];

        v94 = [allKeys4 countByEnumeratingWithState:&v103 objects:v119 count:16];
        if (v94)
        {
          v95 = v94;
          v96 = *v104;
          do
          {
            for (m = 0; m != v95; ++m)
            {
              if (*v104 != v96)
              {
                objc_enumerationMutation(allKeys4);
              }

              v98 = *(*(&v103 + 1) + 8 * m);
              animatedArtworks5 = [fromCopy animatedArtworks];
              v100 = [animatedArtworks5 objectForKeyedSubscript:v98];
              [animatedArtworks6 setObject:v100 forKeyedSubscript:v98];
            }

            v95 = [allKeys4 countByEnumeratingWithState:&v103 objects:v119 count:16];
          }

          while (v95);
        }

        v101 = [animatedArtworks6 copy];
        [(MRContentItem *)self setAnimatedArtworks:v101];
      }

      else
      {
        animatedArtworks6 = [fromCopy animatedArtworks];
        [(MRContentItem *)self setAnimatedArtworks:animatedArtworks6];
      }
    }
  }

  v102 = *MEMORY[0x1E69E9840];
}

+ (id)extractedIdentifierFromNowPlayingInfo:(id)info
{
  if (!info)
  {
    v9 = 0;
    goto LABEL_12;
  }

  infoCopy = info;
  v4 = [infoCopy objectForKey:@"kMRMediaRemoteNowPlayingInfoContentItemIdentifier"];
  v5 = [infoCopy objectForKey:@"kMRMediaRemoteNowPlayingInfoiTunesStoreIdentifier"];
  v6 = [infoCopy objectForKey:@"kMRMediaRemoteNowPlayingInfoExternalContentIdentifier"];
  v7 = [infoCopy objectForKey:@"kMRMediaRemoteNowPlayingInfoUniqueIdentifier"];

  if (!v4)
  {
    if (v5)
    {
      v10 = v5;
LABEL_7:
      stringValue = [v10 stringValue];
      goto LABEL_10;
    }

    if (v6)
    {
      stringValue = v6;
      goto LABEL_10;
    }

    if (v7)
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = v7;
        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        stringValue = v7;
        goto LABEL_10;
      }
    }

    v9 = 0;
    goto LABEL_11;
  }

  stringValue = v4;
LABEL_10:
  v9 = stringValue;
LABEL_11:

LABEL_12:

  return v9;
}

+ (id)mergeContentItems:(id)items
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = itemsCopy;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [v4 objectForKeyedSubscript:identifier];

        if (v12)
        {
          [v12 mergeFrom:v10];
        }

        else
        {
          v13 = [v10 copy];
          identifier2 = [v10 identifier];
          [v4 setObject:v13 forKeyedSubscript:identifier2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  allValues = [v4 allValues];

  v16 = *MEMORY[0x1E69E9840];

  return allValues;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_78:
      v11 = 0;
      goto LABEL_79;
    }

    identifier = [(MRContentItem *)equalCopy identifier];
    identifier2 = [(MRContentItem *)self identifier];
    v7 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(MRContentItem *)equalCopy identifier];
      identifier4 = [(MRContentItem *)self identifier];
      v10 = [identifier3 isEqualToString:identifier4];

      if (!v10)
      {
        goto LABEL_78;
      }
    }

    metadata = [(MRContentItem *)equalCopy metadata];
    metadata2 = [(MRContentItem *)self metadata];
    v14 = metadata2;
    if (metadata == metadata2)
    {
    }

    else
    {
      metadata3 = [(MRContentItem *)equalCopy metadata];
      metadata4 = [(MRContentItem *)self metadata];
      v17 = [metadata3 isEqual:metadata4];

      if (!v17)
      {
        goto LABEL_78;
      }
    }

    info = [(MRContentItem *)equalCopy info];
    info2 = [(MRContentItem *)self info];
    v20 = info2;
    if (info == info2)
    {
    }

    else
    {
      info3 = [(MRContentItem *)equalCopy info];
      info4 = [(MRContentItem *)self info];
      v23 = [info3 isEqualToString:info4];

      if (!v23)
      {
        goto LABEL_78;
      }
    }

    transcriptAlignments = [(MRContentItem *)equalCopy transcriptAlignments];
    transcriptAlignments2 = [(MRContentItem *)self transcriptAlignments];
    v26 = transcriptAlignments2;
    if (transcriptAlignments == transcriptAlignments2)
    {
    }

    else
    {
      transcriptAlignments3 = [(MRContentItem *)equalCopy transcriptAlignments];
      transcriptAlignments4 = [(MRContentItem *)self transcriptAlignments];
      v29 = [transcriptAlignments3 isEqualToArray:transcriptAlignments4];

      if (!v29)
      {
        goto LABEL_78;
      }
    }

    availableLanguageOptions = [(MRContentItem *)equalCopy availableLanguageOptions];
    availableLanguageOptions2 = [(MRContentItem *)self availableLanguageOptions];
    v32 = availableLanguageOptions2;
    if (availableLanguageOptions == availableLanguageOptions2)
    {
    }

    else
    {
      availableLanguageOptions3 = [(MRContentItem *)equalCopy availableLanguageOptions];
      availableLanguageOptions4 = [(MRContentItem *)self availableLanguageOptions];
      v35 = [availableLanguageOptions3 isEqualToArray:availableLanguageOptions4];

      if (!v35)
      {
        goto LABEL_78;
      }
    }

    currentLanguageOptions = [(MRContentItem *)equalCopy currentLanguageOptions];
    currentLanguageOptions2 = [(MRContentItem *)self currentLanguageOptions];
    v38 = currentLanguageOptions2;
    if (currentLanguageOptions == currentLanguageOptions2)
    {
    }

    else
    {
      currentLanguageOptions3 = [(MRContentItem *)equalCopy currentLanguageOptions];
      currentLanguageOptions4 = [(MRContentItem *)self currentLanguageOptions];
      v41 = [currentLanguageOptions3 isEqualToArray:currentLanguageOptions4];

      if (!v41)
      {
        goto LABEL_78;
      }
    }

    sections = [(MRContentItem *)equalCopy sections];
    sections2 = [(MRContentItem *)self sections];
    v44 = sections2;
    if (sections == sections2)
    {
    }

    else
    {
      sections3 = [(MRContentItem *)equalCopy sections];
      sections4 = [(MRContentItem *)self sections];
      v47 = [sections3 isEqualToArray:sections4];

      if (!v47)
      {
        goto LABEL_78;
      }
    }

    parentIdentifier = [(MRContentItem *)equalCopy parentIdentifier];
    parentIdentifier2 = [(MRContentItem *)self parentIdentifier];
    v50 = parentIdentifier2;
    if (parentIdentifier == parentIdentifier2)
    {
    }

    else
    {
      parentIdentifier3 = [(MRContentItem *)equalCopy parentIdentifier];
      parentIdentifier4 = [(MRContentItem *)self parentIdentifier];
      v53 = [parentIdentifier3 isEqualToString:parentIdentifier4];

      if (!v53)
      {
        goto LABEL_78;
      }
    }

    ancestorIdentifier = [(MRContentItem *)equalCopy ancestorIdentifier];
    ancestorIdentifier2 = [(MRContentItem *)self ancestorIdentifier];
    v56 = ancestorIdentifier2;
    if (ancestorIdentifier == ancestorIdentifier2)
    {
    }

    else
    {
      ancestorIdentifier3 = [(MRContentItem *)equalCopy ancestorIdentifier];
      ancestorIdentifier4 = [(MRContentItem *)self ancestorIdentifier];
      v59 = [ancestorIdentifier3 isEqualToString:ancestorIdentifier4];

      if (!v59)
      {
        goto LABEL_78;
      }
    }

    associatedParticipantIdentifier = [(MRContentItem *)equalCopy associatedParticipantIdentifier];
    associatedParticipantIdentifier2 = [(MRContentItem *)self associatedParticipantIdentifier];
    v62 = associatedParticipantIdentifier2;
    if (associatedParticipantIdentifier == associatedParticipantIdentifier2)
    {
    }

    else
    {
      associatedParticipantIdentifier3 = [(MRContentItem *)equalCopy associatedParticipantIdentifier];
      associatedParticipantIdentifier4 = [(MRContentItem *)self associatedParticipantIdentifier];
      v65 = [associatedParticipantIdentifier3 isEqualToString:associatedParticipantIdentifier4];

      if (!v65)
      {
        goto LABEL_78;
      }
    }

    queueIdentifier = [(MRContentItem *)equalCopy queueIdentifier];
    queueIdentifier2 = [(MRContentItem *)self queueIdentifier];
    v68 = queueIdentifier2;
    if (queueIdentifier == queueIdentifier2)
    {
    }

    else
    {
      queueIdentifier3 = [(MRContentItem *)equalCopy queueIdentifier];
      queueIdentifier4 = [(MRContentItem *)self queueIdentifier];
      v71 = [queueIdentifier3 isEqualToString:queueIdentifier4];

      if (!v71)
      {
        goto LABEL_78;
      }
    }

    requestIdentifier = [(MRContentItem *)equalCopy requestIdentifier];
    requestIdentifier2 = [(MRContentItem *)self requestIdentifier];
    v74 = requestIdentifier2;
    if (requestIdentifier == requestIdentifier2)
    {
    }

    else
    {
      requestIdentifier3 = [(MRContentItem *)equalCopy requestIdentifier];
      requestIdentifier4 = [(MRContentItem *)self requestIdentifier];
      v77 = [requestIdentifier3 isEqualToString:requestIdentifier4];

      if (!v77)
      {
        goto LABEL_78;
      }
    }

    availableArtworkFormats = [(MRContentItem *)equalCopy availableArtworkFormats];
    availableArtworkFormats2 = [(MRContentItem *)self availableArtworkFormats];
    v80 = availableArtworkFormats2;
    if (availableArtworkFormats == availableArtworkFormats2)
    {
    }

    else
    {
      v81 = [availableArtworkFormats isEqual:availableArtworkFormats2];

      if ((v81 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    availableRemoteArtworkFormats = [(MRContentItem *)equalCopy availableRemoteArtworkFormats];
    availableRemoteArtworkFormats2 = [(MRContentItem *)self availableRemoteArtworkFormats];
    v84 = availableRemoteArtworkFormats2;
    if (availableRemoteArtworkFormats == availableRemoteArtworkFormats2)
    {
    }

    else
    {
      v85 = [availableRemoteArtworkFormats isEqual:availableRemoteArtworkFormats2];

      if ((v85 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    availableAnimatedArtworkFormats = [(MRContentItem *)equalCopy availableAnimatedArtworkFormats];
    availableAnimatedArtworkFormats2 = [(MRContentItem *)self availableAnimatedArtworkFormats];
    v88 = availableAnimatedArtworkFormats2;
    if (availableAnimatedArtworkFormats == availableAnimatedArtworkFormats2)
    {
    }

    else
    {
      v89 = [availableAnimatedArtworkFormats isEqual:availableAnimatedArtworkFormats2];

      if ((v89 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    artwork = [(MRContentItem *)equalCopy artwork];
    artwork2 = [(MRContentItem *)self artwork];
    v92 = artwork2;
    if (artwork == artwork2)
    {
    }

    else
    {
      artwork3 = [(MRContentItem *)equalCopy artwork];
      artwork4 = [(MRContentItem *)self artwork];
      v95 = [artwork3 isEqual:artwork4];

      if (!v95)
      {
        goto LABEL_78;
      }
    }

    artworks = [(MRContentItem *)equalCopy artworks];
    artworks2 = [(MRContentItem *)self artworks];
    v98 = artworks2;
    if (artworks == artworks2)
    {
    }

    else
    {
      v99 = [artworks isEqual:artworks2];

      if ((v99 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    remoteArtworks = [(MRContentItem *)equalCopy remoteArtworks];
    remoteArtworks2 = [(MRContentItem *)self remoteArtworks];
    v102 = remoteArtworks2;
    if (remoteArtworks == remoteArtworks2)
    {
    }

    else
    {
      v103 = [remoteArtworks isEqual:remoteArtworks2];

      if ((v103 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    animatedArtworkPreviewFrames = [(MRContentItem *)equalCopy animatedArtworkPreviewFrames];
    animatedArtworkPreviewFrames2 = [(MRContentItem *)self animatedArtworkPreviewFrames];
    v106 = animatedArtworkPreviewFrames2;
    if (animatedArtworkPreviewFrames == animatedArtworkPreviewFrames2)
    {
    }

    else
    {
      v107 = [animatedArtworkPreviewFrames isEqual:animatedArtworkPreviewFrames2];

      if ((v107 & 1) == 0)
      {
        goto LABEL_78;
      }
    }

    animatedArtworks = [(MRContentItem *)equalCopy animatedArtworks];
    animatedArtworks2 = [(MRContentItem *)self animatedArtworks];
    if (animatedArtworks == animatedArtworks2)
    {
      v11 = 1;
    }

    else
    {
      v11 = [animatedArtworks isEqual:animatedArtworks2];
    }
  }

LABEL_79:

  return v11;
}

- (BOOL)isEffectivelyEqual:(id)equal
{
  equalCopy = equal;
  v5 = _AXSHapticMusicEnabled();
  v6 = [(MRContentItem *)self copy];
  v7 = [equalCopy copy];
  metadata = [v6 metadata];
  [metadata setHasElapsedTime:0];

  metadata2 = [v6 metadata];
  [metadata2 setHasElapsedTimeTimestamp:0];

  metadata3 = [v6 metadata];
  [metadata3 setHasInferredTimestamp:0];

  metadata4 = [v7 metadata];
  [metadata4 setHasElapsedTime:0];

  metadata5 = [v7 metadata];
  [metadata5 setHasElapsedTimeTimestamp:0];

  metadata6 = [v7 metadata];
  [metadata6 setHasInferredTimestamp:0];

  v14 = 0;
  if ([v6 isEqual:v7])
  {
    v15 = v5 == 0;
    metadata7 = [(MRContentItem *)self metadata];
    [metadata7 calculatedPlaybackPosition];
    v18 = v17;
    metadata8 = [equalCopy metadata];
    [metadata8 calculatedPlaybackPosition];
    v14 = vabdd_f64(v18, v20) < dbl_1A2B81000[v15];
  }

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  identifier = [(MRContentItem *)self identifier];
  v7 = [identifier copyWithZone:zone];
  [v5 setIdentifier:v7];

  metadata = [(MRContentItem *)self metadata];
  v9 = [metadata copyWithZone:zone];
  [v5 setMetadata:v9];

  info = [(MRContentItem *)self info];
  v11 = [info copyWithZone:zone];
  [v5 setInfo:v11];

  parentIdentifier = [(MRContentItem *)self parentIdentifier];
  v13 = [parentIdentifier copyWithZone:zone];
  [v5 setParentIdentifier:v13];

  ancestorIdentifier = [(MRContentItem *)self ancestorIdentifier];
  v15 = [ancestorIdentifier copyWithZone:zone];
  [v5 setAncestorIdentifier:v15];

  associatedParticipantIdentifier = [(MRContentItem *)self associatedParticipantIdentifier];
  v17 = [associatedParticipantIdentifier copyWithZone:zone];
  [v5 setAssociatedParticipantIdentifier:v17];

  queueIdentifier = [(MRContentItem *)self queueIdentifier];
  v19 = [queueIdentifier copyWithZone:zone];
  [v5 setQueueIdentifier:v19];

  requestIdentifier = [(MRContentItem *)self requestIdentifier];
  v21 = [requestIdentifier copyWithZone:zone];
  [v5 setRequestIdentifier:v21];

  artwork = [(MRContentItem *)self artwork];
  v23 = [artwork copyWithZone:zone];
  [v5 setArtwork:v23];

  transcriptAlignments = [(MRContentItem *)self transcriptAlignments];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __30__MRContentItem_copyWithZone___block_invoke;
  v50[3] = &__block_descriptor_40_e31__16__0__MRTranscriptAlignment_8l;
  v50[4] = zone;
  v25 = [transcriptAlignments mr_map:v50];
  [v5 setTranscriptAlignments:v25];

  availableLanguageOptions = [(MRContentItem *)self availableLanguageOptions];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __30__MRContentItem_copyWithZone___block_invoke_2;
  v49[3] = &__block_descriptor_40_e31__16__0__MRLanguageOptionGroup_8l;
  v49[4] = zone;
  v27 = [availableLanguageOptions mr_map:v49];
  [v5 setAvailableLanguageOptions:v27];

  currentLanguageOptions = [(MRContentItem *)self currentLanguageOptions];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __30__MRContentItem_copyWithZone___block_invoke_3;
  v48[3] = &__block_descriptor_40_e26__16__0__MRLanguageOption_8l;
  v48[4] = zone;
  v29 = [currentLanguageOptions mr_map:v48];
  [v5 setCurrentLanguageOptions:v29];

  sections = [(MRContentItem *)self sections];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __30__MRContentItem_copyWithZone___block_invoke_4;
  v47[3] = &__block_descriptor_40_e23__16__0__MRContentItem_8l;
  v47[4] = zone;
  v31 = [sections mr_map:v47];
  [v5 setSections:v31];

  availableArtworkFormats = [(MRContentItem *)self availableArtworkFormats];
  v33 = [availableArtworkFormats copyWithZone:zone];
  [v5 setAvailableArtworkFormats:v33];

  availableRemoteArtworkFormats = [(MRContentItem *)self availableRemoteArtworkFormats];
  v35 = [availableRemoteArtworkFormats copyWithZone:zone];
  [v5 setAvailableRemoteArtworkFormats:v35];

  availableAnimatedArtworkFormats = [(MRContentItem *)self availableAnimatedArtworkFormats];
  v37 = [availableAnimatedArtworkFormats copyWithZone:zone];
  [v5 setAvailableAnimatedArtworkFormats:v37];

  artworks = [(MRContentItem *)self artworks];
  v39 = [artworks copyWithZone:zone];
  [v5 setArtworks:v39];

  remoteArtworks = [(MRContentItem *)self remoteArtworks];
  v41 = [remoteArtworks copyWithZone:zone];
  [v5 setRemoteArtworks:v41];

  animatedArtworkPreviewFrames = [(MRContentItem *)self animatedArtworkPreviewFrames];
  v43 = [animatedArtworkPreviewFrames copyWithZone:zone];
  [v5 setAnimatedArtworkPreviewFrames:v43];

  animatedArtworks = [(MRContentItem *)self animatedArtworks];
  v45 = [animatedArtworks copyWithZone:zone];
  [v5 setAnimatedArtworks:v45];

  return v5;
}

id __30__MRContentItem_copyWithZone___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

id __30__MRContentItem_copyWithZone___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

id __30__MRContentItem_copyWithZone___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

id __30__MRContentItem_copyWithZone___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 copyWithZone:*(a1 + 32)];

  return v2;
}

@end
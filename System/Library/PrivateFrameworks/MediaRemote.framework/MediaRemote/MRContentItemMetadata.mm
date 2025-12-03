@interface MRContentItemMetadata
- (BOOL)hasLoadingPlaceholderTitle;
- (BOOL)isEqual:(id)equal;
- (MRContentItemMetadata)initWithData:(id)data;
- (MRContentItemMetadata)initWithProtobuf:(id)protobuf;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (NSString)localizedDurationString;
- (NSString)localizedTitle;
- (double)calculatedPlaybackPosition;
- (double)calculatedPlaybackPositionFromDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)protobufWithEncoding:(int64_t)encoding;
- (void)mergeFrom:(id)from;
- (void)setElapsedTime:(double)time;
- (void)setPlaybackRate:(float)rate;
@end

@implementation MRContentItemMetadata

- (NSString)localizedDurationString
{
  durationStringLocalizationKey = [(MRContentItemMetadata *)self durationStringLocalizationKey];

  if (durationStringLocalizationKey)
  {
    durationStringLocalizationKey2 = [(MRContentItemMetadata *)self durationStringLocalizationKey];
    v5 = MRLocalizedString(durationStringLocalizationKey2);
  }

  else
  {
    v5 = self->_localizedDurationString;
  }

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(MRContentItemMetadata *)self hasContainer])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isContainer](self, "isContainer")}];
    [(NSDictionary *)v3 setObject:v4 forKeyedSubscript:@"container"];
  }

  if ([(MRContentItemMetadata *)self hasPlayable])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isPlayable](self, "isPlayable")}];
    [(NSDictionary *)v3 setObject:v5 forKeyedSubscript:@"playable"];
  }

  if ([(MRContentItemMetadata *)self hasExplicitItem])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isExplicitItem](self, "isExplicitItem")}];
    [(NSDictionary *)v3 setObject:v6 forKeyedSubscript:@"explicitItem"];
  }

  if ([(MRContentItemMetadata *)self hasStreamingContent])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isStreamingContent](self, "isStreamingContent")}];
    [(NSDictionary *)v3 setObject:v7 forKeyedSubscript:@"streamingContent"];
  }

  if ([(MRContentItemMetadata *)self hasCurrentlyPlaying])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isCurrentlyPlaying](self, "isCurrentlyPlaying")}];
    [(NSDictionary *)v3 setObject:v8 forKeyedSubscript:@"currentlyPlaying"];
  }

  if ([(MRContentItemMetadata *)self hasAlwaysLive])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isAlwaysLive](self, "isAlwaysLive")}];
    [(NSDictionary *)v3 setObject:v9 forKeyedSubscript:@"alwaysLive"];
  }

  if ([(MRContentItemMetadata *)self hasSharable])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isSharable](self, "isSharable")}];
    [(NSDictionary *)v3 setObject:v10 forKeyedSubscript:@"sharable"];
  }

  if ([(MRContentItemMetadata *)self hasLiked])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isLiked](self, "isLiked")}];
    [(NSDictionary *)v3 setObject:v11 forKeyedSubscript:@"liked"];
  }

  if ([(MRContentItemMetadata *)self hasInWishList])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isInWishList](self, "isInWishList")}];
    [(NSDictionary *)v3 setObject:v12 forKeyedSubscript:@"inWishList"];
  }

  if ([(MRContentItemMetadata *)self hasAdvertisement])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isAdvertisement](self, "isAdvertisement")}];
    [(NSDictionary *)v3 setObject:v13 forKeyedSubscript:@"advertisement"];
  }

  if ([(MRContentItemMetadata *)self hasSteerable])
  {
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isSteerable](self, "isSteerable")}];
    [(NSDictionary *)v3 setObject:v14 forKeyedSubscript:@"steerable"];
  }

  if ([(MRContentItemMetadata *)self hasLoading])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isLoading](self, "isLoading")}];
    [(NSDictionary *)v3 setObject:v15 forKeyedSubscript:@"loading"];
  }

  if ([(MRContentItemMetadata *)self hasInTransition])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isInTransition](self, "isInTransition")}];
    [(NSDictionary *)v3 setObject:v16 forKeyedSubscript:@"inTransition"];
  }

  if ([(MRContentItemMetadata *)self hasArtworkAvailable])
  {
    v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata artworkAvailable](self, "artworkAvailable")}];
    [(NSDictionary *)v3 setObject:v17 forKeyedSubscript:@"artworkAvailable"];
  }

  if ([(MRContentItemMetadata *)self hasInfoAvailable])
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata infoAvailable](self, "infoAvailable")}];
    [(NSDictionary *)v3 setObject:v18 forKeyedSubscript:@"infoAvailable"];
  }

  if ([(MRContentItemMetadata *)self hasTranscriptAlignmentsAvailable])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata transcriptAlignmentsAvailable](self, "transcriptAlignmentsAvailable")}];
    [(NSDictionary *)v3 setObject:v19 forKeyedSubscript:@"transcriptAlignmentsAvailable"];
  }

  if ([(MRContentItemMetadata *)self hasLanguageOptionsAvailable])
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata languageOptionsAvailable](self, "languageOptionsAvailable")}];
    [(NSDictionary *)v3 setObject:v20 forKeyedSubscript:@"languageOptionsAvailable"];
  }

  if ([(MRContentItemMetadata *)self hasLyricsAvailable])
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata lyricsAvailable](self, "lyricsAvailable")}];
    [(NSDictionary *)v3 setObject:v21 forKeyedSubscript:@"lyricsAvailable"];
  }

  if ([(MRContentItemMetadata *)self hasPlaybackProgress])
  {
    v22 = MEMORY[0x1E696AD98];
    [(MRContentItemMetadata *)self playbackProgress];
    v23 = [v22 numberWithFloat:?];
    [(NSDictionary *)v3 setObject:v23 forKeyedSubscript:@"playbackProgress"];
  }

  if ([(MRContentItemMetadata *)self hasPlaybackRate])
  {
    v24 = MEMORY[0x1E696AD98];
    [(MRContentItemMetadata *)self playbackRate];
    v25 = [v24 numberWithFloat:?];
    [(NSDictionary *)v3 setObject:v25 forKeyedSubscript:@"playbackRate"];
  }

  if ([(MRContentItemMetadata *)self hasDefaultPlaybackRate])
  {
    v26 = MEMORY[0x1E696AD98];
    [(MRContentItemMetadata *)self defaultPlaybackRate];
    v27 = [v26 numberWithFloat:?];
    [(NSDictionary *)v3 setObject:v27 forKeyedSubscript:@"defaultPlaybackRate"];
  }

  if ([(MRContentItemMetadata *)self hasDownloadProgress])
  {
    v28 = MEMORY[0x1E696AD98];
    [(MRContentItemMetadata *)self downloadProgress];
    v29 = [v28 numberWithFloat:?];
    [(NSDictionary *)v3 setObject:v29 forKeyedSubscript:@"downloadProgress"];
  }

  if ([(MRContentItemMetadata *)self hasPlaylistType])
  {
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata playlistType](self, "playlistType")}];
    [(NSDictionary *)v3 setObject:v30 forKeyedSubscript:@"playlistType"];
  }

  if ([(MRContentItemMetadata *)self hasRadioStationType])
  {
    v31 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata radioStationType](self, "radioStationType")}];
    [(NSDictionary *)v3 setObject:v31 forKeyedSubscript:@"radioStationType"];
  }

  if ([(MRContentItemMetadata *)self hasEditingStyleFlags])
  {
    v32 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata editingStyleFlags](self, "editingStyleFlags")}];
    [(NSDictionary *)v3 setObject:v32 forKeyedSubscript:@"editingStyleFlags"];
  }

  if ([(MRContentItemMetadata *)self hasMediaType])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata mediaType](self, "mediaType")}];
    [(NSDictionary *)v3 setObject:v33 forKeyedSubscript:@"mediaType"];
  }

  if ([(MRContentItemMetadata *)self hasMediaSubType])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata mediaSubType](self, "mediaSubType")}];
    [(NSDictionary *)v3 setObject:v34 forKeyedSubscript:@"mediaSubType"];
  }

  if ([(MRContentItemMetadata *)self hasEpisodeType])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata episodeType](self, "episodeType")}];
    [(NSDictionary *)v3 setObject:v35 forKeyedSubscript:@"episodeType"];
  }

  if ([(MRContentItemMetadata *)self hasPlayCount])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata playCount](self, "playCount")}];
    [(NSDictionary *)v3 setObject:v36 forKeyedSubscript:@"playCount"];
  }

  if ([(MRContentItemMetadata *)self hasNumberOfSections])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata numberOfSections](self, "numberOfSections")}];
    [(NSDictionary *)v3 setObject:v37 forKeyedSubscript:@"numberOfSections"];
  }

  if ([(MRContentItemMetadata *)self hasChapterCount])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata chapterCount](self, "chapterCount")}];
    [(NSDictionary *)v3 setObject:v38 forKeyedSubscript:@"chapterCount"];
  }

  if ([(MRContentItemMetadata *)self hasTotalDiscCount])
  {
    v39 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata totalDiscCount](self, "totalDiscCount")}];
    [(NSDictionary *)v3 setObject:v39 forKeyedSubscript:@"totalDiscCount"];
  }

  if ([(MRContentItemMetadata *)self hasTotalTrackCount])
  {
    v40 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata totalTrackCount](self, "totalTrackCount")}];
    [(NSDictionary *)v3 setObject:v40 forKeyedSubscript:@"totalTrackCount"];
  }

  if ([(MRContentItemMetadata *)self hasDownloadState])
  {
    v41 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata downloadState](self, "downloadState")}];
    [(NSDictionary *)v3 setObject:v41 forKeyedSubscript:@"downloadState"];
  }

  if ([(MRContentItemMetadata *)self hasDuration])
  {
    v42 = MEMORY[0x1E696AD98];
    [(MRContentItemMetadata *)self duration];
    v43 = [v42 numberWithDouble:?];
    [(NSDictionary *)v3 setObject:v43 forKeyedSubscript:@"duration"];
  }

  if ([(MRContentItemMetadata *)self hasStartTime])
  {
    v44 = MEMORY[0x1E696AD98];
    [(MRContentItemMetadata *)self startTime];
    v45 = [v44 numberWithDouble:?];
    [(NSDictionary *)v3 setObject:v45 forKeyedSubscript:@"startTime"];
  }

  if ([(MRContentItemMetadata *)self hasElapsedTime])
  {
    v46 = MEMORY[0x1E696AD98];
    [(MRContentItemMetadata *)self elapsedTime];
    v47 = [v46 numberWithDouble:?];
    [(NSDictionary *)v3 setObject:v47 forKeyedSubscript:@"elapsedTime"];
  }

  if ([(MRContentItemMetadata *)self hasElapsedTimeTimestamp])
  {
    v48 = MEMORY[0x1E696AD98];
    [(MRContentItemMetadata *)self elapsedTimeTimestamp];
    v49 = [v48 numberWithDouble:?];
    [(NSDictionary *)v3 setObject:v49 forKeyedSubscript:@"elapsedTimeTimestamp"];
  }

  if ([(MRContentItemMetadata *)self hasInferredTimestamp])
  {
    v50 = MEMORY[0x1E696AD98];
    [(MRContentItemMetadata *)self inferredTimestamp];
    v51 = [v50 numberWithDouble:?];
    [(NSDictionary *)v3 setObject:v51 forKeyedSubscript:@"inferredTimestamp"];
  }

  if ([(MRContentItemMetadata *)self hasSeasonNumber])
  {
    v52 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata seasonNumber](self, "seasonNumber")}];
    [(NSDictionary *)v3 setObject:v52 forKeyedSubscript:@"seasonNumber"];
  }

  if ([(MRContentItemMetadata *)self hasEpisodeNumber])
  {
    v53 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata episodeNumber](self, "episodeNumber")}];
    [(NSDictionary *)v3 setObject:v53 forKeyedSubscript:@"episodeNumber"];
  }

  if ([(MRContentItemMetadata *)self hasDiscNumber])
  {
    v54 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata discNumber](self, "discNumber")}];
    [(NSDictionary *)v3 setObject:v54 forKeyedSubscript:@"discNumber"];
  }

  if ([(MRContentItemMetadata *)self hasTrackNumber])
  {
    v55 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata trackNumber](self, "trackNumber")}];
    [(NSDictionary *)v3 setObject:v55 forKeyedSubscript:@"trackNumber"];
  }

  if ([(MRContentItemMetadata *)self hasRadioStationIdentifier])
  {
    v56 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MRContentItemMetadata radioStationIdentifier](self, "radioStationIdentifier")}];
    [(NSDictionary *)v3 setObject:v56 forKeyedSubscript:@"radioStationIdentifier"];
  }

  if ([(MRContentItemMetadata *)self hasITunesStoreIdentifier])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MRContentItemMetadata iTunesStoreIdentifier](self, "iTunesStoreIdentifier")}];
    [(NSDictionary *)v3 setObject:v57 forKeyedSubscript:@"iTunesStoreIdentifier"];
  }

  if ([(MRContentItemMetadata *)self hasITunesStoreSubscriptionIdentifier])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MRContentItemMetadata iTunesStoreSubscriptionIdentifier](self, "iTunesStoreSubscriptionIdentifier")}];
    [(NSDictionary *)v3 setObject:v58 forKeyedSubscript:@"iTunesStoreSubscriptionIdentifier"];
  }

  if ([(MRContentItemMetadata *)self hasITunesStoreArtistIdentifier])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MRContentItemMetadata iTunesStoreArtistIdentifier](self, "iTunesStoreArtistIdentifier")}];
    [(NSDictionary *)v3 setObject:v59 forKeyedSubscript:@"iTunesStoreArtistIdentifier"];
  }

  if ([(MRContentItemMetadata *)self hasITunesStoreAlbumIdentifier])
  {
    v60 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MRContentItemMetadata iTunesStoreAlbumIdentifier](self, "iTunesStoreAlbumIdentifier")}];
    [(NSDictionary *)v3 setObject:v60 forKeyedSubscript:@"iTunesStoreAlbumIdentifier"];
  }

  if ([(MRContentItemMetadata *)self hasLegacyUniqueIdentifier])
  {
    v61 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MRContentItemMetadata legacyUniqueIdentifier](self, "legacyUniqueIdentifier")}];
    [(NSDictionary *)v3 setObject:v61 forKeyedSubscript:@"legacyUniqueIdentifier"];
  }

  if ([(MRContentItemMetadata *)self hasSongTraits])
  {
    v62 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MRContentItemMetadata songTraits](self, "songTraits")}];
    [(NSDictionary *)v3 setObject:v62 forKeyedSubscript:@"songTraits"];
  }

  if ([(MRContentItemMetadata *)self hasAlbumTraits])
  {
    v63 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MRContentItemMetadata albumTraits](self, "albumTraits")}];
    [(NSDictionary *)v3 setObject:v63 forKeyedSubscript:@"albumTraits"];
  }

  if ([(MRContentItemMetadata *)self hasPlaylistTraits])
  {
    v64 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MRContentItemMetadata playlistTraits](self, "playlistTraits")}];
    [(NSDictionary *)v3 setObject:v64 forKeyedSubscript:@"playlistTraits"];
  }

  if ([(MRContentItemMetadata *)self hasActiveFormatJustification])
  {
    v65 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MRContentItemMetadata activeFormatJustification](self, "activeFormatJustification")}];
    [(NSDictionary *)v3 setObject:v65 forKeyedSubscript:@"activeFormatJustification"];
  }

  if ([(MRContentItemMetadata *)self hasFormatTierPreference])
  {
    v66 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[MRContentItemMetadata formatTierPreference](self, "formatTierPreference")}];
    [(NSDictionary *)v3 setObject:v66 forKeyedSubscript:@"formatTierPreference"];
  }

  purchaseInfoData = [(MRContentItemMetadata *)self purchaseInfoData];
  [(NSDictionary *)v3 setObject:purchaseInfoData forKeyedSubscript:@"purchaseInfoData"];

  appMetrics = [(MRContentItemMetadata *)self appMetrics];
  [(NSDictionary *)v3 setObject:appMetrics forKeyedSubscript:@"appMetrics"];

  nowPlayingInfo = [(MRContentItemMetadata *)self nowPlayingInfo];
  [(NSDictionary *)v3 setObject:nowPlayingInfo forKeyedSubscript:@"nowPlayingInfo"];

  userInfo = [(MRContentItemMetadata *)self userInfo];
  [(NSDictionary *)v3 setObject:userInfo forKeyedSubscript:@"userInfo"];

  deviceSpecificUserInfo = [(MRContentItemMetadata *)self deviceSpecificUserInfo];
  [(NSDictionary *)v3 setObject:deviceSpecificUserInfo forKeyedSubscript:@"deviceSpecificUserInfo"];

  collectionInfo = [(MRContentItemMetadata *)self collectionInfo];
  [(NSDictionary *)v3 setObject:collectionInfo forKeyedSubscript:@"collectionInfo"];

  transitionInfo = [(MRContentItemMetadata *)self transitionInfo];
  [(NSDictionary *)v3 setObject:transitionInfo forKeyedSubscript:@"transitionInfo"];

  releaseDate = [(MRContentItemMetadata *)self releaseDate];
  [(NSDictionary *)v3 setObject:releaseDate forKeyedSubscript:@"releaseDate"];

  currentPlaybackDate = [(MRContentItemMetadata *)self currentPlaybackDate];
  [(NSDictionary *)v3 setObject:currentPlaybackDate forKeyedSubscript:@"currentPlaybackDate"];

  title = [(MRContentItemMetadata *)self title];
  [(NSDictionary *)v3 setObject:title forKeyedSubscript:@"title"];

  subtitle = [(MRContentItemMetadata *)self subtitle];
  [(NSDictionary *)v3 setObject:subtitle forKeyedSubscript:@"subtitle"];

  subtitleShort = [(MRContentItemMetadata *)self subtitleShort];
  [(NSDictionary *)v3 setObject:subtitleShort forKeyedSubscript:@"subtitleShort"];

  albumName = [(MRContentItemMetadata *)self albumName];
  [(NSDictionary *)v3 setObject:albumName forKeyedSubscript:@"albumName"];

  trackArtistName = [(MRContentItemMetadata *)self trackArtistName];
  [(NSDictionary *)v3 setObject:trackArtistName forKeyedSubscript:@"trackArtistName"];

  albumArtistName = [(MRContentItemMetadata *)self albumArtistName];
  [(NSDictionary *)v3 setObject:albumArtistName forKeyedSubscript:@"albumArtistName"];

  directorName = [(MRContentItemMetadata *)self directorName];
  [(NSDictionary *)v3 setObject:directorName forKeyedSubscript:@"directorName"];

  localizedContentRating = [(MRContentItemMetadata *)self localizedContentRating];
  [(NSDictionary *)v3 setObject:localizedContentRating forKeyedSubscript:@"localizedContentRating"];

  collectionIdentifier = [(MRContentItemMetadata *)self collectionIdentifier];
  [(NSDictionary *)v3 setObject:collectionIdentifier forKeyedSubscript:@"collectionIdentifier"];

  profileIdentifier = [(MRContentItemMetadata *)self profileIdentifier];
  [(NSDictionary *)v3 setObject:profileIdentifier forKeyedSubscript:@"profileIdentifier"];

  assetURL = [(MRContentItemMetadata *)self assetURL];
  [(NSDictionary *)v3 setObject:assetURL forKeyedSubscript:@"assetURL"];

  composer = [(MRContentItemMetadata *)self composer];
  [(NSDictionary *)v3 setObject:composer forKeyedSubscript:@"composer"];

  genre = [(MRContentItemMetadata *)self genre];
  [(NSDictionary *)v3 setObject:genre forKeyedSubscript:@"genre"];

  contentIdentifier = [(MRContentItemMetadata *)self contentIdentifier];
  [(NSDictionary *)v3 setObject:contentIdentifier forKeyedSubscript:@"contentIdentifier"];

  radioStationName = [(MRContentItemMetadata *)self radioStationName];
  [(NSDictionary *)v3 setObject:radioStationName forKeyedSubscript:@"radioStationName"];

  radioStationString = [(MRContentItemMetadata *)self radioStationString];
  [(NSDictionary *)v3 setObject:radioStationString forKeyedSubscript:@"radioStationString"];

  seriesName = [(MRContentItemMetadata *)self seriesName];
  [(NSDictionary *)v3 setObject:seriesName forKeyedSubscript:@"seriesName"];

  lyricsURL = [(MRContentItemMetadata *)self lyricsURL];
  [(NSDictionary *)v3 setObject:lyricsURL forKeyedSubscript:@"lyricsURL"];

  serviceIdentifier = [(MRContentItemMetadata *)self serviceIdentifier];
  [(NSDictionary *)v3 setObject:serviceIdentifier forKeyedSubscript:@"serviceIdentifier"];

  brandIdentifier = [(MRContentItemMetadata *)self brandIdentifier];
  [(NSDictionary *)v3 setObject:brandIdentifier forKeyedSubscript:@"brandIdentifier"];

  localizedDurationString = [(MRContentItemMetadata *)self localizedDurationString];
  [(NSDictionary *)v3 setObject:localizedDurationString forKeyedSubscript:@"localizedDurationString"];

  artworkIdentifier = [(MRContentItemMetadata *)self artworkIdentifier];
  [(NSDictionary *)v3 setObject:artworkIdentifier forKeyedSubscript:@"artworkIdentifier"];

  artworkMIMEType = [(MRContentItemMetadata *)self artworkMIMEType];
  [(NSDictionary *)v3 setObject:artworkMIMEType forKeyedSubscript:@"artworkMIMEType"];

  artworkURL = [(MRContentItemMetadata *)self artworkURL];
  [(NSDictionary *)v3 setObject:artworkURL forKeyedSubscript:@"artworkURL"];

  artworkFileURL = [(MRContentItemMetadata *)self artworkFileURL];
  [(NSDictionary *)v3 setObject:artworkFileURL forKeyedSubscript:@"artworkFileURL"];

  artworkURLTemplates = [(MRContentItemMetadata *)self artworkURLTemplates];
  [(NSDictionary *)v3 setObject:artworkURLTemplates forKeyedSubscript:@"artworkURLTemplates"];

  albumYear = [(MRContentItemMetadata *)self albumYear];
  [(NSDictionary *)v3 setObject:albumYear forKeyedSubscript:@"albumYear"];

  participantName = [(MRContentItemMetadata *)self participantName];
  [(NSDictionary *)v3 setObject:participantName forKeyedSubscript:@"participantName"];

  participantIdentifier = [(MRContentItemMetadata *)self participantIdentifier];
  [(NSDictionary *)v3 setObject:participantIdentifier forKeyedSubscript:@"participantIdentifier"];

  internationalStandardRecordingCode = [(MRContentItemMetadata *)self internationalStandardRecordingCode];
  [(NSDictionary *)v3 setObject:internationalStandardRecordingCode forKeyedSubscript:@"internationalStandardRecordingCode"];

  if ([(MRContentItemMetadata *)self hasIsResolvableParticipant])
  {
    v106 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata isResolvableParticipant](self, "isResolvableParticipant")}];
    [(NSDictionary *)v3 setObject:v106 forKeyedSubscript:@"isResolvableParticipant"];
  }

  if ([(MRContentItemMetadata *)self hasExcludeFromSuggestions])
  {
    v107 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRContentItemMetadata excludeFromSuggestions](self, "excludeFromSuggestions")}];
    [(NSDictionary *)v3 setObject:v107 forKeyedSubscript:@"excludeFromSuggestions"];
  }

  preferredFormat = [(MRContentItemMetadata *)self preferredFormat];

  if (preferredFormat)
  {
    preferredFormat2 = [(MRContentItemMetadata *)self preferredFormat];
    dictionaryRepresentation = [preferredFormat2 dictionaryRepresentation];
    [(NSDictionary *)v3 setObject:dictionaryRepresentation forKeyedSubscript:@"preferredFormat"];
  }

  activeFormat = [(MRContentItemMetadata *)self activeFormat];

  if (activeFormat)
  {
    activeFormat2 = [(MRContentItemMetadata *)self activeFormat];
    dictionaryRepresentation2 = [activeFormat2 dictionaryRepresentation];
    [(NSDictionary *)v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"activeFormat"];
  }

  audioRoute = [(MRContentItemMetadata *)self audioRoute];

  if (audioRoute)
  {
    audioRoute2 = [(MRContentItemMetadata *)self audioRoute];
    dictionaryRepresentation3 = [audioRoute2 dictionaryRepresentation];
    [(NSDictionary *)v3 setObject:dictionaryRepresentation3 forKeyedSubscript:@"audioRoute"];
  }

  alternativeFormats = [(MRContentItemMetadata *)self alternativeFormats];

  if (alternativeFormats)
  {
    alternativeFormats2 = [(MRContentItemMetadata *)self alternativeFormats];
    v119 = [alternativeFormats2 msv_map:&__block_literal_global_312];
    [(NSDictionary *)v3 setObject:v119 forKeyedSubscript:@"alternativeFormats"];
  }

  if ([(MRContentItemMetadata *)self hasElapsedTimeTimestamp])
  {
    v120 = objc_alloc(MEMORY[0x1E695DF00]);
    [(MRContentItemMetadata *)self elapsedTimeTimestamp];
    v121 = [v120 initWithTimeIntervalSinceReferenceDate:?];
    [(NSDictionary *)v3 setObject:v121 forKeyedSubscript:@"elapsedTimeTimestamp"];
  }

  if ([(MRContentItemMetadata *)self hasInferredTimestamp])
  {
    v122 = objc_alloc(MEMORY[0x1E695DF00]);
    [(MRContentItemMetadata *)self inferredTimestamp];
    v123 = [v122 initWithTimeIntervalSinceReferenceDate:?];
    [(NSDictionary *)v3 setObject:v123 forKeyedSubscript:@"inferredTimestamp"];
  }

  if ([(MRContentItemMetadata *)self hasElapsedTimeTimestamp]|| [(MRContentItemMetadata *)self hasInferredTimestamp])
  {
    if ([(MRContentItemMetadata *)self hasElapsedTimeTimestamp])
    {
      [(MRContentItemMetadata *)self elapsedTimeTimestamp];
    }

    else
    {
      [(MRContentItemMetadata *)self inferredTimestamp];
    }

    v125 = v124;
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v128 = v127 - v125;

    v129 = MRCreateDurationStringRepresentation(v128);
    [(NSDictionary *)v3 setObject:v129 forKeyedSubscript:@"custom: delta"];
  }

  if ([(MRContentItemMetadata *)self hasStartTime])
  {
    v130 = objc_alloc(MEMORY[0x1E695DF00]);
    [(MRContentItemMetadata *)self startTime];
    v131 = [v130 initWithTimeIntervalSinceReferenceDate:?];
    [(NSDictionary *)v3 setObject:v131 forKeyedSubscript:@"startTime"];
  }

  if ([(MRContentItemMetadata *)self hasDuration])
  {
    [(MRContentItemMetadata *)self duration];
    v133 = MRCreateDurationStringRepresentation(v132);
    [(NSDictionary *)v3 setObject:v133 forKeyedSubscript:@"duration"];
  }

  if ([(MRContentItemMetadata *)self hasElapsedTime])
  {
    [(MRContentItemMetadata *)self elapsedTime];
    v135 = MRCreateDurationStringRepresentation(v134);
    [(NSDictionary *)v3 setObject:v135 forKeyedSubscript:@"elapsedTime"];
  }

  if ([(MRContentItemMetadata *)self hasDuration]&& [(MRContentItemMetadata *)self hasElapsedTime])
  {
    [(MRContentItemMetadata *)self duration];
    v137 = v136;
    [(MRContentItemMetadata *)self elapsedTime];
    v139 = MRCreateDurationStringRepresentation(v137 - v138);
    [(NSDictionary *)v3 setObject:v139 forKeyedSubscript:@"custom: remainingTime"];
  }

  if ([(MRContentItemMetadata *)self hasElapsedTime]&& ([(MRContentItemMetadata *)self hasInferredTimestamp]|| [(MRContentItemMetadata *)self hasElapsedTimeTimestamp]))
  {
    [(MRContentItemMetadata *)self calculatedPlaybackPosition];
    v141 = MRCreateDurationStringRepresentation(v140);
    [(NSDictionary *)v3 setObject:v141 forKeyedSubscript:@"custom: calculatedElapsedTime"];
  }

  if ([(MRContentItemMetadata *)self hasPlaybackRate])
  {
    v142 = MEMORY[0x1E696AD98];
    [(MRContentItemMetadata *)self playbackRate];
    v143 = [v142 numberWithFloat:?];
    [(NSDictionary *)v3 setObject:v143 forKeyedSubscript:@"__playbackRate"];
  }

  title2 = [(MRContentItemMetadata *)self title];

  if (title2)
  {
    title3 = [(MRContentItemMetadata *)self title];
    [(NSDictionary *)v3 setObject:title3 forKeyedSubscript:@"__title"];
  }

  if ([(MRContentItemMetadata *)self hasReportingAdamID])
  {
    v146 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MRContentItemMetadata reportingAdamID](self, "reportingAdamID")}];
    [(NSDictionary *)v3 setObject:v146 forKeyedSubscript:@"reportingAdamID"];
  }

  if ([(MRContentItemMetadata *)self hasLyricsAdamID])
  {
    v147 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MRContentItemMetadata lyricsAdamID](self, "lyricsAdamID")}];
    [(NSDictionary *)v3 setObject:v147 forKeyedSubscript:@"lyricsAdamID"];
  }

  if ([(MRContentItemMetadata *)self hasITunesStoreAlbumArtistIdentifier])
  {
    v148 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MRContentItemMetadata iTunesStoreAlbumArtistIdentifier](self, "iTunesStoreAlbumArtistIdentifier")}];
    [(NSDictionary *)v3 setObject:v148 forKeyedSubscript:@"iTunesStoreAlbumArtistIdentifier"];
  }

  v149 = v3;

  return v3;
}

- (NSString)localizedTitle
{
  if ([(MRContentItemMetadata *)self hasLoadingPlaceholderTitle])
  {
    MRLocalizedString(@"LOADING_AUDIO_LABEL");
  }

  else
  {
    [(MRContentItemMetadata *)self title];
  }
  v3 = ;

  return v3;
}

- (BOOL)hasLoadingPlaceholderTitle
{
  title = [(MRContentItemMetadata *)self title];
  v3 = [title isEqualToString:@"LOADING_AUDIO_LABEL"];

  return v3;
}

- (MRContentItemMetadata)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (protobufCopy)
  {
    v156.receiver = self;
    v156.super_class = MRContentItemMetadata;
    v5 = [(MRContentItemMetadata *)&v156 init];
    if (v5)
    {
      v5->_container = [protobufCopy isContainer];
      v5->_hasContainer = [protobufCopy hasIsContainer];
      v5->_playable = [protobufCopy isPlayable];
      v5->_hasPlayable = [protobufCopy hasIsPlayable];
      v5->_explicitItem = [protobufCopy isExplicitItem];
      v5->_hasExplicitItem = [protobufCopy hasIsExplicitItem];
      v5->_streamingContent = [protobufCopy isStreamingContent];
      v5->_hasStreamingContent = [protobufCopy hasIsStreamingContent];
      v5->_currentlyPlaying = [protobufCopy isCurrentlyPlaying];
      v5->_hasCurrentlyPlaying = [protobufCopy hasIsCurrentlyPlaying];
      v5->_alwaysLive = [protobufCopy isAlwaysLive];
      v5->_hasAlwaysLive = [protobufCopy hasIsAlwaysLive];
      v5->_sharable = [protobufCopy isSharable];
      v5->_hasSharable = [protobufCopy hasIsSharable];
      v5->_liked = [protobufCopy isLiked];
      v5->_hasLiked = [protobufCopy hasIsLiked];
      v5->_inWishList = [protobufCopy isInWishList];
      v5->_hasInWishList = [protobufCopy hasIsInWishList];
      v5->_advertisement = [protobufCopy isAdvertisement];
      v5->_hasAdvertisement = [protobufCopy hasIsAdvertisement];
      v5->_steerable = [protobufCopy isSteerable];
      v5->_hasSteerable = [protobufCopy hasIsSteerable];
      v5->_loading = [protobufCopy isLoading];
      v5->_hasLoading = [protobufCopy hasIsLoading];
      v5->_inTransition = [protobufCopy isInTransition];
      v5->_hasInTransition = [protobufCopy hasIsInTransition];
      v5->_artworkAvailable = [protobufCopy artworkAvailable];
      v5->_hasArtworkAvailable = [protobufCopy hasArtworkAvailable];
      v5->_infoAvailable = [protobufCopy infoAvailable];
      v5->_hasInfoAvailable = [protobufCopy hasInfoAvailable];
      v5->_transcriptAlignmentsAvailable = [protobufCopy transcriptAlignmentsAvailable];
      v5->_hasTranscriptAlignmentsAvailable = [protobufCopy hasTranscriptAlignmentsAvailable];
      v5->_languageOptionsAvailable = [protobufCopy languageOptionsAvailable];
      v5->_hasLanguageOptionsAvailable = [protobufCopy hasLanguageOptionsAvailable];
      v5->_lyricsAvailable = [protobufCopy lyricsAvailable];
      v5->_hasLyricsAvailable = [protobufCopy hasLyricsAvailable];
      [protobufCopy playbackProgress];
      v5->_playbackProgress = v6;
      v5->_hasPlaybackProgress = [protobufCopy hasPlaybackProgress];
      [protobufCopy playbackRate];
      v5->_playbackRate = v7;
      v5->_hasPlaybackRate = [protobufCopy hasPlaybackRate];
      [protobufCopy defaultPlaybackRate];
      v5->_defaultPlaybackRate = v8;
      v5->_hasDefaultPlaybackRate = [protobufCopy hasDefaultPlaybackRate];
      [protobufCopy downloadProgress];
      v5->_downloadProgress = v9;
      v5->_hasDownloadProgress = [protobufCopy hasDownloadProgress];
      v5->_playlistType = [protobufCopy playlistType];
      v5->_hasPlaylistType = [protobufCopy hasPlaylistType];
      v5->_radioStationType = [protobufCopy radioStationType];
      v5->_hasRadioStationType = [protobufCopy hasRadioStationType];
      v5->_editingStyleFlags = [protobufCopy editingStyleFlags];
      v5->_hasEditingStyleFlags = [protobufCopy hasEditingStyleFlags];
      v5->_mediaType = [protobufCopy mediaType];
      v5->_hasMediaType = [protobufCopy hasMediaType];
      v5->_mediaSubType = [protobufCopy mediaSubType];
      v5->_hasMediaSubType = [protobufCopy hasMediaSubType];
      v5->_episodeType = [protobufCopy episodeType];
      v5->_hasEpisodeType = [protobufCopy hasEpisodeType];
      v5->_playCount = [protobufCopy playCount];
      v5->_hasPlayCount = [protobufCopy hasPlayCount];
      v5->_numberOfSections = [protobufCopy numberOfSections];
      v5->_hasNumberOfSections = [protobufCopy hasNumberOfSections];
      v5->_chapterCount = [protobufCopy chapterCount];
      v5->_hasChapterCount = [protobufCopy hasChapterCount];
      v5->_totalDiscCount = [protobufCopy totalDiscCount];
      v5->_hasTotalDiscCount = [protobufCopy hasTotalDiscCount];
      v5->_totalTrackCount = [protobufCopy totalTrackCount];
      v5->_hasTotalTrackCount = [protobufCopy hasTotalTrackCount];
      v5->_downloadState = [protobufCopy downloadState];
      v5->_hasDownloadState = [protobufCopy hasDownloadState];
      v5->_artworkDataWidthDeprecated = [protobufCopy artworkDataWidthDeprecated];
      v5->_hasArtworkDataWidthDeprecated = [protobufCopy hasArtworkDataWidthDeprecated];
      v5->_artworkDataHeightDeprecated = [protobufCopy artworkDataHeightDeprecated];
      v5->_hasArtworkDataHeightDeprecated = [protobufCopy hasArtworkDataHeightDeprecated];
      [protobufCopy duration];
      v5->_duration = v10;
      v5->_hasDuration = [protobufCopy hasDuration];
      [protobufCopy startTime];
      v5->_startTime = v11;
      v5->_hasStartTime = [protobufCopy hasStartTime];
      [protobufCopy elapsedTime];
      v5->_elapsedTime = v12;
      v5->_hasElapsedTime = [protobufCopy hasElapsedTime];
      [protobufCopy elapsedTimeTimestamp];
      v5->_elapsedTimeTimestamp = v13;
      v5->_hasElapsedTimeTimestamp = [protobufCopy hasElapsedTimeTimestamp];
      [protobufCopy inferredTimestamp];
      v5->_inferredTimestamp = v14;
      v5->_hasInferredTimestamp = [protobufCopy hasInferredTimestamp];
      v5->_seasonNumber = [protobufCopy seasonNumber];
      v5->_hasSeasonNumber = [protobufCopy hasSeasonNumber];
      v5->_episodeNumber = [protobufCopy episodeNumber];
      v5->_hasEpisodeNumber = [protobufCopy hasEpisodeNumber];
      v5->_discNumber = [protobufCopy discNumber];
      v5->_hasDiscNumber = [protobufCopy hasDiscNumber];
      v5->_trackNumber = [protobufCopy trackNumber];
      v5->_hasTrackNumber = [protobufCopy hasTrackNumber];
      v5->_radioStationIdentifier = [protobufCopy radioStationIdentifier];
      v5->_hasRadioStationIdentifier = [protobufCopy hasRadioStationIdentifier];
      v5->_iTunesStoreIdentifier = [protobufCopy iTunesStoreIdentifier];
      v5->_hasITunesStoreIdentifier = [protobufCopy hasITunesStoreIdentifier];
      v5->_iTunesStoreSubscriptionIdentifier = [protobufCopy iTunesStoreSubscriptionIdentifier];
      v5->_hasITunesStoreSubscriptionIdentifier = [protobufCopy hasITunesStoreSubscriptionIdentifier];
      v5->_iTunesStoreArtistIdentifier = [protobufCopy iTunesStoreArtistIdentifier];
      v5->_hasITunesStoreArtistIdentifier = [protobufCopy hasITunesStoreArtistIdentifier];
      v5->_iTunesStoreAlbumIdentifier = [protobufCopy iTunesStoreAlbumIdentifier];
      v5->_hasITunesStoreAlbumIdentifier = [protobufCopy hasITunesStoreAlbumIdentifier];
      v5->_legacyUniqueIdentifier = [protobufCopy legacyUniqueIdentifier];
      v5->_hasLegacyUniqueIdentifier = [protobufCopy hasLegacyUniqueIdentifier];
      classicalWork = [protobufCopy classicalWork];
      classicalWork = v5->_classicalWork;
      v5->_classicalWork = classicalWork;

      if ([protobufCopy hasReleaseDate])
      {
        v17 = MEMORY[0x1E695DF00];
        [protobufCopy releaseDate];
        v18 = [v17 dateWithTimeIntervalSince1970:?];
      }

      else
      {
        v18 = 0;
      }

      releaseDate = v5->_releaseDate;
      v5->_releaseDate = v18;

      if ([protobufCopy hasCurrentPlaybackDateData])
      {
        currentPlaybackDateData = [protobufCopy currentPlaybackDateData];
        v22 = MRDecodeObjectWithEncoding(currentPlaybackDateData, 0);
        currentPlaybackDate = v5->_currentPlaybackDate;
        v5->_currentPlaybackDate = v22;
      }

      else
      {
        currentPlaybackDateData = v5->_currentPlaybackDate;
        v5->_currentPlaybackDate = 0;
      }

      if ([protobufCopy hasAppMetricsData])
      {
        appMetricsData = [protobufCopy appMetricsData];
        v25 = MRDecodeObjectWithEncoding(appMetricsData, 0);
        appMetrics = v5->_appMetrics;
        v5->_appMetrics = v25;
      }

      else
      {
        appMetricsData = v5->_appMetrics;
        v5->_appMetrics = 0;
      }

      if ([protobufCopy hasNowPlayingInfoData])
      {
        nowPlayingInfoData = [protobufCopy nowPlayingInfoData];
        v28 = MRDecodeObjectWithEncoding(nowPlayingInfoData, 0);
        nowPlayingInfo = v5->_nowPlayingInfo;
        v5->_nowPlayingInfo = v28;
      }

      else
      {
        nowPlayingInfoData = v5->_nowPlayingInfo;
        v5->_nowPlayingInfo = 0;
      }

      if ([protobufCopy hasUserInfoData])
      {
        userInfoData = [protobufCopy userInfoData];
        v31 = MRDecodeObjectWithEncoding(userInfoData, 0);
        userInfo = v5->_userInfo;
        v5->_userInfo = v31;
      }

      else
      {
        userInfoData = v5->_userInfo;
        v5->_userInfo = 0;
      }

      if ([protobufCopy hasDeviceSpecificUserInfoData])
      {
        deviceSpecificUserInfoData = [protobufCopy deviceSpecificUserInfoData];
        v34 = MRDecodeObjectWithEncoding(deviceSpecificUserInfoData, 0);
        deviceSpecificUserInfo = v5->_deviceSpecificUserInfo;
        v5->_deviceSpecificUserInfo = v34;
      }

      else
      {
        deviceSpecificUserInfoData = v5->_deviceSpecificUserInfo;
        v5->_deviceSpecificUserInfo = 0;
      }

      if ([protobufCopy hasCollectionInfoData])
      {
        collectionInfoData = [protobufCopy collectionInfoData];
        v37 = MRDecodeObjectWithEncoding(collectionInfoData, 0);
        collectionInfo = v5->_collectionInfo;
        v5->_collectionInfo = v37;
      }

      else
      {
        collectionInfoData = v5->_collectionInfo;
        v5->_collectionInfo = 0;
      }

      if ([protobufCopy hasTransitionInfoData])
      {
        transitionInfoData = [protobufCopy transitionInfoData];
        v40 = MRDecodeObjectWithEncoding(transitionInfoData, 0);
        transitionInfo = v5->_transitionInfo;
        v5->_transitionInfo = v40;
      }

      else
      {
        transitionInfoData = v5->_transitionInfo;
        v5->_transitionInfo = 0;
      }

      purchaseInfoData = [protobufCopy purchaseInfoData];
      v43 = [purchaseInfoData copy];
      purchaseInfoData = v5->_purchaseInfoData;
      v5->_purchaseInfoData = v43;

      title = [protobufCopy title];
      v46 = [title copy];
      title = v5->_title;
      v5->_title = v46;

      subtitle = [protobufCopy subtitle];
      v49 = [subtitle copy];
      subtitle = v5->_subtitle;
      v5->_subtitle = v49;

      subtitleShort = [protobufCopy subtitleShort];
      v52 = [subtitleShort copy];
      subtitleShort = v5->_subtitleShort;
      v5->_subtitleShort = v52;

      albumName = [protobufCopy albumName];
      v55 = [albumName copy];
      albumName = v5->_albumName;
      v5->_albumName = v55;

      trackArtistName = [protobufCopy trackArtistName];
      v58 = [trackArtistName copy];
      trackArtistName = v5->_trackArtistName;
      v5->_trackArtistName = v58;

      albumArtistName = [protobufCopy albumArtistName];
      v61 = [albumArtistName copy];
      albumArtistName = v5->_albumArtistName;
      v5->_albumArtistName = v61;

      directorName = [protobufCopy directorName];
      v64 = [directorName copy];
      directorName = v5->_directorName;
      v5->_directorName = v64;

      localizedContentRating = [protobufCopy localizedContentRating];
      v67 = [localizedContentRating copy];
      localizedContentRating = v5->_localizedContentRating;
      v5->_localizedContentRating = v67;

      collectionIdentifier = [protobufCopy collectionIdentifier];
      v70 = [collectionIdentifier copy];
      collectionIdentifier = v5->_collectionIdentifier;
      v5->_collectionIdentifier = v70;

      profileIdentifier = [protobufCopy profileIdentifier];
      v73 = [profileIdentifier copy];
      profileIdentifier = v5->_profileIdentifier;
      v5->_profileIdentifier = v73;

      composer = [protobufCopy composer];
      v76 = [composer copy];
      composer = v5->_composer;
      v5->_composer = v76;

      genre = [protobufCopy genre];
      v79 = [genre copy];
      genre = v5->_genre;
      v5->_genre = v79;

      contentIdentifier = [protobufCopy contentIdentifier];
      v82 = [contentIdentifier copy];
      contentIdentifier = v5->_contentIdentifier;
      v5->_contentIdentifier = v82;

      radioStationName = [protobufCopy radioStationName];
      v85 = [radioStationName copy];
      radioStationName = v5->_radioStationName;
      v5->_radioStationName = v85;

      radioStationString = [protobufCopy radioStationString];
      v88 = [radioStationString copy];
      radioStationString = v5->_radioStationString;
      v5->_radioStationString = v88;

      seriesName = [protobufCopy seriesName];
      v91 = [seriesName copy];
      seriesName = v5->_seriesName;
      v5->_seriesName = v91;

      if ([protobufCopy hasLyricsURL])
      {
        v93 = objc_alloc(MEMORY[0x1E695DFF8]);
        lyricsURL = [protobufCopy lyricsURL];
        v95 = [v93 initWithString:lyricsURL];
        lyricsURL = v5->_lyricsURL;
        v5->_lyricsURL = v95;
      }

      else
      {
        lyricsURL = v5->_lyricsURL;
        v5->_lyricsURL = 0;
      }

      serviceIdentifier = [protobufCopy serviceIdentifier];
      v98 = [serviceIdentifier copy];
      serviceIdentifier = v5->_serviceIdentifier;
      v5->_serviceIdentifier = v98;

      brandIdentifier = [protobufCopy brandIdentifier];
      v101 = [brandIdentifier copy];
      brandIdentifier = v5->_brandIdentifier;
      v5->_brandIdentifier = v101;

      localizedDurationString = [protobufCopy localizedDurationString];
      v104 = [localizedDurationString copy];
      localizedDurationString = v5->_localizedDurationString;
      v5->_localizedDurationString = v104;

      durationStringLocalizationKey = [protobufCopy durationStringLocalizationKey];
      v107 = [durationStringLocalizationKey copy];
      durationStringLocalizationKey = v5->_durationStringLocalizationKey;
      v5->_durationStringLocalizationKey = v107;

      artworkIdentifier = [protobufCopy artworkIdentifier];
      v110 = [artworkIdentifier copy];
      artworkIdentifier = v5->_artworkIdentifier;
      v5->_artworkIdentifier = v110;

      artworkMIMEType = [protobufCopy artworkMIMEType];
      v113 = [artworkMIMEType copy];
      artworkMIMEType = v5->_artworkMIMEType;
      v5->_artworkMIMEType = v113;

      albumYear = [protobufCopy albumYear];
      v116 = [albumYear copy];
      albumYear = v5->_albumYear;
      v5->_albumYear = v116;

      if ([protobufCopy hasAssetURLString])
      {
        v118 = objc_alloc(MEMORY[0x1E695DFF8]);
        assetURLString = [protobufCopy assetURLString];
        v120 = [v118 initWithString:assetURLString];
        assetURL = v5->_assetURL;
        v5->_assetURL = v120;
      }

      else
      {
        assetURLString = v5->_assetURL;
        v5->_assetURL = 0;
      }

      if ([protobufCopy hasArtworkURL])
      {
        v122 = objc_alloc(MEMORY[0x1E695DFF8]);
        artworkURL = [protobufCopy artworkURL];
        v124 = [v122 initWithString:artworkURL];
        artworkURL = v5->_artworkURL;
        v5->_artworkURL = v124;
      }

      else
      {
        artworkURL = v5->_artworkURL;
        v5->_artworkURL = 0;
      }

      if ([protobufCopy hasArtworkFileURL])
      {
        v126 = objc_alloc(MEMORY[0x1E695DFF8]);
        artworkFileURL = [protobufCopy artworkFileURL];
        v128 = [v126 initWithString:artworkFileURL];
        artworkFileURL = v5->_artworkFileURL;
        v5->_artworkFileURL = v128;
      }

      else
      {
        artworkFileURL = v5->_artworkFileURL;
        v5->_artworkFileURL = 0;
      }

      internationalStandardRecordingCode = [protobufCopy internationalStandardRecordingCode];
      v131 = [internationalStandardRecordingCode copy];
      internationalStandardRecordingCode = v5->_internationalStandardRecordingCode;
      v5->_internationalStandardRecordingCode = v131;

      if ([protobufCopy hasParticipantName])
      {
        participantName = [protobufCopy participantName];
      }

      else
      {
        participantName = 0;
      }

      participantName = v5->_participantName;
      v5->_participantName = participantName;

      if ([protobufCopy hasParticipantIdentifier])
      {
        participantIdentifier = [protobufCopy participantIdentifier];
      }

      else
      {
        participantIdentifier = 0;
      }

      participantIdentifier = v5->_participantIdentifier;
      v5->_participantIdentifier = participantIdentifier;

      v5->_isResolvableParticipant = [protobufCopy isResolvableParticipant];
      v5->_hasIsResolvableParticipant = [protobufCopy hasIsResolvableParticipant];
      v5->_excludeFromSuggestions = [protobufCopy excludeFromSuggestions];
      v5->_hasExcludeFromSuggestions = [protobufCopy hasExcludeFromSuggestions];
      v5->_songTraits = [protobufCopy songTraits];
      v5->_hasSongTraits = [protobufCopy hasSongTraits];
      v5->_albumTraits = [protobufCopy albumTraits];
      v5->_hasAlbumTraits = [protobufCopy hasAlbumTraits];
      v5->_playlistTraits = [protobufCopy playlistTraits];
      v5->_hasPlaylistTraits = [protobufCopy hasPlaylistTraits];
      if ([protobufCopy hasPreferredFormat])
      {
        v137 = [MRContentItemMetadataAudioFormat alloc];
        preferredFormat = [protobufCopy preferredFormat];
        v139 = [(MRContentItemMetadataAudioFormat *)v137 initWithProtobuf:preferredFormat];
        preferredFormat = v5->_preferredFormat;
        v5->_preferredFormat = v139;
      }

      else
      {
        preferredFormat = v5->_preferredFormat;
        v5->_preferredFormat = 0;
      }

      if ([protobufCopy hasActiveFormat])
      {
        v141 = [MRContentItemMetadataAudioFormat alloc];
        activeFormat = [protobufCopy activeFormat];
        v143 = [(MRContentItemMetadataAudioFormat *)v141 initWithProtobuf:activeFormat];
        activeFormat = v5->_activeFormat;
        v5->_activeFormat = v143;
      }

      else
      {
        activeFormat = v5->_activeFormat;
        v5->_activeFormat = 0;
      }

      v5->_activeFormatJustification = [protobufCopy activeFormatJustification];
      v5->_hasActiveFormatJustification = [protobufCopy hasActiveFormatJustification];
      v5->_formatTierPreference = [protobufCopy formatTierPreference];
      v5->_hasFormatTierPreference = [protobufCopy hasFormatTierPreference];
      if ([protobufCopy hasAudioRoute])
      {
        v145 = [MRContentItemMetadataAudioRoute alloc];
        audioRoute = [protobufCopy audioRoute];
        v147 = [(MRContentItemMetadataAudioRoute *)v145 initWithProtobuf:audioRoute];
        audioRoute = v5->_audioRoute;
        v5->_audioRoute = v147;
      }

      else
      {
        audioRoute = v5->_audioRoute;
        v5->_audioRoute = 0;
      }

      if ([protobufCopy hasAlternativeFormats])
      {
        alternativeFormats = [protobufCopy alternativeFormats];
        v150 = [alternativeFormats msv_map:&__block_literal_global_10];
        alternativeFormats = v5->_alternativeFormats;
        v5->_alternativeFormats = v150;
      }

      else
      {
        alternativeFormats = v5->_alternativeFormats;
        v5->_alternativeFormats = 0;
      }

      if ([protobufCopy hasArtworkURLTemplatesData])
      {
        artworkURLTemplatesData = [protobufCopy artworkURLTemplatesData];
        v153 = MRDecodeObjectWithEncoding(artworkURLTemplatesData, 0);
        artworkURLTemplates = v5->_artworkURLTemplates;
        v5->_artworkURLTemplates = v153;
      }

      v5->_reportingAdamID = [protobufCopy reportingAdamID];
      v5->_hasReportingAdamID = [protobufCopy hasReportingAdamID];
      v5->_lyricsAdamID = [protobufCopy lyricsAdamID];
      v5->_hasLyricsAdamID = [protobufCopy hasLyricsAdamID];
      v5->_iTunesStoreAlbumArtistIdentifier = [protobufCopy iTunesStoreAlbumArtistIdentifier];
      v5->_hasITunesStoreAlbumArtistIdentifier = [protobufCopy hasITunesStoreAlbumArtistIdentifier];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

MRContentItemMetadataAudioFormat *__42__MRContentItemMetadata_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRContentItemMetadataAudioFormat alloc] initWithProtobuf:v2];

  return v3;
}

- (MRContentItemMetadata)initWithData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[_MRContentItemMetadataProtobuf alloc] initWithData:dataCopy];

    self = [(MRContentItemMetadata *)self initWithProtobuf:v5];
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
  v5 = objc_alloc_init(_MRContentItemMetadataProtobuf);
  [(_MRContentItemMetadataProtobuf *)v5 setIsContainer:[(MRContentItemMetadata *)self isContainer]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsContainer:[(MRContentItemMetadata *)self hasContainer]];
  [(_MRContentItemMetadataProtobuf *)v5 setIsPlayable:[(MRContentItemMetadata *)self isPlayable]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsPlayable:[(MRContentItemMetadata *)self hasPlayable]];
  [(_MRContentItemMetadataProtobuf *)v5 setIsExplicitItem:[(MRContentItemMetadata *)self isExplicitItem]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsExplicitItem:[(MRContentItemMetadata *)self hasExplicitItem]];
  [(_MRContentItemMetadataProtobuf *)v5 setIsStreamingContent:[(MRContentItemMetadata *)self isStreamingContent]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsStreamingContent:[(MRContentItemMetadata *)self hasStreamingContent]];
  [(_MRContentItemMetadataProtobuf *)v5 setIsCurrentlyPlaying:[(MRContentItemMetadata *)self isCurrentlyPlaying]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsCurrentlyPlaying:[(MRContentItemMetadata *)self hasCurrentlyPlaying]];
  [(_MRContentItemMetadataProtobuf *)v5 setIsAlwaysLive:[(MRContentItemMetadata *)self isAlwaysLive]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsAlwaysLive:[(MRContentItemMetadata *)self hasAlwaysLive]];
  [(_MRContentItemMetadataProtobuf *)v5 setIsSharable:[(MRContentItemMetadata *)self isSharable]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsSharable:[(MRContentItemMetadata *)self hasSharable]];
  [(_MRContentItemMetadataProtobuf *)v5 setIsLiked:[(MRContentItemMetadata *)self isLiked]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsLiked:[(MRContentItemMetadata *)self hasLiked]];
  [(_MRContentItemMetadataProtobuf *)v5 setIsInWishList:[(MRContentItemMetadata *)self isInWishList]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsInWishList:[(MRContentItemMetadata *)self hasInWishList]];
  [(_MRContentItemMetadataProtobuf *)v5 setIsAdvertisement:[(MRContentItemMetadata *)self isAdvertisement]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsAdvertisement:[(MRContentItemMetadata *)self hasAdvertisement]];
  [(_MRContentItemMetadataProtobuf *)v5 setIsSteerable:[(MRContentItemMetadata *)self isSteerable]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsSteerable:[(MRContentItemMetadata *)self hasSteerable]];
  [(_MRContentItemMetadataProtobuf *)v5 setIsLoading:[(MRContentItemMetadata *)self isLoading]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsLoading:[(MRContentItemMetadata *)self hasLoading]];
  [(_MRContentItemMetadataProtobuf *)v5 setIsInTransition:[(MRContentItemMetadata *)self isInTransition]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsInTransition:[(MRContentItemMetadata *)self hasInTransition]];
  [(_MRContentItemMetadataProtobuf *)v5 setArtworkAvailable:[(MRContentItemMetadata *)self artworkAvailable]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasArtworkAvailable:[(MRContentItemMetadata *)self hasArtworkAvailable]];
  [(_MRContentItemMetadataProtobuf *)v5 setInfoAvailable:[(MRContentItemMetadata *)self infoAvailable]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasInfoAvailable:[(MRContentItemMetadata *)self hasInfoAvailable]];
  [(_MRContentItemMetadataProtobuf *)v5 setLanguageOptionsAvailable:[(MRContentItemMetadata *)self languageOptionsAvailable]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasLanguageOptionsAvailable:[(MRContentItemMetadata *)self hasLanguageOptionsAvailable]];
  [(_MRContentItemMetadataProtobuf *)v5 setLyricsAvailable:[(MRContentItemMetadata *)self lyricsAvailable]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasLyricsAvailable:[(MRContentItemMetadata *)self hasLyricsAvailable]];
  [(MRContentItemMetadata *)self playbackProgress];
  [(_MRContentItemMetadataProtobuf *)v5 setPlaybackProgress:?];
  [(_MRContentItemMetadataProtobuf *)v5 setHasPlaybackProgress:[(MRContentItemMetadata *)self hasPlaybackProgress]];
  [(MRContentItemMetadata *)self playbackRate];
  [(_MRContentItemMetadataProtobuf *)v5 setPlaybackRate:?];
  [(_MRContentItemMetadataProtobuf *)v5 setHasPlaybackRate:[(MRContentItemMetadata *)self hasPlaybackRate]];
  [(MRContentItemMetadata *)self defaultPlaybackRate];
  [(_MRContentItemMetadataProtobuf *)v5 setDefaultPlaybackRate:?];
  [(_MRContentItemMetadataProtobuf *)v5 setHasDefaultPlaybackRate:[(MRContentItemMetadata *)self hasDefaultPlaybackRate]];
  [(MRContentItemMetadata *)self downloadProgress];
  [(_MRContentItemMetadataProtobuf *)v5 setDownloadProgress:?];
  [(_MRContentItemMetadataProtobuf *)v5 setHasDownloadProgress:[(MRContentItemMetadata *)self hasDownloadProgress]];
  [(_MRContentItemMetadataProtobuf *)v5 setPlaylistType:[(MRContentItemMetadata *)self playlistType]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasPlaylistType:[(MRContentItemMetadata *)self hasPlaylistType]];
  [(_MRContentItemMetadataProtobuf *)v5 setRadioStationType:[(MRContentItemMetadata *)self radioStationType]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasRadioStationType:[(MRContentItemMetadata *)self hasRadioStationType]];
  [(_MRContentItemMetadataProtobuf *)v5 setEditingStyleFlags:[(MRContentItemMetadata *)self editingStyleFlags]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasEditingStyleFlags:[(MRContentItemMetadata *)self hasEditingStyleFlags]];
  [(_MRContentItemMetadataProtobuf *)v5 setMediaType:[(MRContentItemMetadata *)self mediaType]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasMediaType:[(MRContentItemMetadata *)self hasMediaType]];
  [(_MRContentItemMetadataProtobuf *)v5 setMediaSubType:[(MRContentItemMetadata *)self mediaSubType]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasMediaSubType:[(MRContentItemMetadata *)self hasMediaSubType]];
  [(_MRContentItemMetadataProtobuf *)v5 setEpisodeType:[(MRContentItemMetadata *)self episodeType]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasEpisodeType:[(MRContentItemMetadata *)self hasEpisodeType]];
  [(_MRContentItemMetadataProtobuf *)v5 setPlayCount:[(MRContentItemMetadata *)self playCount]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasPlayCount:[(MRContentItemMetadata *)self hasPlayCount]];
  [(_MRContentItemMetadataProtobuf *)v5 setNumberOfSections:[(MRContentItemMetadata *)self numberOfSections]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasNumberOfSections:[(MRContentItemMetadata *)self hasNumberOfSections]];
  [(_MRContentItemMetadataProtobuf *)v5 setChapterCount:[(MRContentItemMetadata *)self chapterCount]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasChapterCount:[(MRContentItemMetadata *)self hasChapterCount]];
  [(_MRContentItemMetadataProtobuf *)v5 setTotalDiscCount:[(MRContentItemMetadata *)self totalDiscCount]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasTotalDiscCount:[(MRContentItemMetadata *)self hasTotalDiscCount]];
  [(_MRContentItemMetadataProtobuf *)v5 setTotalTrackCount:[(MRContentItemMetadata *)self totalTrackCount]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasTotalTrackCount:[(MRContentItemMetadata *)self hasTotalTrackCount]];
  [(_MRContentItemMetadataProtobuf *)v5 setDownloadState:[(MRContentItemMetadata *)self downloadState]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasDownloadState:[(MRContentItemMetadata *)self hasDownloadState]];
  [(_MRContentItemMetadataProtobuf *)v5 setArtworkDataWidthDeprecated:[(MRContentItemMetadata *)self artworkDataWidthDeprecated]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasArtworkDataWidthDeprecated:[(MRContentItemMetadata *)self hasArtworkDataWidthDeprecated]];
  [(_MRContentItemMetadataProtobuf *)v5 setArtworkDataHeightDeprecated:[(MRContentItemMetadata *)self artworkDataHeightDeprecated]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasArtworkDataHeightDeprecated:[(MRContentItemMetadata *)self hasArtworkDataHeightDeprecated]];
  [(MRContentItemMetadata *)self duration];
  [(_MRContentItemMetadataProtobuf *)v5 setDuration:?];
  [(_MRContentItemMetadataProtobuf *)v5 setHasDuration:[(MRContentItemMetadata *)self hasDuration]];
  [(MRContentItemMetadata *)self startTime];
  [(_MRContentItemMetadataProtobuf *)v5 setStartTime:?];
  [(_MRContentItemMetadataProtobuf *)v5 setHasStartTime:[(MRContentItemMetadata *)self hasStartTime]];
  [(MRContentItemMetadata *)self elapsedTime];
  [(_MRContentItemMetadataProtobuf *)v5 setElapsedTime:?];
  [(_MRContentItemMetadataProtobuf *)v5 setHasElapsedTime:[(MRContentItemMetadata *)self hasElapsedTime]];
  [(MRContentItemMetadata *)self elapsedTimeTimestamp];
  [(_MRContentItemMetadataProtobuf *)v5 setElapsedTimeTimestamp:?];
  [(_MRContentItemMetadataProtobuf *)v5 setHasElapsedTimeTimestamp:[(MRContentItemMetadata *)self hasElapsedTimeTimestamp]];
  [(MRContentItemMetadata *)self inferredTimestamp];
  [(_MRContentItemMetadataProtobuf *)v5 setInferredTimestamp:?];
  [(_MRContentItemMetadataProtobuf *)v5 setHasInferredTimestamp:[(MRContentItemMetadata *)self hasInferredTimestamp]];
  [(_MRContentItemMetadataProtobuf *)v5 setSeasonNumber:[(MRContentItemMetadata *)self seasonNumber]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasSeasonNumber:[(MRContentItemMetadata *)self hasSeasonNumber]];
  [(_MRContentItemMetadataProtobuf *)v5 setEpisodeNumber:[(MRContentItemMetadata *)self episodeNumber]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasEpisodeNumber:[(MRContentItemMetadata *)self hasEpisodeNumber]];
  releaseDate = [(MRContentItemMetadata *)self releaseDate];
  [releaseDate timeIntervalSince1970];
  [(_MRContentItemMetadataProtobuf *)v5 setReleaseDate:?];

  releaseDate2 = [(MRContentItemMetadata *)self releaseDate];
  [(_MRContentItemMetadataProtobuf *)v5 setHasReleaseDate:releaseDate2 != 0];

  currentPlaybackDate = [(MRContentItemMetadata *)self currentPlaybackDate];
  if (currentPlaybackDate)
  {
    currentPlaybackDate2 = [(MRContentItemMetadata *)self currentPlaybackDate];
    v10 = MREncodeObjectWithEncoding(currentPlaybackDate2, encoding);
    [(_MRContentItemMetadataProtobuf *)v5 setCurrentPlaybackDateData:v10];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setCurrentPlaybackDateData:0];
  }

  [(_MRContentItemMetadataProtobuf *)v5 setDiscNumber:[(MRContentItemMetadata *)self discNumber]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasDiscNumber:[(MRContentItemMetadata *)self hasDiscNumber]];
  [(_MRContentItemMetadataProtobuf *)v5 setTrackNumber:[(MRContentItemMetadata *)self trackNumber]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasTrackNumber:[(MRContentItemMetadata *)self hasTrackNumber]];
  [(_MRContentItemMetadataProtobuf *)v5 setRadioStationIdentifier:[(MRContentItemMetadata *)self radioStationIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasRadioStationIdentifier:[(MRContentItemMetadata *)self hasRadioStationIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setITunesStoreIdentifier:[(MRContentItemMetadata *)self iTunesStoreIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasITunesStoreIdentifier:[(MRContentItemMetadata *)self hasITunesStoreIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setITunesStoreSubscriptionIdentifier:[(MRContentItemMetadata *)self iTunesStoreSubscriptionIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasITunesStoreSubscriptionIdentifier:[(MRContentItemMetadata *)self hasITunesStoreSubscriptionIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setITunesStoreArtistIdentifier:[(MRContentItemMetadata *)self iTunesStoreArtistIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasITunesStoreArtistIdentifier:[(MRContentItemMetadata *)self hasITunesStoreArtistIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setITunesStoreAlbumIdentifier:[(MRContentItemMetadata *)self iTunesStoreAlbumIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasITunesStoreAlbumIdentifier:[(MRContentItemMetadata *)self hasITunesStoreAlbumIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setLegacyUniqueIdentifier:[(MRContentItemMetadata *)self legacyUniqueIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasLegacyUniqueIdentifier:[(MRContentItemMetadata *)self hasLegacyUniqueIdentifier]];
  classicalWork = [(MRContentItemMetadata *)self classicalWork];
  [(_MRContentItemMetadataProtobuf *)v5 setClassicalWork:classicalWork];

  appMetrics = [(MRContentItemMetadata *)self appMetrics];
  if (appMetrics)
  {
    appMetrics2 = [(MRContentItemMetadata *)self appMetrics];
    v14 = MREncodeObjectWithEncoding(appMetrics2, encoding);
    [(_MRContentItemMetadataProtobuf *)v5 setAppMetricsData:v14];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setAppMetricsData:0];
  }

  nowPlayingInfo = [(MRContentItemMetadata *)self nowPlayingInfo];
  if (nowPlayingInfo)
  {
    nowPlayingInfo2 = [(MRContentItemMetadata *)self nowPlayingInfo];
    v17 = MREncodeObjectWithEncoding(nowPlayingInfo2, encoding);
    [(_MRContentItemMetadataProtobuf *)v5 setNowPlayingInfoData:v17];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setNowPlayingInfoData:0];
  }

  userInfo = [(MRContentItemMetadata *)self userInfo];
  if (userInfo)
  {
    userInfo2 = [(MRContentItemMetadata *)self userInfo];
    v20 = MREncodeObjectWithEncoding(userInfo2, encoding);
    [(_MRContentItemMetadataProtobuf *)v5 setUserInfoData:v20];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setUserInfoData:0];
  }

  deviceSpecificUserInfo = [(MRContentItemMetadata *)self deviceSpecificUserInfo];
  if (deviceSpecificUserInfo)
  {
    deviceSpecificUserInfo2 = [(MRContentItemMetadata *)self deviceSpecificUserInfo];
    v23 = MREncodeObjectWithEncoding(deviceSpecificUserInfo2, encoding);
    [(_MRContentItemMetadataProtobuf *)v5 setDeviceSpecificUserInfoData:v23];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setDeviceSpecificUserInfoData:0];
  }

  collectionInfo = [(MRContentItemMetadata *)self collectionInfo];
  if (collectionInfo)
  {
    collectionInfo2 = [(MRContentItemMetadata *)self collectionInfo];
    v26 = MREncodeObjectWithEncoding(collectionInfo2, encoding);
    [(_MRContentItemMetadataProtobuf *)v5 setCollectionInfoData:v26];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setCollectionInfoData:0];
  }

  transitionInfo = [(MRContentItemMetadata *)self transitionInfo];
  if (transitionInfo)
  {
    transitionInfo2 = [(MRContentItemMetadata *)self transitionInfo];
    v29 = MREncodeObjectWithEncoding(transitionInfo2, encoding);
    [(_MRContentItemMetadataProtobuf *)v5 setTransitionInfoData:v29];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setTransitionInfoData:0];
  }

  purchaseInfoData = [(MRContentItemMetadata *)self purchaseInfoData];
  v31 = [purchaseInfoData copy];
  [(_MRContentItemMetadataProtobuf *)v5 setPurchaseInfoData:v31];

  title = [(MRContentItemMetadata *)self title];
  v33 = [title copy];
  [(_MRContentItemMetadataProtobuf *)v5 setTitle:v33];

  subtitle = [(MRContentItemMetadata *)self subtitle];
  v35 = [subtitle copy];
  [(_MRContentItemMetadataProtobuf *)v5 setSubtitle:v35];

  subtitleShort = [(MRContentItemMetadata *)self subtitleShort];
  v37 = [subtitleShort copy];
  [(_MRContentItemMetadataProtobuf *)v5 setSubtitleShort:v37];

  albumName = [(MRContentItemMetadata *)self albumName];
  v39 = [albumName copy];
  [(_MRContentItemMetadataProtobuf *)v5 setAlbumName:v39];

  trackArtistName = [(MRContentItemMetadata *)self trackArtistName];
  v41 = [trackArtistName copy];
  [(_MRContentItemMetadataProtobuf *)v5 setTrackArtistName:v41];

  albumArtistName = [(MRContentItemMetadata *)self albumArtistName];
  v43 = [albumArtistName copy];
  [(_MRContentItemMetadataProtobuf *)v5 setAlbumArtistName:v43];

  directorName = [(MRContentItemMetadata *)self directorName];
  v45 = [directorName copy];
  [(_MRContentItemMetadataProtobuf *)v5 setDirectorName:v45];

  localizedContentRating = [(MRContentItemMetadata *)self localizedContentRating];
  v47 = [localizedContentRating copy];
  [(_MRContentItemMetadataProtobuf *)v5 setLocalizedContentRating:v47];

  collectionIdentifier = [(MRContentItemMetadata *)self collectionIdentifier];
  v49 = [collectionIdentifier copy];
  [(_MRContentItemMetadataProtobuf *)v5 setCollectionIdentifier:v49];

  profileIdentifier = [(MRContentItemMetadata *)self profileIdentifier];
  v51 = [profileIdentifier copy];
  [(_MRContentItemMetadataProtobuf *)v5 setProfileIdentifier:v51];

  assetURL = [(MRContentItemMetadata *)self assetURL];
  absoluteString = [assetURL absoluteString];
  [(_MRContentItemMetadataProtobuf *)v5 setAssetURLString:absoluteString];

  composer = [(MRContentItemMetadata *)self composer];
  v55 = [composer copy];
  [(_MRContentItemMetadataProtobuf *)v5 setComposer:v55];

  genre = [(MRContentItemMetadata *)self genre];
  v57 = [genre copy];
  [(_MRContentItemMetadataProtobuf *)v5 setGenre:v57];

  contentIdentifier = [(MRContentItemMetadata *)self contentIdentifier];
  v59 = [contentIdentifier copy];
  [(_MRContentItemMetadataProtobuf *)v5 setContentIdentifier:v59];

  radioStationName = [(MRContentItemMetadata *)self radioStationName];
  v61 = [radioStationName copy];
  [(_MRContentItemMetadataProtobuf *)v5 setRadioStationName:v61];

  radioStationString = [(MRContentItemMetadata *)self radioStationString];
  v63 = [radioStationString copy];
  [(_MRContentItemMetadataProtobuf *)v5 setRadioStationString:v63];

  seriesName = [(MRContentItemMetadata *)self seriesName];
  v65 = [seriesName copy];
  [(_MRContentItemMetadataProtobuf *)v5 setSeriesName:v65];

  lyricsURL = [(MRContentItemMetadata *)self lyricsURL];
  absoluteString2 = [lyricsURL absoluteString];
  [(_MRContentItemMetadataProtobuf *)v5 setLyricsURL:absoluteString2];

  serviceIdentifier = [(MRContentItemMetadata *)self serviceIdentifier];
  v69 = [serviceIdentifier copy];
  [(_MRContentItemMetadataProtobuf *)v5 setServiceIdentifier:v69];

  brandIdentifier = [(MRContentItemMetadata *)self brandIdentifier];
  v71 = [brandIdentifier copy];
  [(_MRContentItemMetadataProtobuf *)v5 setBrandIdentifier:v71];

  localizedDurationString = [(MRContentItemMetadata *)self localizedDurationString];
  v73 = [localizedDurationString copy];
  [(_MRContentItemMetadataProtobuf *)v5 setLocalizedDurationString:v73];

  durationStringLocalizationKey = [(MRContentItemMetadata *)self durationStringLocalizationKey];
  v75 = [durationStringLocalizationKey copy];
  [(_MRContentItemMetadataProtobuf *)v5 setDurationStringLocalizationKey:v75];

  artworkIdentifier = [(MRContentItemMetadata *)self artworkIdentifier];
  v77 = [artworkIdentifier copy];
  [(_MRContentItemMetadataProtobuf *)v5 setArtworkIdentifier:v77];

  artworkMIMEType = [(MRContentItemMetadata *)self artworkMIMEType];
  v79 = [artworkMIMEType copy];
  [(_MRContentItemMetadataProtobuf *)v5 setArtworkMIMEType:v79];

  artworkURL = [(MRContentItemMetadata *)self artworkURL];
  absoluteString3 = [artworkURL absoluteString];
  [(_MRContentItemMetadataProtobuf *)v5 setArtworkURL:absoluteString3];

  artworkFileURL = [(MRContentItemMetadata *)self artworkFileURL];
  absoluteString4 = [artworkFileURL absoluteString];
  [(_MRContentItemMetadataProtobuf *)v5 setArtworkFileURL:absoluteString4];

  albumYear = [(MRContentItemMetadata *)self albumYear];
  v85 = [albumYear copy];
  [(_MRContentItemMetadataProtobuf *)v5 setAlbumYear:v85];

  internationalStandardRecordingCode = [(MRContentItemMetadata *)self internationalStandardRecordingCode];
  v87 = [internationalStandardRecordingCode copy];
  [(_MRContentItemMetadataProtobuf *)v5 setInternationalStandardRecordingCode:v87];

  participantName = [(MRContentItemMetadata *)self participantName];
  v89 = [participantName copy];
  [(_MRContentItemMetadataProtobuf *)v5 setParticipantName:v89];

  participantIdentifier = [(MRContentItemMetadata *)self participantIdentifier];
  v91 = [participantIdentifier copy];
  [(_MRContentItemMetadataProtobuf *)v5 setParticipantIdentifier:v91];

  [(_MRContentItemMetadataProtobuf *)v5 setIsResolvableParticipant:[(MRContentItemMetadata *)self isResolvableParticipant]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasIsResolvableParticipant:[(MRContentItemMetadata *)self hasIsResolvableParticipant]];
  [(_MRContentItemMetadataProtobuf *)v5 setExcludeFromSuggestions:[(MRContentItemMetadata *)self excludeFromSuggestions]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasExcludeFromSuggestions:[(MRContentItemMetadata *)self hasExcludeFromSuggestions]];
  [(_MRContentItemMetadataProtobuf *)v5 setSongTraits:[(MRContentItemMetadata *)self songTraits]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasSongTraits:[(MRContentItemMetadata *)self hasSongTraits]];
  [(_MRContentItemMetadataProtobuf *)v5 setAlbumTraits:[(MRContentItemMetadata *)self albumTraits]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasAlbumTraits:[(MRContentItemMetadata *)self hasAlbumTraits]];
  [(_MRContentItemMetadataProtobuf *)v5 setPlaylistTraits:[(MRContentItemMetadata *)self playlistTraits]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasPlaylistTraits:[(MRContentItemMetadata *)self hasPlaylistTraits]];
  preferredFormat = [(MRContentItemMetadata *)self preferredFormat];
  if (preferredFormat)
  {
    preferredFormat2 = [(MRContentItemMetadata *)self preferredFormat];
    protobuf = [preferredFormat2 protobuf];
    [(_MRContentItemMetadataProtobuf *)v5 setPreferredFormat:protobuf];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setPreferredFormat:0];
  }

  activeFormat = [(MRContentItemMetadata *)self activeFormat];
  if (activeFormat)
  {
    activeFormat2 = [(MRContentItemMetadata *)self activeFormat];
    protobuf2 = [activeFormat2 protobuf];
    [(_MRContentItemMetadataProtobuf *)v5 setActiveFormat:protobuf2];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setActiveFormat:0];
  }

  [(_MRContentItemMetadataProtobuf *)v5 setActiveFormatJustification:[(MRContentItemMetadata *)self activeFormatJustification]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasActiveFormatJustification:[(MRContentItemMetadata *)self hasActiveFormatJustification]];
  [(_MRContentItemMetadataProtobuf *)v5 setFormatTierPreference:[(MRContentItemMetadata *)self formatTierPreference]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasFormatTierPreference:[(MRContentItemMetadata *)self hasFormatTierPreference]];
  audioRoute = [(MRContentItemMetadata *)self audioRoute];
  if (audioRoute)
  {
    audioRoute2 = [(MRContentItemMetadata *)self audioRoute];
    protobuf3 = [audioRoute2 protobuf];
    [(_MRContentItemMetadataProtobuf *)v5 setAudioRoute:protobuf3];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setAudioRoute:0];
  }

  alternativeFormats = [(MRContentItemMetadata *)self alternativeFormats];

  if (alternativeFormats)
  {
    [(_MRContentItemMetadataProtobuf *)v5 setHasAlternativeFormats:1];
    alternativeFormats2 = [(MRContentItemMetadata *)self alternativeFormats];
    v103 = [alternativeFormats2 msv_map:&__block_literal_global_7];
    v104 = [v103 mutableCopy];
    [(_MRContentItemMetadataProtobuf *)v5 setAlternativeFormats:v104];
  }

  artworkURLTemplates = [(MRContentItemMetadata *)self artworkURLTemplates];
  v106 = [artworkURLTemplates count];

  if (v106)
  {
    artworkURLTemplates2 = [(MRContentItemMetadata *)self artworkURLTemplates];
    v108 = MREncodeObjectWithEncoding(artworkURLTemplates2, encoding);
    [(_MRContentItemMetadataProtobuf *)v5 setArtworkURLTemplatesData:v108];
  }

  [(_MRContentItemMetadataProtobuf *)v5 setReportingAdamID:[(MRContentItemMetadata *)self reportingAdamID]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasReportingAdamID:[(MRContentItemMetadata *)self hasReportingAdamID]];
  [(_MRContentItemMetadataProtobuf *)v5 setLyricsAdamID:[(MRContentItemMetadata *)self lyricsAdamID]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasLyricsAdamID:[(MRContentItemMetadata *)self hasLyricsAdamID]];
  [(_MRContentItemMetadataProtobuf *)v5 setITunesStoreAlbumArtistIdentifier:[(MRContentItemMetadata *)self iTunesStoreAlbumArtistIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasITunesStoreAlbumArtistIdentifier:[(MRContentItemMetadata *)self hasITunesStoreAlbumArtistIdentifier]];
  [(_MRContentItemMetadataProtobuf *)v5 setTranscriptAlignmentsAvailable:[(MRContentItemMetadata *)self transcriptAlignmentsAvailable]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasTranscriptAlignmentsAvailable:[(MRContentItemMetadata *)self hasTranscriptAlignmentsAvailable]];

  return v5;
}

- (NSData)data
{
  v2 = [(MRContentItemMetadata *)self protobufWithEncoding:0];
  data = [v2 data];

  return data;
}

- (double)calculatedPlaybackPosition
{
  v3 = [MEMORY[0x1E695DF00] now];
  [(MRContentItemMetadata *)self calculatedPlaybackPositionFromDate:v3];
  v5 = v4;

  return v5;
}

- (void)setPlaybackRate:(float)rate
{
  self->_playbackRate = rate;
  self->_hasPlaybackRate = 1;
  v4 = [MEMORY[0x1E695DF00] now];
  [v4 timeIntervalSinceReferenceDate];
  [(MRContentItemMetadata *)self setElapsedTimeTimestamp:?];
}

- (void)setElapsedTime:(double)time
{
  self->_elapsedTime = time;
  self->_hasElapsedTime = 1;
  v4 = [MEMORY[0x1E695DF00] now];
  [v4 timeIntervalSinceReferenceDate];
  [(MRContentItemMetadata *)self setElapsedTimeTimestamp:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_427;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_428;
  }

  hasContainer = [(MRContentItemMetadata *)equalCopy hasContainer];
  if (hasContainer != [(MRContentItemMetadata *)self hasContainer])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasContainer])
  {
    if ([(MRContentItemMetadata *)self hasContainer])
    {
      isContainer = [(MRContentItemMetadata *)equalCopy isContainer];
      if (isContainer != [(MRContentItemMetadata *)self isContainer])
      {
        goto LABEL_428;
      }
    }
  }

  hasPlayable = [(MRContentItemMetadata *)equalCopy hasPlayable];
  if (hasPlayable != [(MRContentItemMetadata *)self hasPlayable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasPlayable])
  {
    if ([(MRContentItemMetadata *)self hasPlayable])
    {
      isPlayable = [(MRContentItemMetadata *)equalCopy isPlayable];
      if (isPlayable != [(MRContentItemMetadata *)self isPlayable])
      {
        goto LABEL_428;
      }
    }
  }

  hasExplicitItem = [(MRContentItemMetadata *)equalCopy hasExplicitItem];
  if (hasExplicitItem != [(MRContentItemMetadata *)self hasExplicitItem])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasExplicitItem])
  {
    if ([(MRContentItemMetadata *)self hasExplicitItem])
    {
      isExplicitItem = [(MRContentItemMetadata *)equalCopy isExplicitItem];
      if (isExplicitItem != [(MRContentItemMetadata *)self isExplicitItem])
      {
        goto LABEL_428;
      }
    }
  }

  hasStreamingContent = [(MRContentItemMetadata *)equalCopy hasStreamingContent];
  if (hasStreamingContent != [(MRContentItemMetadata *)self hasStreamingContent])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasStreamingContent])
  {
    if ([(MRContentItemMetadata *)self hasStreamingContent])
    {
      isStreamingContent = [(MRContentItemMetadata *)equalCopy isStreamingContent];
      if (isStreamingContent != [(MRContentItemMetadata *)self isStreamingContent])
      {
        goto LABEL_428;
      }
    }
  }

  hasCurrentlyPlaying = [(MRContentItemMetadata *)equalCopy hasCurrentlyPlaying];
  if (hasCurrentlyPlaying != [(MRContentItemMetadata *)self hasCurrentlyPlaying])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasCurrentlyPlaying])
  {
    if ([(MRContentItemMetadata *)self hasCurrentlyPlaying])
    {
      isCurrentlyPlaying = [(MRContentItemMetadata *)equalCopy isCurrentlyPlaying];
      if (isCurrentlyPlaying != [(MRContentItemMetadata *)self isCurrentlyPlaying])
      {
        goto LABEL_428;
      }
    }
  }

  hasAlwaysLive = [(MRContentItemMetadata *)equalCopy hasAlwaysLive];
  if (hasAlwaysLive != [(MRContentItemMetadata *)self hasAlwaysLive])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasAlwaysLive])
  {
    if ([(MRContentItemMetadata *)self hasAlwaysLive])
    {
      isAlwaysLive = [(MRContentItemMetadata *)equalCopy isAlwaysLive];
      if (isAlwaysLive != [(MRContentItemMetadata *)self isAlwaysLive])
      {
        goto LABEL_428;
      }
    }
  }

  hasSharable = [(MRContentItemMetadata *)equalCopy hasSharable];
  if (hasSharable != [(MRContentItemMetadata *)self hasSharable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasSharable])
  {
    if ([(MRContentItemMetadata *)self hasSharable])
    {
      isSharable = [(MRContentItemMetadata *)equalCopy isSharable];
      if (isSharable != [(MRContentItemMetadata *)self isSharable])
      {
        goto LABEL_428;
      }
    }
  }

  hasLiked = [(MRContentItemMetadata *)equalCopy hasLiked];
  if (hasLiked != [(MRContentItemMetadata *)self hasLiked])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasLiked])
  {
    if ([(MRContentItemMetadata *)self hasLiked])
    {
      isLiked = [(MRContentItemMetadata *)equalCopy isLiked];
      if (isLiked != [(MRContentItemMetadata *)self isLiked])
      {
        goto LABEL_428;
      }
    }
  }

  hasInWishList = [(MRContentItemMetadata *)equalCopy hasInWishList];
  if (hasInWishList != [(MRContentItemMetadata *)self hasInWishList])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasInWishList])
  {
    if ([(MRContentItemMetadata *)self hasInWishList])
    {
      isInWishList = [(MRContentItemMetadata *)equalCopy isInWishList];
      if (isInWishList != [(MRContentItemMetadata *)self isInWishList])
      {
        goto LABEL_428;
      }
    }
  }

  hasAdvertisement = [(MRContentItemMetadata *)equalCopy hasAdvertisement];
  if (hasAdvertisement != [(MRContentItemMetadata *)self hasAdvertisement])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasAdvertisement])
  {
    if ([(MRContentItemMetadata *)self hasAdvertisement])
    {
      isAdvertisement = [(MRContentItemMetadata *)equalCopy isAdvertisement];
      if (isAdvertisement != [(MRContentItemMetadata *)self isAdvertisement])
      {
        goto LABEL_428;
      }
    }
  }

  hasSteerable = [(MRContentItemMetadata *)equalCopy hasSteerable];
  if (hasSteerable != [(MRContentItemMetadata *)self hasSteerable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasSteerable])
  {
    if ([(MRContentItemMetadata *)self hasSteerable])
    {
      isSteerable = [(MRContentItemMetadata *)equalCopy isSteerable];
      if (isSteerable != [(MRContentItemMetadata *)self isSteerable])
      {
        goto LABEL_428;
      }
    }
  }

  hasLoading = [(MRContentItemMetadata *)equalCopy hasLoading];
  if (hasLoading != [(MRContentItemMetadata *)self hasLoading])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasLoading])
  {
    if ([(MRContentItemMetadata *)self hasLoading])
    {
      isLoading = [(MRContentItemMetadata *)equalCopy isLoading];
      if (isLoading != [(MRContentItemMetadata *)self isLoading])
      {
        goto LABEL_428;
      }
    }
  }

  hasInTransition = [(MRContentItemMetadata *)equalCopy hasInTransition];
  if (hasInTransition != [(MRContentItemMetadata *)self hasInTransition])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasInTransition])
  {
    if ([(MRContentItemMetadata *)self hasInTransition])
    {
      isInTransition = [(MRContentItemMetadata *)equalCopy isInTransition];
      if (isInTransition != [(MRContentItemMetadata *)self isInTransition])
      {
        goto LABEL_428;
      }
    }
  }

  hasArtworkAvailable = [(MRContentItemMetadata *)equalCopy hasArtworkAvailable];
  if (hasArtworkAvailable != [(MRContentItemMetadata *)self hasArtworkAvailable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasArtworkAvailable])
  {
    if ([(MRContentItemMetadata *)self hasArtworkAvailable])
    {
      artworkAvailable = [(MRContentItemMetadata *)equalCopy artworkAvailable];
      if (artworkAvailable != [(MRContentItemMetadata *)self artworkAvailable])
      {
        goto LABEL_428;
      }
    }
  }

  hasInfoAvailable = [(MRContentItemMetadata *)equalCopy hasInfoAvailable];
  if (hasInfoAvailable != [(MRContentItemMetadata *)self hasInfoAvailable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasInfoAvailable])
  {
    if ([(MRContentItemMetadata *)self hasInfoAvailable])
    {
      infoAvailable = [(MRContentItemMetadata *)equalCopy infoAvailable];
      if (infoAvailable != [(MRContentItemMetadata *)self infoAvailable])
      {
        goto LABEL_428;
      }
    }
  }

  hasTranscriptAlignmentsAvailable = [(MRContentItemMetadata *)equalCopy hasTranscriptAlignmentsAvailable];
  if (hasTranscriptAlignmentsAvailable != [(MRContentItemMetadata *)self hasTranscriptAlignmentsAvailable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasTranscriptAlignmentsAvailable])
  {
    if ([(MRContentItemMetadata *)self hasTranscriptAlignmentsAvailable])
    {
      transcriptAlignmentsAvailable = [(MRContentItemMetadata *)equalCopy transcriptAlignmentsAvailable];
      if (transcriptAlignmentsAvailable != [(MRContentItemMetadata *)self transcriptAlignmentsAvailable])
      {
        goto LABEL_428;
      }
    }
  }

  hasLanguageOptionsAvailable = [(MRContentItemMetadata *)equalCopy hasLanguageOptionsAvailable];
  if (hasLanguageOptionsAvailable != [(MRContentItemMetadata *)self hasLanguageOptionsAvailable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasLanguageOptionsAvailable])
  {
    if ([(MRContentItemMetadata *)self hasLanguageOptionsAvailable])
    {
      languageOptionsAvailable = [(MRContentItemMetadata *)equalCopy languageOptionsAvailable];
      if (languageOptionsAvailable != [(MRContentItemMetadata *)self languageOptionsAvailable])
      {
        goto LABEL_428;
      }
    }
  }

  hasLyricsAvailable = [(MRContentItemMetadata *)equalCopy hasLyricsAvailable];
  if (hasLyricsAvailable != [(MRContentItemMetadata *)self hasLyricsAvailable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasLyricsAvailable])
  {
    if ([(MRContentItemMetadata *)self hasLyricsAvailable])
    {
      lyricsAvailable = [(MRContentItemMetadata *)equalCopy lyricsAvailable];
      if (lyricsAvailable != [(MRContentItemMetadata *)self lyricsAvailable])
      {
        goto LABEL_428;
      }
    }
  }

  hasPlaybackProgress = [(MRContentItemMetadata *)equalCopy hasPlaybackProgress];
  if (hasPlaybackProgress != [(MRContentItemMetadata *)self hasPlaybackProgress])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasPlaybackProgress])
  {
    if ([(MRContentItemMetadata *)self hasPlaybackProgress])
    {
      [(MRContentItemMetadata *)equalCopy playbackProgress];
      v43 = v42;
      [(MRContentItemMetadata *)self playbackProgress];
      if (v43 != v44)
      {
        goto LABEL_428;
      }
    }
  }

  hasPlaybackRate = [(MRContentItemMetadata *)equalCopy hasPlaybackRate];
  if (hasPlaybackRate != [(MRContentItemMetadata *)self hasPlaybackRate])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasPlaybackRate])
  {
    if ([(MRContentItemMetadata *)self hasPlaybackRate])
    {
      [(MRContentItemMetadata *)equalCopy playbackRate];
      v47 = v46;
      [(MRContentItemMetadata *)self playbackRate];
      if (v47 != v48)
      {
        goto LABEL_428;
      }
    }
  }

  hasDefaultPlaybackRate = [(MRContentItemMetadata *)equalCopy hasDefaultPlaybackRate];
  if (hasDefaultPlaybackRate != [(MRContentItemMetadata *)self hasDefaultPlaybackRate])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasDefaultPlaybackRate])
  {
    if ([(MRContentItemMetadata *)self hasDefaultPlaybackRate])
    {
      [(MRContentItemMetadata *)equalCopy defaultPlaybackRate];
      v51 = v50;
      [(MRContentItemMetadata *)self defaultPlaybackRate];
      if (v51 != v52)
      {
        goto LABEL_428;
      }
    }
  }

  hasDownloadProgress = [(MRContentItemMetadata *)equalCopy hasDownloadProgress];
  if (hasDownloadProgress != [(MRContentItemMetadata *)self hasDownloadProgress])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasDownloadProgress])
  {
    if ([(MRContentItemMetadata *)self hasDownloadProgress])
    {
      [(MRContentItemMetadata *)equalCopy downloadProgress];
      v55 = v54;
      [(MRContentItemMetadata *)self downloadProgress];
      if (v55 != v56)
      {
        goto LABEL_428;
      }
    }
  }

  hasPlaylistType = [(MRContentItemMetadata *)equalCopy hasPlaylistType];
  if (hasPlaylistType != [(MRContentItemMetadata *)self hasPlaylistType])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasPlaylistType])
  {
    if ([(MRContentItemMetadata *)self hasPlaylistType])
    {
      playlistType = [(MRContentItemMetadata *)equalCopy playlistType];
      if (playlistType != [(MRContentItemMetadata *)self playlistType])
      {
        goto LABEL_428;
      }
    }
  }

  hasRadioStationType = [(MRContentItemMetadata *)equalCopy hasRadioStationType];
  if (hasRadioStationType != [(MRContentItemMetadata *)self hasRadioStationType])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasRadioStationType])
  {
    if ([(MRContentItemMetadata *)self hasRadioStationType])
    {
      radioStationType = [(MRContentItemMetadata *)equalCopy radioStationType];
      if (radioStationType != [(MRContentItemMetadata *)self radioStationType])
      {
        goto LABEL_428;
      }
    }
  }

  hasEditingStyleFlags = [(MRContentItemMetadata *)equalCopy hasEditingStyleFlags];
  if (hasEditingStyleFlags != [(MRContentItemMetadata *)self hasEditingStyleFlags])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasEditingStyleFlags])
  {
    if ([(MRContentItemMetadata *)self hasEditingStyleFlags])
    {
      editingStyleFlags = [(MRContentItemMetadata *)equalCopy editingStyleFlags];
      if (editingStyleFlags != [(MRContentItemMetadata *)self editingStyleFlags])
      {
        goto LABEL_428;
      }
    }
  }

  hasMediaType = [(MRContentItemMetadata *)equalCopy hasMediaType];
  if (hasMediaType != [(MRContentItemMetadata *)self hasMediaType])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasMediaType])
  {
    if ([(MRContentItemMetadata *)self hasMediaType])
    {
      mediaType = [(MRContentItemMetadata *)equalCopy mediaType];
      if (mediaType != [(MRContentItemMetadata *)self mediaType])
      {
        goto LABEL_428;
      }
    }
  }

  hasMediaSubType = [(MRContentItemMetadata *)equalCopy hasMediaSubType];
  if (hasMediaSubType != [(MRContentItemMetadata *)self hasMediaSubType])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasMediaSubType])
  {
    if ([(MRContentItemMetadata *)self hasMediaSubType])
    {
      mediaSubType = [(MRContentItemMetadata *)equalCopy mediaSubType];
      if (mediaSubType != [(MRContentItemMetadata *)self mediaSubType])
      {
        goto LABEL_428;
      }
    }
  }

  hasEpisodeType = [(MRContentItemMetadata *)equalCopy hasEpisodeType];
  if (hasEpisodeType != [(MRContentItemMetadata *)self hasEpisodeType])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasEpisodeType])
  {
    if ([(MRContentItemMetadata *)self hasEpisodeType])
    {
      episodeType = [(MRContentItemMetadata *)equalCopy episodeType];
      if (episodeType != [(MRContentItemMetadata *)self episodeType])
      {
        goto LABEL_428;
      }
    }
  }

  hasPlayCount = [(MRContentItemMetadata *)equalCopy hasPlayCount];
  if (hasPlayCount != [(MRContentItemMetadata *)self hasPlayCount])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasPlayCount])
  {
    if ([(MRContentItemMetadata *)self hasPlayCount])
    {
      playCount = [(MRContentItemMetadata *)equalCopy playCount];
      if (playCount != [(MRContentItemMetadata *)self playCount])
      {
        goto LABEL_428;
      }
    }
  }

  hasNumberOfSections = [(MRContentItemMetadata *)equalCopy hasNumberOfSections];
  if (hasNumberOfSections != [(MRContentItemMetadata *)self hasNumberOfSections])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasNumberOfSections])
  {
    if ([(MRContentItemMetadata *)self hasNumberOfSections])
    {
      numberOfSections = [(MRContentItemMetadata *)equalCopy numberOfSections];
      if (numberOfSections != [(MRContentItemMetadata *)self numberOfSections])
      {
        goto LABEL_428;
      }
    }
  }

  hasChapterCount = [(MRContentItemMetadata *)equalCopy hasChapterCount];
  if (hasChapterCount != [(MRContentItemMetadata *)self hasChapterCount])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasChapterCount])
  {
    if ([(MRContentItemMetadata *)self hasChapterCount])
    {
      chapterCount = [(MRContentItemMetadata *)equalCopy chapterCount];
      if (chapterCount != [(MRContentItemMetadata *)self chapterCount])
      {
        goto LABEL_428;
      }
    }
  }

  hasTotalDiscCount = [(MRContentItemMetadata *)equalCopy hasTotalDiscCount];
  if (hasTotalDiscCount != [(MRContentItemMetadata *)self hasTotalDiscCount])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasTotalDiscCount])
  {
    if ([(MRContentItemMetadata *)self hasTotalDiscCount])
    {
      totalDiscCount = [(MRContentItemMetadata *)equalCopy totalDiscCount];
      if (totalDiscCount != [(MRContentItemMetadata *)self totalDiscCount])
      {
        goto LABEL_428;
      }
    }
  }

  hasTotalTrackCount = [(MRContentItemMetadata *)equalCopy hasTotalTrackCount];
  if (hasTotalTrackCount != [(MRContentItemMetadata *)self hasTotalTrackCount])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasTotalTrackCount])
  {
    if ([(MRContentItemMetadata *)self hasTotalTrackCount])
    {
      totalTrackCount = [(MRContentItemMetadata *)equalCopy totalTrackCount];
      if (totalTrackCount != [(MRContentItemMetadata *)self totalTrackCount])
      {
        goto LABEL_428;
      }
    }
  }

  hasDownloadState = [(MRContentItemMetadata *)equalCopy hasDownloadState];
  if (hasDownloadState != [(MRContentItemMetadata *)self hasDownloadState])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasDownloadState])
  {
    if ([(MRContentItemMetadata *)self hasDownloadState])
    {
      downloadState = [(MRContentItemMetadata *)equalCopy downloadState];
      if (downloadState != [(MRContentItemMetadata *)self downloadState])
      {
        goto LABEL_428;
      }
    }
  }

  hasArtworkDataWidthDeprecated = [(MRContentItemMetadata *)equalCopy hasArtworkDataWidthDeprecated];
  if (hasArtworkDataWidthDeprecated != [(MRContentItemMetadata *)self hasArtworkDataWidthDeprecated])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasArtworkDataWidthDeprecated])
  {
    if ([(MRContentItemMetadata *)self hasArtworkDataWidthDeprecated])
    {
      artworkDataWidthDeprecated = [(MRContentItemMetadata *)equalCopy artworkDataWidthDeprecated];
      if (artworkDataWidthDeprecated != [(MRContentItemMetadata *)self artworkDataWidthDeprecated])
      {
        goto LABEL_428;
      }
    }
  }

  hasArtworkDataHeightDeprecated = [(MRContentItemMetadata *)equalCopy hasArtworkDataHeightDeprecated];
  if (hasArtworkDataHeightDeprecated != [(MRContentItemMetadata *)self hasArtworkDataHeightDeprecated])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasArtworkDataHeightDeprecated])
  {
    if ([(MRContentItemMetadata *)self hasArtworkDataHeightDeprecated])
    {
      artworkDataHeightDeprecated = [(MRContentItemMetadata *)equalCopy artworkDataHeightDeprecated];
      if (artworkDataHeightDeprecated != [(MRContentItemMetadata *)self artworkDataHeightDeprecated])
      {
        goto LABEL_428;
      }
    }
  }

  hasDuration = [(MRContentItemMetadata *)equalCopy hasDuration];
  if (hasDuration != [(MRContentItemMetadata *)self hasDuration])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasDuration])
  {
    if ([(MRContentItemMetadata *)self hasDuration])
    {
      [(MRContentItemMetadata *)equalCopy duration];
      v87 = v86;
      [(MRContentItemMetadata *)self duration];
      if (v87 != v88)
      {
        goto LABEL_428;
      }
    }
  }

  hasStartTime = [(MRContentItemMetadata *)equalCopy hasStartTime];
  if (hasStartTime != [(MRContentItemMetadata *)self hasStartTime])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasStartTime])
  {
    if ([(MRContentItemMetadata *)self hasStartTime])
    {
      [(MRContentItemMetadata *)equalCopy startTime];
      v91 = v90;
      [(MRContentItemMetadata *)self startTime];
      if (v91 != v92)
      {
        goto LABEL_428;
      }
    }
  }

  hasElapsedTime = [(MRContentItemMetadata *)equalCopy hasElapsedTime];
  if (hasElapsedTime != [(MRContentItemMetadata *)self hasElapsedTime])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasElapsedTime])
  {
    if ([(MRContentItemMetadata *)self hasElapsedTime])
    {
      [(MRContentItemMetadata *)equalCopy elapsedTime];
      v95 = v94;
      [(MRContentItemMetadata *)self elapsedTime];
      if (v95 != v96)
      {
        goto LABEL_428;
      }
    }
  }

  hasElapsedTimeTimestamp = [(MRContentItemMetadata *)equalCopy hasElapsedTimeTimestamp];
  if (hasElapsedTimeTimestamp != [(MRContentItemMetadata *)self hasElapsedTimeTimestamp])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasElapsedTimeTimestamp])
  {
    if ([(MRContentItemMetadata *)self hasElapsedTimeTimestamp])
    {
      [(MRContentItemMetadata *)equalCopy elapsedTimeTimestamp];
      v99 = v98;
      [(MRContentItemMetadata *)self elapsedTimeTimestamp];
      if (v99 != v100)
      {
        goto LABEL_428;
      }
    }
  }

  hasInferredTimestamp = [(MRContentItemMetadata *)equalCopy hasInferredTimestamp];
  if (hasInferredTimestamp != [(MRContentItemMetadata *)self hasInferredTimestamp])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasInferredTimestamp])
  {
    if ([(MRContentItemMetadata *)self hasInferredTimestamp])
    {
      [(MRContentItemMetadata *)equalCopy inferredTimestamp];
      v103 = v102;
      [(MRContentItemMetadata *)self inferredTimestamp];
      if (v103 != v104)
      {
        goto LABEL_428;
      }
    }
  }

  hasSeasonNumber = [(MRContentItemMetadata *)equalCopy hasSeasonNumber];
  if (hasSeasonNumber != [(MRContentItemMetadata *)self hasSeasonNumber])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasSeasonNumber])
  {
    if ([(MRContentItemMetadata *)self hasSeasonNumber])
    {
      seasonNumber = [(MRContentItemMetadata *)equalCopy seasonNumber];
      if (seasonNumber != [(MRContentItemMetadata *)self seasonNumber])
      {
        goto LABEL_428;
      }
    }
  }

  hasEpisodeNumber = [(MRContentItemMetadata *)equalCopy hasEpisodeNumber];
  if (hasEpisodeNumber != [(MRContentItemMetadata *)self hasEpisodeNumber])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasEpisodeNumber])
  {
    if ([(MRContentItemMetadata *)self hasEpisodeNumber])
    {
      episodeNumber = [(MRContentItemMetadata *)equalCopy episodeNumber];
      if (episodeNumber != [(MRContentItemMetadata *)self episodeNumber])
      {
        goto LABEL_428;
      }
    }
  }

  hasDiscNumber = [(MRContentItemMetadata *)equalCopy hasDiscNumber];
  if (hasDiscNumber != [(MRContentItemMetadata *)self hasDiscNumber])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasDiscNumber])
  {
    if ([(MRContentItemMetadata *)self hasDiscNumber])
    {
      discNumber = [(MRContentItemMetadata *)equalCopy discNumber];
      if (discNumber != [(MRContentItemMetadata *)self discNumber])
      {
        goto LABEL_428;
      }
    }
  }

  hasTrackNumber = [(MRContentItemMetadata *)equalCopy hasTrackNumber];
  if (hasTrackNumber != [(MRContentItemMetadata *)self hasTrackNumber])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasTrackNumber])
  {
    if ([(MRContentItemMetadata *)self hasTrackNumber])
    {
      trackNumber = [(MRContentItemMetadata *)equalCopy trackNumber];
      if (trackNumber != [(MRContentItemMetadata *)self trackNumber])
      {
        goto LABEL_428;
      }
    }
  }

  hasRadioStationIdentifier = [(MRContentItemMetadata *)equalCopy hasRadioStationIdentifier];
  if (hasRadioStationIdentifier != [(MRContentItemMetadata *)self hasRadioStationIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasRadioStationIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasRadioStationIdentifier])
    {
      radioStationIdentifier = [(MRContentItemMetadata *)equalCopy radioStationIdentifier];
      if (radioStationIdentifier != [(MRContentItemMetadata *)self radioStationIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

  hasITunesStoreIdentifier = [(MRContentItemMetadata *)equalCopy hasITunesStoreIdentifier];
  if (hasITunesStoreIdentifier != [(MRContentItemMetadata *)self hasITunesStoreIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasITunesStoreIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasITunesStoreIdentifier])
    {
      iTunesStoreIdentifier = [(MRContentItemMetadata *)equalCopy iTunesStoreIdentifier];
      if (iTunesStoreIdentifier != [(MRContentItemMetadata *)self iTunesStoreIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

  hasITunesStoreSubscriptionIdentifier = [(MRContentItemMetadata *)equalCopy hasITunesStoreSubscriptionIdentifier];
  if (hasITunesStoreSubscriptionIdentifier != [(MRContentItemMetadata *)self hasITunesStoreSubscriptionIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasITunesStoreSubscriptionIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasITunesStoreSubscriptionIdentifier])
    {
      iTunesStoreSubscriptionIdentifier = [(MRContentItemMetadata *)equalCopy iTunesStoreSubscriptionIdentifier];
      if (iTunesStoreSubscriptionIdentifier != [(MRContentItemMetadata *)self iTunesStoreSubscriptionIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

  hasITunesStoreArtistIdentifier = [(MRContentItemMetadata *)equalCopy hasITunesStoreArtistIdentifier];
  if (hasITunesStoreArtistIdentifier != [(MRContentItemMetadata *)self hasITunesStoreArtistIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasITunesStoreArtistIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasITunesStoreArtistIdentifier])
    {
      iTunesStoreArtistIdentifier = [(MRContentItemMetadata *)equalCopy iTunesStoreArtistIdentifier];
      if (iTunesStoreArtistIdentifier != [(MRContentItemMetadata *)self iTunesStoreArtistIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

  hasITunesStoreAlbumIdentifier = [(MRContentItemMetadata *)equalCopy hasITunesStoreAlbumIdentifier];
  if (hasITunesStoreAlbumIdentifier != [(MRContentItemMetadata *)self hasITunesStoreAlbumIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasITunesStoreAlbumIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasITunesStoreAlbumIdentifier])
    {
      iTunesStoreAlbumIdentifier = [(MRContentItemMetadata *)equalCopy iTunesStoreAlbumIdentifier];
      if (iTunesStoreAlbumIdentifier != [(MRContentItemMetadata *)self iTunesStoreAlbumIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

  hasLegacyUniqueIdentifier = [(MRContentItemMetadata *)equalCopy hasLegacyUniqueIdentifier];
  if (hasLegacyUniqueIdentifier != [(MRContentItemMetadata *)self hasLegacyUniqueIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasLegacyUniqueIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasLegacyUniqueIdentifier])
    {
      legacyUniqueIdentifier = [(MRContentItemMetadata *)equalCopy legacyUniqueIdentifier];
      if (legacyUniqueIdentifier != [(MRContentItemMetadata *)self legacyUniqueIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

  hasSongTraits = [(MRContentItemMetadata *)equalCopy hasSongTraits];
  if (hasSongTraits != [(MRContentItemMetadata *)self hasSongTraits])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasSongTraits])
  {
    if ([(MRContentItemMetadata *)self hasSongTraits])
    {
      songTraits = [(MRContentItemMetadata *)equalCopy songTraits];
      if (songTraits != [(MRContentItemMetadata *)self songTraits])
      {
        goto LABEL_428;
      }
    }
  }

  hasAlbumTraits = [(MRContentItemMetadata *)equalCopy hasAlbumTraits];
  if (hasAlbumTraits != [(MRContentItemMetadata *)self hasAlbumTraits])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasAlbumTraits])
  {
    if ([(MRContentItemMetadata *)self hasAlbumTraits])
    {
      albumTraits = [(MRContentItemMetadata *)equalCopy albumTraits];
      if (albumTraits != [(MRContentItemMetadata *)self albumTraits])
      {
        goto LABEL_428;
      }
    }
  }

  hasPlaylistTraits = [(MRContentItemMetadata *)equalCopy hasPlaylistTraits];
  if (hasPlaylistTraits != [(MRContentItemMetadata *)self hasPlaylistTraits])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasPlaylistTraits])
  {
    if ([(MRContentItemMetadata *)self hasPlaylistTraits])
    {
      playlistTraits = [(MRContentItemMetadata *)equalCopy playlistTraits];
      if (playlistTraits != [(MRContentItemMetadata *)self playlistTraits])
      {
        goto LABEL_428;
      }
    }
  }

  hasActiveFormatJustification = [(MRContentItemMetadata *)equalCopy hasActiveFormatJustification];
  if (hasActiveFormatJustification != [(MRContentItemMetadata *)self hasActiveFormatJustification])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasActiveFormatJustification])
  {
    if ([(MRContentItemMetadata *)self hasActiveFormatJustification])
    {
      activeFormatJustification = [(MRContentItemMetadata *)equalCopy activeFormatJustification];
      if (activeFormatJustification != [(MRContentItemMetadata *)self activeFormatJustification])
      {
        goto LABEL_428;
      }
    }
  }

  hasFormatTierPreference = [(MRContentItemMetadata *)equalCopy hasFormatTierPreference];
  if (hasFormatTierPreference != [(MRContentItemMetadata *)self hasFormatTierPreference])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasFormatTierPreference])
  {
    if ([(MRContentItemMetadata *)self hasFormatTierPreference])
    {
      formatTierPreference = [(MRContentItemMetadata *)equalCopy formatTierPreference];
      if (formatTierPreference != [(MRContentItemMetadata *)self formatTierPreference])
      {
        goto LABEL_428;
      }
    }
  }

  purchaseInfoData = [(MRContentItemMetadata *)equalCopy purchaseInfoData];
  purchaseInfoData2 = [(MRContentItemMetadata *)self purchaseInfoData];
  v137 = purchaseInfoData2;
  if (purchaseInfoData == purchaseInfoData2)
  {
  }

  else
  {
    purchaseInfoData3 = [(MRContentItemMetadata *)equalCopy purchaseInfoData];
    purchaseInfoData4 = [(MRContentItemMetadata *)self purchaseInfoData];
    v140 = [purchaseInfoData3 isEqualToData:purchaseInfoData4];

    if (!v140)
    {
      goto LABEL_428;
    }
  }

  appMetrics = [(MRContentItemMetadata *)equalCopy appMetrics];
  appMetrics2 = [(MRContentItemMetadata *)self appMetrics];
  v143 = appMetrics2;
  if (appMetrics == appMetrics2)
  {
  }

  else
  {
    appMetrics3 = [(MRContentItemMetadata *)equalCopy appMetrics];
    appMetrics4 = [(MRContentItemMetadata *)self appMetrics];
    v146 = [appMetrics3 isEqualToDictionary:appMetrics4];

    if (!v146)
    {
      goto LABEL_428;
    }
  }

  nowPlayingInfo = [(MRContentItemMetadata *)equalCopy nowPlayingInfo];
  nowPlayingInfo2 = [(MRContentItemMetadata *)self nowPlayingInfo];
  v149 = nowPlayingInfo2;
  if (nowPlayingInfo == nowPlayingInfo2)
  {
  }

  else
  {
    nowPlayingInfo3 = [(MRContentItemMetadata *)equalCopy nowPlayingInfo];
    nowPlayingInfo4 = [(MRContentItemMetadata *)self nowPlayingInfo];
    v152 = [nowPlayingInfo3 isEqualToDictionary:nowPlayingInfo4];

    if (!v152)
    {
      goto LABEL_428;
    }
  }

  userInfo = [(MRContentItemMetadata *)equalCopy userInfo];
  userInfo2 = [(MRContentItemMetadata *)self userInfo];
  v155 = userInfo2;
  if (userInfo == userInfo2)
  {
  }

  else
  {
    userInfo3 = [(MRContentItemMetadata *)equalCopy userInfo];
    userInfo4 = [(MRContentItemMetadata *)self userInfo];
    v158 = [userInfo3 isEqualToDictionary:userInfo4];

    if (!v158)
    {
      goto LABEL_428;
    }
  }

  deviceSpecificUserInfo = [(MRContentItemMetadata *)equalCopy deviceSpecificUserInfo];
  deviceSpecificUserInfo2 = [(MRContentItemMetadata *)self deviceSpecificUserInfo];
  v161 = deviceSpecificUserInfo2;
  if (deviceSpecificUserInfo == deviceSpecificUserInfo2)
  {
  }

  else
  {
    deviceSpecificUserInfo3 = [(MRContentItemMetadata *)equalCopy deviceSpecificUserInfo];
    deviceSpecificUserInfo4 = [(MRContentItemMetadata *)self deviceSpecificUserInfo];
    v164 = [deviceSpecificUserInfo3 isEqualToDictionary:deviceSpecificUserInfo4];

    if (!v164)
    {
      goto LABEL_428;
    }
  }

  collectionInfo = [(MRContentItemMetadata *)equalCopy collectionInfo];
  collectionInfo2 = [(MRContentItemMetadata *)self collectionInfo];
  v167 = collectionInfo2;
  if (collectionInfo == collectionInfo2)
  {
  }

  else
  {
    collectionInfo3 = [(MRContentItemMetadata *)equalCopy collectionInfo];
    collectionInfo4 = [(MRContentItemMetadata *)self collectionInfo];
    v170 = [collectionInfo3 isEqualToDictionary:collectionInfo4];

    if (!v170)
    {
      goto LABEL_428;
    }
  }

  transitionInfo = [(MRContentItemMetadata *)equalCopy transitionInfo];
  transitionInfo2 = [(MRContentItemMetadata *)self transitionInfo];
  v173 = transitionInfo2;
  if (transitionInfo == transitionInfo2)
  {
  }

  else
  {
    transitionInfo3 = [(MRContentItemMetadata *)equalCopy transitionInfo];
    transitionInfo4 = [(MRContentItemMetadata *)self transitionInfo];
    v176 = [transitionInfo3 isEqualToDictionary:transitionInfo4];

    if (!v176)
    {
      goto LABEL_428;
    }
  }

  releaseDate = [(MRContentItemMetadata *)equalCopy releaseDate];
  releaseDate2 = [(MRContentItemMetadata *)self releaseDate];
  v179 = releaseDate2;
  if (releaseDate == releaseDate2)
  {
  }

  else
  {
    releaseDate3 = [(MRContentItemMetadata *)equalCopy releaseDate];
    releaseDate4 = [(MRContentItemMetadata *)self releaseDate];
    v182 = [releaseDate3 isEqualToDate:releaseDate4];

    if (!v182)
    {
      goto LABEL_428;
    }
  }

  currentPlaybackDate = [(MRContentItemMetadata *)equalCopy currentPlaybackDate];
  currentPlaybackDate2 = [(MRContentItemMetadata *)self currentPlaybackDate];
  v185 = currentPlaybackDate2;
  if (currentPlaybackDate == currentPlaybackDate2)
  {
  }

  else
  {
    currentPlaybackDate3 = [(MRContentItemMetadata *)equalCopy currentPlaybackDate];
    currentPlaybackDate4 = [(MRContentItemMetadata *)self currentPlaybackDate];
    v188 = [currentPlaybackDate3 isEqualToDate:currentPlaybackDate4];

    if (!v188)
    {
      goto LABEL_428;
    }
  }

  title = [(MRContentItemMetadata *)equalCopy title];
  title2 = [(MRContentItemMetadata *)self title];
  v191 = title2;
  if (title == title2)
  {
  }

  else
  {
    title3 = [(MRContentItemMetadata *)equalCopy title];
    title4 = [(MRContentItemMetadata *)self title];
    v194 = [title3 isEqualToString:title4];

    if (!v194)
    {
      goto LABEL_428;
    }
  }

  subtitle = [(MRContentItemMetadata *)equalCopy subtitle];
  subtitle2 = [(MRContentItemMetadata *)self subtitle];
  v197 = subtitle2;
  if (subtitle == subtitle2)
  {
  }

  else
  {
    subtitle3 = [(MRContentItemMetadata *)equalCopy subtitle];
    subtitle4 = [(MRContentItemMetadata *)self subtitle];
    v200 = [subtitle3 isEqualToString:subtitle4];

    if (!v200)
    {
      goto LABEL_428;
    }
  }

  subtitleShort = [(MRContentItemMetadata *)equalCopy subtitleShort];
  subtitleShort2 = [(MRContentItemMetadata *)self subtitleShort];
  v203 = subtitleShort2;
  if (subtitleShort == subtitleShort2)
  {
  }

  else
  {
    subtitleShort3 = [(MRContentItemMetadata *)equalCopy subtitleShort];
    subtitleShort4 = [(MRContentItemMetadata *)self subtitleShort];
    v206 = [subtitleShort3 isEqualToString:subtitleShort4];

    if (!v206)
    {
      goto LABEL_428;
    }
  }

  classicalWork = [(MRContentItemMetadata *)equalCopy classicalWork];
  classicalWork2 = [(MRContentItemMetadata *)self classicalWork];
  v209 = classicalWork2;
  if (classicalWork == classicalWork2)
  {
  }

  else
  {
    classicalWork3 = [(MRContentItemMetadata *)equalCopy classicalWork];
    classicalWork4 = [(MRContentItemMetadata *)self classicalWork];
    v212 = [classicalWork3 isEqualToString:classicalWork4];

    if (!v212)
    {
      goto LABEL_428;
    }
  }

  albumName = [(MRContentItemMetadata *)equalCopy albumName];
  albumName2 = [(MRContentItemMetadata *)self albumName];
  v215 = albumName2;
  if (albumName == albumName2)
  {
  }

  else
  {
    albumName3 = [(MRContentItemMetadata *)equalCopy albumName];
    albumName4 = [(MRContentItemMetadata *)self albumName];
    v218 = [albumName3 isEqualToString:albumName4];

    if (!v218)
    {
      goto LABEL_428;
    }
  }

  trackArtistName = [(MRContentItemMetadata *)equalCopy trackArtistName];
  trackArtistName2 = [(MRContentItemMetadata *)self trackArtistName];
  v221 = trackArtistName2;
  if (trackArtistName == trackArtistName2)
  {
  }

  else
  {
    trackArtistName3 = [(MRContentItemMetadata *)equalCopy trackArtistName];
    trackArtistName4 = [(MRContentItemMetadata *)self trackArtistName];
    v224 = [trackArtistName3 isEqualToString:trackArtistName4];

    if (!v224)
    {
      goto LABEL_428;
    }
  }

  albumArtistName = [(MRContentItemMetadata *)equalCopy albumArtistName];
  albumArtistName2 = [(MRContentItemMetadata *)self albumArtistName];
  v227 = albumArtistName2;
  if (albumArtistName == albumArtistName2)
  {
  }

  else
  {
    albumArtistName3 = [(MRContentItemMetadata *)equalCopy albumArtistName];
    albumArtistName4 = [(MRContentItemMetadata *)self albumArtistName];
    v230 = [albumArtistName3 isEqualToString:albumArtistName4];

    if (!v230)
    {
      goto LABEL_428;
    }
  }

  directorName = [(MRContentItemMetadata *)equalCopy directorName];
  directorName2 = [(MRContentItemMetadata *)self directorName];
  v233 = directorName2;
  if (directorName == directorName2)
  {
  }

  else
  {
    directorName3 = [(MRContentItemMetadata *)equalCopy directorName];
    directorName4 = [(MRContentItemMetadata *)self directorName];
    v236 = [directorName3 isEqualToString:directorName4];

    if (!v236)
    {
      goto LABEL_428;
    }
  }

  localizedContentRating = [(MRContentItemMetadata *)equalCopy localizedContentRating];
  localizedContentRating2 = [(MRContentItemMetadata *)self localizedContentRating];
  v239 = localizedContentRating2;
  if (localizedContentRating == localizedContentRating2)
  {
  }

  else
  {
    localizedContentRating3 = [(MRContentItemMetadata *)equalCopy localizedContentRating];
    localizedContentRating4 = [(MRContentItemMetadata *)self localizedContentRating];
    v242 = [localizedContentRating3 isEqualToString:localizedContentRating4];

    if (!v242)
    {
      goto LABEL_428;
    }
  }

  collectionIdentifier = [(MRContentItemMetadata *)equalCopy collectionIdentifier];
  collectionIdentifier2 = [(MRContentItemMetadata *)self collectionIdentifier];
  v245 = collectionIdentifier2;
  if (collectionIdentifier == collectionIdentifier2)
  {
  }

  else
  {
    collectionIdentifier3 = [(MRContentItemMetadata *)equalCopy collectionIdentifier];
    collectionIdentifier4 = [(MRContentItemMetadata *)self collectionIdentifier];
    v248 = [collectionIdentifier3 isEqualToString:collectionIdentifier4];

    if (!v248)
    {
      goto LABEL_428;
    }
  }

  profileIdentifier = [(MRContentItemMetadata *)equalCopy profileIdentifier];
  profileIdentifier2 = [(MRContentItemMetadata *)self profileIdentifier];
  v251 = profileIdentifier2;
  if (profileIdentifier == profileIdentifier2)
  {
  }

  else
  {
    profileIdentifier3 = [(MRContentItemMetadata *)equalCopy profileIdentifier];
    profileIdentifier4 = [(MRContentItemMetadata *)self profileIdentifier];
    v254 = [profileIdentifier3 isEqualToString:profileIdentifier4];

    if (!v254)
    {
      goto LABEL_428;
    }
  }

  assetURL = [(MRContentItemMetadata *)equalCopy assetURL];
  assetURL2 = [(MRContentItemMetadata *)self assetURL];
  v257 = assetURL2;
  if (assetURL == assetURL2)
  {
  }

  else
  {
    assetURL3 = [(MRContentItemMetadata *)equalCopy assetURL];
    assetURL4 = [(MRContentItemMetadata *)self assetURL];
    v260 = [assetURL3 isEqual:assetURL4];

    if (!v260)
    {
      goto LABEL_428;
    }
  }

  composer = [(MRContentItemMetadata *)equalCopy composer];
  composer2 = [(MRContentItemMetadata *)self composer];
  v263 = composer2;
  if (composer == composer2)
  {
  }

  else
  {
    composer3 = [(MRContentItemMetadata *)equalCopy composer];
    composer4 = [(MRContentItemMetadata *)self composer];
    v266 = [composer3 isEqualToString:composer4];

    if (!v266)
    {
      goto LABEL_428;
    }
  }

  genre = [(MRContentItemMetadata *)equalCopy genre];
  genre2 = [(MRContentItemMetadata *)self genre];
  v269 = genre2;
  if (genre == genre2)
  {
  }

  else
  {
    genre3 = [(MRContentItemMetadata *)equalCopy genre];
    genre4 = [(MRContentItemMetadata *)self genre];
    v272 = [genre3 isEqualToString:genre4];

    if (!v272)
    {
      goto LABEL_428;
    }
  }

  contentIdentifier = [(MRContentItemMetadata *)equalCopy contentIdentifier];
  contentIdentifier2 = [(MRContentItemMetadata *)self contentIdentifier];
  v275 = contentIdentifier2;
  if (contentIdentifier == contentIdentifier2)
  {
  }

  else
  {
    contentIdentifier3 = [(MRContentItemMetadata *)equalCopy contentIdentifier];
    contentIdentifier4 = [(MRContentItemMetadata *)self contentIdentifier];
    v278 = [contentIdentifier3 isEqualToString:contentIdentifier4];

    if (!v278)
    {
      goto LABEL_428;
    }
  }

  internationalStandardRecordingCode = [(MRContentItemMetadata *)equalCopy internationalStandardRecordingCode];
  internationalStandardRecordingCode2 = [(MRContentItemMetadata *)self internationalStandardRecordingCode];
  v281 = internationalStandardRecordingCode2;
  if (internationalStandardRecordingCode == internationalStandardRecordingCode2)
  {
  }

  else
  {
    internationalStandardRecordingCode3 = [(MRContentItemMetadata *)equalCopy internationalStandardRecordingCode];
    internationalStandardRecordingCode4 = [(MRContentItemMetadata *)self internationalStandardRecordingCode];
    v284 = [internationalStandardRecordingCode3 isEqualToString:internationalStandardRecordingCode4];

    if (!v284)
    {
      goto LABEL_428;
    }
  }

  radioStationName = [(MRContentItemMetadata *)equalCopy radioStationName];
  radioStationName2 = [(MRContentItemMetadata *)self radioStationName];
  v287 = radioStationName2;
  if (radioStationName == radioStationName2)
  {
  }

  else
  {
    radioStationName3 = [(MRContentItemMetadata *)equalCopy radioStationName];
    radioStationName4 = [(MRContentItemMetadata *)self radioStationName];
    v290 = [radioStationName3 isEqualToString:radioStationName4];

    if (!v290)
    {
      goto LABEL_428;
    }
  }

  radioStationString = [(MRContentItemMetadata *)equalCopy radioStationString];
  radioStationString2 = [(MRContentItemMetadata *)self radioStationString];
  v293 = radioStationString2;
  if (radioStationString == radioStationString2)
  {
  }

  else
  {
    radioStationString3 = [(MRContentItemMetadata *)equalCopy radioStationString];
    radioStationString4 = [(MRContentItemMetadata *)self radioStationString];
    v296 = [radioStationString3 isEqualToString:radioStationString4];

    if (!v296)
    {
      goto LABEL_428;
    }
  }

  seriesName = [(MRContentItemMetadata *)equalCopy seriesName];
  seriesName2 = [(MRContentItemMetadata *)self seriesName];
  v299 = seriesName2;
  if (seriesName == seriesName2)
  {
  }

  else
  {
    seriesName3 = [(MRContentItemMetadata *)equalCopy seriesName];
    seriesName4 = [(MRContentItemMetadata *)self seriesName];
    v302 = [seriesName3 isEqualToString:seriesName4];

    if (!v302)
    {
      goto LABEL_428;
    }
  }

  lyricsURL = [(MRContentItemMetadata *)equalCopy lyricsURL];
  lyricsURL2 = [(MRContentItemMetadata *)self lyricsURL];
  v305 = lyricsURL2;
  if (lyricsURL == lyricsURL2)
  {
  }

  else
  {
    lyricsURL3 = [(MRContentItemMetadata *)equalCopy lyricsURL];
    lyricsURL4 = [(MRContentItemMetadata *)self lyricsURL];
    v308 = [lyricsURL3 isEqual:lyricsURL4];

    if (!v308)
    {
      goto LABEL_428;
    }
  }

  serviceIdentifier = [(MRContentItemMetadata *)equalCopy serviceIdentifier];
  serviceIdentifier2 = [(MRContentItemMetadata *)self serviceIdentifier];
  v311 = serviceIdentifier2;
  if (serviceIdentifier == serviceIdentifier2)
  {
  }

  else
  {
    serviceIdentifier3 = [(MRContentItemMetadata *)equalCopy serviceIdentifier];
    serviceIdentifier4 = [(MRContentItemMetadata *)self serviceIdentifier];
    v314 = [serviceIdentifier3 isEqualToString:serviceIdentifier4];

    if (!v314)
    {
      goto LABEL_428;
    }
  }

  brandIdentifier = [(MRContentItemMetadata *)equalCopy brandIdentifier];
  brandIdentifier2 = [(MRContentItemMetadata *)self brandIdentifier];
  v317 = brandIdentifier2;
  if (brandIdentifier == brandIdentifier2)
  {
  }

  else
  {
    brandIdentifier3 = [(MRContentItemMetadata *)equalCopy brandIdentifier];
    brandIdentifier4 = [(MRContentItemMetadata *)self brandIdentifier];
    v320 = [brandIdentifier3 isEqualToString:brandIdentifier4];

    if (!v320)
    {
      goto LABEL_428;
    }
  }

  durationStringLocalizationKey = [(MRContentItemMetadata *)equalCopy durationStringLocalizationKey];
  durationStringLocalizationKey2 = [(MRContentItemMetadata *)self durationStringLocalizationKey];
  v323 = durationStringLocalizationKey2;
  if (durationStringLocalizationKey == durationStringLocalizationKey2)
  {
  }

  else
  {
    durationStringLocalizationKey3 = [(MRContentItemMetadata *)equalCopy durationStringLocalizationKey];
    durationStringLocalizationKey4 = [(MRContentItemMetadata *)self durationStringLocalizationKey];
    v326 = [durationStringLocalizationKey3 isEqualToString:durationStringLocalizationKey4];

    if (!v326)
    {
      goto LABEL_428;
    }
  }

  localizedDurationString = [(MRContentItemMetadata *)equalCopy localizedDurationString];
  localizedDurationString2 = [(MRContentItemMetadata *)self localizedDurationString];
  v329 = localizedDurationString2;
  if (localizedDurationString == localizedDurationString2)
  {
  }

  else
  {
    localizedDurationString3 = [(MRContentItemMetadata *)equalCopy localizedDurationString];
    localizedDurationString4 = [(MRContentItemMetadata *)self localizedDurationString];
    v332 = [localizedDurationString3 isEqualToString:localizedDurationString4];

    if (!v332)
    {
      goto LABEL_428;
    }
  }

  artworkIdentifier = [(MRContentItemMetadata *)equalCopy artworkIdentifier];
  artworkIdentifier2 = [(MRContentItemMetadata *)self artworkIdentifier];
  v335 = artworkIdentifier2;
  if (artworkIdentifier == artworkIdentifier2)
  {
  }

  else
  {
    artworkIdentifier3 = [(MRContentItemMetadata *)equalCopy artworkIdentifier];
    artworkIdentifier4 = [(MRContentItemMetadata *)self artworkIdentifier];
    v338 = [artworkIdentifier3 isEqualToString:artworkIdentifier4];

    if (!v338)
    {
      goto LABEL_428;
    }
  }

  artworkMIMEType = [(MRContentItemMetadata *)equalCopy artworkMIMEType];
  artworkMIMEType2 = [(MRContentItemMetadata *)self artworkMIMEType];
  v341 = artworkMIMEType2;
  if (artworkMIMEType == artworkMIMEType2)
  {
  }

  else
  {
    artworkMIMEType3 = [(MRContentItemMetadata *)equalCopy artworkMIMEType];
    artworkMIMEType4 = [(MRContentItemMetadata *)self artworkMIMEType];
    v344 = [artworkMIMEType3 isEqualToString:artworkMIMEType4];

    if (!v344)
    {
      goto LABEL_428;
    }
  }

  artworkURL = [(MRContentItemMetadata *)equalCopy artworkURL];
  artworkURL2 = [(MRContentItemMetadata *)self artworkURL];
  v347 = artworkURL2;
  if (artworkURL == artworkURL2)
  {
  }

  else
  {
    artworkURL3 = [(MRContentItemMetadata *)equalCopy artworkURL];
    artworkURL4 = [(MRContentItemMetadata *)self artworkURL];
    v350 = [artworkURL3 isEqual:artworkURL4];

    if (!v350)
    {
      goto LABEL_428;
    }
  }

  artworkFileURL = [(MRContentItemMetadata *)equalCopy artworkFileURL];
  artworkFileURL2 = [(MRContentItemMetadata *)self artworkFileURL];
  v353 = artworkFileURL2;
  if (artworkFileURL == artworkFileURL2)
  {
  }

  else
  {
    artworkFileURL3 = [(MRContentItemMetadata *)equalCopy artworkFileURL];
    artworkFileURL4 = [(MRContentItemMetadata *)self artworkFileURL];
    v356 = [artworkFileURL3 isEqual:artworkFileURL4];

    if (!v356)
    {
      goto LABEL_428;
    }
  }

  artworkURLTemplates = [(MRContentItemMetadata *)equalCopy artworkURLTemplates];
  artworkURLTemplates2 = [(MRContentItemMetadata *)self artworkURLTemplates];
  v359 = artworkURLTemplates2;
  if (artworkURLTemplates == artworkURLTemplates2)
  {
  }

  else
  {
    artworkURLTemplates3 = [(MRContentItemMetadata *)equalCopy artworkURLTemplates];
    artworkURLTemplates4 = [(MRContentItemMetadata *)self artworkURLTemplates];
    v362 = [artworkURLTemplates3 isEqualToArray:artworkURLTemplates4];

    if (!v362)
    {
      goto LABEL_428;
    }
  }

  albumYear = [(MRContentItemMetadata *)equalCopy albumYear];
  albumYear2 = [(MRContentItemMetadata *)self albumYear];
  v365 = albumYear2;
  if (albumYear == albumYear2)
  {
  }

  else
  {
    albumYear3 = [(MRContentItemMetadata *)equalCopy albumYear];
    albumYear4 = [(MRContentItemMetadata *)self albumYear];
    v368 = [albumYear3 isEqualToString:albumYear4];

    if (!v368)
    {
      goto LABEL_428;
    }
  }

  participantName = [(MRContentItemMetadata *)equalCopy participantName];
  participantName2 = [(MRContentItemMetadata *)self participantName];
  v371 = participantName2;
  if (participantName == participantName2)
  {
  }

  else
  {
    participantName3 = [(MRContentItemMetadata *)equalCopy participantName];
    participantName4 = [(MRContentItemMetadata *)self participantName];
    v374 = [participantName3 isEqualToString:participantName4];

    if (!v374)
    {
      goto LABEL_428;
    }
  }

  participantIdentifier = [(MRContentItemMetadata *)equalCopy participantIdentifier];
  participantIdentifier2 = [(MRContentItemMetadata *)self participantIdentifier];
  v377 = participantIdentifier2;
  if (participantIdentifier == participantIdentifier2)
  {
  }

  else
  {
    participantIdentifier3 = [(MRContentItemMetadata *)equalCopy participantIdentifier];
    participantIdentifier4 = [(MRContentItemMetadata *)self participantIdentifier];
    v380 = [participantIdentifier3 isEqualToString:participantIdentifier4];

    if (!v380)
    {
      goto LABEL_428;
    }
  }

  hasIsResolvableParticipant = [(MRContentItemMetadata *)equalCopy hasIsResolvableParticipant];
  if (hasIsResolvableParticipant != [(MRContentItemMetadata *)self hasIsResolvableParticipant])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasIsResolvableParticipant])
  {
    if ([(MRContentItemMetadata *)self hasIsResolvableParticipant])
    {
      isResolvableParticipant = [(MRContentItemMetadata *)equalCopy isResolvableParticipant];
      if (isResolvableParticipant != [(MRContentItemMetadata *)self isResolvableParticipant])
      {
        goto LABEL_428;
      }
    }
  }

  hasExcludeFromSuggestions = [(MRContentItemMetadata *)equalCopy hasExcludeFromSuggestions];
  if (hasExcludeFromSuggestions != [(MRContentItemMetadata *)self hasExcludeFromSuggestions])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasExcludeFromSuggestions])
  {
    if ([(MRContentItemMetadata *)self hasExcludeFromSuggestions])
    {
      excludeFromSuggestions = [(MRContentItemMetadata *)equalCopy excludeFromSuggestions];
      if (excludeFromSuggestions != [(MRContentItemMetadata *)self excludeFromSuggestions])
      {
        goto LABEL_428;
      }
    }
  }

  preferredFormat = [(MRContentItemMetadata *)equalCopy preferredFormat];
  preferredFormat2 = [(MRContentItemMetadata *)self preferredFormat];
  v387 = preferredFormat2;
  if (preferredFormat == preferredFormat2)
  {
  }

  else
  {
    preferredFormat3 = [(MRContentItemMetadata *)equalCopy preferredFormat];
    preferredFormat4 = [(MRContentItemMetadata *)self preferredFormat];
    v390 = [preferredFormat3 isEqual:preferredFormat4];

    if (!v390)
    {
      goto LABEL_428;
    }
  }

  activeFormat = [(MRContentItemMetadata *)equalCopy activeFormat];
  activeFormat2 = [(MRContentItemMetadata *)self activeFormat];
  v393 = activeFormat2;
  if (activeFormat == activeFormat2)
  {
  }

  else
  {
    activeFormat3 = [(MRContentItemMetadata *)equalCopy activeFormat];
    activeFormat4 = [(MRContentItemMetadata *)self activeFormat];
    v396 = [activeFormat3 isEqual:activeFormat4];

    if (!v396)
    {
      goto LABEL_428;
    }
  }

  audioRoute = [(MRContentItemMetadata *)equalCopy audioRoute];
  audioRoute2 = [(MRContentItemMetadata *)self audioRoute];
  v399 = audioRoute2;
  if (audioRoute == audioRoute2)
  {
  }

  else
  {
    audioRoute3 = [(MRContentItemMetadata *)equalCopy audioRoute];
    audioRoute4 = [(MRContentItemMetadata *)self audioRoute];
    v402 = [audioRoute3 isEqual:audioRoute4];

    if (!v402)
    {
      goto LABEL_428;
    }
  }

  alternativeFormats = [(MRContentItemMetadata *)equalCopy alternativeFormats];
  alternativeFormats2 = [(MRContentItemMetadata *)self alternativeFormats];
  v405 = alternativeFormats2;
  if (alternativeFormats == alternativeFormats2)
  {

    goto LABEL_415;
  }

  alternativeFormats3 = [(MRContentItemMetadata *)equalCopy alternativeFormats];
  alternativeFormats4 = [(MRContentItemMetadata *)self alternativeFormats];
  v408 = [alternativeFormats3 isEqual:alternativeFormats4];

  if (!v408)
  {
LABEL_428:
    v415 = 0;
    goto LABEL_429;
  }

LABEL_415:
  hasReportingAdamID = [(MRContentItemMetadata *)equalCopy hasReportingAdamID];
  if (hasReportingAdamID != [(MRContentItemMetadata *)self hasReportingAdamID])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasReportingAdamID])
  {
    if ([(MRContentItemMetadata *)self hasReportingAdamID])
    {
      reportingAdamID = [(MRContentItemMetadata *)equalCopy reportingAdamID];
      if (reportingAdamID != [(MRContentItemMetadata *)self reportingAdamID])
      {
        goto LABEL_428;
      }
    }
  }

  hasLyricsAdamID = [(MRContentItemMetadata *)equalCopy hasLyricsAdamID];
  if (hasLyricsAdamID != [(MRContentItemMetadata *)self hasLyricsAdamID])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasLyricsAdamID])
  {
    if ([(MRContentItemMetadata *)self hasLyricsAdamID])
    {
      lyricsAdamID = [(MRContentItemMetadata *)equalCopy lyricsAdamID];
      if (lyricsAdamID != [(MRContentItemMetadata *)self lyricsAdamID])
      {
        goto LABEL_428;
      }
    }
  }

  hasITunesStoreAlbumArtistIdentifier = [(MRContentItemMetadata *)equalCopy hasITunesStoreAlbumArtistIdentifier];
  if (hasITunesStoreAlbumArtistIdentifier != [(MRContentItemMetadata *)self hasITunesStoreAlbumArtistIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)equalCopy hasITunesStoreAlbumArtistIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasITunesStoreAlbumArtistIdentifier])
    {
      iTunesStoreAlbumArtistIdentifier = [(MRContentItemMetadata *)equalCopy iTunesStoreAlbumArtistIdentifier];
      if (iTunesStoreAlbumArtistIdentifier != [(MRContentItemMetadata *)self iTunesStoreAlbumArtistIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

LABEL_427:
  v415 = 1;
LABEL_429:

  return v415;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  dictionaryRepresentation = [(MRContentItemMetadata *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, dictionaryRepresentation];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if ([(MRContentItemMetadata *)self hasContainer])
  {
    [v5 setContainer:{-[MRContentItemMetadata isContainer](self, "isContainer")}];
  }

  if ([(MRContentItemMetadata *)self hasPlayable])
  {
    [v5 setPlayable:{-[MRContentItemMetadata isPlayable](self, "isPlayable")}];
  }

  if ([(MRContentItemMetadata *)self hasExplicitItem])
  {
    [v5 setExplicitItem:{-[MRContentItemMetadata isExplicitItem](self, "isExplicitItem")}];
  }

  if ([(MRContentItemMetadata *)self hasStreamingContent])
  {
    [v5 setStreamingContent:{-[MRContentItemMetadata isStreamingContent](self, "isStreamingContent")}];
  }

  if ([(MRContentItemMetadata *)self hasCurrentlyPlaying])
  {
    [v5 setCurrentlyPlaying:{-[MRContentItemMetadata isCurrentlyPlaying](self, "isCurrentlyPlaying")}];
  }

  if ([(MRContentItemMetadata *)self hasAlwaysLive])
  {
    [v5 setAlwaysLive:{-[MRContentItemMetadata isAlwaysLive](self, "isAlwaysLive")}];
  }

  if ([(MRContentItemMetadata *)self hasSharable])
  {
    [v5 setSharable:{-[MRContentItemMetadata isSharable](self, "isSharable")}];
  }

  if ([(MRContentItemMetadata *)self hasLiked])
  {
    [v5 setLiked:{-[MRContentItemMetadata isLiked](self, "isLiked")}];
  }

  if ([(MRContentItemMetadata *)self hasInWishList])
  {
    [v5 setInWishList:{-[MRContentItemMetadata isInWishList](self, "isInWishList")}];
  }

  if ([(MRContentItemMetadata *)self hasAdvertisement])
  {
    [v5 setAdvertisement:{-[MRContentItemMetadata isAdvertisement](self, "isAdvertisement")}];
  }

  if ([(MRContentItemMetadata *)self hasSteerable])
  {
    [v5 setSteerable:{-[MRContentItemMetadata isSteerable](self, "isSteerable")}];
  }

  if ([(MRContentItemMetadata *)self hasLoading])
  {
    [v5 setLoading:{-[MRContentItemMetadata isLoading](self, "isLoading")}];
  }

  if ([(MRContentItemMetadata *)self hasInTransition])
  {
    [v5 setInTransition:{-[MRContentItemMetadata isInTransition](self, "isInTransition")}];
  }

  if ([(MRContentItemMetadata *)self hasArtworkAvailable])
  {
    [v5 setArtworkAvailable:{-[MRContentItemMetadata artworkAvailable](self, "artworkAvailable")}];
  }

  if ([(MRContentItemMetadata *)self hasInfoAvailable])
  {
    [v5 setInfoAvailable:{-[MRContentItemMetadata infoAvailable](self, "infoAvailable")}];
  }

  if ([(MRContentItemMetadata *)self hasTranscriptAlignmentsAvailable])
  {
    [v5 setTranscriptAlignmentsAvailable:{-[MRContentItemMetadata transcriptAlignmentsAvailable](self, "transcriptAlignmentsAvailable")}];
  }

  if ([(MRContentItemMetadata *)self hasLanguageOptionsAvailable])
  {
    [v5 setLanguageOptionsAvailable:{-[MRContentItemMetadata languageOptionsAvailable](self, "languageOptionsAvailable")}];
  }

  if ([(MRContentItemMetadata *)self hasLyricsAvailable])
  {
    [v5 setLyricsAvailable:{-[MRContentItemMetadata lyricsAvailable](self, "lyricsAvailable")}];
  }

  if ([(MRContentItemMetadata *)self hasPlaybackProgress])
  {
    [(MRContentItemMetadata *)self playbackProgress];
    [v5 setPlaybackProgress:?];
  }

  if ([(MRContentItemMetadata *)self hasPlaybackRate])
  {
    [(MRContentItemMetadata *)self playbackRate];
    [v5 setPlaybackRate:?];
  }

  if ([(MRContentItemMetadata *)self hasDefaultPlaybackRate])
  {
    [(MRContentItemMetadata *)self defaultPlaybackRate];
    [v5 setDefaultPlaybackRate:?];
  }

  if ([(MRContentItemMetadata *)self hasDownloadProgress])
  {
    [(MRContentItemMetadata *)self downloadProgress];
    [v5 setDownloadProgress:?];
  }

  if ([(MRContentItemMetadata *)self hasPlaylistType])
  {
    [v5 setPlaylistType:{-[MRContentItemMetadata playlistType](self, "playlistType")}];
  }

  if ([(MRContentItemMetadata *)self hasRadioStationType])
  {
    [v5 setRadioStationType:{-[MRContentItemMetadata radioStationType](self, "radioStationType")}];
  }

  if ([(MRContentItemMetadata *)self hasEditingStyleFlags])
  {
    [v5 setEditingStyleFlags:{-[MRContentItemMetadata editingStyleFlags](self, "editingStyleFlags")}];
  }

  if ([(MRContentItemMetadata *)self hasMediaType])
  {
    [v5 setMediaType:{-[MRContentItemMetadata mediaType](self, "mediaType")}];
  }

  if ([(MRContentItemMetadata *)self hasMediaSubType])
  {
    [v5 setMediaSubType:{-[MRContentItemMetadata mediaSubType](self, "mediaSubType")}];
  }

  if ([(MRContentItemMetadata *)self hasEpisodeType])
  {
    [v5 setEpisodeType:{-[MRContentItemMetadata episodeType](self, "episodeType")}];
  }

  if ([(MRContentItemMetadata *)self hasPlayCount])
  {
    [v5 setPlayCount:{-[MRContentItemMetadata playCount](self, "playCount")}];
  }

  if ([(MRContentItemMetadata *)self hasNumberOfSections])
  {
    [v5 setNumberOfSections:{-[MRContentItemMetadata numberOfSections](self, "numberOfSections")}];
  }

  if ([(MRContentItemMetadata *)self hasChapterCount])
  {
    [v5 setChapterCount:{-[MRContentItemMetadata chapterCount](self, "chapterCount")}];
  }

  if ([(MRContentItemMetadata *)self hasTotalDiscCount])
  {
    [v5 setTotalDiscCount:{-[MRContentItemMetadata totalDiscCount](self, "totalDiscCount")}];
  }

  if ([(MRContentItemMetadata *)self hasTotalTrackCount])
  {
    [v5 setTotalTrackCount:{-[MRContentItemMetadata totalTrackCount](self, "totalTrackCount")}];
  }

  if ([(MRContentItemMetadata *)self hasDownloadState])
  {
    [v5 setDownloadState:{-[MRContentItemMetadata downloadState](self, "downloadState")}];
  }

  if ([(MRContentItemMetadata *)self hasArtworkDataWidthDeprecated])
  {
    [v5 setArtworkDataWidthDeprecated:{-[MRContentItemMetadata artworkDataWidthDeprecated](self, "artworkDataWidthDeprecated")}];
  }

  if ([(MRContentItemMetadata *)self hasArtworkDataHeightDeprecated])
  {
    [v5 setArtworkDataHeightDeprecated:{-[MRContentItemMetadata artworkDataHeightDeprecated](self, "artworkDataHeightDeprecated")}];
  }

  if ([(MRContentItemMetadata *)self hasDuration])
  {
    [(MRContentItemMetadata *)self duration];
    [v5 setDuration:?];
  }

  if ([(MRContentItemMetadata *)self hasStartTime])
  {
    [(MRContentItemMetadata *)self startTime];
    [v5 setStartTime:?];
  }

  if ([(MRContentItemMetadata *)self hasElapsedTime])
  {
    [(MRContentItemMetadata *)self elapsedTime];
    [v5 setElapsedTime:?];
  }

  if ([(MRContentItemMetadata *)self hasElapsedTimeTimestamp])
  {
    [(MRContentItemMetadata *)self elapsedTimeTimestamp];
    [v5 setElapsedTimeTimestamp:?];
  }

  if ([(MRContentItemMetadata *)self hasInferredTimestamp])
  {
    [(MRContentItemMetadata *)self inferredTimestamp];
    [v5 setInferredTimestamp:?];
  }

  if ([(MRContentItemMetadata *)self hasSeasonNumber])
  {
    [v5 setSeasonNumber:{-[MRContentItemMetadata seasonNumber](self, "seasonNumber")}];
  }

  if ([(MRContentItemMetadata *)self hasEpisodeNumber])
  {
    [v5 setEpisodeNumber:{-[MRContentItemMetadata episodeNumber](self, "episodeNumber")}];
  }

  if ([(MRContentItemMetadata *)self hasDiscNumber])
  {
    [v5 setDiscNumber:{-[MRContentItemMetadata discNumber](self, "discNumber")}];
  }

  if ([(MRContentItemMetadata *)self hasTrackNumber])
  {
    [v5 setTrackNumber:{-[MRContentItemMetadata trackNumber](self, "trackNumber")}];
  }

  if ([(MRContentItemMetadata *)self hasRadioStationIdentifier])
  {
    [v5 setRadioStationIdentifier:{-[MRContentItemMetadata radioStationIdentifier](self, "radioStationIdentifier")}];
  }

  if ([(MRContentItemMetadata *)self hasITunesStoreIdentifier])
  {
    [v5 setITunesStoreIdentifier:{-[MRContentItemMetadata iTunesStoreIdentifier](self, "iTunesStoreIdentifier")}];
  }

  if ([(MRContentItemMetadata *)self hasITunesStoreSubscriptionIdentifier])
  {
    [v5 setITunesStoreSubscriptionIdentifier:{-[MRContentItemMetadata iTunesStoreSubscriptionIdentifier](self, "iTunesStoreSubscriptionIdentifier")}];
  }

  if ([(MRContentItemMetadata *)self hasITunesStoreArtistIdentifier])
  {
    [v5 setITunesStoreArtistIdentifier:{-[MRContentItemMetadata iTunesStoreArtistIdentifier](self, "iTunesStoreArtistIdentifier")}];
  }

  if ([(MRContentItemMetadata *)self hasITunesStoreAlbumIdentifier])
  {
    [v5 setITunesStoreAlbumIdentifier:{-[MRContentItemMetadata iTunesStoreAlbumIdentifier](self, "iTunesStoreAlbumIdentifier")}];
  }

  if ([(MRContentItemMetadata *)self hasLegacyUniqueIdentifier])
  {
    [v5 setLegacyUniqueIdentifier:{-[MRContentItemMetadata legacyUniqueIdentifier](self, "legacyUniqueIdentifier")}];
  }

  if ([(MRContentItemMetadata *)self hasSongTraits])
  {
    [v5 setSongTraits:{-[MRContentItemMetadata songTraits](self, "songTraits")}];
  }

  if ([(MRContentItemMetadata *)self hasAlbumTraits])
  {
    [v5 setAlbumTraits:{-[MRContentItemMetadata albumTraits](self, "albumTraits")}];
  }

  if ([(MRContentItemMetadata *)self hasPlaylistTraits])
  {
    [v5 setPlaylistTraits:{-[MRContentItemMetadata playlistTraits](self, "playlistTraits")}];
  }

  if ([(MRContentItemMetadata *)self hasActiveFormatJustification])
  {
    [v5 setActiveFormatJustification:{-[MRContentItemMetadata activeFormatJustification](self, "activeFormatJustification")}];
  }

  if ([(MRContentItemMetadata *)self hasFormatTierPreference])
  {
    [v5 setFormatTierPreference:{-[MRContentItemMetadata formatTierPreference](self, "formatTierPreference")}];
  }

  purchaseInfoData = [(MRContentItemMetadata *)self purchaseInfoData];
  v7 = [purchaseInfoData copyWithZone:zone];
  [v5 setPurchaseInfoData:v7];

  appMetrics = [(MRContentItemMetadata *)self appMetrics];
  v9 = [appMetrics copyWithZone:zone];
  [v5 setAppMetrics:v9];

  nowPlayingInfo = [(MRContentItemMetadata *)self nowPlayingInfo];
  v11 = [nowPlayingInfo copyWithZone:zone];
  [v5 setNowPlayingInfo:v11];

  userInfo = [(MRContentItemMetadata *)self userInfo];
  v13 = [userInfo copyWithZone:zone];
  [v5 setUserInfo:v13];

  deviceSpecificUserInfo = [(MRContentItemMetadata *)self deviceSpecificUserInfo];
  v15 = [deviceSpecificUserInfo copyWithZone:zone];
  [v5 setDeviceSpecificUserInfo:v15];

  collectionInfo = [(MRContentItemMetadata *)self collectionInfo];
  v17 = [collectionInfo copyWithZone:zone];
  [v5 setCollectionInfo:v17];

  transitionInfo = [(MRContentItemMetadata *)self transitionInfo];
  v19 = [transitionInfo copyWithZone:zone];
  [v5 setTransitionInfo:v19];

  releaseDate = [(MRContentItemMetadata *)self releaseDate];
  v21 = [releaseDate copyWithZone:zone];
  [v5 setReleaseDate:v21];

  currentPlaybackDate = [(MRContentItemMetadata *)self currentPlaybackDate];
  v23 = [currentPlaybackDate copyWithZone:zone];
  [v5 setCurrentPlaybackDate:v23];

  title = [(MRContentItemMetadata *)self title];
  v25 = [title copyWithZone:zone];
  [v5 setTitle:v25];

  subtitle = [(MRContentItemMetadata *)self subtitle];
  v27 = [subtitle copyWithZone:zone];
  [v5 setSubtitle:v27];

  subtitleShort = [(MRContentItemMetadata *)self subtitleShort];
  v29 = [subtitleShort copyWithZone:zone];
  [v5 setSubtitleShort:v29];

  classicalWork = [(MRContentItemMetadata *)self classicalWork];
  v31 = [classicalWork copyWithZone:zone];
  [v5 setClassicalWork:v31];

  albumName = [(MRContentItemMetadata *)self albumName];
  v33 = [albumName copyWithZone:zone];
  [v5 setAlbumName:v33];

  trackArtistName = [(MRContentItemMetadata *)self trackArtistName];
  v35 = [trackArtistName copyWithZone:zone];
  [v5 setTrackArtistName:v35];

  albumArtistName = [(MRContentItemMetadata *)self albumArtistName];
  v37 = [albumArtistName copyWithZone:zone];
  [v5 setAlbumArtistName:v37];

  directorName = [(MRContentItemMetadata *)self directorName];
  v39 = [directorName copyWithZone:zone];
  [v5 setDirectorName:v39];

  localizedContentRating = [(MRContentItemMetadata *)self localizedContentRating];
  v41 = [localizedContentRating copyWithZone:zone];
  [v5 setLocalizedContentRating:v41];

  collectionIdentifier = [(MRContentItemMetadata *)self collectionIdentifier];
  v43 = [collectionIdentifier copyWithZone:zone];
  [v5 setCollectionIdentifier:v43];

  profileIdentifier = [(MRContentItemMetadata *)self profileIdentifier];
  v45 = [profileIdentifier copyWithZone:zone];
  [v5 setProfileIdentifier:v45];

  assetURL = [(MRContentItemMetadata *)self assetURL];
  v47 = [assetURL copyWithZone:zone];
  [v5 setAssetURL:v47];

  composer = [(MRContentItemMetadata *)self composer];
  v49 = [composer copyWithZone:zone];
  [v5 setComposer:v49];

  genre = [(MRContentItemMetadata *)self genre];
  v51 = [genre copyWithZone:zone];
  [v5 setGenre:v51];

  contentIdentifier = [(MRContentItemMetadata *)self contentIdentifier];
  v53 = [contentIdentifier copyWithZone:zone];
  [v5 setContentIdentifier:v53];

  radioStationName = [(MRContentItemMetadata *)self radioStationName];
  v55 = [radioStationName copyWithZone:zone];
  [v5 setRadioStationName:v55];

  radioStationString = [(MRContentItemMetadata *)self radioStationString];
  v57 = [radioStationString copyWithZone:zone];
  [v5 setRadioStationString:v57];

  seriesName = [(MRContentItemMetadata *)self seriesName];
  v59 = [seriesName copyWithZone:zone];
  [v5 setSeriesName:v59];

  lyricsURL = [(MRContentItemMetadata *)self lyricsURL];
  v61 = [lyricsURL copyWithZone:zone];
  [v5 setLyricsURL:v61];

  serviceIdentifier = [(MRContentItemMetadata *)self serviceIdentifier];
  v63 = [serviceIdentifier copyWithZone:zone];
  [v5 setServiceIdentifier:v63];

  brandIdentifier = [(MRContentItemMetadata *)self brandIdentifier];
  v65 = [brandIdentifier copyWithZone:zone];
  [v5 setBrandIdentifier:v65];

  localizedDurationString = [(MRContentItemMetadata *)self localizedDurationString];
  v67 = [localizedDurationString copyWithZone:zone];
  [v5 setLocalizedDurationString:v67];

  durationStringLocalizationKey = [(MRContentItemMetadata *)self durationStringLocalizationKey];
  v69 = [durationStringLocalizationKey copyWithZone:zone];
  [v5 setDurationStringLocalizationKey:v69];

  artworkIdentifier = [(MRContentItemMetadata *)self artworkIdentifier];
  v71 = [artworkIdentifier copyWithZone:zone];
  [v5 setArtworkIdentifier:v71];

  artworkMIMEType = [(MRContentItemMetadata *)self artworkMIMEType];
  v73 = [artworkMIMEType copyWithZone:zone];
  [v5 setArtworkMIMEType:v73];

  artworkURL = [(MRContentItemMetadata *)self artworkURL];
  v75 = [artworkURL copyWithZone:zone];
  [v5 setArtworkURL:v75];

  artworkFileURL = [(MRContentItemMetadata *)self artworkFileURL];
  v77 = [artworkFileURL copyWithZone:zone];
  [v5 setArtworkFileURL:v77];

  artworkURLTemplates = [(MRContentItemMetadata *)self artworkURLTemplates];
  v79 = [artworkURLTemplates copyWithZone:zone];
  [v5 setArtworkURLTemplates:v79];

  albumYear = [(MRContentItemMetadata *)self albumYear];
  v81 = [albumYear copyWithZone:zone];
  [v5 setAlbumYear:v81];

  participantName = [(MRContentItemMetadata *)self participantName];
  v83 = [participantName copyWithZone:zone];
  [v5 setParticipantName:v83];

  participantIdentifier = [(MRContentItemMetadata *)self participantIdentifier];
  v85 = [participantIdentifier copyWithZone:zone];
  [v5 setParticipantIdentifier:v85];

  if ([(MRContentItemMetadata *)self hasIsResolvableParticipant])
  {
    [v5 setIsResolvableParticipant:{-[MRContentItemMetadata isResolvableParticipant](self, "isResolvableParticipant")}];
  }

  if ([(MRContentItemMetadata *)self hasExcludeFromSuggestions])
  {
    [v5 setExcludeFromSuggestions:{-[MRContentItemMetadata excludeFromSuggestions](self, "excludeFromSuggestions")}];
  }

  preferredFormat = [(MRContentItemMetadata *)self preferredFormat];
  v87 = [preferredFormat copyWithZone:zone];
  [v5 setPreferredFormat:v87];

  activeFormat = [(MRContentItemMetadata *)self activeFormat];
  v89 = [activeFormat copyWithZone:zone];
  [v5 setActiveFormat:v89];

  audioRoute = [(MRContentItemMetadata *)self audioRoute];
  v91 = [audioRoute copyWithZone:zone];
  [v5 setAudioRoute:v91];

  alternativeFormats = [(MRContentItemMetadata *)self alternativeFormats];
  if (alternativeFormats)
  {
    v93 = objc_alloc(MEMORY[0x1E695DEC8]);
    alternativeFormats2 = [(MRContentItemMetadata *)self alternativeFormats];
    v95 = [v93 initWithArray:alternativeFormats2 copyItems:1];
    [v5 setAlternativeFormats:v95];
  }

  else
  {
    [v5 setAlternativeFormats:0];
  }

  internationalStandardRecordingCode = [(MRContentItemMetadata *)self internationalStandardRecordingCode];
  v97 = [internationalStandardRecordingCode copyWithZone:zone];
  [v5 setInternationalStandardRecordingCode:v97];

  if ([(MRContentItemMetadata *)self hasReportingAdamID])
  {
    [v5 setReportingAdamID:{-[MRContentItemMetadata reportingAdamID](self, "reportingAdamID")}];
  }

  if ([(MRContentItemMetadata *)self hasLyricsAdamID])
  {
    [v5 setLyricsAdamID:{-[MRContentItemMetadata lyricsAdamID](self, "lyricsAdamID")}];
  }

  if ([(MRContentItemMetadata *)self hasITunesStoreAlbumArtistIdentifier])
  {
    [v5 setITunesStoreAlbumArtistIdentifier:{-[MRContentItemMetadata iTunesStoreAlbumArtistIdentifier](self, "iTunesStoreAlbumArtistIdentifier")}];
  }

  v98 = v5;

  return v98;
}

- (double)calculatedPlaybackPositionFromDate:(id)date
{
  dateCopy = date;
  if ([(MRContentItemMetadata *)self hasInferredTimestamp]|| (v5 = 0.0, [(MRContentItemMetadata *)self hasElapsedTimeTimestamp]))
  {
    if ([(MRContentItemMetadata *)self hasElapsedTimeTimestamp])
    {
      [(MRContentItemMetadata *)self elapsedTimeTimestamp];
    }

    else
    {
      [(MRContentItemMetadata *)self inferredTimestamp];
    }

    v7 = v6;
    v8 = 1.0;
    if ([(MRContentItemMetadata *)self hasPlaybackRate])
    {
      [(MRContentItemMetadata *)self playbackRate];
      v8 = v9;
    }

    [dateCopy timeIntervalSinceReferenceDate];
    v11 = v10 - v7;
    [(MRContentItemMetadata *)self elapsedTime];
    v5 = v12 + v11 * v8;
  }

  return v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (self != fromCopy)
  {
    if ([(MRContentItemMetadata *)fromCopy hasContainer])
    {
      [(MRContentItemMetadata *)self setContainer:[(MRContentItemMetadata *)fromCopy isContainer]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasPlayable])
    {
      [(MRContentItemMetadata *)self setPlayable:[(MRContentItemMetadata *)fromCopy isPlayable]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasExplicitItem])
    {
      [(MRContentItemMetadata *)self setExplicitItem:[(MRContentItemMetadata *)fromCopy isExplicitItem]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasStreamingContent])
    {
      [(MRContentItemMetadata *)self setStreamingContent:[(MRContentItemMetadata *)fromCopy isStreamingContent]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasCurrentlyPlaying])
    {
      [(MRContentItemMetadata *)self setCurrentlyPlaying:[(MRContentItemMetadata *)fromCopy isCurrentlyPlaying]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasAlwaysLive])
    {
      [(MRContentItemMetadata *)self setAlwaysLive:[(MRContentItemMetadata *)fromCopy isAlwaysLive]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasSharable])
    {
      [(MRContentItemMetadata *)self setSharable:[(MRContentItemMetadata *)fromCopy isSharable]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasLiked])
    {
      [(MRContentItemMetadata *)self setLiked:[(MRContentItemMetadata *)fromCopy isLiked]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasInWishList])
    {
      [(MRContentItemMetadata *)self setInWishList:[(MRContentItemMetadata *)fromCopy isInWishList]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasAdvertisement])
    {
      [(MRContentItemMetadata *)self setAdvertisement:[(MRContentItemMetadata *)fromCopy isAdvertisement]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasSteerable])
    {
      [(MRContentItemMetadata *)self setSteerable:[(MRContentItemMetadata *)fromCopy isSteerable]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasLoading])
    {
      [(MRContentItemMetadata *)self setLoading:[(MRContentItemMetadata *)fromCopy isLoading]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasInTransition])
    {
      [(MRContentItemMetadata *)self setInTransition:[(MRContentItemMetadata *)fromCopy isInTransition]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasArtworkAvailable])
    {
      [(MRContentItemMetadata *)self setArtworkAvailable:[(MRContentItemMetadata *)fromCopy artworkAvailable]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasInfoAvailable])
    {
      [(MRContentItemMetadata *)self setInfoAvailable:[(MRContentItemMetadata *)fromCopy infoAvailable]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasTranscriptAlignmentsAvailable])
    {
      [(MRContentItemMetadata *)self setTranscriptAlignmentsAvailable:[(MRContentItemMetadata *)fromCopy transcriptAlignmentsAvailable]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasLanguageOptionsAvailable])
    {
      [(MRContentItemMetadata *)self setLanguageOptionsAvailable:[(MRContentItemMetadata *)fromCopy languageOptionsAvailable]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasLyricsAvailable])
    {
      [(MRContentItemMetadata *)self setLyricsAvailable:[(MRContentItemMetadata *)fromCopy lyricsAvailable]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasPlaybackProgress])
    {
      [(MRContentItemMetadata *)fromCopy playbackProgress];
      [(MRContentItemMetadata *)self setPlaybackProgress:?];
    }

    if ([(MRContentItemMetadata *)fromCopy hasPlaybackRate])
    {
      [(MRContentItemMetadata *)fromCopy playbackRate];
      [(MRContentItemMetadata *)self setPlaybackRate:?];
    }

    if ([(MRContentItemMetadata *)fromCopy hasDefaultPlaybackRate])
    {
      [(MRContentItemMetadata *)fromCopy defaultPlaybackRate];
      [(MRContentItemMetadata *)self setDefaultPlaybackRate:?];
    }

    if ([(MRContentItemMetadata *)fromCopy hasDownloadProgress])
    {
      [(MRContentItemMetadata *)fromCopy downloadProgress];
      [(MRContentItemMetadata *)self setDownloadProgress:?];
    }

    if ([(MRContentItemMetadata *)fromCopy hasPlaylistType])
    {
      [(MRContentItemMetadata *)self setPlaylistType:[(MRContentItemMetadata *)fromCopy playlistType]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasRadioStationType])
    {
      [(MRContentItemMetadata *)self setRadioStationType:[(MRContentItemMetadata *)fromCopy radioStationType]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasEditingStyleFlags])
    {
      [(MRContentItemMetadata *)self setEditingStyleFlags:[(MRContentItemMetadata *)fromCopy editingStyleFlags]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasMediaType])
    {
      [(MRContentItemMetadata *)self setMediaType:[(MRContentItemMetadata *)fromCopy mediaType]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasMediaSubType])
    {
      [(MRContentItemMetadata *)self setMediaSubType:[(MRContentItemMetadata *)fromCopy mediaSubType]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasEpisodeType])
    {
      [(MRContentItemMetadata *)self setEpisodeType:[(MRContentItemMetadata *)fromCopy episodeType]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasPlayCount])
    {
      [(MRContentItemMetadata *)self setPlayCount:[(MRContentItemMetadata *)fromCopy playCount]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasNumberOfSections])
    {
      [(MRContentItemMetadata *)self setNumberOfSections:[(MRContentItemMetadata *)fromCopy numberOfSections]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasChapterCount])
    {
      [(MRContentItemMetadata *)self setChapterCount:[(MRContentItemMetadata *)fromCopy chapterCount]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasTotalDiscCount])
    {
      [(MRContentItemMetadata *)self setTotalDiscCount:[(MRContentItemMetadata *)fromCopy totalDiscCount]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasTotalTrackCount])
    {
      [(MRContentItemMetadata *)self setTotalTrackCount:[(MRContentItemMetadata *)fromCopy totalTrackCount]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasDownloadState])
    {
      [(MRContentItemMetadata *)self setDownloadState:[(MRContentItemMetadata *)fromCopy downloadState]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasArtworkDataWidthDeprecated])
    {
      [(MRContentItemMetadata *)self setArtworkDataWidthDeprecated:[(MRContentItemMetadata *)fromCopy artworkDataWidthDeprecated]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasArtworkDataHeightDeprecated])
    {
      [(MRContentItemMetadata *)self setArtworkDataHeightDeprecated:[(MRContentItemMetadata *)fromCopy artworkDataHeightDeprecated]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasDuration])
    {
      [(MRContentItemMetadata *)fromCopy duration];
      [(MRContentItemMetadata *)self setDuration:?];
    }

    if ([(MRContentItemMetadata *)fromCopy hasStartTime])
    {
      [(MRContentItemMetadata *)fromCopy startTime];
      [(MRContentItemMetadata *)self setStartTime:?];
    }

    if ([(MRContentItemMetadata *)fromCopy hasElapsedTime])
    {
      [(MRContentItemMetadata *)fromCopy elapsedTime];
      [(MRContentItemMetadata *)self setElapsedTime:?];
    }

    if ([(MRContentItemMetadata *)fromCopy hasElapsedTimeTimestamp])
    {
      [(MRContentItemMetadata *)fromCopy elapsedTimeTimestamp];
      [(MRContentItemMetadata *)self setElapsedTimeTimestamp:?];
    }

    if ([(MRContentItemMetadata *)fromCopy hasInferredTimestamp])
    {
      [(MRContentItemMetadata *)fromCopy inferredTimestamp];
      [(MRContentItemMetadata *)self setInferredTimestamp:?];
    }

    if ([(MRContentItemMetadata *)fromCopy hasSeasonNumber])
    {
      [(MRContentItemMetadata *)self setSeasonNumber:[(MRContentItemMetadata *)fromCopy seasonNumber]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasEpisodeNumber])
    {
      [(MRContentItemMetadata *)self setEpisodeNumber:[(MRContentItemMetadata *)fromCopy episodeNumber]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasDiscNumber])
    {
      [(MRContentItemMetadata *)self setDiscNumber:[(MRContentItemMetadata *)fromCopy discNumber]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasTrackNumber])
    {
      [(MRContentItemMetadata *)self setTrackNumber:[(MRContentItemMetadata *)fromCopy trackNumber]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasRadioStationIdentifier])
    {
      [(MRContentItemMetadata *)self setRadioStationIdentifier:[(MRContentItemMetadata *)fromCopy radioStationIdentifier]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasITunesStoreIdentifier])
    {
      [(MRContentItemMetadata *)self setITunesStoreIdentifier:[(MRContentItemMetadata *)fromCopy iTunesStoreIdentifier]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasITunesStoreSubscriptionIdentifier])
    {
      [(MRContentItemMetadata *)self setITunesStoreSubscriptionIdentifier:[(MRContentItemMetadata *)fromCopy iTunesStoreSubscriptionIdentifier]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasITunesStoreArtistIdentifier])
    {
      [(MRContentItemMetadata *)self setITunesStoreArtistIdentifier:[(MRContentItemMetadata *)fromCopy iTunesStoreArtistIdentifier]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasITunesStoreAlbumIdentifier])
    {
      [(MRContentItemMetadata *)self setITunesStoreAlbumIdentifier:[(MRContentItemMetadata *)fromCopy iTunesStoreAlbumIdentifier]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasLegacyUniqueIdentifier])
    {
      [(MRContentItemMetadata *)self setLegacyUniqueIdentifier:[(MRContentItemMetadata *)fromCopy legacyUniqueIdentifier]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasSongTraits])
    {
      [(MRContentItemMetadata *)self setSongTraits:[(MRContentItemMetadata *)fromCopy songTraits]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasAlbumTraits])
    {
      [(MRContentItemMetadata *)self setAlbumTraits:[(MRContentItemMetadata *)fromCopy albumTraits]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasPlaylistTraits])
    {
      [(MRContentItemMetadata *)self setPlaylistTraits:[(MRContentItemMetadata *)fromCopy playlistTraits]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasActiveFormatJustification])
    {
      [(MRContentItemMetadata *)self setActiveFormatJustification:[(MRContentItemMetadata *)fromCopy activeFormatJustification]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasFormatTierPreference])
    {
      [(MRContentItemMetadata *)self setFormatTierPreference:[(MRContentItemMetadata *)fromCopy formatTierPreference]];
    }

    purchaseInfoData = [(MRContentItemMetadata *)fromCopy purchaseInfoData];

    if (purchaseInfoData)
    {
      purchaseInfoData2 = [(MRContentItemMetadata *)fromCopy purchaseInfoData];
      [(MRContentItemMetadata *)self setPurchaseInfoData:purchaseInfoData2];
    }

    appMetrics = [(MRContentItemMetadata *)fromCopy appMetrics];

    if (appMetrics)
    {
      appMetrics2 = [(MRContentItemMetadata *)fromCopy appMetrics];
      [(MRContentItemMetadata *)self setAppMetrics:appMetrics2];
    }

    nowPlayingInfo = [(MRContentItemMetadata *)fromCopy nowPlayingInfo];

    if (nowPlayingInfo)
    {
      nowPlayingInfo2 = [(MRContentItemMetadata *)fromCopy nowPlayingInfo];
      [(MRContentItemMetadata *)self setNowPlayingInfo:nowPlayingInfo2];
    }

    userInfo = [(MRContentItemMetadata *)fromCopy userInfo];

    if (userInfo)
    {
      userInfo2 = [(MRContentItemMetadata *)fromCopy userInfo];
      [(MRContentItemMetadata *)self setUserInfo:userInfo2];
    }

    deviceSpecificUserInfo = [(MRContentItemMetadata *)fromCopy deviceSpecificUserInfo];

    if (deviceSpecificUserInfo)
    {
      deviceSpecificUserInfo2 = [(MRContentItemMetadata *)fromCopy deviceSpecificUserInfo];
      [(MRContentItemMetadata *)self setDeviceSpecificUserInfo:deviceSpecificUserInfo2];
    }

    collectionInfo = [(MRContentItemMetadata *)fromCopy collectionInfo];

    if (collectionInfo)
    {
      collectionInfo2 = [(MRContentItemMetadata *)fromCopy collectionInfo];
      [(MRContentItemMetadata *)self setCollectionInfo:collectionInfo2];
    }

    transitionInfo = [(MRContentItemMetadata *)fromCopy transitionInfo];

    if (transitionInfo)
    {
      transitionInfo2 = [(MRContentItemMetadata *)fromCopy transitionInfo];
      [(MRContentItemMetadata *)self setTransitionInfo:transitionInfo2];
    }

    releaseDate = [(MRContentItemMetadata *)fromCopy releaseDate];

    if (releaseDate)
    {
      releaseDate2 = [(MRContentItemMetadata *)fromCopy releaseDate];
      [(MRContentItemMetadata *)self setReleaseDate:releaseDate2];
    }

    currentPlaybackDate = [(MRContentItemMetadata *)fromCopy currentPlaybackDate];

    if (currentPlaybackDate)
    {
      currentPlaybackDate2 = [(MRContentItemMetadata *)fromCopy currentPlaybackDate];
      [(MRContentItemMetadata *)self setCurrentPlaybackDate:currentPlaybackDate2];
    }

    title = [(MRContentItemMetadata *)fromCopy title];

    if (title)
    {
      title2 = [(MRContentItemMetadata *)fromCopy title];
      [(MRContentItemMetadata *)self setTitle:title2];
    }

    subtitle = [(MRContentItemMetadata *)fromCopy subtitle];

    if (subtitle)
    {
      subtitle2 = [(MRContentItemMetadata *)fromCopy subtitle];
      [(MRContentItemMetadata *)self setSubtitle:subtitle2];
    }

    subtitleShort = [(MRContentItemMetadata *)fromCopy subtitleShort];

    if (subtitleShort)
    {
      subtitleShort2 = [(MRContentItemMetadata *)fromCopy subtitleShort];
      [(MRContentItemMetadata *)self setSubtitleShort:subtitleShort2];
    }

    classicalWork = [(MRContentItemMetadata *)fromCopy classicalWork];

    if (classicalWork)
    {
      classicalWork2 = [(MRContentItemMetadata *)fromCopy classicalWork];
      [(MRContentItemMetadata *)self setClassicalWork:classicalWork2];
    }

    albumName = [(MRContentItemMetadata *)fromCopy albumName];

    if (albumName)
    {
      albumName2 = [(MRContentItemMetadata *)fromCopy albumName];
      [(MRContentItemMetadata *)self setAlbumName:albumName2];
    }

    trackArtistName = [(MRContentItemMetadata *)fromCopy trackArtistName];

    if (trackArtistName)
    {
      trackArtistName2 = [(MRContentItemMetadata *)fromCopy trackArtistName];
      [(MRContentItemMetadata *)self setTrackArtistName:trackArtistName2];
    }

    albumArtistName = [(MRContentItemMetadata *)fromCopy albumArtistName];

    if (albumArtistName)
    {
      albumArtistName2 = [(MRContentItemMetadata *)fromCopy albumArtistName];
      [(MRContentItemMetadata *)self setAlbumArtistName:albumArtistName2];
    }

    directorName = [(MRContentItemMetadata *)fromCopy directorName];

    if (directorName)
    {
      directorName2 = [(MRContentItemMetadata *)fromCopy directorName];
      [(MRContentItemMetadata *)self setDirectorName:directorName2];
    }

    localizedContentRating = [(MRContentItemMetadata *)fromCopy localizedContentRating];

    if (localizedContentRating)
    {
      localizedContentRating2 = [(MRContentItemMetadata *)fromCopy localizedContentRating];
      [(MRContentItemMetadata *)self setLocalizedContentRating:localizedContentRating2];
    }

    collectionIdentifier = [(MRContentItemMetadata *)fromCopy collectionIdentifier];

    if (collectionIdentifier)
    {
      collectionIdentifier2 = [(MRContentItemMetadata *)fromCopy collectionIdentifier];
      [(MRContentItemMetadata *)self setCollectionIdentifier:collectionIdentifier2];
    }

    profileIdentifier = [(MRContentItemMetadata *)fromCopy profileIdentifier];

    if (profileIdentifier)
    {
      profileIdentifier2 = [(MRContentItemMetadata *)fromCopy profileIdentifier];
      [(MRContentItemMetadata *)self setProfileIdentifier:profileIdentifier2];
    }

    assetURL = [(MRContentItemMetadata *)fromCopy assetURL];

    if (assetURL)
    {
      assetURL2 = [(MRContentItemMetadata *)fromCopy assetURL];
      [(MRContentItemMetadata *)self setAssetURL:assetURL2];
    }

    composer = [(MRContentItemMetadata *)fromCopy composer];

    if (composer)
    {
      composer2 = [(MRContentItemMetadata *)fromCopy composer];
      [(MRContentItemMetadata *)self setComposer:composer2];
    }

    genre = [(MRContentItemMetadata *)fromCopy genre];

    if (genre)
    {
      genre2 = [(MRContentItemMetadata *)fromCopy genre];
      [(MRContentItemMetadata *)self setGenre:genre2];
    }

    contentIdentifier = [(MRContentItemMetadata *)fromCopy contentIdentifier];

    if (contentIdentifier)
    {
      contentIdentifier2 = [(MRContentItemMetadata *)fromCopy contentIdentifier];
      [(MRContentItemMetadata *)self setContentIdentifier:contentIdentifier2];
    }

    radioStationName = [(MRContentItemMetadata *)fromCopy radioStationName];

    if (radioStationName)
    {
      radioStationName2 = [(MRContentItemMetadata *)fromCopy radioStationName];
      [(MRContentItemMetadata *)self setRadioStationName:radioStationName2];
    }

    radioStationString = [(MRContentItemMetadata *)fromCopy radioStationString];

    if (radioStationString)
    {
      radioStationString2 = [(MRContentItemMetadata *)fromCopy radioStationString];
      [(MRContentItemMetadata *)self setRadioStationString:radioStationString2];
    }

    seriesName = [(MRContentItemMetadata *)fromCopy seriesName];

    if (seriesName)
    {
      seriesName2 = [(MRContentItemMetadata *)fromCopy seriesName];
      [(MRContentItemMetadata *)self setSeriesName:seriesName2];
    }

    lyricsURL = [(MRContentItemMetadata *)fromCopy lyricsURL];

    if (lyricsURL)
    {
      lyricsURL2 = [(MRContentItemMetadata *)fromCopy lyricsURL];
      [(MRContentItemMetadata *)self setLyricsURL:lyricsURL2];
    }

    serviceIdentifier = [(MRContentItemMetadata *)fromCopy serviceIdentifier];

    if (serviceIdentifier)
    {
      serviceIdentifier2 = [(MRContentItemMetadata *)fromCopy serviceIdentifier];
      [(MRContentItemMetadata *)self setServiceIdentifier:serviceIdentifier2];
    }

    brandIdentifier = [(MRContentItemMetadata *)fromCopy brandIdentifier];

    if (brandIdentifier)
    {
      brandIdentifier2 = [(MRContentItemMetadata *)fromCopy brandIdentifier];
      [(MRContentItemMetadata *)self setBrandIdentifier:brandIdentifier2];
    }

    localizedDurationString = [(MRContentItemMetadata *)fromCopy localizedDurationString];

    if (localizedDurationString)
    {
      localizedDurationString2 = [(MRContentItemMetadata *)fromCopy localizedDurationString];
      [(MRContentItemMetadata *)self setLocalizedDurationString:localizedDurationString2];
    }

    durationStringLocalizationKey = [(MRContentItemMetadata *)fromCopy durationStringLocalizationKey];

    if (durationStringLocalizationKey)
    {
      durationStringLocalizationKey2 = [(MRContentItemMetadata *)fromCopy durationStringLocalizationKey];
      [(MRContentItemMetadata *)self setDurationStringLocalizationKey:durationStringLocalizationKey2];
    }

    artworkIdentifier = [(MRContentItemMetadata *)fromCopy artworkIdentifier];

    if (artworkIdentifier)
    {
      artworkIdentifier2 = [(MRContentItemMetadata *)fromCopy artworkIdentifier];
      [(MRContentItemMetadata *)self setArtworkIdentifier:artworkIdentifier2];
    }

    artworkMIMEType = [(MRContentItemMetadata *)fromCopy artworkMIMEType];

    if (artworkMIMEType)
    {
      artworkMIMEType2 = [(MRContentItemMetadata *)fromCopy artworkMIMEType];
      [(MRContentItemMetadata *)self setArtworkMIMEType:artworkMIMEType2];
    }

    artworkURL = [(MRContentItemMetadata *)fromCopy artworkURL];

    if (artworkURL)
    {
      artworkURL2 = [(MRContentItemMetadata *)fromCopy artworkURL];
      [(MRContentItemMetadata *)self setArtworkURL:artworkURL2];
    }

    artworkFileURL = [(MRContentItemMetadata *)fromCopy artworkFileURL];

    if (artworkFileURL)
    {
      artworkFileURL2 = [(MRContentItemMetadata *)fromCopy artworkFileURL];
      [(MRContentItemMetadata *)self setArtworkFileURL:artworkFileURL2];
    }

    artworkURLTemplates = [(MRContentItemMetadata *)fromCopy artworkURLTemplates];

    if (artworkURLTemplates)
    {
      artworkURLTemplates2 = [(MRContentItemMetadata *)fromCopy artworkURLTemplates];
      [(MRContentItemMetadata *)self setArtworkURLTemplates:artworkURLTemplates2];
    }

    albumYear = [(MRContentItemMetadata *)fromCopy albumYear];

    if (albumYear)
    {
      albumYear2 = [(MRContentItemMetadata *)fromCopy albumYear];
      [(MRContentItemMetadata *)self setAlbumYear:albumYear2];
    }

    preferredFormat = [(MRContentItemMetadata *)fromCopy preferredFormat];

    if (preferredFormat)
    {
      preferredFormat2 = [(MRContentItemMetadata *)fromCopy preferredFormat];
      [(MRContentItemMetadata *)self setPreferredFormat:preferredFormat2];
    }

    activeFormat = [(MRContentItemMetadata *)fromCopy activeFormat];

    if (activeFormat)
    {
      activeFormat2 = [(MRContentItemMetadata *)fromCopy activeFormat];
      [(MRContentItemMetadata *)self setActiveFormat:activeFormat2];
    }

    audioRoute = [(MRContentItemMetadata *)fromCopy audioRoute];

    if (audioRoute)
    {
      audioRoute2 = [(MRContentItemMetadata *)fromCopy audioRoute];
      [(MRContentItemMetadata *)self setAudioRoute:audioRoute2];
    }

    alternativeFormats = [(MRContentItemMetadata *)fromCopy alternativeFormats];

    if (alternativeFormats)
    {
      alternativeFormats2 = [(MRContentItemMetadata *)fromCopy alternativeFormats];
      [(MRContentItemMetadata *)self setAlternativeFormats:alternativeFormats2];
    }

    participantName = [(MRContentItemMetadata *)fromCopy participantName];

    if (participantName)
    {
      participantName2 = [(MRContentItemMetadata *)fromCopy participantName];
      [(MRContentItemMetadata *)self setParticipantName:participantName2];
    }

    participantIdentifier = [(MRContentItemMetadata *)fromCopy participantIdentifier];

    if (participantIdentifier)
    {
      participantIdentifier2 = [(MRContentItemMetadata *)fromCopy participantIdentifier];
      [(MRContentItemMetadata *)self setParticipantIdentifier:participantIdentifier2];
    }

    if ([(MRContentItemMetadata *)fromCopy hasIsResolvableParticipant])
    {
      [(MRContentItemMetadata *)self setIsResolvableParticipant:[(MRContentItemMetadata *)fromCopy isResolvableParticipant]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasExcludeFromSuggestions])
    {
      [(MRContentItemMetadata *)self setExcludeFromSuggestions:[(MRContentItemMetadata *)fromCopy excludeFromSuggestions]];
    }

    assetURL3 = [(MRContentItemMetadata *)fromCopy assetURL];

    if (assetURL3)
    {
      assetURL4 = [(MRContentItemMetadata *)fromCopy assetURL];
      assetURL = self->_assetURL;
      self->_assetURL = assetURL4;
    }

    userInfo3 = [(MRContentItemMetadata *)fromCopy userInfo];

    if (userInfo3)
    {
      userInfo4 = [(MRContentItemMetadata *)fromCopy userInfo];
      userInfo = self->_userInfo;
      self->_userInfo = userInfo4;
    }

    appMetrics3 = [(MRContentItemMetadata *)fromCopy appMetrics];

    if (appMetrics3)
    {
      appMetrics4 = [(MRContentItemMetadata *)fromCopy appMetrics];
      appMetrics = self->_appMetrics;
      self->_appMetrics = appMetrics4;
    }

    nowPlayingInfo3 = [(MRContentItemMetadata *)fromCopy nowPlayingInfo];

    if (nowPlayingInfo3)
    {
      nowPlayingInfo4 = [(MRContentItemMetadata *)fromCopy nowPlayingInfo];
      nowPlayingInfo = self->_nowPlayingInfo;
      self->_nowPlayingInfo = nowPlayingInfo4;
    }

    collectionInfo3 = [(MRContentItemMetadata *)fromCopy collectionInfo];

    if (collectionInfo3)
    {
      collectionInfo4 = [(MRContentItemMetadata *)fromCopy collectionInfo];
      collectionInfo = self->_collectionInfo;
      self->_collectionInfo = collectionInfo4;
    }

    transitionInfo3 = [(MRContentItemMetadata *)fromCopy transitionInfo];

    if (transitionInfo3)
    {
      transitionInfo4 = [(MRContentItemMetadata *)fromCopy transitionInfo];
      transitionInfo = self->_transitionInfo;
      self->_transitionInfo = transitionInfo4;
    }

    currentPlaybackDate3 = [(MRContentItemMetadata *)fromCopy currentPlaybackDate];

    if (currentPlaybackDate3)
    {
      currentPlaybackDate4 = [(MRContentItemMetadata *)fromCopy currentPlaybackDate];
      currentPlaybackDate = self->_currentPlaybackDate;
      self->_currentPlaybackDate = currentPlaybackDate4;
    }

    deviceSpecificUserInfo3 = [(MRContentItemMetadata *)fromCopy deviceSpecificUserInfo];

    if (deviceSpecificUserInfo3)
    {
      deviceSpecificUserInfo4 = [(MRContentItemMetadata *)fromCopy deviceSpecificUserInfo];
      deviceSpecificUserInfo = self->_deviceSpecificUserInfo;
      self->_deviceSpecificUserInfo = deviceSpecificUserInfo4;
    }

    artworkURLTemplates3 = [(MRContentItemMetadata *)fromCopy artworkURLTemplates];

    if (artworkURLTemplates3)
    {
      artworkURLTemplates4 = [(MRContentItemMetadata *)fromCopy artworkURLTemplates];
      artworkURLTemplates = self->_artworkURLTemplates;
      self->_artworkURLTemplates = artworkURLTemplates4;
    }

    if ([(MRContentItemMetadata *)fromCopy hasReportingAdamID])
    {
      [(MRContentItemMetadata *)self setReportingAdamID:[(MRContentItemMetadata *)fromCopy reportingAdamID]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasLyricsAdamID])
    {
      [(MRContentItemMetadata *)self setLyricsAdamID:[(MRContentItemMetadata *)fromCopy lyricsAdamID]];
    }

    if ([(MRContentItemMetadata *)fromCopy hasITunesStoreAlbumArtistIdentifier])
    {
      [(MRContentItemMetadata *)self setITunesStoreAlbumArtistIdentifier:[(MRContentItemMetadata *)fromCopy iTunesStoreAlbumArtistIdentifier]];
    }

    internationalStandardRecordingCode = [(MRContentItemMetadata *)fromCopy internationalStandardRecordingCode];

    if (internationalStandardRecordingCode)
    {
      internationalStandardRecordingCode2 = [(MRContentItemMetadata *)fromCopy internationalStandardRecordingCode];
      [(MRContentItemMetadata *)self setInternationalStandardRecordingCode:internationalStandardRecordingCode2];
    }
  }
}

@end
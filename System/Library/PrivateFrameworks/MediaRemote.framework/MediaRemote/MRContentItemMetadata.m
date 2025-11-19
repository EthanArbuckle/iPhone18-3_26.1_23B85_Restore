@interface MRContentItemMetadata
- (BOOL)hasLoadingPlaceholderTitle;
- (BOOL)isEqual:(id)a3;
- (MRContentItemMetadata)initWithData:(id)a3;
- (MRContentItemMetadata)initWithProtobuf:(id)a3;
- (NSData)data;
- (NSDictionary)dictionaryRepresentation;
- (NSString)localizedDurationString;
- (NSString)localizedTitle;
- (double)calculatedPlaybackPosition;
- (double)calculatedPlaybackPositionFromDate:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)protobufWithEncoding:(int64_t)a3;
- (void)mergeFrom:(id)a3;
- (void)setElapsedTime:(double)a3;
- (void)setPlaybackRate:(float)a3;
@end

@implementation MRContentItemMetadata

- (NSString)localizedDurationString
{
  v3 = [(MRContentItemMetadata *)self durationStringLocalizationKey];

  if (v3)
  {
    v4 = [(MRContentItemMetadata *)self durationStringLocalizationKey];
    v5 = MRLocalizedString(v4);
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

  v67 = [(MRContentItemMetadata *)self purchaseInfoData];
  [(NSDictionary *)v3 setObject:v67 forKeyedSubscript:@"purchaseInfoData"];

  v68 = [(MRContentItemMetadata *)self appMetrics];
  [(NSDictionary *)v3 setObject:v68 forKeyedSubscript:@"appMetrics"];

  v69 = [(MRContentItemMetadata *)self nowPlayingInfo];
  [(NSDictionary *)v3 setObject:v69 forKeyedSubscript:@"nowPlayingInfo"];

  v70 = [(MRContentItemMetadata *)self userInfo];
  [(NSDictionary *)v3 setObject:v70 forKeyedSubscript:@"userInfo"];

  v71 = [(MRContentItemMetadata *)self deviceSpecificUserInfo];
  [(NSDictionary *)v3 setObject:v71 forKeyedSubscript:@"deviceSpecificUserInfo"];

  v72 = [(MRContentItemMetadata *)self collectionInfo];
  [(NSDictionary *)v3 setObject:v72 forKeyedSubscript:@"collectionInfo"];

  v73 = [(MRContentItemMetadata *)self transitionInfo];
  [(NSDictionary *)v3 setObject:v73 forKeyedSubscript:@"transitionInfo"];

  v74 = [(MRContentItemMetadata *)self releaseDate];
  [(NSDictionary *)v3 setObject:v74 forKeyedSubscript:@"releaseDate"];

  v75 = [(MRContentItemMetadata *)self currentPlaybackDate];
  [(NSDictionary *)v3 setObject:v75 forKeyedSubscript:@"currentPlaybackDate"];

  v76 = [(MRContentItemMetadata *)self title];
  [(NSDictionary *)v3 setObject:v76 forKeyedSubscript:@"title"];

  v77 = [(MRContentItemMetadata *)self subtitle];
  [(NSDictionary *)v3 setObject:v77 forKeyedSubscript:@"subtitle"];

  v78 = [(MRContentItemMetadata *)self subtitleShort];
  [(NSDictionary *)v3 setObject:v78 forKeyedSubscript:@"subtitleShort"];

  v79 = [(MRContentItemMetadata *)self albumName];
  [(NSDictionary *)v3 setObject:v79 forKeyedSubscript:@"albumName"];

  v80 = [(MRContentItemMetadata *)self trackArtistName];
  [(NSDictionary *)v3 setObject:v80 forKeyedSubscript:@"trackArtistName"];

  v81 = [(MRContentItemMetadata *)self albumArtistName];
  [(NSDictionary *)v3 setObject:v81 forKeyedSubscript:@"albumArtistName"];

  v82 = [(MRContentItemMetadata *)self directorName];
  [(NSDictionary *)v3 setObject:v82 forKeyedSubscript:@"directorName"];

  v83 = [(MRContentItemMetadata *)self localizedContentRating];
  [(NSDictionary *)v3 setObject:v83 forKeyedSubscript:@"localizedContentRating"];

  v84 = [(MRContentItemMetadata *)self collectionIdentifier];
  [(NSDictionary *)v3 setObject:v84 forKeyedSubscript:@"collectionIdentifier"];

  v85 = [(MRContentItemMetadata *)self profileIdentifier];
  [(NSDictionary *)v3 setObject:v85 forKeyedSubscript:@"profileIdentifier"];

  v86 = [(MRContentItemMetadata *)self assetURL];
  [(NSDictionary *)v3 setObject:v86 forKeyedSubscript:@"assetURL"];

  v87 = [(MRContentItemMetadata *)self composer];
  [(NSDictionary *)v3 setObject:v87 forKeyedSubscript:@"composer"];

  v88 = [(MRContentItemMetadata *)self genre];
  [(NSDictionary *)v3 setObject:v88 forKeyedSubscript:@"genre"];

  v89 = [(MRContentItemMetadata *)self contentIdentifier];
  [(NSDictionary *)v3 setObject:v89 forKeyedSubscript:@"contentIdentifier"];

  v90 = [(MRContentItemMetadata *)self radioStationName];
  [(NSDictionary *)v3 setObject:v90 forKeyedSubscript:@"radioStationName"];

  v91 = [(MRContentItemMetadata *)self radioStationString];
  [(NSDictionary *)v3 setObject:v91 forKeyedSubscript:@"radioStationString"];

  v92 = [(MRContentItemMetadata *)self seriesName];
  [(NSDictionary *)v3 setObject:v92 forKeyedSubscript:@"seriesName"];

  v93 = [(MRContentItemMetadata *)self lyricsURL];
  [(NSDictionary *)v3 setObject:v93 forKeyedSubscript:@"lyricsURL"];

  v94 = [(MRContentItemMetadata *)self serviceIdentifier];
  [(NSDictionary *)v3 setObject:v94 forKeyedSubscript:@"serviceIdentifier"];

  v95 = [(MRContentItemMetadata *)self brandIdentifier];
  [(NSDictionary *)v3 setObject:v95 forKeyedSubscript:@"brandIdentifier"];

  v96 = [(MRContentItemMetadata *)self localizedDurationString];
  [(NSDictionary *)v3 setObject:v96 forKeyedSubscript:@"localizedDurationString"];

  v97 = [(MRContentItemMetadata *)self artworkIdentifier];
  [(NSDictionary *)v3 setObject:v97 forKeyedSubscript:@"artworkIdentifier"];

  v98 = [(MRContentItemMetadata *)self artworkMIMEType];
  [(NSDictionary *)v3 setObject:v98 forKeyedSubscript:@"artworkMIMEType"];

  v99 = [(MRContentItemMetadata *)self artworkURL];
  [(NSDictionary *)v3 setObject:v99 forKeyedSubscript:@"artworkURL"];

  v100 = [(MRContentItemMetadata *)self artworkFileURL];
  [(NSDictionary *)v3 setObject:v100 forKeyedSubscript:@"artworkFileURL"];

  v101 = [(MRContentItemMetadata *)self artworkURLTemplates];
  [(NSDictionary *)v3 setObject:v101 forKeyedSubscript:@"artworkURLTemplates"];

  v102 = [(MRContentItemMetadata *)self albumYear];
  [(NSDictionary *)v3 setObject:v102 forKeyedSubscript:@"albumYear"];

  v103 = [(MRContentItemMetadata *)self participantName];
  [(NSDictionary *)v3 setObject:v103 forKeyedSubscript:@"participantName"];

  v104 = [(MRContentItemMetadata *)self participantIdentifier];
  [(NSDictionary *)v3 setObject:v104 forKeyedSubscript:@"participantIdentifier"];

  v105 = [(MRContentItemMetadata *)self internationalStandardRecordingCode];
  [(NSDictionary *)v3 setObject:v105 forKeyedSubscript:@"internationalStandardRecordingCode"];

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

  v108 = [(MRContentItemMetadata *)self preferredFormat];

  if (v108)
  {
    v109 = [(MRContentItemMetadata *)self preferredFormat];
    v110 = [v109 dictionaryRepresentation];
    [(NSDictionary *)v3 setObject:v110 forKeyedSubscript:@"preferredFormat"];
  }

  v111 = [(MRContentItemMetadata *)self activeFormat];

  if (v111)
  {
    v112 = [(MRContentItemMetadata *)self activeFormat];
    v113 = [v112 dictionaryRepresentation];
    [(NSDictionary *)v3 setObject:v113 forKeyedSubscript:@"activeFormat"];
  }

  v114 = [(MRContentItemMetadata *)self audioRoute];

  if (v114)
  {
    v115 = [(MRContentItemMetadata *)self audioRoute];
    v116 = [v115 dictionaryRepresentation];
    [(NSDictionary *)v3 setObject:v116 forKeyedSubscript:@"audioRoute"];
  }

  v117 = [(MRContentItemMetadata *)self alternativeFormats];

  if (v117)
  {
    v118 = [(MRContentItemMetadata *)self alternativeFormats];
    v119 = [v118 msv_map:&__block_literal_global_312];
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
    v126 = [MEMORY[0x1E695DF00] date];
    [v126 timeIntervalSinceReferenceDate];
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

  v144 = [(MRContentItemMetadata *)self title];

  if (v144)
  {
    v145 = [(MRContentItemMetadata *)self title];
    [(NSDictionary *)v3 setObject:v145 forKeyedSubscript:@"__title"];
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
  v2 = [(MRContentItemMetadata *)self title];
  v3 = [v2 isEqualToString:@"LOADING_AUDIO_LABEL"];

  return v3;
}

- (MRContentItemMetadata)initWithProtobuf:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v156.receiver = self;
    v156.super_class = MRContentItemMetadata;
    v5 = [(MRContentItemMetadata *)&v156 init];
    if (v5)
    {
      v5->_container = [v4 isContainer];
      v5->_hasContainer = [v4 hasIsContainer];
      v5->_playable = [v4 isPlayable];
      v5->_hasPlayable = [v4 hasIsPlayable];
      v5->_explicitItem = [v4 isExplicitItem];
      v5->_hasExplicitItem = [v4 hasIsExplicitItem];
      v5->_streamingContent = [v4 isStreamingContent];
      v5->_hasStreamingContent = [v4 hasIsStreamingContent];
      v5->_currentlyPlaying = [v4 isCurrentlyPlaying];
      v5->_hasCurrentlyPlaying = [v4 hasIsCurrentlyPlaying];
      v5->_alwaysLive = [v4 isAlwaysLive];
      v5->_hasAlwaysLive = [v4 hasIsAlwaysLive];
      v5->_sharable = [v4 isSharable];
      v5->_hasSharable = [v4 hasIsSharable];
      v5->_liked = [v4 isLiked];
      v5->_hasLiked = [v4 hasIsLiked];
      v5->_inWishList = [v4 isInWishList];
      v5->_hasInWishList = [v4 hasIsInWishList];
      v5->_advertisement = [v4 isAdvertisement];
      v5->_hasAdvertisement = [v4 hasIsAdvertisement];
      v5->_steerable = [v4 isSteerable];
      v5->_hasSteerable = [v4 hasIsSteerable];
      v5->_loading = [v4 isLoading];
      v5->_hasLoading = [v4 hasIsLoading];
      v5->_inTransition = [v4 isInTransition];
      v5->_hasInTransition = [v4 hasIsInTransition];
      v5->_artworkAvailable = [v4 artworkAvailable];
      v5->_hasArtworkAvailable = [v4 hasArtworkAvailable];
      v5->_infoAvailable = [v4 infoAvailable];
      v5->_hasInfoAvailable = [v4 hasInfoAvailable];
      v5->_transcriptAlignmentsAvailable = [v4 transcriptAlignmentsAvailable];
      v5->_hasTranscriptAlignmentsAvailable = [v4 hasTranscriptAlignmentsAvailable];
      v5->_languageOptionsAvailable = [v4 languageOptionsAvailable];
      v5->_hasLanguageOptionsAvailable = [v4 hasLanguageOptionsAvailable];
      v5->_lyricsAvailable = [v4 lyricsAvailable];
      v5->_hasLyricsAvailable = [v4 hasLyricsAvailable];
      [v4 playbackProgress];
      v5->_playbackProgress = v6;
      v5->_hasPlaybackProgress = [v4 hasPlaybackProgress];
      [v4 playbackRate];
      v5->_playbackRate = v7;
      v5->_hasPlaybackRate = [v4 hasPlaybackRate];
      [v4 defaultPlaybackRate];
      v5->_defaultPlaybackRate = v8;
      v5->_hasDefaultPlaybackRate = [v4 hasDefaultPlaybackRate];
      [v4 downloadProgress];
      v5->_downloadProgress = v9;
      v5->_hasDownloadProgress = [v4 hasDownloadProgress];
      v5->_playlistType = [v4 playlistType];
      v5->_hasPlaylistType = [v4 hasPlaylistType];
      v5->_radioStationType = [v4 radioStationType];
      v5->_hasRadioStationType = [v4 hasRadioStationType];
      v5->_editingStyleFlags = [v4 editingStyleFlags];
      v5->_hasEditingStyleFlags = [v4 hasEditingStyleFlags];
      v5->_mediaType = [v4 mediaType];
      v5->_hasMediaType = [v4 hasMediaType];
      v5->_mediaSubType = [v4 mediaSubType];
      v5->_hasMediaSubType = [v4 hasMediaSubType];
      v5->_episodeType = [v4 episodeType];
      v5->_hasEpisodeType = [v4 hasEpisodeType];
      v5->_playCount = [v4 playCount];
      v5->_hasPlayCount = [v4 hasPlayCount];
      v5->_numberOfSections = [v4 numberOfSections];
      v5->_hasNumberOfSections = [v4 hasNumberOfSections];
      v5->_chapterCount = [v4 chapterCount];
      v5->_hasChapterCount = [v4 hasChapterCount];
      v5->_totalDiscCount = [v4 totalDiscCount];
      v5->_hasTotalDiscCount = [v4 hasTotalDiscCount];
      v5->_totalTrackCount = [v4 totalTrackCount];
      v5->_hasTotalTrackCount = [v4 hasTotalTrackCount];
      v5->_downloadState = [v4 downloadState];
      v5->_hasDownloadState = [v4 hasDownloadState];
      v5->_artworkDataWidthDeprecated = [v4 artworkDataWidthDeprecated];
      v5->_hasArtworkDataWidthDeprecated = [v4 hasArtworkDataWidthDeprecated];
      v5->_artworkDataHeightDeprecated = [v4 artworkDataHeightDeprecated];
      v5->_hasArtworkDataHeightDeprecated = [v4 hasArtworkDataHeightDeprecated];
      [v4 duration];
      v5->_duration = v10;
      v5->_hasDuration = [v4 hasDuration];
      [v4 startTime];
      v5->_startTime = v11;
      v5->_hasStartTime = [v4 hasStartTime];
      [v4 elapsedTime];
      v5->_elapsedTime = v12;
      v5->_hasElapsedTime = [v4 hasElapsedTime];
      [v4 elapsedTimeTimestamp];
      v5->_elapsedTimeTimestamp = v13;
      v5->_hasElapsedTimeTimestamp = [v4 hasElapsedTimeTimestamp];
      [v4 inferredTimestamp];
      v5->_inferredTimestamp = v14;
      v5->_hasInferredTimestamp = [v4 hasInferredTimestamp];
      v5->_seasonNumber = [v4 seasonNumber];
      v5->_hasSeasonNumber = [v4 hasSeasonNumber];
      v5->_episodeNumber = [v4 episodeNumber];
      v5->_hasEpisodeNumber = [v4 hasEpisodeNumber];
      v5->_discNumber = [v4 discNumber];
      v5->_hasDiscNumber = [v4 hasDiscNumber];
      v5->_trackNumber = [v4 trackNumber];
      v5->_hasTrackNumber = [v4 hasTrackNumber];
      v5->_radioStationIdentifier = [v4 radioStationIdentifier];
      v5->_hasRadioStationIdentifier = [v4 hasRadioStationIdentifier];
      v5->_iTunesStoreIdentifier = [v4 iTunesStoreIdentifier];
      v5->_hasITunesStoreIdentifier = [v4 hasITunesStoreIdentifier];
      v5->_iTunesStoreSubscriptionIdentifier = [v4 iTunesStoreSubscriptionIdentifier];
      v5->_hasITunesStoreSubscriptionIdentifier = [v4 hasITunesStoreSubscriptionIdentifier];
      v5->_iTunesStoreArtistIdentifier = [v4 iTunesStoreArtistIdentifier];
      v5->_hasITunesStoreArtistIdentifier = [v4 hasITunesStoreArtistIdentifier];
      v5->_iTunesStoreAlbumIdentifier = [v4 iTunesStoreAlbumIdentifier];
      v5->_hasITunesStoreAlbumIdentifier = [v4 hasITunesStoreAlbumIdentifier];
      v5->_legacyUniqueIdentifier = [v4 legacyUniqueIdentifier];
      v5->_hasLegacyUniqueIdentifier = [v4 hasLegacyUniqueIdentifier];
      v15 = [v4 classicalWork];
      classicalWork = v5->_classicalWork;
      v5->_classicalWork = v15;

      if ([v4 hasReleaseDate])
      {
        v17 = MEMORY[0x1E695DF00];
        [v4 releaseDate];
        v18 = [v17 dateWithTimeIntervalSince1970:?];
      }

      else
      {
        v18 = 0;
      }

      releaseDate = v5->_releaseDate;
      v5->_releaseDate = v18;

      if ([v4 hasCurrentPlaybackDateData])
      {
        v21 = [v4 currentPlaybackDateData];
        v22 = MRDecodeObjectWithEncoding(v21, 0);
        currentPlaybackDate = v5->_currentPlaybackDate;
        v5->_currentPlaybackDate = v22;
      }

      else
      {
        v21 = v5->_currentPlaybackDate;
        v5->_currentPlaybackDate = 0;
      }

      if ([v4 hasAppMetricsData])
      {
        v24 = [v4 appMetricsData];
        v25 = MRDecodeObjectWithEncoding(v24, 0);
        appMetrics = v5->_appMetrics;
        v5->_appMetrics = v25;
      }

      else
      {
        v24 = v5->_appMetrics;
        v5->_appMetrics = 0;
      }

      if ([v4 hasNowPlayingInfoData])
      {
        v27 = [v4 nowPlayingInfoData];
        v28 = MRDecodeObjectWithEncoding(v27, 0);
        nowPlayingInfo = v5->_nowPlayingInfo;
        v5->_nowPlayingInfo = v28;
      }

      else
      {
        v27 = v5->_nowPlayingInfo;
        v5->_nowPlayingInfo = 0;
      }

      if ([v4 hasUserInfoData])
      {
        v30 = [v4 userInfoData];
        v31 = MRDecodeObjectWithEncoding(v30, 0);
        userInfo = v5->_userInfo;
        v5->_userInfo = v31;
      }

      else
      {
        v30 = v5->_userInfo;
        v5->_userInfo = 0;
      }

      if ([v4 hasDeviceSpecificUserInfoData])
      {
        v33 = [v4 deviceSpecificUserInfoData];
        v34 = MRDecodeObjectWithEncoding(v33, 0);
        deviceSpecificUserInfo = v5->_deviceSpecificUserInfo;
        v5->_deviceSpecificUserInfo = v34;
      }

      else
      {
        v33 = v5->_deviceSpecificUserInfo;
        v5->_deviceSpecificUserInfo = 0;
      }

      if ([v4 hasCollectionInfoData])
      {
        v36 = [v4 collectionInfoData];
        v37 = MRDecodeObjectWithEncoding(v36, 0);
        collectionInfo = v5->_collectionInfo;
        v5->_collectionInfo = v37;
      }

      else
      {
        v36 = v5->_collectionInfo;
        v5->_collectionInfo = 0;
      }

      if ([v4 hasTransitionInfoData])
      {
        v39 = [v4 transitionInfoData];
        v40 = MRDecodeObjectWithEncoding(v39, 0);
        transitionInfo = v5->_transitionInfo;
        v5->_transitionInfo = v40;
      }

      else
      {
        v39 = v5->_transitionInfo;
        v5->_transitionInfo = 0;
      }

      v42 = [v4 purchaseInfoData];
      v43 = [v42 copy];
      purchaseInfoData = v5->_purchaseInfoData;
      v5->_purchaseInfoData = v43;

      v45 = [v4 title];
      v46 = [v45 copy];
      title = v5->_title;
      v5->_title = v46;

      v48 = [v4 subtitle];
      v49 = [v48 copy];
      subtitle = v5->_subtitle;
      v5->_subtitle = v49;

      v51 = [v4 subtitleShort];
      v52 = [v51 copy];
      subtitleShort = v5->_subtitleShort;
      v5->_subtitleShort = v52;

      v54 = [v4 albumName];
      v55 = [v54 copy];
      albumName = v5->_albumName;
      v5->_albumName = v55;

      v57 = [v4 trackArtistName];
      v58 = [v57 copy];
      trackArtistName = v5->_trackArtistName;
      v5->_trackArtistName = v58;

      v60 = [v4 albumArtistName];
      v61 = [v60 copy];
      albumArtistName = v5->_albumArtistName;
      v5->_albumArtistName = v61;

      v63 = [v4 directorName];
      v64 = [v63 copy];
      directorName = v5->_directorName;
      v5->_directorName = v64;

      v66 = [v4 localizedContentRating];
      v67 = [v66 copy];
      localizedContentRating = v5->_localizedContentRating;
      v5->_localizedContentRating = v67;

      v69 = [v4 collectionIdentifier];
      v70 = [v69 copy];
      collectionIdentifier = v5->_collectionIdentifier;
      v5->_collectionIdentifier = v70;

      v72 = [v4 profileIdentifier];
      v73 = [v72 copy];
      profileIdentifier = v5->_profileIdentifier;
      v5->_profileIdentifier = v73;

      v75 = [v4 composer];
      v76 = [v75 copy];
      composer = v5->_composer;
      v5->_composer = v76;

      v78 = [v4 genre];
      v79 = [v78 copy];
      genre = v5->_genre;
      v5->_genre = v79;

      v81 = [v4 contentIdentifier];
      v82 = [v81 copy];
      contentIdentifier = v5->_contentIdentifier;
      v5->_contentIdentifier = v82;

      v84 = [v4 radioStationName];
      v85 = [v84 copy];
      radioStationName = v5->_radioStationName;
      v5->_radioStationName = v85;

      v87 = [v4 radioStationString];
      v88 = [v87 copy];
      radioStationString = v5->_radioStationString;
      v5->_radioStationString = v88;

      v90 = [v4 seriesName];
      v91 = [v90 copy];
      seriesName = v5->_seriesName;
      v5->_seriesName = v91;

      if ([v4 hasLyricsURL])
      {
        v93 = objc_alloc(MEMORY[0x1E695DFF8]);
        v94 = [v4 lyricsURL];
        v95 = [v93 initWithString:v94];
        lyricsURL = v5->_lyricsURL;
        v5->_lyricsURL = v95;
      }

      else
      {
        v94 = v5->_lyricsURL;
        v5->_lyricsURL = 0;
      }

      v97 = [v4 serviceIdentifier];
      v98 = [v97 copy];
      serviceIdentifier = v5->_serviceIdentifier;
      v5->_serviceIdentifier = v98;

      v100 = [v4 brandIdentifier];
      v101 = [v100 copy];
      brandIdentifier = v5->_brandIdentifier;
      v5->_brandIdentifier = v101;

      v103 = [v4 localizedDurationString];
      v104 = [v103 copy];
      localizedDurationString = v5->_localizedDurationString;
      v5->_localizedDurationString = v104;

      v106 = [v4 durationStringLocalizationKey];
      v107 = [v106 copy];
      durationStringLocalizationKey = v5->_durationStringLocalizationKey;
      v5->_durationStringLocalizationKey = v107;

      v109 = [v4 artworkIdentifier];
      v110 = [v109 copy];
      artworkIdentifier = v5->_artworkIdentifier;
      v5->_artworkIdentifier = v110;

      v112 = [v4 artworkMIMEType];
      v113 = [v112 copy];
      artworkMIMEType = v5->_artworkMIMEType;
      v5->_artworkMIMEType = v113;

      v115 = [v4 albumYear];
      v116 = [v115 copy];
      albumYear = v5->_albumYear;
      v5->_albumYear = v116;

      if ([v4 hasAssetURLString])
      {
        v118 = objc_alloc(MEMORY[0x1E695DFF8]);
        v119 = [v4 assetURLString];
        v120 = [v118 initWithString:v119];
        assetURL = v5->_assetURL;
        v5->_assetURL = v120;
      }

      else
      {
        v119 = v5->_assetURL;
        v5->_assetURL = 0;
      }

      if ([v4 hasArtworkURL])
      {
        v122 = objc_alloc(MEMORY[0x1E695DFF8]);
        v123 = [v4 artworkURL];
        v124 = [v122 initWithString:v123];
        artworkURL = v5->_artworkURL;
        v5->_artworkURL = v124;
      }

      else
      {
        v123 = v5->_artworkURL;
        v5->_artworkURL = 0;
      }

      if ([v4 hasArtworkFileURL])
      {
        v126 = objc_alloc(MEMORY[0x1E695DFF8]);
        v127 = [v4 artworkFileURL];
        v128 = [v126 initWithString:v127];
        artworkFileURL = v5->_artworkFileURL;
        v5->_artworkFileURL = v128;
      }

      else
      {
        v127 = v5->_artworkFileURL;
        v5->_artworkFileURL = 0;
      }

      v130 = [v4 internationalStandardRecordingCode];
      v131 = [v130 copy];
      internationalStandardRecordingCode = v5->_internationalStandardRecordingCode;
      v5->_internationalStandardRecordingCode = v131;

      if ([v4 hasParticipantName])
      {
        v133 = [v4 participantName];
      }

      else
      {
        v133 = 0;
      }

      participantName = v5->_participantName;
      v5->_participantName = v133;

      if ([v4 hasParticipantIdentifier])
      {
        v135 = [v4 participantIdentifier];
      }

      else
      {
        v135 = 0;
      }

      participantIdentifier = v5->_participantIdentifier;
      v5->_participantIdentifier = v135;

      v5->_isResolvableParticipant = [v4 isResolvableParticipant];
      v5->_hasIsResolvableParticipant = [v4 hasIsResolvableParticipant];
      v5->_excludeFromSuggestions = [v4 excludeFromSuggestions];
      v5->_hasExcludeFromSuggestions = [v4 hasExcludeFromSuggestions];
      v5->_songTraits = [v4 songTraits];
      v5->_hasSongTraits = [v4 hasSongTraits];
      v5->_albumTraits = [v4 albumTraits];
      v5->_hasAlbumTraits = [v4 hasAlbumTraits];
      v5->_playlistTraits = [v4 playlistTraits];
      v5->_hasPlaylistTraits = [v4 hasPlaylistTraits];
      if ([v4 hasPreferredFormat])
      {
        v137 = [MRContentItemMetadataAudioFormat alloc];
        v138 = [v4 preferredFormat];
        v139 = [(MRContentItemMetadataAudioFormat *)v137 initWithProtobuf:v138];
        preferredFormat = v5->_preferredFormat;
        v5->_preferredFormat = v139;
      }

      else
      {
        v138 = v5->_preferredFormat;
        v5->_preferredFormat = 0;
      }

      if ([v4 hasActiveFormat])
      {
        v141 = [MRContentItemMetadataAudioFormat alloc];
        v142 = [v4 activeFormat];
        v143 = [(MRContentItemMetadataAudioFormat *)v141 initWithProtobuf:v142];
        activeFormat = v5->_activeFormat;
        v5->_activeFormat = v143;
      }

      else
      {
        v142 = v5->_activeFormat;
        v5->_activeFormat = 0;
      }

      v5->_activeFormatJustification = [v4 activeFormatJustification];
      v5->_hasActiveFormatJustification = [v4 hasActiveFormatJustification];
      v5->_formatTierPreference = [v4 formatTierPreference];
      v5->_hasFormatTierPreference = [v4 hasFormatTierPreference];
      if ([v4 hasAudioRoute])
      {
        v145 = [MRContentItemMetadataAudioRoute alloc];
        v146 = [v4 audioRoute];
        v147 = [(MRContentItemMetadataAudioRoute *)v145 initWithProtobuf:v146];
        audioRoute = v5->_audioRoute;
        v5->_audioRoute = v147;
      }

      else
      {
        v146 = v5->_audioRoute;
        v5->_audioRoute = 0;
      }

      if ([v4 hasAlternativeFormats])
      {
        v149 = [v4 alternativeFormats];
        v150 = [v149 msv_map:&__block_literal_global_10];
        alternativeFormats = v5->_alternativeFormats;
        v5->_alternativeFormats = v150;
      }

      else
      {
        v149 = v5->_alternativeFormats;
        v5->_alternativeFormats = 0;
      }

      if ([v4 hasArtworkURLTemplatesData])
      {
        v152 = [v4 artworkURLTemplatesData];
        v153 = MRDecodeObjectWithEncoding(v152, 0);
        artworkURLTemplates = v5->_artworkURLTemplates;
        v5->_artworkURLTemplates = v153;
      }

      v5->_reportingAdamID = [v4 reportingAdamID];
      v5->_hasReportingAdamID = [v4 hasReportingAdamID];
      v5->_lyricsAdamID = [v4 lyricsAdamID];
      v5->_hasLyricsAdamID = [v4 hasLyricsAdamID];
      v5->_iTunesStoreAlbumArtistIdentifier = [v4 iTunesStoreAlbumArtistIdentifier];
      v5->_hasITunesStoreAlbumArtistIdentifier = [v4 hasITunesStoreAlbumArtistIdentifier];
    }

    self = v5;
    v19 = self;
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

MRContentItemMetadataAudioFormat *__42__MRContentItemMetadata_initWithProtobuf___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[MRContentItemMetadataAudioFormat alloc] initWithProtobuf:v2];

  return v3;
}

- (MRContentItemMetadata)initWithData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[_MRContentItemMetadataProtobuf alloc] initWithData:v4];

    self = [(MRContentItemMetadata *)self initWithProtobuf:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)protobufWithEncoding:(int64_t)a3
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
  v6 = [(MRContentItemMetadata *)self releaseDate];
  [v6 timeIntervalSince1970];
  [(_MRContentItemMetadataProtobuf *)v5 setReleaseDate:?];

  v7 = [(MRContentItemMetadata *)self releaseDate];
  [(_MRContentItemMetadataProtobuf *)v5 setHasReleaseDate:v7 != 0];

  v8 = [(MRContentItemMetadata *)self currentPlaybackDate];
  if (v8)
  {
    v9 = [(MRContentItemMetadata *)self currentPlaybackDate];
    v10 = MREncodeObjectWithEncoding(v9, a3);
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
  v11 = [(MRContentItemMetadata *)self classicalWork];
  [(_MRContentItemMetadataProtobuf *)v5 setClassicalWork:v11];

  v12 = [(MRContentItemMetadata *)self appMetrics];
  if (v12)
  {
    v13 = [(MRContentItemMetadata *)self appMetrics];
    v14 = MREncodeObjectWithEncoding(v13, a3);
    [(_MRContentItemMetadataProtobuf *)v5 setAppMetricsData:v14];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setAppMetricsData:0];
  }

  v15 = [(MRContentItemMetadata *)self nowPlayingInfo];
  if (v15)
  {
    v16 = [(MRContentItemMetadata *)self nowPlayingInfo];
    v17 = MREncodeObjectWithEncoding(v16, a3);
    [(_MRContentItemMetadataProtobuf *)v5 setNowPlayingInfoData:v17];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setNowPlayingInfoData:0];
  }

  v18 = [(MRContentItemMetadata *)self userInfo];
  if (v18)
  {
    v19 = [(MRContentItemMetadata *)self userInfo];
    v20 = MREncodeObjectWithEncoding(v19, a3);
    [(_MRContentItemMetadataProtobuf *)v5 setUserInfoData:v20];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setUserInfoData:0];
  }

  v21 = [(MRContentItemMetadata *)self deviceSpecificUserInfo];
  if (v21)
  {
    v22 = [(MRContentItemMetadata *)self deviceSpecificUserInfo];
    v23 = MREncodeObjectWithEncoding(v22, a3);
    [(_MRContentItemMetadataProtobuf *)v5 setDeviceSpecificUserInfoData:v23];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setDeviceSpecificUserInfoData:0];
  }

  v24 = [(MRContentItemMetadata *)self collectionInfo];
  if (v24)
  {
    v25 = [(MRContentItemMetadata *)self collectionInfo];
    v26 = MREncodeObjectWithEncoding(v25, a3);
    [(_MRContentItemMetadataProtobuf *)v5 setCollectionInfoData:v26];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setCollectionInfoData:0];
  }

  v27 = [(MRContentItemMetadata *)self transitionInfo];
  if (v27)
  {
    v28 = [(MRContentItemMetadata *)self transitionInfo];
    v29 = MREncodeObjectWithEncoding(v28, a3);
    [(_MRContentItemMetadataProtobuf *)v5 setTransitionInfoData:v29];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setTransitionInfoData:0];
  }

  v30 = [(MRContentItemMetadata *)self purchaseInfoData];
  v31 = [v30 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setPurchaseInfoData:v31];

  v32 = [(MRContentItemMetadata *)self title];
  v33 = [v32 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setTitle:v33];

  v34 = [(MRContentItemMetadata *)self subtitle];
  v35 = [v34 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setSubtitle:v35];

  v36 = [(MRContentItemMetadata *)self subtitleShort];
  v37 = [v36 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setSubtitleShort:v37];

  v38 = [(MRContentItemMetadata *)self albumName];
  v39 = [v38 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setAlbumName:v39];

  v40 = [(MRContentItemMetadata *)self trackArtistName];
  v41 = [v40 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setTrackArtistName:v41];

  v42 = [(MRContentItemMetadata *)self albumArtistName];
  v43 = [v42 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setAlbumArtistName:v43];

  v44 = [(MRContentItemMetadata *)self directorName];
  v45 = [v44 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setDirectorName:v45];

  v46 = [(MRContentItemMetadata *)self localizedContentRating];
  v47 = [v46 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setLocalizedContentRating:v47];

  v48 = [(MRContentItemMetadata *)self collectionIdentifier];
  v49 = [v48 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setCollectionIdentifier:v49];

  v50 = [(MRContentItemMetadata *)self profileIdentifier];
  v51 = [v50 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setProfileIdentifier:v51];

  v52 = [(MRContentItemMetadata *)self assetURL];
  v53 = [v52 absoluteString];
  [(_MRContentItemMetadataProtobuf *)v5 setAssetURLString:v53];

  v54 = [(MRContentItemMetadata *)self composer];
  v55 = [v54 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setComposer:v55];

  v56 = [(MRContentItemMetadata *)self genre];
  v57 = [v56 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setGenre:v57];

  v58 = [(MRContentItemMetadata *)self contentIdentifier];
  v59 = [v58 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setContentIdentifier:v59];

  v60 = [(MRContentItemMetadata *)self radioStationName];
  v61 = [v60 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setRadioStationName:v61];

  v62 = [(MRContentItemMetadata *)self radioStationString];
  v63 = [v62 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setRadioStationString:v63];

  v64 = [(MRContentItemMetadata *)self seriesName];
  v65 = [v64 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setSeriesName:v65];

  v66 = [(MRContentItemMetadata *)self lyricsURL];
  v67 = [v66 absoluteString];
  [(_MRContentItemMetadataProtobuf *)v5 setLyricsURL:v67];

  v68 = [(MRContentItemMetadata *)self serviceIdentifier];
  v69 = [v68 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setServiceIdentifier:v69];

  v70 = [(MRContentItemMetadata *)self brandIdentifier];
  v71 = [v70 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setBrandIdentifier:v71];

  v72 = [(MRContentItemMetadata *)self localizedDurationString];
  v73 = [v72 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setLocalizedDurationString:v73];

  v74 = [(MRContentItemMetadata *)self durationStringLocalizationKey];
  v75 = [v74 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setDurationStringLocalizationKey:v75];

  v76 = [(MRContentItemMetadata *)self artworkIdentifier];
  v77 = [v76 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setArtworkIdentifier:v77];

  v78 = [(MRContentItemMetadata *)self artworkMIMEType];
  v79 = [v78 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setArtworkMIMEType:v79];

  v80 = [(MRContentItemMetadata *)self artworkURL];
  v81 = [v80 absoluteString];
  [(_MRContentItemMetadataProtobuf *)v5 setArtworkURL:v81];

  v82 = [(MRContentItemMetadata *)self artworkFileURL];
  v83 = [v82 absoluteString];
  [(_MRContentItemMetadataProtobuf *)v5 setArtworkFileURL:v83];

  v84 = [(MRContentItemMetadata *)self albumYear];
  v85 = [v84 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setAlbumYear:v85];

  v86 = [(MRContentItemMetadata *)self internationalStandardRecordingCode];
  v87 = [v86 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setInternationalStandardRecordingCode:v87];

  v88 = [(MRContentItemMetadata *)self participantName];
  v89 = [v88 copy];
  [(_MRContentItemMetadataProtobuf *)v5 setParticipantName:v89];

  v90 = [(MRContentItemMetadata *)self participantIdentifier];
  v91 = [v90 copy];
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
  v92 = [(MRContentItemMetadata *)self preferredFormat];
  if (v92)
  {
    v93 = [(MRContentItemMetadata *)self preferredFormat];
    v94 = [v93 protobuf];
    [(_MRContentItemMetadataProtobuf *)v5 setPreferredFormat:v94];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setPreferredFormat:0];
  }

  v95 = [(MRContentItemMetadata *)self activeFormat];
  if (v95)
  {
    v96 = [(MRContentItemMetadata *)self activeFormat];
    v97 = [v96 protobuf];
    [(_MRContentItemMetadataProtobuf *)v5 setActiveFormat:v97];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setActiveFormat:0];
  }

  [(_MRContentItemMetadataProtobuf *)v5 setActiveFormatJustification:[(MRContentItemMetadata *)self activeFormatJustification]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasActiveFormatJustification:[(MRContentItemMetadata *)self hasActiveFormatJustification]];
  [(_MRContentItemMetadataProtobuf *)v5 setFormatTierPreference:[(MRContentItemMetadata *)self formatTierPreference]];
  [(_MRContentItemMetadataProtobuf *)v5 setHasFormatTierPreference:[(MRContentItemMetadata *)self hasFormatTierPreference]];
  v98 = [(MRContentItemMetadata *)self audioRoute];
  if (v98)
  {
    v99 = [(MRContentItemMetadata *)self audioRoute];
    v100 = [v99 protobuf];
    [(_MRContentItemMetadataProtobuf *)v5 setAudioRoute:v100];
  }

  else
  {
    [(_MRContentItemMetadataProtobuf *)v5 setAudioRoute:0];
  }

  v101 = [(MRContentItemMetadata *)self alternativeFormats];

  if (v101)
  {
    [(_MRContentItemMetadataProtobuf *)v5 setHasAlternativeFormats:1];
    v102 = [(MRContentItemMetadata *)self alternativeFormats];
    v103 = [v102 msv_map:&__block_literal_global_7];
    v104 = [v103 mutableCopy];
    [(_MRContentItemMetadataProtobuf *)v5 setAlternativeFormats:v104];
  }

  v105 = [(MRContentItemMetadata *)self artworkURLTemplates];
  v106 = [v105 count];

  if (v106)
  {
    v107 = [(MRContentItemMetadata *)self artworkURLTemplates];
    v108 = MREncodeObjectWithEncoding(v107, a3);
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
  v3 = [v2 data];

  return v3;
}

- (double)calculatedPlaybackPosition
{
  v3 = [MEMORY[0x1E695DF00] now];
  [(MRContentItemMetadata *)self calculatedPlaybackPositionFromDate:v3];
  v5 = v4;

  return v5;
}

- (void)setPlaybackRate:(float)a3
{
  self->_playbackRate = a3;
  self->_hasPlaybackRate = 1;
  v4 = [MEMORY[0x1E695DF00] now];
  [v4 timeIntervalSinceReferenceDate];
  [(MRContentItemMetadata *)self setElapsedTimeTimestamp:?];
}

- (void)setElapsedTime:(double)a3
{
  self->_elapsedTime = a3;
  self->_hasElapsedTime = 1;
  v4 = [MEMORY[0x1E695DF00] now];
  [v4 timeIntervalSinceReferenceDate];
  [(MRContentItemMetadata *)self setElapsedTimeTimestamp:?];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_427;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_428;
  }

  v5 = [(MRContentItemMetadata *)v4 hasContainer];
  if (v5 != [(MRContentItemMetadata *)self hasContainer])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasContainer])
  {
    if ([(MRContentItemMetadata *)self hasContainer])
    {
      v6 = [(MRContentItemMetadata *)v4 isContainer];
      if (v6 != [(MRContentItemMetadata *)self isContainer])
      {
        goto LABEL_428;
      }
    }
  }

  v7 = [(MRContentItemMetadata *)v4 hasPlayable];
  if (v7 != [(MRContentItemMetadata *)self hasPlayable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasPlayable])
  {
    if ([(MRContentItemMetadata *)self hasPlayable])
    {
      v8 = [(MRContentItemMetadata *)v4 isPlayable];
      if (v8 != [(MRContentItemMetadata *)self isPlayable])
      {
        goto LABEL_428;
      }
    }
  }

  v9 = [(MRContentItemMetadata *)v4 hasExplicitItem];
  if (v9 != [(MRContentItemMetadata *)self hasExplicitItem])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasExplicitItem])
  {
    if ([(MRContentItemMetadata *)self hasExplicitItem])
    {
      v10 = [(MRContentItemMetadata *)v4 isExplicitItem];
      if (v10 != [(MRContentItemMetadata *)self isExplicitItem])
      {
        goto LABEL_428;
      }
    }
  }

  v11 = [(MRContentItemMetadata *)v4 hasStreamingContent];
  if (v11 != [(MRContentItemMetadata *)self hasStreamingContent])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasStreamingContent])
  {
    if ([(MRContentItemMetadata *)self hasStreamingContent])
    {
      v12 = [(MRContentItemMetadata *)v4 isStreamingContent];
      if (v12 != [(MRContentItemMetadata *)self isStreamingContent])
      {
        goto LABEL_428;
      }
    }
  }

  v13 = [(MRContentItemMetadata *)v4 hasCurrentlyPlaying];
  if (v13 != [(MRContentItemMetadata *)self hasCurrentlyPlaying])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasCurrentlyPlaying])
  {
    if ([(MRContentItemMetadata *)self hasCurrentlyPlaying])
    {
      v14 = [(MRContentItemMetadata *)v4 isCurrentlyPlaying];
      if (v14 != [(MRContentItemMetadata *)self isCurrentlyPlaying])
      {
        goto LABEL_428;
      }
    }
  }

  v15 = [(MRContentItemMetadata *)v4 hasAlwaysLive];
  if (v15 != [(MRContentItemMetadata *)self hasAlwaysLive])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasAlwaysLive])
  {
    if ([(MRContentItemMetadata *)self hasAlwaysLive])
    {
      v16 = [(MRContentItemMetadata *)v4 isAlwaysLive];
      if (v16 != [(MRContentItemMetadata *)self isAlwaysLive])
      {
        goto LABEL_428;
      }
    }
  }

  v17 = [(MRContentItemMetadata *)v4 hasSharable];
  if (v17 != [(MRContentItemMetadata *)self hasSharable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasSharable])
  {
    if ([(MRContentItemMetadata *)self hasSharable])
    {
      v18 = [(MRContentItemMetadata *)v4 isSharable];
      if (v18 != [(MRContentItemMetadata *)self isSharable])
      {
        goto LABEL_428;
      }
    }
  }

  v19 = [(MRContentItemMetadata *)v4 hasLiked];
  if (v19 != [(MRContentItemMetadata *)self hasLiked])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasLiked])
  {
    if ([(MRContentItemMetadata *)self hasLiked])
    {
      v20 = [(MRContentItemMetadata *)v4 isLiked];
      if (v20 != [(MRContentItemMetadata *)self isLiked])
      {
        goto LABEL_428;
      }
    }
  }

  v21 = [(MRContentItemMetadata *)v4 hasInWishList];
  if (v21 != [(MRContentItemMetadata *)self hasInWishList])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasInWishList])
  {
    if ([(MRContentItemMetadata *)self hasInWishList])
    {
      v22 = [(MRContentItemMetadata *)v4 isInWishList];
      if (v22 != [(MRContentItemMetadata *)self isInWishList])
      {
        goto LABEL_428;
      }
    }
  }

  v23 = [(MRContentItemMetadata *)v4 hasAdvertisement];
  if (v23 != [(MRContentItemMetadata *)self hasAdvertisement])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasAdvertisement])
  {
    if ([(MRContentItemMetadata *)self hasAdvertisement])
    {
      v24 = [(MRContentItemMetadata *)v4 isAdvertisement];
      if (v24 != [(MRContentItemMetadata *)self isAdvertisement])
      {
        goto LABEL_428;
      }
    }
  }

  v25 = [(MRContentItemMetadata *)v4 hasSteerable];
  if (v25 != [(MRContentItemMetadata *)self hasSteerable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasSteerable])
  {
    if ([(MRContentItemMetadata *)self hasSteerable])
    {
      v26 = [(MRContentItemMetadata *)v4 isSteerable];
      if (v26 != [(MRContentItemMetadata *)self isSteerable])
      {
        goto LABEL_428;
      }
    }
  }

  v27 = [(MRContentItemMetadata *)v4 hasLoading];
  if (v27 != [(MRContentItemMetadata *)self hasLoading])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasLoading])
  {
    if ([(MRContentItemMetadata *)self hasLoading])
    {
      v28 = [(MRContentItemMetadata *)v4 isLoading];
      if (v28 != [(MRContentItemMetadata *)self isLoading])
      {
        goto LABEL_428;
      }
    }
  }

  v29 = [(MRContentItemMetadata *)v4 hasInTransition];
  if (v29 != [(MRContentItemMetadata *)self hasInTransition])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasInTransition])
  {
    if ([(MRContentItemMetadata *)self hasInTransition])
    {
      v30 = [(MRContentItemMetadata *)v4 isInTransition];
      if (v30 != [(MRContentItemMetadata *)self isInTransition])
      {
        goto LABEL_428;
      }
    }
  }

  v31 = [(MRContentItemMetadata *)v4 hasArtworkAvailable];
  if (v31 != [(MRContentItemMetadata *)self hasArtworkAvailable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasArtworkAvailable])
  {
    if ([(MRContentItemMetadata *)self hasArtworkAvailable])
    {
      v32 = [(MRContentItemMetadata *)v4 artworkAvailable];
      if (v32 != [(MRContentItemMetadata *)self artworkAvailable])
      {
        goto LABEL_428;
      }
    }
  }

  v33 = [(MRContentItemMetadata *)v4 hasInfoAvailable];
  if (v33 != [(MRContentItemMetadata *)self hasInfoAvailable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasInfoAvailable])
  {
    if ([(MRContentItemMetadata *)self hasInfoAvailable])
    {
      v34 = [(MRContentItemMetadata *)v4 infoAvailable];
      if (v34 != [(MRContentItemMetadata *)self infoAvailable])
      {
        goto LABEL_428;
      }
    }
  }

  v35 = [(MRContentItemMetadata *)v4 hasTranscriptAlignmentsAvailable];
  if (v35 != [(MRContentItemMetadata *)self hasTranscriptAlignmentsAvailable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasTranscriptAlignmentsAvailable])
  {
    if ([(MRContentItemMetadata *)self hasTranscriptAlignmentsAvailable])
    {
      v36 = [(MRContentItemMetadata *)v4 transcriptAlignmentsAvailable];
      if (v36 != [(MRContentItemMetadata *)self transcriptAlignmentsAvailable])
      {
        goto LABEL_428;
      }
    }
  }

  v37 = [(MRContentItemMetadata *)v4 hasLanguageOptionsAvailable];
  if (v37 != [(MRContentItemMetadata *)self hasLanguageOptionsAvailable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasLanguageOptionsAvailable])
  {
    if ([(MRContentItemMetadata *)self hasLanguageOptionsAvailable])
    {
      v38 = [(MRContentItemMetadata *)v4 languageOptionsAvailable];
      if (v38 != [(MRContentItemMetadata *)self languageOptionsAvailable])
      {
        goto LABEL_428;
      }
    }
  }

  v39 = [(MRContentItemMetadata *)v4 hasLyricsAvailable];
  if (v39 != [(MRContentItemMetadata *)self hasLyricsAvailable])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasLyricsAvailable])
  {
    if ([(MRContentItemMetadata *)self hasLyricsAvailable])
    {
      v40 = [(MRContentItemMetadata *)v4 lyricsAvailable];
      if (v40 != [(MRContentItemMetadata *)self lyricsAvailable])
      {
        goto LABEL_428;
      }
    }
  }

  v41 = [(MRContentItemMetadata *)v4 hasPlaybackProgress];
  if (v41 != [(MRContentItemMetadata *)self hasPlaybackProgress])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasPlaybackProgress])
  {
    if ([(MRContentItemMetadata *)self hasPlaybackProgress])
    {
      [(MRContentItemMetadata *)v4 playbackProgress];
      v43 = v42;
      [(MRContentItemMetadata *)self playbackProgress];
      if (v43 != v44)
      {
        goto LABEL_428;
      }
    }
  }

  v45 = [(MRContentItemMetadata *)v4 hasPlaybackRate];
  if (v45 != [(MRContentItemMetadata *)self hasPlaybackRate])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasPlaybackRate])
  {
    if ([(MRContentItemMetadata *)self hasPlaybackRate])
    {
      [(MRContentItemMetadata *)v4 playbackRate];
      v47 = v46;
      [(MRContentItemMetadata *)self playbackRate];
      if (v47 != v48)
      {
        goto LABEL_428;
      }
    }
  }

  v49 = [(MRContentItemMetadata *)v4 hasDefaultPlaybackRate];
  if (v49 != [(MRContentItemMetadata *)self hasDefaultPlaybackRate])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasDefaultPlaybackRate])
  {
    if ([(MRContentItemMetadata *)self hasDefaultPlaybackRate])
    {
      [(MRContentItemMetadata *)v4 defaultPlaybackRate];
      v51 = v50;
      [(MRContentItemMetadata *)self defaultPlaybackRate];
      if (v51 != v52)
      {
        goto LABEL_428;
      }
    }
  }

  v53 = [(MRContentItemMetadata *)v4 hasDownloadProgress];
  if (v53 != [(MRContentItemMetadata *)self hasDownloadProgress])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasDownloadProgress])
  {
    if ([(MRContentItemMetadata *)self hasDownloadProgress])
    {
      [(MRContentItemMetadata *)v4 downloadProgress];
      v55 = v54;
      [(MRContentItemMetadata *)self downloadProgress];
      if (v55 != v56)
      {
        goto LABEL_428;
      }
    }
  }

  v57 = [(MRContentItemMetadata *)v4 hasPlaylistType];
  if (v57 != [(MRContentItemMetadata *)self hasPlaylistType])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasPlaylistType])
  {
    if ([(MRContentItemMetadata *)self hasPlaylistType])
    {
      v58 = [(MRContentItemMetadata *)v4 playlistType];
      if (v58 != [(MRContentItemMetadata *)self playlistType])
      {
        goto LABEL_428;
      }
    }
  }

  v59 = [(MRContentItemMetadata *)v4 hasRadioStationType];
  if (v59 != [(MRContentItemMetadata *)self hasRadioStationType])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasRadioStationType])
  {
    if ([(MRContentItemMetadata *)self hasRadioStationType])
    {
      v60 = [(MRContentItemMetadata *)v4 radioStationType];
      if (v60 != [(MRContentItemMetadata *)self radioStationType])
      {
        goto LABEL_428;
      }
    }
  }

  v61 = [(MRContentItemMetadata *)v4 hasEditingStyleFlags];
  if (v61 != [(MRContentItemMetadata *)self hasEditingStyleFlags])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasEditingStyleFlags])
  {
    if ([(MRContentItemMetadata *)self hasEditingStyleFlags])
    {
      v62 = [(MRContentItemMetadata *)v4 editingStyleFlags];
      if (v62 != [(MRContentItemMetadata *)self editingStyleFlags])
      {
        goto LABEL_428;
      }
    }
  }

  v63 = [(MRContentItemMetadata *)v4 hasMediaType];
  if (v63 != [(MRContentItemMetadata *)self hasMediaType])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasMediaType])
  {
    if ([(MRContentItemMetadata *)self hasMediaType])
    {
      v64 = [(MRContentItemMetadata *)v4 mediaType];
      if (v64 != [(MRContentItemMetadata *)self mediaType])
      {
        goto LABEL_428;
      }
    }
  }

  v65 = [(MRContentItemMetadata *)v4 hasMediaSubType];
  if (v65 != [(MRContentItemMetadata *)self hasMediaSubType])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasMediaSubType])
  {
    if ([(MRContentItemMetadata *)self hasMediaSubType])
    {
      v66 = [(MRContentItemMetadata *)v4 mediaSubType];
      if (v66 != [(MRContentItemMetadata *)self mediaSubType])
      {
        goto LABEL_428;
      }
    }
  }

  v67 = [(MRContentItemMetadata *)v4 hasEpisodeType];
  if (v67 != [(MRContentItemMetadata *)self hasEpisodeType])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasEpisodeType])
  {
    if ([(MRContentItemMetadata *)self hasEpisodeType])
    {
      v68 = [(MRContentItemMetadata *)v4 episodeType];
      if (v68 != [(MRContentItemMetadata *)self episodeType])
      {
        goto LABEL_428;
      }
    }
  }

  v69 = [(MRContentItemMetadata *)v4 hasPlayCount];
  if (v69 != [(MRContentItemMetadata *)self hasPlayCount])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasPlayCount])
  {
    if ([(MRContentItemMetadata *)self hasPlayCount])
    {
      v70 = [(MRContentItemMetadata *)v4 playCount];
      if (v70 != [(MRContentItemMetadata *)self playCount])
      {
        goto LABEL_428;
      }
    }
  }

  v71 = [(MRContentItemMetadata *)v4 hasNumberOfSections];
  if (v71 != [(MRContentItemMetadata *)self hasNumberOfSections])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasNumberOfSections])
  {
    if ([(MRContentItemMetadata *)self hasNumberOfSections])
    {
      v72 = [(MRContentItemMetadata *)v4 numberOfSections];
      if (v72 != [(MRContentItemMetadata *)self numberOfSections])
      {
        goto LABEL_428;
      }
    }
  }

  v73 = [(MRContentItemMetadata *)v4 hasChapterCount];
  if (v73 != [(MRContentItemMetadata *)self hasChapterCount])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasChapterCount])
  {
    if ([(MRContentItemMetadata *)self hasChapterCount])
    {
      v74 = [(MRContentItemMetadata *)v4 chapterCount];
      if (v74 != [(MRContentItemMetadata *)self chapterCount])
      {
        goto LABEL_428;
      }
    }
  }

  v75 = [(MRContentItemMetadata *)v4 hasTotalDiscCount];
  if (v75 != [(MRContentItemMetadata *)self hasTotalDiscCount])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasTotalDiscCount])
  {
    if ([(MRContentItemMetadata *)self hasTotalDiscCount])
    {
      v76 = [(MRContentItemMetadata *)v4 totalDiscCount];
      if (v76 != [(MRContentItemMetadata *)self totalDiscCount])
      {
        goto LABEL_428;
      }
    }
  }

  v77 = [(MRContentItemMetadata *)v4 hasTotalTrackCount];
  if (v77 != [(MRContentItemMetadata *)self hasTotalTrackCount])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasTotalTrackCount])
  {
    if ([(MRContentItemMetadata *)self hasTotalTrackCount])
    {
      v78 = [(MRContentItemMetadata *)v4 totalTrackCount];
      if (v78 != [(MRContentItemMetadata *)self totalTrackCount])
      {
        goto LABEL_428;
      }
    }
  }

  v79 = [(MRContentItemMetadata *)v4 hasDownloadState];
  if (v79 != [(MRContentItemMetadata *)self hasDownloadState])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasDownloadState])
  {
    if ([(MRContentItemMetadata *)self hasDownloadState])
    {
      v80 = [(MRContentItemMetadata *)v4 downloadState];
      if (v80 != [(MRContentItemMetadata *)self downloadState])
      {
        goto LABEL_428;
      }
    }
  }

  v81 = [(MRContentItemMetadata *)v4 hasArtworkDataWidthDeprecated];
  if (v81 != [(MRContentItemMetadata *)self hasArtworkDataWidthDeprecated])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasArtworkDataWidthDeprecated])
  {
    if ([(MRContentItemMetadata *)self hasArtworkDataWidthDeprecated])
    {
      v82 = [(MRContentItemMetadata *)v4 artworkDataWidthDeprecated];
      if (v82 != [(MRContentItemMetadata *)self artworkDataWidthDeprecated])
      {
        goto LABEL_428;
      }
    }
  }

  v83 = [(MRContentItemMetadata *)v4 hasArtworkDataHeightDeprecated];
  if (v83 != [(MRContentItemMetadata *)self hasArtworkDataHeightDeprecated])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasArtworkDataHeightDeprecated])
  {
    if ([(MRContentItemMetadata *)self hasArtworkDataHeightDeprecated])
    {
      v84 = [(MRContentItemMetadata *)v4 artworkDataHeightDeprecated];
      if (v84 != [(MRContentItemMetadata *)self artworkDataHeightDeprecated])
      {
        goto LABEL_428;
      }
    }
  }

  v85 = [(MRContentItemMetadata *)v4 hasDuration];
  if (v85 != [(MRContentItemMetadata *)self hasDuration])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasDuration])
  {
    if ([(MRContentItemMetadata *)self hasDuration])
    {
      [(MRContentItemMetadata *)v4 duration];
      v87 = v86;
      [(MRContentItemMetadata *)self duration];
      if (v87 != v88)
      {
        goto LABEL_428;
      }
    }
  }

  v89 = [(MRContentItemMetadata *)v4 hasStartTime];
  if (v89 != [(MRContentItemMetadata *)self hasStartTime])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasStartTime])
  {
    if ([(MRContentItemMetadata *)self hasStartTime])
    {
      [(MRContentItemMetadata *)v4 startTime];
      v91 = v90;
      [(MRContentItemMetadata *)self startTime];
      if (v91 != v92)
      {
        goto LABEL_428;
      }
    }
  }

  v93 = [(MRContentItemMetadata *)v4 hasElapsedTime];
  if (v93 != [(MRContentItemMetadata *)self hasElapsedTime])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasElapsedTime])
  {
    if ([(MRContentItemMetadata *)self hasElapsedTime])
    {
      [(MRContentItemMetadata *)v4 elapsedTime];
      v95 = v94;
      [(MRContentItemMetadata *)self elapsedTime];
      if (v95 != v96)
      {
        goto LABEL_428;
      }
    }
  }

  v97 = [(MRContentItemMetadata *)v4 hasElapsedTimeTimestamp];
  if (v97 != [(MRContentItemMetadata *)self hasElapsedTimeTimestamp])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasElapsedTimeTimestamp])
  {
    if ([(MRContentItemMetadata *)self hasElapsedTimeTimestamp])
    {
      [(MRContentItemMetadata *)v4 elapsedTimeTimestamp];
      v99 = v98;
      [(MRContentItemMetadata *)self elapsedTimeTimestamp];
      if (v99 != v100)
      {
        goto LABEL_428;
      }
    }
  }

  v101 = [(MRContentItemMetadata *)v4 hasInferredTimestamp];
  if (v101 != [(MRContentItemMetadata *)self hasInferredTimestamp])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasInferredTimestamp])
  {
    if ([(MRContentItemMetadata *)self hasInferredTimestamp])
    {
      [(MRContentItemMetadata *)v4 inferredTimestamp];
      v103 = v102;
      [(MRContentItemMetadata *)self inferredTimestamp];
      if (v103 != v104)
      {
        goto LABEL_428;
      }
    }
  }

  v105 = [(MRContentItemMetadata *)v4 hasSeasonNumber];
  if (v105 != [(MRContentItemMetadata *)self hasSeasonNumber])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasSeasonNumber])
  {
    if ([(MRContentItemMetadata *)self hasSeasonNumber])
    {
      v106 = [(MRContentItemMetadata *)v4 seasonNumber];
      if (v106 != [(MRContentItemMetadata *)self seasonNumber])
      {
        goto LABEL_428;
      }
    }
  }

  v107 = [(MRContentItemMetadata *)v4 hasEpisodeNumber];
  if (v107 != [(MRContentItemMetadata *)self hasEpisodeNumber])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasEpisodeNumber])
  {
    if ([(MRContentItemMetadata *)self hasEpisodeNumber])
    {
      v108 = [(MRContentItemMetadata *)v4 episodeNumber];
      if (v108 != [(MRContentItemMetadata *)self episodeNumber])
      {
        goto LABEL_428;
      }
    }
  }

  v109 = [(MRContentItemMetadata *)v4 hasDiscNumber];
  if (v109 != [(MRContentItemMetadata *)self hasDiscNumber])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasDiscNumber])
  {
    if ([(MRContentItemMetadata *)self hasDiscNumber])
    {
      v110 = [(MRContentItemMetadata *)v4 discNumber];
      if (v110 != [(MRContentItemMetadata *)self discNumber])
      {
        goto LABEL_428;
      }
    }
  }

  v111 = [(MRContentItemMetadata *)v4 hasTrackNumber];
  if (v111 != [(MRContentItemMetadata *)self hasTrackNumber])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasTrackNumber])
  {
    if ([(MRContentItemMetadata *)self hasTrackNumber])
    {
      v112 = [(MRContentItemMetadata *)v4 trackNumber];
      if (v112 != [(MRContentItemMetadata *)self trackNumber])
      {
        goto LABEL_428;
      }
    }
  }

  v113 = [(MRContentItemMetadata *)v4 hasRadioStationIdentifier];
  if (v113 != [(MRContentItemMetadata *)self hasRadioStationIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasRadioStationIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasRadioStationIdentifier])
    {
      v114 = [(MRContentItemMetadata *)v4 radioStationIdentifier];
      if (v114 != [(MRContentItemMetadata *)self radioStationIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

  v115 = [(MRContentItemMetadata *)v4 hasITunesStoreIdentifier];
  if (v115 != [(MRContentItemMetadata *)self hasITunesStoreIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasITunesStoreIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasITunesStoreIdentifier])
    {
      v116 = [(MRContentItemMetadata *)v4 iTunesStoreIdentifier];
      if (v116 != [(MRContentItemMetadata *)self iTunesStoreIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

  v117 = [(MRContentItemMetadata *)v4 hasITunesStoreSubscriptionIdentifier];
  if (v117 != [(MRContentItemMetadata *)self hasITunesStoreSubscriptionIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasITunesStoreSubscriptionIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasITunesStoreSubscriptionIdentifier])
    {
      v118 = [(MRContentItemMetadata *)v4 iTunesStoreSubscriptionIdentifier];
      if (v118 != [(MRContentItemMetadata *)self iTunesStoreSubscriptionIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

  v119 = [(MRContentItemMetadata *)v4 hasITunesStoreArtistIdentifier];
  if (v119 != [(MRContentItemMetadata *)self hasITunesStoreArtistIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasITunesStoreArtistIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasITunesStoreArtistIdentifier])
    {
      v120 = [(MRContentItemMetadata *)v4 iTunesStoreArtistIdentifier];
      if (v120 != [(MRContentItemMetadata *)self iTunesStoreArtistIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

  v121 = [(MRContentItemMetadata *)v4 hasITunesStoreAlbumIdentifier];
  if (v121 != [(MRContentItemMetadata *)self hasITunesStoreAlbumIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasITunesStoreAlbumIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasITunesStoreAlbumIdentifier])
    {
      v122 = [(MRContentItemMetadata *)v4 iTunesStoreAlbumIdentifier];
      if (v122 != [(MRContentItemMetadata *)self iTunesStoreAlbumIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

  v123 = [(MRContentItemMetadata *)v4 hasLegacyUniqueIdentifier];
  if (v123 != [(MRContentItemMetadata *)self hasLegacyUniqueIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasLegacyUniqueIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasLegacyUniqueIdentifier])
    {
      v124 = [(MRContentItemMetadata *)v4 legacyUniqueIdentifier];
      if (v124 != [(MRContentItemMetadata *)self legacyUniqueIdentifier])
      {
        goto LABEL_428;
      }
    }
  }

  v125 = [(MRContentItemMetadata *)v4 hasSongTraits];
  if (v125 != [(MRContentItemMetadata *)self hasSongTraits])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasSongTraits])
  {
    if ([(MRContentItemMetadata *)self hasSongTraits])
    {
      v126 = [(MRContentItemMetadata *)v4 songTraits];
      if (v126 != [(MRContentItemMetadata *)self songTraits])
      {
        goto LABEL_428;
      }
    }
  }

  v127 = [(MRContentItemMetadata *)v4 hasAlbumTraits];
  if (v127 != [(MRContentItemMetadata *)self hasAlbumTraits])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasAlbumTraits])
  {
    if ([(MRContentItemMetadata *)self hasAlbumTraits])
    {
      v128 = [(MRContentItemMetadata *)v4 albumTraits];
      if (v128 != [(MRContentItemMetadata *)self albumTraits])
      {
        goto LABEL_428;
      }
    }
  }

  v129 = [(MRContentItemMetadata *)v4 hasPlaylistTraits];
  if (v129 != [(MRContentItemMetadata *)self hasPlaylistTraits])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasPlaylistTraits])
  {
    if ([(MRContentItemMetadata *)self hasPlaylistTraits])
    {
      v130 = [(MRContentItemMetadata *)v4 playlistTraits];
      if (v130 != [(MRContentItemMetadata *)self playlistTraits])
      {
        goto LABEL_428;
      }
    }
  }

  v131 = [(MRContentItemMetadata *)v4 hasActiveFormatJustification];
  if (v131 != [(MRContentItemMetadata *)self hasActiveFormatJustification])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasActiveFormatJustification])
  {
    if ([(MRContentItemMetadata *)self hasActiveFormatJustification])
    {
      v132 = [(MRContentItemMetadata *)v4 activeFormatJustification];
      if (v132 != [(MRContentItemMetadata *)self activeFormatJustification])
      {
        goto LABEL_428;
      }
    }
  }

  v133 = [(MRContentItemMetadata *)v4 hasFormatTierPreference];
  if (v133 != [(MRContentItemMetadata *)self hasFormatTierPreference])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasFormatTierPreference])
  {
    if ([(MRContentItemMetadata *)self hasFormatTierPreference])
    {
      v134 = [(MRContentItemMetadata *)v4 formatTierPreference];
      if (v134 != [(MRContentItemMetadata *)self formatTierPreference])
      {
        goto LABEL_428;
      }
    }
  }

  v135 = [(MRContentItemMetadata *)v4 purchaseInfoData];
  v136 = [(MRContentItemMetadata *)self purchaseInfoData];
  v137 = v136;
  if (v135 == v136)
  {
  }

  else
  {
    v138 = [(MRContentItemMetadata *)v4 purchaseInfoData];
    v139 = [(MRContentItemMetadata *)self purchaseInfoData];
    v140 = [v138 isEqualToData:v139];

    if (!v140)
    {
      goto LABEL_428;
    }
  }

  v141 = [(MRContentItemMetadata *)v4 appMetrics];
  v142 = [(MRContentItemMetadata *)self appMetrics];
  v143 = v142;
  if (v141 == v142)
  {
  }

  else
  {
    v144 = [(MRContentItemMetadata *)v4 appMetrics];
    v145 = [(MRContentItemMetadata *)self appMetrics];
    v146 = [v144 isEqualToDictionary:v145];

    if (!v146)
    {
      goto LABEL_428;
    }
  }

  v147 = [(MRContentItemMetadata *)v4 nowPlayingInfo];
  v148 = [(MRContentItemMetadata *)self nowPlayingInfo];
  v149 = v148;
  if (v147 == v148)
  {
  }

  else
  {
    v150 = [(MRContentItemMetadata *)v4 nowPlayingInfo];
    v151 = [(MRContentItemMetadata *)self nowPlayingInfo];
    v152 = [v150 isEqualToDictionary:v151];

    if (!v152)
    {
      goto LABEL_428;
    }
  }

  v153 = [(MRContentItemMetadata *)v4 userInfo];
  v154 = [(MRContentItemMetadata *)self userInfo];
  v155 = v154;
  if (v153 == v154)
  {
  }

  else
  {
    v156 = [(MRContentItemMetadata *)v4 userInfo];
    v157 = [(MRContentItemMetadata *)self userInfo];
    v158 = [v156 isEqualToDictionary:v157];

    if (!v158)
    {
      goto LABEL_428;
    }
  }

  v159 = [(MRContentItemMetadata *)v4 deviceSpecificUserInfo];
  v160 = [(MRContentItemMetadata *)self deviceSpecificUserInfo];
  v161 = v160;
  if (v159 == v160)
  {
  }

  else
  {
    v162 = [(MRContentItemMetadata *)v4 deviceSpecificUserInfo];
    v163 = [(MRContentItemMetadata *)self deviceSpecificUserInfo];
    v164 = [v162 isEqualToDictionary:v163];

    if (!v164)
    {
      goto LABEL_428;
    }
  }

  v165 = [(MRContentItemMetadata *)v4 collectionInfo];
  v166 = [(MRContentItemMetadata *)self collectionInfo];
  v167 = v166;
  if (v165 == v166)
  {
  }

  else
  {
    v168 = [(MRContentItemMetadata *)v4 collectionInfo];
    v169 = [(MRContentItemMetadata *)self collectionInfo];
    v170 = [v168 isEqualToDictionary:v169];

    if (!v170)
    {
      goto LABEL_428;
    }
  }

  v171 = [(MRContentItemMetadata *)v4 transitionInfo];
  v172 = [(MRContentItemMetadata *)self transitionInfo];
  v173 = v172;
  if (v171 == v172)
  {
  }

  else
  {
    v174 = [(MRContentItemMetadata *)v4 transitionInfo];
    v175 = [(MRContentItemMetadata *)self transitionInfo];
    v176 = [v174 isEqualToDictionary:v175];

    if (!v176)
    {
      goto LABEL_428;
    }
  }

  v177 = [(MRContentItemMetadata *)v4 releaseDate];
  v178 = [(MRContentItemMetadata *)self releaseDate];
  v179 = v178;
  if (v177 == v178)
  {
  }

  else
  {
    v180 = [(MRContentItemMetadata *)v4 releaseDate];
    v181 = [(MRContentItemMetadata *)self releaseDate];
    v182 = [v180 isEqualToDate:v181];

    if (!v182)
    {
      goto LABEL_428;
    }
  }

  v183 = [(MRContentItemMetadata *)v4 currentPlaybackDate];
  v184 = [(MRContentItemMetadata *)self currentPlaybackDate];
  v185 = v184;
  if (v183 == v184)
  {
  }

  else
  {
    v186 = [(MRContentItemMetadata *)v4 currentPlaybackDate];
    v187 = [(MRContentItemMetadata *)self currentPlaybackDate];
    v188 = [v186 isEqualToDate:v187];

    if (!v188)
    {
      goto LABEL_428;
    }
  }

  v189 = [(MRContentItemMetadata *)v4 title];
  v190 = [(MRContentItemMetadata *)self title];
  v191 = v190;
  if (v189 == v190)
  {
  }

  else
  {
    v192 = [(MRContentItemMetadata *)v4 title];
    v193 = [(MRContentItemMetadata *)self title];
    v194 = [v192 isEqualToString:v193];

    if (!v194)
    {
      goto LABEL_428;
    }
  }

  v195 = [(MRContentItemMetadata *)v4 subtitle];
  v196 = [(MRContentItemMetadata *)self subtitle];
  v197 = v196;
  if (v195 == v196)
  {
  }

  else
  {
    v198 = [(MRContentItemMetadata *)v4 subtitle];
    v199 = [(MRContentItemMetadata *)self subtitle];
    v200 = [v198 isEqualToString:v199];

    if (!v200)
    {
      goto LABEL_428;
    }
  }

  v201 = [(MRContentItemMetadata *)v4 subtitleShort];
  v202 = [(MRContentItemMetadata *)self subtitleShort];
  v203 = v202;
  if (v201 == v202)
  {
  }

  else
  {
    v204 = [(MRContentItemMetadata *)v4 subtitleShort];
    v205 = [(MRContentItemMetadata *)self subtitleShort];
    v206 = [v204 isEqualToString:v205];

    if (!v206)
    {
      goto LABEL_428;
    }
  }

  v207 = [(MRContentItemMetadata *)v4 classicalWork];
  v208 = [(MRContentItemMetadata *)self classicalWork];
  v209 = v208;
  if (v207 == v208)
  {
  }

  else
  {
    v210 = [(MRContentItemMetadata *)v4 classicalWork];
    v211 = [(MRContentItemMetadata *)self classicalWork];
    v212 = [v210 isEqualToString:v211];

    if (!v212)
    {
      goto LABEL_428;
    }
  }

  v213 = [(MRContentItemMetadata *)v4 albumName];
  v214 = [(MRContentItemMetadata *)self albumName];
  v215 = v214;
  if (v213 == v214)
  {
  }

  else
  {
    v216 = [(MRContentItemMetadata *)v4 albumName];
    v217 = [(MRContentItemMetadata *)self albumName];
    v218 = [v216 isEqualToString:v217];

    if (!v218)
    {
      goto LABEL_428;
    }
  }

  v219 = [(MRContentItemMetadata *)v4 trackArtistName];
  v220 = [(MRContentItemMetadata *)self trackArtistName];
  v221 = v220;
  if (v219 == v220)
  {
  }

  else
  {
    v222 = [(MRContentItemMetadata *)v4 trackArtistName];
    v223 = [(MRContentItemMetadata *)self trackArtistName];
    v224 = [v222 isEqualToString:v223];

    if (!v224)
    {
      goto LABEL_428;
    }
  }

  v225 = [(MRContentItemMetadata *)v4 albumArtistName];
  v226 = [(MRContentItemMetadata *)self albumArtistName];
  v227 = v226;
  if (v225 == v226)
  {
  }

  else
  {
    v228 = [(MRContentItemMetadata *)v4 albumArtistName];
    v229 = [(MRContentItemMetadata *)self albumArtistName];
    v230 = [v228 isEqualToString:v229];

    if (!v230)
    {
      goto LABEL_428;
    }
  }

  v231 = [(MRContentItemMetadata *)v4 directorName];
  v232 = [(MRContentItemMetadata *)self directorName];
  v233 = v232;
  if (v231 == v232)
  {
  }

  else
  {
    v234 = [(MRContentItemMetadata *)v4 directorName];
    v235 = [(MRContentItemMetadata *)self directorName];
    v236 = [v234 isEqualToString:v235];

    if (!v236)
    {
      goto LABEL_428;
    }
  }

  v237 = [(MRContentItemMetadata *)v4 localizedContentRating];
  v238 = [(MRContentItemMetadata *)self localizedContentRating];
  v239 = v238;
  if (v237 == v238)
  {
  }

  else
  {
    v240 = [(MRContentItemMetadata *)v4 localizedContentRating];
    v241 = [(MRContentItemMetadata *)self localizedContentRating];
    v242 = [v240 isEqualToString:v241];

    if (!v242)
    {
      goto LABEL_428;
    }
  }

  v243 = [(MRContentItemMetadata *)v4 collectionIdentifier];
  v244 = [(MRContentItemMetadata *)self collectionIdentifier];
  v245 = v244;
  if (v243 == v244)
  {
  }

  else
  {
    v246 = [(MRContentItemMetadata *)v4 collectionIdentifier];
    v247 = [(MRContentItemMetadata *)self collectionIdentifier];
    v248 = [v246 isEqualToString:v247];

    if (!v248)
    {
      goto LABEL_428;
    }
  }

  v249 = [(MRContentItemMetadata *)v4 profileIdentifier];
  v250 = [(MRContentItemMetadata *)self profileIdentifier];
  v251 = v250;
  if (v249 == v250)
  {
  }

  else
  {
    v252 = [(MRContentItemMetadata *)v4 profileIdentifier];
    v253 = [(MRContentItemMetadata *)self profileIdentifier];
    v254 = [v252 isEqualToString:v253];

    if (!v254)
    {
      goto LABEL_428;
    }
  }

  v255 = [(MRContentItemMetadata *)v4 assetURL];
  v256 = [(MRContentItemMetadata *)self assetURL];
  v257 = v256;
  if (v255 == v256)
  {
  }

  else
  {
    v258 = [(MRContentItemMetadata *)v4 assetURL];
    v259 = [(MRContentItemMetadata *)self assetURL];
    v260 = [v258 isEqual:v259];

    if (!v260)
    {
      goto LABEL_428;
    }
  }

  v261 = [(MRContentItemMetadata *)v4 composer];
  v262 = [(MRContentItemMetadata *)self composer];
  v263 = v262;
  if (v261 == v262)
  {
  }

  else
  {
    v264 = [(MRContentItemMetadata *)v4 composer];
    v265 = [(MRContentItemMetadata *)self composer];
    v266 = [v264 isEqualToString:v265];

    if (!v266)
    {
      goto LABEL_428;
    }
  }

  v267 = [(MRContentItemMetadata *)v4 genre];
  v268 = [(MRContentItemMetadata *)self genre];
  v269 = v268;
  if (v267 == v268)
  {
  }

  else
  {
    v270 = [(MRContentItemMetadata *)v4 genre];
    v271 = [(MRContentItemMetadata *)self genre];
    v272 = [v270 isEqualToString:v271];

    if (!v272)
    {
      goto LABEL_428;
    }
  }

  v273 = [(MRContentItemMetadata *)v4 contentIdentifier];
  v274 = [(MRContentItemMetadata *)self contentIdentifier];
  v275 = v274;
  if (v273 == v274)
  {
  }

  else
  {
    v276 = [(MRContentItemMetadata *)v4 contentIdentifier];
    v277 = [(MRContentItemMetadata *)self contentIdentifier];
    v278 = [v276 isEqualToString:v277];

    if (!v278)
    {
      goto LABEL_428;
    }
  }

  v279 = [(MRContentItemMetadata *)v4 internationalStandardRecordingCode];
  v280 = [(MRContentItemMetadata *)self internationalStandardRecordingCode];
  v281 = v280;
  if (v279 == v280)
  {
  }

  else
  {
    v282 = [(MRContentItemMetadata *)v4 internationalStandardRecordingCode];
    v283 = [(MRContentItemMetadata *)self internationalStandardRecordingCode];
    v284 = [v282 isEqualToString:v283];

    if (!v284)
    {
      goto LABEL_428;
    }
  }

  v285 = [(MRContentItemMetadata *)v4 radioStationName];
  v286 = [(MRContentItemMetadata *)self radioStationName];
  v287 = v286;
  if (v285 == v286)
  {
  }

  else
  {
    v288 = [(MRContentItemMetadata *)v4 radioStationName];
    v289 = [(MRContentItemMetadata *)self radioStationName];
    v290 = [v288 isEqualToString:v289];

    if (!v290)
    {
      goto LABEL_428;
    }
  }

  v291 = [(MRContentItemMetadata *)v4 radioStationString];
  v292 = [(MRContentItemMetadata *)self radioStationString];
  v293 = v292;
  if (v291 == v292)
  {
  }

  else
  {
    v294 = [(MRContentItemMetadata *)v4 radioStationString];
    v295 = [(MRContentItemMetadata *)self radioStationString];
    v296 = [v294 isEqualToString:v295];

    if (!v296)
    {
      goto LABEL_428;
    }
  }

  v297 = [(MRContentItemMetadata *)v4 seriesName];
  v298 = [(MRContentItemMetadata *)self seriesName];
  v299 = v298;
  if (v297 == v298)
  {
  }

  else
  {
    v300 = [(MRContentItemMetadata *)v4 seriesName];
    v301 = [(MRContentItemMetadata *)self seriesName];
    v302 = [v300 isEqualToString:v301];

    if (!v302)
    {
      goto LABEL_428;
    }
  }

  v303 = [(MRContentItemMetadata *)v4 lyricsURL];
  v304 = [(MRContentItemMetadata *)self lyricsURL];
  v305 = v304;
  if (v303 == v304)
  {
  }

  else
  {
    v306 = [(MRContentItemMetadata *)v4 lyricsURL];
    v307 = [(MRContentItemMetadata *)self lyricsURL];
    v308 = [v306 isEqual:v307];

    if (!v308)
    {
      goto LABEL_428;
    }
  }

  v309 = [(MRContentItemMetadata *)v4 serviceIdentifier];
  v310 = [(MRContentItemMetadata *)self serviceIdentifier];
  v311 = v310;
  if (v309 == v310)
  {
  }

  else
  {
    v312 = [(MRContentItemMetadata *)v4 serviceIdentifier];
    v313 = [(MRContentItemMetadata *)self serviceIdentifier];
    v314 = [v312 isEqualToString:v313];

    if (!v314)
    {
      goto LABEL_428;
    }
  }

  v315 = [(MRContentItemMetadata *)v4 brandIdentifier];
  v316 = [(MRContentItemMetadata *)self brandIdentifier];
  v317 = v316;
  if (v315 == v316)
  {
  }

  else
  {
    v318 = [(MRContentItemMetadata *)v4 brandIdentifier];
    v319 = [(MRContentItemMetadata *)self brandIdentifier];
    v320 = [v318 isEqualToString:v319];

    if (!v320)
    {
      goto LABEL_428;
    }
  }

  v321 = [(MRContentItemMetadata *)v4 durationStringLocalizationKey];
  v322 = [(MRContentItemMetadata *)self durationStringLocalizationKey];
  v323 = v322;
  if (v321 == v322)
  {
  }

  else
  {
    v324 = [(MRContentItemMetadata *)v4 durationStringLocalizationKey];
    v325 = [(MRContentItemMetadata *)self durationStringLocalizationKey];
    v326 = [v324 isEqualToString:v325];

    if (!v326)
    {
      goto LABEL_428;
    }
  }

  v327 = [(MRContentItemMetadata *)v4 localizedDurationString];
  v328 = [(MRContentItemMetadata *)self localizedDurationString];
  v329 = v328;
  if (v327 == v328)
  {
  }

  else
  {
    v330 = [(MRContentItemMetadata *)v4 localizedDurationString];
    v331 = [(MRContentItemMetadata *)self localizedDurationString];
    v332 = [v330 isEqualToString:v331];

    if (!v332)
    {
      goto LABEL_428;
    }
  }

  v333 = [(MRContentItemMetadata *)v4 artworkIdentifier];
  v334 = [(MRContentItemMetadata *)self artworkIdentifier];
  v335 = v334;
  if (v333 == v334)
  {
  }

  else
  {
    v336 = [(MRContentItemMetadata *)v4 artworkIdentifier];
    v337 = [(MRContentItemMetadata *)self artworkIdentifier];
    v338 = [v336 isEqualToString:v337];

    if (!v338)
    {
      goto LABEL_428;
    }
  }

  v339 = [(MRContentItemMetadata *)v4 artworkMIMEType];
  v340 = [(MRContentItemMetadata *)self artworkMIMEType];
  v341 = v340;
  if (v339 == v340)
  {
  }

  else
  {
    v342 = [(MRContentItemMetadata *)v4 artworkMIMEType];
    v343 = [(MRContentItemMetadata *)self artworkMIMEType];
    v344 = [v342 isEqualToString:v343];

    if (!v344)
    {
      goto LABEL_428;
    }
  }

  v345 = [(MRContentItemMetadata *)v4 artworkURL];
  v346 = [(MRContentItemMetadata *)self artworkURL];
  v347 = v346;
  if (v345 == v346)
  {
  }

  else
  {
    v348 = [(MRContentItemMetadata *)v4 artworkURL];
    v349 = [(MRContentItemMetadata *)self artworkURL];
    v350 = [v348 isEqual:v349];

    if (!v350)
    {
      goto LABEL_428;
    }
  }

  v351 = [(MRContentItemMetadata *)v4 artworkFileURL];
  v352 = [(MRContentItemMetadata *)self artworkFileURL];
  v353 = v352;
  if (v351 == v352)
  {
  }

  else
  {
    v354 = [(MRContentItemMetadata *)v4 artworkFileURL];
    v355 = [(MRContentItemMetadata *)self artworkFileURL];
    v356 = [v354 isEqual:v355];

    if (!v356)
    {
      goto LABEL_428;
    }
  }

  v357 = [(MRContentItemMetadata *)v4 artworkURLTemplates];
  v358 = [(MRContentItemMetadata *)self artworkURLTemplates];
  v359 = v358;
  if (v357 == v358)
  {
  }

  else
  {
    v360 = [(MRContentItemMetadata *)v4 artworkURLTemplates];
    v361 = [(MRContentItemMetadata *)self artworkURLTemplates];
    v362 = [v360 isEqualToArray:v361];

    if (!v362)
    {
      goto LABEL_428;
    }
  }

  v363 = [(MRContentItemMetadata *)v4 albumYear];
  v364 = [(MRContentItemMetadata *)self albumYear];
  v365 = v364;
  if (v363 == v364)
  {
  }

  else
  {
    v366 = [(MRContentItemMetadata *)v4 albumYear];
    v367 = [(MRContentItemMetadata *)self albumYear];
    v368 = [v366 isEqualToString:v367];

    if (!v368)
    {
      goto LABEL_428;
    }
  }

  v369 = [(MRContentItemMetadata *)v4 participantName];
  v370 = [(MRContentItemMetadata *)self participantName];
  v371 = v370;
  if (v369 == v370)
  {
  }

  else
  {
    v372 = [(MRContentItemMetadata *)v4 participantName];
    v373 = [(MRContentItemMetadata *)self participantName];
    v374 = [v372 isEqualToString:v373];

    if (!v374)
    {
      goto LABEL_428;
    }
  }

  v375 = [(MRContentItemMetadata *)v4 participantIdentifier];
  v376 = [(MRContentItemMetadata *)self participantIdentifier];
  v377 = v376;
  if (v375 == v376)
  {
  }

  else
  {
    v378 = [(MRContentItemMetadata *)v4 participantIdentifier];
    v379 = [(MRContentItemMetadata *)self participantIdentifier];
    v380 = [v378 isEqualToString:v379];

    if (!v380)
    {
      goto LABEL_428;
    }
  }

  v381 = [(MRContentItemMetadata *)v4 hasIsResolvableParticipant];
  if (v381 != [(MRContentItemMetadata *)self hasIsResolvableParticipant])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasIsResolvableParticipant])
  {
    if ([(MRContentItemMetadata *)self hasIsResolvableParticipant])
    {
      v382 = [(MRContentItemMetadata *)v4 isResolvableParticipant];
      if (v382 != [(MRContentItemMetadata *)self isResolvableParticipant])
      {
        goto LABEL_428;
      }
    }
  }

  v383 = [(MRContentItemMetadata *)v4 hasExcludeFromSuggestions];
  if (v383 != [(MRContentItemMetadata *)self hasExcludeFromSuggestions])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasExcludeFromSuggestions])
  {
    if ([(MRContentItemMetadata *)self hasExcludeFromSuggestions])
    {
      v384 = [(MRContentItemMetadata *)v4 excludeFromSuggestions];
      if (v384 != [(MRContentItemMetadata *)self excludeFromSuggestions])
      {
        goto LABEL_428;
      }
    }
  }

  v385 = [(MRContentItemMetadata *)v4 preferredFormat];
  v386 = [(MRContentItemMetadata *)self preferredFormat];
  v387 = v386;
  if (v385 == v386)
  {
  }

  else
  {
    v388 = [(MRContentItemMetadata *)v4 preferredFormat];
    v389 = [(MRContentItemMetadata *)self preferredFormat];
    v390 = [v388 isEqual:v389];

    if (!v390)
    {
      goto LABEL_428;
    }
  }

  v391 = [(MRContentItemMetadata *)v4 activeFormat];
  v392 = [(MRContentItemMetadata *)self activeFormat];
  v393 = v392;
  if (v391 == v392)
  {
  }

  else
  {
    v394 = [(MRContentItemMetadata *)v4 activeFormat];
    v395 = [(MRContentItemMetadata *)self activeFormat];
    v396 = [v394 isEqual:v395];

    if (!v396)
    {
      goto LABEL_428;
    }
  }

  v397 = [(MRContentItemMetadata *)v4 audioRoute];
  v398 = [(MRContentItemMetadata *)self audioRoute];
  v399 = v398;
  if (v397 == v398)
  {
  }

  else
  {
    v400 = [(MRContentItemMetadata *)v4 audioRoute];
    v401 = [(MRContentItemMetadata *)self audioRoute];
    v402 = [v400 isEqual:v401];

    if (!v402)
    {
      goto LABEL_428;
    }
  }

  v403 = [(MRContentItemMetadata *)v4 alternativeFormats];
  v404 = [(MRContentItemMetadata *)self alternativeFormats];
  v405 = v404;
  if (v403 == v404)
  {

    goto LABEL_415;
  }

  v406 = [(MRContentItemMetadata *)v4 alternativeFormats];
  v407 = [(MRContentItemMetadata *)self alternativeFormats];
  v408 = [v406 isEqual:v407];

  if (!v408)
  {
LABEL_428:
    v415 = 0;
    goto LABEL_429;
  }

LABEL_415:
  v409 = [(MRContentItemMetadata *)v4 hasReportingAdamID];
  if (v409 != [(MRContentItemMetadata *)self hasReportingAdamID])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasReportingAdamID])
  {
    if ([(MRContentItemMetadata *)self hasReportingAdamID])
    {
      v410 = [(MRContentItemMetadata *)v4 reportingAdamID];
      if (v410 != [(MRContentItemMetadata *)self reportingAdamID])
      {
        goto LABEL_428;
      }
    }
  }

  v411 = [(MRContentItemMetadata *)v4 hasLyricsAdamID];
  if (v411 != [(MRContentItemMetadata *)self hasLyricsAdamID])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasLyricsAdamID])
  {
    if ([(MRContentItemMetadata *)self hasLyricsAdamID])
    {
      v412 = [(MRContentItemMetadata *)v4 lyricsAdamID];
      if (v412 != [(MRContentItemMetadata *)self lyricsAdamID])
      {
        goto LABEL_428;
      }
    }
  }

  v413 = [(MRContentItemMetadata *)v4 hasITunesStoreAlbumArtistIdentifier];
  if (v413 != [(MRContentItemMetadata *)self hasITunesStoreAlbumArtistIdentifier])
  {
    goto LABEL_428;
  }

  if ([(MRContentItemMetadata *)v4 hasITunesStoreAlbumArtistIdentifier])
  {
    if ([(MRContentItemMetadata *)self hasITunesStoreAlbumArtistIdentifier])
    {
      v414 = [(MRContentItemMetadata *)v4 iTunesStoreAlbumArtistIdentifier];
      if (v414 != [(MRContentItemMetadata *)self iTunesStoreAlbumArtistIdentifier])
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
  v5 = [(MRContentItemMetadata *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

  v6 = [(MRContentItemMetadata *)self purchaseInfoData];
  v7 = [v6 copyWithZone:a3];
  [v5 setPurchaseInfoData:v7];

  v8 = [(MRContentItemMetadata *)self appMetrics];
  v9 = [v8 copyWithZone:a3];
  [v5 setAppMetrics:v9];

  v10 = [(MRContentItemMetadata *)self nowPlayingInfo];
  v11 = [v10 copyWithZone:a3];
  [v5 setNowPlayingInfo:v11];

  v12 = [(MRContentItemMetadata *)self userInfo];
  v13 = [v12 copyWithZone:a3];
  [v5 setUserInfo:v13];

  v14 = [(MRContentItemMetadata *)self deviceSpecificUserInfo];
  v15 = [v14 copyWithZone:a3];
  [v5 setDeviceSpecificUserInfo:v15];

  v16 = [(MRContentItemMetadata *)self collectionInfo];
  v17 = [v16 copyWithZone:a3];
  [v5 setCollectionInfo:v17];

  v18 = [(MRContentItemMetadata *)self transitionInfo];
  v19 = [v18 copyWithZone:a3];
  [v5 setTransitionInfo:v19];

  v20 = [(MRContentItemMetadata *)self releaseDate];
  v21 = [v20 copyWithZone:a3];
  [v5 setReleaseDate:v21];

  v22 = [(MRContentItemMetadata *)self currentPlaybackDate];
  v23 = [v22 copyWithZone:a3];
  [v5 setCurrentPlaybackDate:v23];

  v24 = [(MRContentItemMetadata *)self title];
  v25 = [v24 copyWithZone:a3];
  [v5 setTitle:v25];

  v26 = [(MRContentItemMetadata *)self subtitle];
  v27 = [v26 copyWithZone:a3];
  [v5 setSubtitle:v27];

  v28 = [(MRContentItemMetadata *)self subtitleShort];
  v29 = [v28 copyWithZone:a3];
  [v5 setSubtitleShort:v29];

  v30 = [(MRContentItemMetadata *)self classicalWork];
  v31 = [v30 copyWithZone:a3];
  [v5 setClassicalWork:v31];

  v32 = [(MRContentItemMetadata *)self albumName];
  v33 = [v32 copyWithZone:a3];
  [v5 setAlbumName:v33];

  v34 = [(MRContentItemMetadata *)self trackArtistName];
  v35 = [v34 copyWithZone:a3];
  [v5 setTrackArtistName:v35];

  v36 = [(MRContentItemMetadata *)self albumArtistName];
  v37 = [v36 copyWithZone:a3];
  [v5 setAlbumArtistName:v37];

  v38 = [(MRContentItemMetadata *)self directorName];
  v39 = [v38 copyWithZone:a3];
  [v5 setDirectorName:v39];

  v40 = [(MRContentItemMetadata *)self localizedContentRating];
  v41 = [v40 copyWithZone:a3];
  [v5 setLocalizedContentRating:v41];

  v42 = [(MRContentItemMetadata *)self collectionIdentifier];
  v43 = [v42 copyWithZone:a3];
  [v5 setCollectionIdentifier:v43];

  v44 = [(MRContentItemMetadata *)self profileIdentifier];
  v45 = [v44 copyWithZone:a3];
  [v5 setProfileIdentifier:v45];

  v46 = [(MRContentItemMetadata *)self assetURL];
  v47 = [v46 copyWithZone:a3];
  [v5 setAssetURL:v47];

  v48 = [(MRContentItemMetadata *)self composer];
  v49 = [v48 copyWithZone:a3];
  [v5 setComposer:v49];

  v50 = [(MRContentItemMetadata *)self genre];
  v51 = [v50 copyWithZone:a3];
  [v5 setGenre:v51];

  v52 = [(MRContentItemMetadata *)self contentIdentifier];
  v53 = [v52 copyWithZone:a3];
  [v5 setContentIdentifier:v53];

  v54 = [(MRContentItemMetadata *)self radioStationName];
  v55 = [v54 copyWithZone:a3];
  [v5 setRadioStationName:v55];

  v56 = [(MRContentItemMetadata *)self radioStationString];
  v57 = [v56 copyWithZone:a3];
  [v5 setRadioStationString:v57];

  v58 = [(MRContentItemMetadata *)self seriesName];
  v59 = [v58 copyWithZone:a3];
  [v5 setSeriesName:v59];

  v60 = [(MRContentItemMetadata *)self lyricsURL];
  v61 = [v60 copyWithZone:a3];
  [v5 setLyricsURL:v61];

  v62 = [(MRContentItemMetadata *)self serviceIdentifier];
  v63 = [v62 copyWithZone:a3];
  [v5 setServiceIdentifier:v63];

  v64 = [(MRContentItemMetadata *)self brandIdentifier];
  v65 = [v64 copyWithZone:a3];
  [v5 setBrandIdentifier:v65];

  v66 = [(MRContentItemMetadata *)self localizedDurationString];
  v67 = [v66 copyWithZone:a3];
  [v5 setLocalizedDurationString:v67];

  v68 = [(MRContentItemMetadata *)self durationStringLocalizationKey];
  v69 = [v68 copyWithZone:a3];
  [v5 setDurationStringLocalizationKey:v69];

  v70 = [(MRContentItemMetadata *)self artworkIdentifier];
  v71 = [v70 copyWithZone:a3];
  [v5 setArtworkIdentifier:v71];

  v72 = [(MRContentItemMetadata *)self artworkMIMEType];
  v73 = [v72 copyWithZone:a3];
  [v5 setArtworkMIMEType:v73];

  v74 = [(MRContentItemMetadata *)self artworkURL];
  v75 = [v74 copyWithZone:a3];
  [v5 setArtworkURL:v75];

  v76 = [(MRContentItemMetadata *)self artworkFileURL];
  v77 = [v76 copyWithZone:a3];
  [v5 setArtworkFileURL:v77];

  v78 = [(MRContentItemMetadata *)self artworkURLTemplates];
  v79 = [v78 copyWithZone:a3];
  [v5 setArtworkURLTemplates:v79];

  v80 = [(MRContentItemMetadata *)self albumYear];
  v81 = [v80 copyWithZone:a3];
  [v5 setAlbumYear:v81];

  v82 = [(MRContentItemMetadata *)self participantName];
  v83 = [v82 copyWithZone:a3];
  [v5 setParticipantName:v83];

  v84 = [(MRContentItemMetadata *)self participantIdentifier];
  v85 = [v84 copyWithZone:a3];
  [v5 setParticipantIdentifier:v85];

  if ([(MRContentItemMetadata *)self hasIsResolvableParticipant])
  {
    [v5 setIsResolvableParticipant:{-[MRContentItemMetadata isResolvableParticipant](self, "isResolvableParticipant")}];
  }

  if ([(MRContentItemMetadata *)self hasExcludeFromSuggestions])
  {
    [v5 setExcludeFromSuggestions:{-[MRContentItemMetadata excludeFromSuggestions](self, "excludeFromSuggestions")}];
  }

  v86 = [(MRContentItemMetadata *)self preferredFormat];
  v87 = [v86 copyWithZone:a3];
  [v5 setPreferredFormat:v87];

  v88 = [(MRContentItemMetadata *)self activeFormat];
  v89 = [v88 copyWithZone:a3];
  [v5 setActiveFormat:v89];

  v90 = [(MRContentItemMetadata *)self audioRoute];
  v91 = [v90 copyWithZone:a3];
  [v5 setAudioRoute:v91];

  v92 = [(MRContentItemMetadata *)self alternativeFormats];
  if (v92)
  {
    v93 = objc_alloc(MEMORY[0x1E695DEC8]);
    v94 = [(MRContentItemMetadata *)self alternativeFormats];
    v95 = [v93 initWithArray:v94 copyItems:1];
    [v5 setAlternativeFormats:v95];
  }

  else
  {
    [v5 setAlternativeFormats:0];
  }

  v96 = [(MRContentItemMetadata *)self internationalStandardRecordingCode];
  v97 = [v96 copyWithZone:a3];
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

- (double)calculatedPlaybackPositionFromDate:(id)a3
{
  v4 = a3;
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

    [v4 timeIntervalSinceReferenceDate];
    v11 = v10 - v7;
    [(MRContentItemMetadata *)self elapsedTime];
    v5 = v12 + v11 * v8;
  }

  return v5;
}

- (void)mergeFrom:(id)a3
{
  v121 = a3;
  if (self != v121)
  {
    if ([(MRContentItemMetadata *)v121 hasContainer])
    {
      [(MRContentItemMetadata *)self setContainer:[(MRContentItemMetadata *)v121 isContainer]];
    }

    if ([(MRContentItemMetadata *)v121 hasPlayable])
    {
      [(MRContentItemMetadata *)self setPlayable:[(MRContentItemMetadata *)v121 isPlayable]];
    }

    if ([(MRContentItemMetadata *)v121 hasExplicitItem])
    {
      [(MRContentItemMetadata *)self setExplicitItem:[(MRContentItemMetadata *)v121 isExplicitItem]];
    }

    if ([(MRContentItemMetadata *)v121 hasStreamingContent])
    {
      [(MRContentItemMetadata *)self setStreamingContent:[(MRContentItemMetadata *)v121 isStreamingContent]];
    }

    if ([(MRContentItemMetadata *)v121 hasCurrentlyPlaying])
    {
      [(MRContentItemMetadata *)self setCurrentlyPlaying:[(MRContentItemMetadata *)v121 isCurrentlyPlaying]];
    }

    if ([(MRContentItemMetadata *)v121 hasAlwaysLive])
    {
      [(MRContentItemMetadata *)self setAlwaysLive:[(MRContentItemMetadata *)v121 isAlwaysLive]];
    }

    if ([(MRContentItemMetadata *)v121 hasSharable])
    {
      [(MRContentItemMetadata *)self setSharable:[(MRContentItemMetadata *)v121 isSharable]];
    }

    if ([(MRContentItemMetadata *)v121 hasLiked])
    {
      [(MRContentItemMetadata *)self setLiked:[(MRContentItemMetadata *)v121 isLiked]];
    }

    if ([(MRContentItemMetadata *)v121 hasInWishList])
    {
      [(MRContentItemMetadata *)self setInWishList:[(MRContentItemMetadata *)v121 isInWishList]];
    }

    if ([(MRContentItemMetadata *)v121 hasAdvertisement])
    {
      [(MRContentItemMetadata *)self setAdvertisement:[(MRContentItemMetadata *)v121 isAdvertisement]];
    }

    if ([(MRContentItemMetadata *)v121 hasSteerable])
    {
      [(MRContentItemMetadata *)self setSteerable:[(MRContentItemMetadata *)v121 isSteerable]];
    }

    if ([(MRContentItemMetadata *)v121 hasLoading])
    {
      [(MRContentItemMetadata *)self setLoading:[(MRContentItemMetadata *)v121 isLoading]];
    }

    if ([(MRContentItemMetadata *)v121 hasInTransition])
    {
      [(MRContentItemMetadata *)self setInTransition:[(MRContentItemMetadata *)v121 isInTransition]];
    }

    if ([(MRContentItemMetadata *)v121 hasArtworkAvailable])
    {
      [(MRContentItemMetadata *)self setArtworkAvailable:[(MRContentItemMetadata *)v121 artworkAvailable]];
    }

    if ([(MRContentItemMetadata *)v121 hasInfoAvailable])
    {
      [(MRContentItemMetadata *)self setInfoAvailable:[(MRContentItemMetadata *)v121 infoAvailable]];
    }

    if ([(MRContentItemMetadata *)v121 hasTranscriptAlignmentsAvailable])
    {
      [(MRContentItemMetadata *)self setTranscriptAlignmentsAvailable:[(MRContentItemMetadata *)v121 transcriptAlignmentsAvailable]];
    }

    if ([(MRContentItemMetadata *)v121 hasLanguageOptionsAvailable])
    {
      [(MRContentItemMetadata *)self setLanguageOptionsAvailable:[(MRContentItemMetadata *)v121 languageOptionsAvailable]];
    }

    if ([(MRContentItemMetadata *)v121 hasLyricsAvailable])
    {
      [(MRContentItemMetadata *)self setLyricsAvailable:[(MRContentItemMetadata *)v121 lyricsAvailable]];
    }

    if ([(MRContentItemMetadata *)v121 hasPlaybackProgress])
    {
      [(MRContentItemMetadata *)v121 playbackProgress];
      [(MRContentItemMetadata *)self setPlaybackProgress:?];
    }

    if ([(MRContentItemMetadata *)v121 hasPlaybackRate])
    {
      [(MRContentItemMetadata *)v121 playbackRate];
      [(MRContentItemMetadata *)self setPlaybackRate:?];
    }

    if ([(MRContentItemMetadata *)v121 hasDefaultPlaybackRate])
    {
      [(MRContentItemMetadata *)v121 defaultPlaybackRate];
      [(MRContentItemMetadata *)self setDefaultPlaybackRate:?];
    }

    if ([(MRContentItemMetadata *)v121 hasDownloadProgress])
    {
      [(MRContentItemMetadata *)v121 downloadProgress];
      [(MRContentItemMetadata *)self setDownloadProgress:?];
    }

    if ([(MRContentItemMetadata *)v121 hasPlaylistType])
    {
      [(MRContentItemMetadata *)self setPlaylistType:[(MRContentItemMetadata *)v121 playlistType]];
    }

    if ([(MRContentItemMetadata *)v121 hasRadioStationType])
    {
      [(MRContentItemMetadata *)self setRadioStationType:[(MRContentItemMetadata *)v121 radioStationType]];
    }

    if ([(MRContentItemMetadata *)v121 hasEditingStyleFlags])
    {
      [(MRContentItemMetadata *)self setEditingStyleFlags:[(MRContentItemMetadata *)v121 editingStyleFlags]];
    }

    if ([(MRContentItemMetadata *)v121 hasMediaType])
    {
      [(MRContentItemMetadata *)self setMediaType:[(MRContentItemMetadata *)v121 mediaType]];
    }

    if ([(MRContentItemMetadata *)v121 hasMediaSubType])
    {
      [(MRContentItemMetadata *)self setMediaSubType:[(MRContentItemMetadata *)v121 mediaSubType]];
    }

    if ([(MRContentItemMetadata *)v121 hasEpisodeType])
    {
      [(MRContentItemMetadata *)self setEpisodeType:[(MRContentItemMetadata *)v121 episodeType]];
    }

    if ([(MRContentItemMetadata *)v121 hasPlayCount])
    {
      [(MRContentItemMetadata *)self setPlayCount:[(MRContentItemMetadata *)v121 playCount]];
    }

    if ([(MRContentItemMetadata *)v121 hasNumberOfSections])
    {
      [(MRContentItemMetadata *)self setNumberOfSections:[(MRContentItemMetadata *)v121 numberOfSections]];
    }

    if ([(MRContentItemMetadata *)v121 hasChapterCount])
    {
      [(MRContentItemMetadata *)self setChapterCount:[(MRContentItemMetadata *)v121 chapterCount]];
    }

    if ([(MRContentItemMetadata *)v121 hasTotalDiscCount])
    {
      [(MRContentItemMetadata *)self setTotalDiscCount:[(MRContentItemMetadata *)v121 totalDiscCount]];
    }

    if ([(MRContentItemMetadata *)v121 hasTotalTrackCount])
    {
      [(MRContentItemMetadata *)self setTotalTrackCount:[(MRContentItemMetadata *)v121 totalTrackCount]];
    }

    if ([(MRContentItemMetadata *)v121 hasDownloadState])
    {
      [(MRContentItemMetadata *)self setDownloadState:[(MRContentItemMetadata *)v121 downloadState]];
    }

    if ([(MRContentItemMetadata *)v121 hasArtworkDataWidthDeprecated])
    {
      [(MRContentItemMetadata *)self setArtworkDataWidthDeprecated:[(MRContentItemMetadata *)v121 artworkDataWidthDeprecated]];
    }

    if ([(MRContentItemMetadata *)v121 hasArtworkDataHeightDeprecated])
    {
      [(MRContentItemMetadata *)self setArtworkDataHeightDeprecated:[(MRContentItemMetadata *)v121 artworkDataHeightDeprecated]];
    }

    if ([(MRContentItemMetadata *)v121 hasDuration])
    {
      [(MRContentItemMetadata *)v121 duration];
      [(MRContentItemMetadata *)self setDuration:?];
    }

    if ([(MRContentItemMetadata *)v121 hasStartTime])
    {
      [(MRContentItemMetadata *)v121 startTime];
      [(MRContentItemMetadata *)self setStartTime:?];
    }

    if ([(MRContentItemMetadata *)v121 hasElapsedTime])
    {
      [(MRContentItemMetadata *)v121 elapsedTime];
      [(MRContentItemMetadata *)self setElapsedTime:?];
    }

    if ([(MRContentItemMetadata *)v121 hasElapsedTimeTimestamp])
    {
      [(MRContentItemMetadata *)v121 elapsedTimeTimestamp];
      [(MRContentItemMetadata *)self setElapsedTimeTimestamp:?];
    }

    if ([(MRContentItemMetadata *)v121 hasInferredTimestamp])
    {
      [(MRContentItemMetadata *)v121 inferredTimestamp];
      [(MRContentItemMetadata *)self setInferredTimestamp:?];
    }

    if ([(MRContentItemMetadata *)v121 hasSeasonNumber])
    {
      [(MRContentItemMetadata *)self setSeasonNumber:[(MRContentItemMetadata *)v121 seasonNumber]];
    }

    if ([(MRContentItemMetadata *)v121 hasEpisodeNumber])
    {
      [(MRContentItemMetadata *)self setEpisodeNumber:[(MRContentItemMetadata *)v121 episodeNumber]];
    }

    if ([(MRContentItemMetadata *)v121 hasDiscNumber])
    {
      [(MRContentItemMetadata *)self setDiscNumber:[(MRContentItemMetadata *)v121 discNumber]];
    }

    if ([(MRContentItemMetadata *)v121 hasTrackNumber])
    {
      [(MRContentItemMetadata *)self setTrackNumber:[(MRContentItemMetadata *)v121 trackNumber]];
    }

    if ([(MRContentItemMetadata *)v121 hasRadioStationIdentifier])
    {
      [(MRContentItemMetadata *)self setRadioStationIdentifier:[(MRContentItemMetadata *)v121 radioStationIdentifier]];
    }

    if ([(MRContentItemMetadata *)v121 hasITunesStoreIdentifier])
    {
      [(MRContentItemMetadata *)self setITunesStoreIdentifier:[(MRContentItemMetadata *)v121 iTunesStoreIdentifier]];
    }

    if ([(MRContentItemMetadata *)v121 hasITunesStoreSubscriptionIdentifier])
    {
      [(MRContentItemMetadata *)self setITunesStoreSubscriptionIdentifier:[(MRContentItemMetadata *)v121 iTunesStoreSubscriptionIdentifier]];
    }

    if ([(MRContentItemMetadata *)v121 hasITunesStoreArtistIdentifier])
    {
      [(MRContentItemMetadata *)self setITunesStoreArtistIdentifier:[(MRContentItemMetadata *)v121 iTunesStoreArtistIdentifier]];
    }

    if ([(MRContentItemMetadata *)v121 hasITunesStoreAlbumIdentifier])
    {
      [(MRContentItemMetadata *)self setITunesStoreAlbumIdentifier:[(MRContentItemMetadata *)v121 iTunesStoreAlbumIdentifier]];
    }

    if ([(MRContentItemMetadata *)v121 hasLegacyUniqueIdentifier])
    {
      [(MRContentItemMetadata *)self setLegacyUniqueIdentifier:[(MRContentItemMetadata *)v121 legacyUniqueIdentifier]];
    }

    if ([(MRContentItemMetadata *)v121 hasSongTraits])
    {
      [(MRContentItemMetadata *)self setSongTraits:[(MRContentItemMetadata *)v121 songTraits]];
    }

    if ([(MRContentItemMetadata *)v121 hasAlbumTraits])
    {
      [(MRContentItemMetadata *)self setAlbumTraits:[(MRContentItemMetadata *)v121 albumTraits]];
    }

    if ([(MRContentItemMetadata *)v121 hasPlaylistTraits])
    {
      [(MRContentItemMetadata *)self setPlaylistTraits:[(MRContentItemMetadata *)v121 playlistTraits]];
    }

    if ([(MRContentItemMetadata *)v121 hasActiveFormatJustification])
    {
      [(MRContentItemMetadata *)self setActiveFormatJustification:[(MRContentItemMetadata *)v121 activeFormatJustification]];
    }

    if ([(MRContentItemMetadata *)v121 hasFormatTierPreference])
    {
      [(MRContentItemMetadata *)self setFormatTierPreference:[(MRContentItemMetadata *)v121 formatTierPreference]];
    }

    v4 = [(MRContentItemMetadata *)v121 purchaseInfoData];

    if (v4)
    {
      v5 = [(MRContentItemMetadata *)v121 purchaseInfoData];
      [(MRContentItemMetadata *)self setPurchaseInfoData:v5];
    }

    v6 = [(MRContentItemMetadata *)v121 appMetrics];

    if (v6)
    {
      v7 = [(MRContentItemMetadata *)v121 appMetrics];
      [(MRContentItemMetadata *)self setAppMetrics:v7];
    }

    v8 = [(MRContentItemMetadata *)v121 nowPlayingInfo];

    if (v8)
    {
      v9 = [(MRContentItemMetadata *)v121 nowPlayingInfo];
      [(MRContentItemMetadata *)self setNowPlayingInfo:v9];
    }

    v10 = [(MRContentItemMetadata *)v121 userInfo];

    if (v10)
    {
      v11 = [(MRContentItemMetadata *)v121 userInfo];
      [(MRContentItemMetadata *)self setUserInfo:v11];
    }

    v12 = [(MRContentItemMetadata *)v121 deviceSpecificUserInfo];

    if (v12)
    {
      v13 = [(MRContentItemMetadata *)v121 deviceSpecificUserInfo];
      [(MRContentItemMetadata *)self setDeviceSpecificUserInfo:v13];
    }

    v14 = [(MRContentItemMetadata *)v121 collectionInfo];

    if (v14)
    {
      v15 = [(MRContentItemMetadata *)v121 collectionInfo];
      [(MRContentItemMetadata *)self setCollectionInfo:v15];
    }

    v16 = [(MRContentItemMetadata *)v121 transitionInfo];

    if (v16)
    {
      v17 = [(MRContentItemMetadata *)v121 transitionInfo];
      [(MRContentItemMetadata *)self setTransitionInfo:v17];
    }

    v18 = [(MRContentItemMetadata *)v121 releaseDate];

    if (v18)
    {
      v19 = [(MRContentItemMetadata *)v121 releaseDate];
      [(MRContentItemMetadata *)self setReleaseDate:v19];
    }

    v20 = [(MRContentItemMetadata *)v121 currentPlaybackDate];

    if (v20)
    {
      v21 = [(MRContentItemMetadata *)v121 currentPlaybackDate];
      [(MRContentItemMetadata *)self setCurrentPlaybackDate:v21];
    }

    v22 = [(MRContentItemMetadata *)v121 title];

    if (v22)
    {
      v23 = [(MRContentItemMetadata *)v121 title];
      [(MRContentItemMetadata *)self setTitle:v23];
    }

    v24 = [(MRContentItemMetadata *)v121 subtitle];

    if (v24)
    {
      v25 = [(MRContentItemMetadata *)v121 subtitle];
      [(MRContentItemMetadata *)self setSubtitle:v25];
    }

    v26 = [(MRContentItemMetadata *)v121 subtitleShort];

    if (v26)
    {
      v27 = [(MRContentItemMetadata *)v121 subtitleShort];
      [(MRContentItemMetadata *)self setSubtitleShort:v27];
    }

    v28 = [(MRContentItemMetadata *)v121 classicalWork];

    if (v28)
    {
      v29 = [(MRContentItemMetadata *)v121 classicalWork];
      [(MRContentItemMetadata *)self setClassicalWork:v29];
    }

    v30 = [(MRContentItemMetadata *)v121 albumName];

    if (v30)
    {
      v31 = [(MRContentItemMetadata *)v121 albumName];
      [(MRContentItemMetadata *)self setAlbumName:v31];
    }

    v32 = [(MRContentItemMetadata *)v121 trackArtistName];

    if (v32)
    {
      v33 = [(MRContentItemMetadata *)v121 trackArtistName];
      [(MRContentItemMetadata *)self setTrackArtistName:v33];
    }

    v34 = [(MRContentItemMetadata *)v121 albumArtistName];

    if (v34)
    {
      v35 = [(MRContentItemMetadata *)v121 albumArtistName];
      [(MRContentItemMetadata *)self setAlbumArtistName:v35];
    }

    v36 = [(MRContentItemMetadata *)v121 directorName];

    if (v36)
    {
      v37 = [(MRContentItemMetadata *)v121 directorName];
      [(MRContentItemMetadata *)self setDirectorName:v37];
    }

    v38 = [(MRContentItemMetadata *)v121 localizedContentRating];

    if (v38)
    {
      v39 = [(MRContentItemMetadata *)v121 localizedContentRating];
      [(MRContentItemMetadata *)self setLocalizedContentRating:v39];
    }

    v40 = [(MRContentItemMetadata *)v121 collectionIdentifier];

    if (v40)
    {
      v41 = [(MRContentItemMetadata *)v121 collectionIdentifier];
      [(MRContentItemMetadata *)self setCollectionIdentifier:v41];
    }

    v42 = [(MRContentItemMetadata *)v121 profileIdentifier];

    if (v42)
    {
      v43 = [(MRContentItemMetadata *)v121 profileIdentifier];
      [(MRContentItemMetadata *)self setProfileIdentifier:v43];
    }

    v44 = [(MRContentItemMetadata *)v121 assetURL];

    if (v44)
    {
      v45 = [(MRContentItemMetadata *)v121 assetURL];
      [(MRContentItemMetadata *)self setAssetURL:v45];
    }

    v46 = [(MRContentItemMetadata *)v121 composer];

    if (v46)
    {
      v47 = [(MRContentItemMetadata *)v121 composer];
      [(MRContentItemMetadata *)self setComposer:v47];
    }

    v48 = [(MRContentItemMetadata *)v121 genre];

    if (v48)
    {
      v49 = [(MRContentItemMetadata *)v121 genre];
      [(MRContentItemMetadata *)self setGenre:v49];
    }

    v50 = [(MRContentItemMetadata *)v121 contentIdentifier];

    if (v50)
    {
      v51 = [(MRContentItemMetadata *)v121 contentIdentifier];
      [(MRContentItemMetadata *)self setContentIdentifier:v51];
    }

    v52 = [(MRContentItemMetadata *)v121 radioStationName];

    if (v52)
    {
      v53 = [(MRContentItemMetadata *)v121 radioStationName];
      [(MRContentItemMetadata *)self setRadioStationName:v53];
    }

    v54 = [(MRContentItemMetadata *)v121 radioStationString];

    if (v54)
    {
      v55 = [(MRContentItemMetadata *)v121 radioStationString];
      [(MRContentItemMetadata *)self setRadioStationString:v55];
    }

    v56 = [(MRContentItemMetadata *)v121 seriesName];

    if (v56)
    {
      v57 = [(MRContentItemMetadata *)v121 seriesName];
      [(MRContentItemMetadata *)self setSeriesName:v57];
    }

    v58 = [(MRContentItemMetadata *)v121 lyricsURL];

    if (v58)
    {
      v59 = [(MRContentItemMetadata *)v121 lyricsURL];
      [(MRContentItemMetadata *)self setLyricsURL:v59];
    }

    v60 = [(MRContentItemMetadata *)v121 serviceIdentifier];

    if (v60)
    {
      v61 = [(MRContentItemMetadata *)v121 serviceIdentifier];
      [(MRContentItemMetadata *)self setServiceIdentifier:v61];
    }

    v62 = [(MRContentItemMetadata *)v121 brandIdentifier];

    if (v62)
    {
      v63 = [(MRContentItemMetadata *)v121 brandIdentifier];
      [(MRContentItemMetadata *)self setBrandIdentifier:v63];
    }

    v64 = [(MRContentItemMetadata *)v121 localizedDurationString];

    if (v64)
    {
      v65 = [(MRContentItemMetadata *)v121 localizedDurationString];
      [(MRContentItemMetadata *)self setLocalizedDurationString:v65];
    }

    v66 = [(MRContentItemMetadata *)v121 durationStringLocalizationKey];

    if (v66)
    {
      v67 = [(MRContentItemMetadata *)v121 durationStringLocalizationKey];
      [(MRContentItemMetadata *)self setDurationStringLocalizationKey:v67];
    }

    v68 = [(MRContentItemMetadata *)v121 artworkIdentifier];

    if (v68)
    {
      v69 = [(MRContentItemMetadata *)v121 artworkIdentifier];
      [(MRContentItemMetadata *)self setArtworkIdentifier:v69];
    }

    v70 = [(MRContentItemMetadata *)v121 artworkMIMEType];

    if (v70)
    {
      v71 = [(MRContentItemMetadata *)v121 artworkMIMEType];
      [(MRContentItemMetadata *)self setArtworkMIMEType:v71];
    }

    v72 = [(MRContentItemMetadata *)v121 artworkURL];

    if (v72)
    {
      v73 = [(MRContentItemMetadata *)v121 artworkURL];
      [(MRContentItemMetadata *)self setArtworkURL:v73];
    }

    v74 = [(MRContentItemMetadata *)v121 artworkFileURL];

    if (v74)
    {
      v75 = [(MRContentItemMetadata *)v121 artworkFileURL];
      [(MRContentItemMetadata *)self setArtworkFileURL:v75];
    }

    v76 = [(MRContentItemMetadata *)v121 artworkURLTemplates];

    if (v76)
    {
      v77 = [(MRContentItemMetadata *)v121 artworkURLTemplates];
      [(MRContentItemMetadata *)self setArtworkURLTemplates:v77];
    }

    v78 = [(MRContentItemMetadata *)v121 albumYear];

    if (v78)
    {
      v79 = [(MRContentItemMetadata *)v121 albumYear];
      [(MRContentItemMetadata *)self setAlbumYear:v79];
    }

    v80 = [(MRContentItemMetadata *)v121 preferredFormat];

    if (v80)
    {
      v81 = [(MRContentItemMetadata *)v121 preferredFormat];
      [(MRContentItemMetadata *)self setPreferredFormat:v81];
    }

    v82 = [(MRContentItemMetadata *)v121 activeFormat];

    if (v82)
    {
      v83 = [(MRContentItemMetadata *)v121 activeFormat];
      [(MRContentItemMetadata *)self setActiveFormat:v83];
    }

    v84 = [(MRContentItemMetadata *)v121 audioRoute];

    if (v84)
    {
      v85 = [(MRContentItemMetadata *)v121 audioRoute];
      [(MRContentItemMetadata *)self setAudioRoute:v85];
    }

    v86 = [(MRContentItemMetadata *)v121 alternativeFormats];

    if (v86)
    {
      v87 = [(MRContentItemMetadata *)v121 alternativeFormats];
      [(MRContentItemMetadata *)self setAlternativeFormats:v87];
    }

    v88 = [(MRContentItemMetadata *)v121 participantName];

    if (v88)
    {
      v89 = [(MRContentItemMetadata *)v121 participantName];
      [(MRContentItemMetadata *)self setParticipantName:v89];
    }

    v90 = [(MRContentItemMetadata *)v121 participantIdentifier];

    if (v90)
    {
      v91 = [(MRContentItemMetadata *)v121 participantIdentifier];
      [(MRContentItemMetadata *)self setParticipantIdentifier:v91];
    }

    if ([(MRContentItemMetadata *)v121 hasIsResolvableParticipant])
    {
      [(MRContentItemMetadata *)self setIsResolvableParticipant:[(MRContentItemMetadata *)v121 isResolvableParticipant]];
    }

    if ([(MRContentItemMetadata *)v121 hasExcludeFromSuggestions])
    {
      [(MRContentItemMetadata *)self setExcludeFromSuggestions:[(MRContentItemMetadata *)v121 excludeFromSuggestions]];
    }

    v92 = [(MRContentItemMetadata *)v121 assetURL];

    if (v92)
    {
      v93 = [(MRContentItemMetadata *)v121 assetURL];
      assetURL = self->_assetURL;
      self->_assetURL = v93;
    }

    v95 = [(MRContentItemMetadata *)v121 userInfo];

    if (v95)
    {
      v96 = [(MRContentItemMetadata *)v121 userInfo];
      userInfo = self->_userInfo;
      self->_userInfo = v96;
    }

    v98 = [(MRContentItemMetadata *)v121 appMetrics];

    if (v98)
    {
      v99 = [(MRContentItemMetadata *)v121 appMetrics];
      appMetrics = self->_appMetrics;
      self->_appMetrics = v99;
    }

    v101 = [(MRContentItemMetadata *)v121 nowPlayingInfo];

    if (v101)
    {
      v102 = [(MRContentItemMetadata *)v121 nowPlayingInfo];
      nowPlayingInfo = self->_nowPlayingInfo;
      self->_nowPlayingInfo = v102;
    }

    v104 = [(MRContentItemMetadata *)v121 collectionInfo];

    if (v104)
    {
      v105 = [(MRContentItemMetadata *)v121 collectionInfo];
      collectionInfo = self->_collectionInfo;
      self->_collectionInfo = v105;
    }

    v107 = [(MRContentItemMetadata *)v121 transitionInfo];

    if (v107)
    {
      v108 = [(MRContentItemMetadata *)v121 transitionInfo];
      transitionInfo = self->_transitionInfo;
      self->_transitionInfo = v108;
    }

    v110 = [(MRContentItemMetadata *)v121 currentPlaybackDate];

    if (v110)
    {
      v111 = [(MRContentItemMetadata *)v121 currentPlaybackDate];
      currentPlaybackDate = self->_currentPlaybackDate;
      self->_currentPlaybackDate = v111;
    }

    v113 = [(MRContentItemMetadata *)v121 deviceSpecificUserInfo];

    if (v113)
    {
      v114 = [(MRContentItemMetadata *)v121 deviceSpecificUserInfo];
      deviceSpecificUserInfo = self->_deviceSpecificUserInfo;
      self->_deviceSpecificUserInfo = v114;
    }

    v116 = [(MRContentItemMetadata *)v121 artworkURLTemplates];

    if (v116)
    {
      v117 = [(MRContentItemMetadata *)v121 artworkURLTemplates];
      artworkURLTemplates = self->_artworkURLTemplates;
      self->_artworkURLTemplates = v117;
    }

    if ([(MRContentItemMetadata *)v121 hasReportingAdamID])
    {
      [(MRContentItemMetadata *)self setReportingAdamID:[(MRContentItemMetadata *)v121 reportingAdamID]];
    }

    if ([(MRContentItemMetadata *)v121 hasLyricsAdamID])
    {
      [(MRContentItemMetadata *)self setLyricsAdamID:[(MRContentItemMetadata *)v121 lyricsAdamID]];
    }

    if ([(MRContentItemMetadata *)v121 hasITunesStoreAlbumArtistIdentifier])
    {
      [(MRContentItemMetadata *)self setITunesStoreAlbumArtistIdentifier:[(MRContentItemMetadata *)v121 iTunesStoreAlbumArtistIdentifier]];
    }

    v119 = [(MRContentItemMetadata *)v121 internationalStandardRecordingCode];

    if (v119)
    {
      v120 = [(MRContentItemMetadata *)v121 internationalStandardRecordingCode];
      [(MRContentItemMetadata *)self setInternationalStandardRecordingCode:v120];
    }
  }
}

@end
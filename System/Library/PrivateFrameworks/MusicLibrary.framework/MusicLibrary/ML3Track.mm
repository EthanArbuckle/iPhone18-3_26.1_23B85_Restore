@interface ML3Track
+ (BOOL)_writeSyncDeletesToPlistWithLibrary:(id)library forPersistentIDs:(id)ds;
+ (BOOL)clearLocationFromLibrary:(id)library persistentIDs:(id)ds disableKeepLocal:(BOOL)local;
+ (BOOL)clearLocationFromLibrary:(id)library persistentIDs:(id)ds disableKeepLocal:(BOOL)local usingConnection:(id)connection;
+ (BOOL)clearPlaybackKeysFromLibrary:(id)library persistentIDs:(id)ds;
+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type canonicalizeCollections:(BOOL)collections persistentIDs:(const int64_t *)ds count:(unint64_t)count;
+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type canonicalizeCollections:(BOOL)collections persistentIDs:(const int64_t *)ds count:(unint64_t)count usingConnection:(id)connection;
+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type persistentIDs:(const int64_t *)ds count:(unint64_t)count;
+ (BOOL)libraryContentsChangeForProperty:(id)property;
+ (BOOL)registerBookmarkMetadataIdentifierFunctionOnConnection:(id)connection;
+ (BOOL)removeFromMyLibrary:(id)library deletionType:(int)type persistentIDs:(const int64_t *)ds count:(unint64_t)count;
+ (BOOL)trackValueAreInTheCloud:(id)cloud;
+ (BOOL)trackWithPersistentID:(int64_t)d existsInLibrary:(id)library;
+ (BOOL)trackWithPersistentID:(int64_t)d existsInLibraryWithConnection:(id)connection;
+ (BOOL)trackWithPersistentID:(int64_t)d visibleInLibrary:(id)library;
+ (BOOL)unlinkRedownloadableAssetsFromLibrary:(id)library persistentIDs:(id)ds deletionType:(int)type disableKeepLocal:(BOOL)local deletedFileSize:(int64_t *)size;
+ (id)_normalizedImportChapters:(id)chapters trackPersistentID:(int64_t)d;
+ (id)collectionClassesToUpdateBeforeDelete;
+ (id)containerQueryWithContainer:(id)container;
+ (id)containerQueryWithContainer:(id)container predicate:(id)predicate;
+ (id)containerQueryWithContainer:(id)container predicate:(id)predicate orderingTerms:(id)terms;
+ (id)flattenedChapterDataFromDAAPInfoDictionary:(id)dictionary trackPersistentID:(int64_t)d;
+ (id)flattenedChapterDataFromSyncInfoDictionaries:(id)dictionaries trackPersistentID:(int64_t)d;
+ (id)flattenedChapterDataWithImportChapters:(id)chapters library:(id)library trackPersistentID:(int64_t)d;
+ (id)foreignColumnForProperty:(id)property;
+ (id)foreignDatabaseTableForProperty:(id)property;
+ (id)importChaptersByParsingAsset:(id)asset;
+ (id)joinClausesForProperty:(id)property;
+ (id)orderingTermsForITTGTrackOrder:(unsigned int)order descending:(BOOL)descending;
+ (id)predicateByOptimizingComparisonPredicate:(id)predicate;
+ (id)subselectPropertyForProperty:(id)property;
+ (id)subselectStatementForProperty:(id)property;
+ (void)enumeratePathsToDeleteFromLibrary:(id)library persistentIDs:(id)ds usingBlock:(id)block;
+ (void)enumeratePathsToDeleteFromLibrary:(id)library persistentIDs:(id)ds usingConnection:(id)connection usingBlock:(id)block;
+ (void)initialize;
+ (void)populateSortOrdersOfPropertyValues:(id)values inLibrary:(id)library cachedNameOrders:(id)orders;
+ (void)updateAllBookmarkableStoreBookmarkMetadataIdentifiersOnConnection:(id)connection;
- (BOOL)_populateLocationPropertiesWithPath:(id)path protectionType:(int64_t)type fromLibrary:(id)library usingConnection:(id)connection;
- (BOOL)needsVideoSnapshot;
- (BOOL)populateArtworkCacheWithArtworkData:(id)data;
- (BOOL)updateIntegrity;
- (ML3Track)initWithDictionary:(id)dictionary inLibrary:(id)library cachedNameOrders:(id)orders usingConnection:(id)connection;
- (id)absoluteFilePath;
- (id)artworkTokenAtPlaybackTime:(double)time;
- (id)chapterTOC;
- (id)multiverseIdentifierLibraryOnly:(BOOL)only;
- (id)protocolItem;
- (id)protocolItemForDynamicUpdate;
- (id)rawIntegrity;
- (void)createVideoSnapshotAtTime:(double)time;
- (void)populateChapterDataWithImportChapters:(id)chapters;
- (void)populateLocationPropertiesWithPath:(id)path protectionType:(int64_t)type;
- (void)populateLocationPropertiesWithPath:(id)path protectionType:(int64_t)type completionBlock:(id)block;
- (void)updateCollectionCloudStatus;
- (void)updateStoreBookmarkMetadataIdentifier;
@end

@implementation ML3Track

+ (void)initialize
{
  v157[6] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    selfCopy = self;
    v3 = [ML3OrderingTerm orderingTermWithProperty:@"title_order"];
    v157[0] = v3;
    v4 = [ML3OrderingTerm orderingTermWithProperty:@"item_artist_order"];
    v157[1] = v4;
    v5 = [ML3OrderingTerm orderingTermWithProperty:@"album_order"];
    v157[2] = v5;
    v6 = [ML3OrderingTerm orderingTermWithProperty:@"album_pid"];
    v157[3] = v6;
    v7 = [ML3OrderingTerm orderingTermWithProperty:@"disc_number"];
    v157[4] = v7;
    v8 = [ML3OrderingTerm orderingTermWithProperty:@"track_number"];
    v157[5] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:6];
    v10 = ML3TrackDefaultOrderingTerms;
    ML3TrackDefaultOrderingTerms = v9;

    v11 = [ML3OrderingTerm orderingTermWithProperty:@"album_order = 0"];
    v156[0] = v11;
    v12 = [ML3OrderingTerm orderingTermWithProperty:@"album_order"];
    v156[1] = v12;
    v13 = [ML3OrderingTerm orderingTermWithProperty:@"album_pid"];
    v156[2] = v13;
    v14 = [ML3OrderingTerm orderingTermWithProperty:@"disc_number"];
    v156[3] = v14;
    v15 = [ML3OrderingTerm orderingTermWithProperty:@"track_number"];
    v156[4] = v15;
    v16 = [ML3OrderingTerm orderingTermWithProperty:?];
    v156[5] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v156 count:6];
    v18 = ML3TrackAlbumsDefaultOrderingTerms;
    ML3TrackAlbumsDefaultOrderingTerms = v17;

    v19 = [ML3OrderingTerm orderingTermWithProperty:@"album_artist_order = 0"];
    v155[0] = v19;
    v20 = [ML3OrderingTerm orderingTermWithProperty:@"album_artist_order"];
    v155[1] = v20;
    v21 = [ML3OrderingTerm orderingTermWithProperty:@"album_artist_pid"];
    v155[2] = v21;
    v22 = [ML3OrderingTerm orderingTermWithProperty:@"album_order"];
    v155[3] = v22;
    v23 = [ML3OrderingTerm orderingTermWithProperty:@"album_pid"];
    v155[4] = v23;
    v24 = [ML3OrderingTerm orderingTermWithProperty:@"disc_number"];
    v155[5] = v24;
    v25 = [ML3OrderingTerm orderingTermWithProperty:@"track_number"];
    v155[6] = v25;
    v26 = [ML3OrderingTerm orderingTermWithProperty:@"title_order"];
    v155[7] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:8];
    v28 = ML3TrackAlbumByAlbumArtistDefaultOrderingTerms;
    ML3TrackAlbumByAlbumArtistDefaultOrderingTerms = v27;

    v29 = [ML3OrderingTerm orderingTermWithProperty:@"item_artist_order"];
    v154[0] = v29;
    v30 = [ML3OrderingTerm orderingTermWithProperty:@"item_artist_pid"];
    v154[1] = v30;
    v31 = [ML3OrderingTerm orderingTermWithProperty:@"album_pid"];
    v154[2] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:3];
    v33 = ML3TrackArtistsDefaultOrderingTerms;
    ML3TrackArtistsDefaultOrderingTerms = v32;

    v34 = [ML3OrderingTerm orderingTermWithProperty:@"title_order"];
    v153[0] = v34;
    v35 = [ML3OrderingTerm orderingTermWithProperty:@"album_order"];
    v153[1] = v35;
    v36 = [ML3OrderingTerm orderingTermWithProperty:@"album_pid"];
    v153[2] = v36;
    v37 = [ML3OrderingTerm orderingTermWithProperty:@"disc_number"];
    v153[3] = v37;
    v38 = [ML3OrderingTerm orderingTermWithProperty:@"track_number"];
    v153[4] = v38;
    v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v153 count:5];
    v40 = ML3TrackArtistAllAlbumsDefaultOrderingTerms;
    ML3TrackArtistAllAlbumsDefaultOrderingTerms = v39;

    v41 = [ML3OrderingTerm orderingTermWithProperty:@"disc_number"];
    v152[0] = v41;
    v42 = [ML3OrderingTerm orderingTermWithProperty:@"track_number"];
    v152[1] = v42;
    v43 = [ML3OrderingTerm orderingTermWithProperty:@"title_order"];
    v152[2] = v43;
    v44 = [ML3OrderingTerm orderingTermWithProperty:@"item_artist_order"];
    v152[3] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:4];
    v46 = ML3TrackAlbumAllArtistsDefaultOrderingTerms;
    ML3TrackAlbumAllArtistsDefaultOrderingTerms = v45;

    v47 = [ML3OrderingTerm orderingTermWithProperty:@"disc_number"];
    v151[0] = v47;
    v48 = [ML3OrderingTerm orderingTermWithProperty:@"track_number"];
    v151[1] = v48;
    v49 = [ML3OrderingTerm orderingTermWithProperty:@"title_order"];
    v151[2] = v49;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v151 count:3];
    v51 = ML3TrackAlbumAndArtistDefaultOrderingTerms;
    ML3TrackAlbumAndArtistDefaultOrderingTerms = v50;

    v52 = [ML3OrderingTerm orderingTermWithProperty:@"composer_order"];
    v150[0] = v52;
    v53 = [ML3OrderingTerm orderingTermWithProperty:@"composer_pid"];
    v150[1] = v53;
    v54 = [ML3OrderingTerm orderingTermWithProperty:@"album_order"];
    v150[2] = v54;
    v55 = [ML3OrderingTerm orderingTermWithProperty:@"title_order"];
    v150[3] = v55;
    v56 = [MEMORY[0x277CBEA60] arrayWithObjects:v150 count:4];
    v57 = ML3TrackComposersDefaultOrderingTerms;
    ML3TrackComposersDefaultOrderingTerms = v56;

    v58 = [ML3OrderingTerm orderingTermWithProperty:@"genre_order"];
    v149[0] = v58;
    v59 = [ML3OrderingTerm orderingTermWithProperty:@"genre_id"];
    v149[1] = v59;
    v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v149 count:2];
    v61 = ML3TrackGenresDefaultOrderingTerms;
    ML3TrackGenresDefaultOrderingTerms = v60;

    v62 = [ML3OrderingTerm orderingTermWithProperty:@"item_store.date_released"];
    v148[0] = v62;
    v63 = [ML3OrderingTerm orderingTermWithProperty:@"track_number"];
    v148[1] = v63;
    v64 = [ML3OrderingTerm orderingTermWithProperty:@"title_order"];
    v148[2] = v64;
    v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:3];
    v66 = ML3TrackPodcastEpisodesDefaultOrderingTerms;
    ML3TrackPodcastEpisodesDefaultOrderingTerms = v65;

    v67 = [ML3OrderingTerm orderingTermWithProperty:@"album_order"];
    v147[0] = v67;
    v68 = [ML3OrderingTerm orderingTermWithProperty:@"album_pid"];
    v147[1] = v68;
    v69 = [ML3OrderingTerm orderingTermWithProperty:@"item_store.date_released"];
    v147[2] = v69;
    v70 = [ML3OrderingTerm orderingTermWithProperty:@"track_number"];
    v147[3] = v70;
    v71 = [ML3OrderingTerm orderingTermWithProperty:@"title_order"];
    v147[4] = v71;
    v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v147 count:5];
    v73 = ML3TrackPodcastsDefaultOrderingTerms;
    ML3TrackPodcastsDefaultOrderingTerms = v72;

    v74 = [ML3OrderingTerm orderingTermWithProperty:@"series_name_order"];
    v143 = v74;
    v75 = [ML3OrderingTerm orderingTermWithProperty:@"item_artist_pid"];
    v144 = v75;
    v76 = [ML3OrderingTerm orderingTermWithProperty:@"item_video.season_number"];
    v145 = v76;
    v77 = [ML3OrderingTerm orderingTermWithProperty:@"album_order"];
    v146[0] = v77;
    v78 = [ML3OrderingTerm orderingTermWithProperty:@"episode_sort_id"];
    v146[1] = v78;
    v79 = [ML3OrderingTerm orderingTermWithProperty:@"track_number"];
    v146[2] = v79;
    v80 = [ML3OrderingTerm orderingTermWithProperty:@"title_order"];
    v146[3] = v80;
    v81 = [MEMORY[0x277CBEA60] arrayWithObjects:&v143 count:7];
    v82 = ML3TrackTVShowEpisodesDefaultOrderingTerms;
    ML3TrackTVShowEpisodesDefaultOrderingTerms = v81;

    v133 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"genre_id", @"property", @"SELECT genre.genre_id FROM genre WHERE genre.genre", @"subselect", 0}];
    v83 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v133, @"genre.genre", 0}];
    v84 = ML3TrackSubSelectProperties;
    ML3TrackSubSelectProperties = v83;

    memcpy(__dst, &unk_27875DD88, sizeof(__dst));
    v85 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:270];
    v86 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:270];
    v87 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:270];
    v88 = 0x1FFFFFFFFFFFFBC8;
    do
    {
      v89 = *&__dst[v88 * 8 + 8640];
      v90 = *(&v144 + v88 * 8);
      v91 = v146[v88 - 1];
      v92 = v146[v88];
      v93 = v91;
      v94 = v90;
      v95 = v89;
      [v85 setObject:v95 forKeyedSubscript:v94];
      [v86 setObject:v93 forKeyedSubscript:v94];
      [v87 setObject:v92 forKeyedSubscript:v94];

      v88 += 4;
    }

    while (v88 * 8);
    v96 = [v85 copy];
    v97 = ML3TrackJoinsForProperties;
    ML3TrackJoinsForProperties = v96;

    v98 = [v86 copy];
    v99 = ML3TrackForeignDatabaseTableForProperties;
    ML3TrackForeignDatabaseTableForProperties = v98;

    v100 = [v87 copy];
    v101 = ML3TrackForeignColumnForProperties;
    ML3TrackForeignColumnForProperties = v100;

    v102 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"item_extra.title", @"title_order_section", @"title_order", @"title_order_section", @"item_extra.sort_title", @"item_artist_order_section", @"item_artist.item_artist", @"item_artist_order_section", @"item_artist_order", @"item_artist_order_section", @"item_artist.sort_item_artist", @"album_order_section", @"album.album", @"album_order_section", @"album_order = 0", @"album_order_section", @"album_order", @"album_order_section", @"album.sort_album", @"series_name_order_section", @"item_artist.series_name", @"series_name_order_section", @"series_name_order", @"series_name_order_section", @"item_artist.sort_series_name", @"album_artist_order_section", @"album_artist_order = 0", @"album_artist_order_section", @"album_artist.album_artist", @"album_artist_order_section", @"album_artist_order", @"album_artist_order_section", @"album_artist.sort_album_artist", @"composer_order_section", @"composer.composer", @"composer_order_section", @"composer_order", @"composer_order_section", @"composer.sort_composer", @"genre_order_section", @"genre.genre", @"genre_order_section", @"genre_order", 0}];
    v103 = ML3TrackSectionPropertyForProperties;
    ML3TrackSectionPropertyForProperties = v102;

    v104 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"item_extra", @"item_stats", @"item_store", @"item_playback", @"item_search", @"item_video", @"item_kvs", @"chapter", @"lyrics", @"booklet", 0}];
    v105 = ML3TrackExtraTablesToDelete;
    ML3TrackExtraTablesToDelete = v104;

    v106 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"item_extra", @"item_stats", @"item_store", @"item_playback", @"item_video", @"chapter", 0}];
    v107 = ML3TrackExtraTablesToInsert;
    ML3TrackExtraTablesToInsert = v106;

    v108 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"item_extra", @"item_pid", @"item_playback", @"item_pid", @"item_stats", @"item_pid", @"item_search", @"item_pid", @"item_store", @"item_pid", @"item_video", @"item_pid", @"item_kvs", @"item_pid", @"lyrics", @"item_pid", @"chapter", @"item_pid", @"booklet", 0}];
    v109 = ML3TrackPersistentIDForTable;
    ML3TrackPersistentIDForTable = v108;

    v140[0] = @"item_extra.genius_id";
    v140[1] = @"item_extra.content_rating_level";
    v140[2] = @"item_extra.title";
    v140[3] = @"title_order";
    v140[4] = @"title_order_section";
    v140[5] = @"item_extra.sort_title";
    v140[6] = @"item_artist_pid";
    v140[7] = @"item_artist.item_artist";
    v140[8] = @"item_artist_order";
    v140[9] = @"item_artist_order_section";
    v140[10] = @"item_artist.sort_item_artist";
    v140[11] = @"album_pid";
    v140[12] = @"album.album";
    v140[13] = @"album_order";
    v140[14] = @"album_order_section";
    v140[15] = @"album.sort_album";
    v140[16] = @"album_artist_pid";
    v140[17] = @"album_artist.album_artist";
    v140[18] = @"album_artist_order";
    v140[19] = @"album_artist_order_section";
    v140[20] = @"album_artist.sort_album_artist";
    v140[21] = @"album_artist.liked_state";
    v140[22] = @"composer_pid";
    v140[23] = @"composer.composer";
    v140[24] = @"composer_order";
    v140[25] = @"composer_order_section";
    v140[26] = @"composer.sort_composer";
    v140[27] = @"genre_id";
    v140[28] = @"genre.genre";
    v140[29] = @"genre_order";
    v140[30] = @"genre_order_section";
    v140[31] = @"disc_number";
    v140[32] = @"item_extra.disc_count";
    v140[33] = @"track_number";
    v140[34] = @"item_extra.track_count";
    v140[35] = @"item_artist.series_name";
    v140[36] = @"item_artist.sort_series_name";
    v140[37] = @"item_video.season_number";
    v140[38] = @"item_video.episode_id";
    v140[39] = @"item_store.feed_url";
    v140[40] = @"item_store.date_released";
    v140[41] = @"item_store.external_guid";
    v140[42] = @"item_extra.description";
    v140[43] = @"item_extra.comment";
    v140[44] = @"item_extra.location";
    v140[45] = @"item_extra.grouping";
    v140[46] = @"IFNULL(item_artist.series_name, item_artist.item_artist)";
    v140[47] = @"IFNULL(ML3SeasonDisplayName(item_video.season_number), album.album)";
    v140[48] = @"exclude_from_shuffle";
    v140[49] = @"(item.exclude_from_shuffle = 0)";
    v140[50] = @"media_type";
    v140[51] = @"(((item.media_type & ~65280) = 0) OR (item.media_type = 1032))";
    v140[52] = @"((item.media_type & 4128)!=0)";
    v140[53] = @"((item.media_type & 260)!=0)";
    v140[54] = @"category.category";
    v140[55] = @"item_extra.description_long";
    v140[56] = @"item_extra.collection_description";
    v140[57] = @"item_extra.location_kind_id";
    v140[58] = @"item_extra.comment";
    v140[59] = @"item_playback.eq_preset";
    v140[60] = @"item_extra.file_size";
    v140[61] = @"item_extra.total_time_ms";
    v140[62] = @"item_playback.start_time_ms";
    v140[63] = @"item_playback.stop_time_ms";
    v140[64] = @"item_extra.year";
    v140[65] = @"item_playback.bit_rate";
    v140[66] = @"item_playback.sample_rate";
    v140[67] = @"item_playback.audio_format";
    v140[68] = @"item_playback.duration";
    v140[69] = @"item_playback.gapless_heuristic_info";
    v140[70] = @"item_playback.gapless_encoding_delay";
    v140[71] = @"item_playback.gapless_encoding_drain";
    v140[72] = @"item_playback.gapless_last_frame_resynch";
    v140[73] = @"item_playback.volume_normalization_energy";
    v140[74] = @"item_extra.date_modified";
    v140[75] = @"date_added";
    v140[76] = @"item_extra.bpm";
    v140[77] = @"item_store.store_item_id";
    v140[78] = @"item_store.store_playlist_id";
    v140[79] = @"item_store.store_composer_id";
    v140[80] = @"item_store.store_genre_id";
    v140[81] = @"item_store.account_id";
    v140[82] = @"item_store.downloader_account_id";
    v140[83] = @"item_store.family_account_id";
    v140[84] = @"item_store.is_protected";
    v140[85] = @"item_store.key_id";
    v140[86] = @"item_store.date_released";
    v140[87] = @"item_video.audio_language";
    v140[88] = @"item_video.audio_track_index";
    v140[89] = @"item_video.audio_track_id";
    v140[90] = @"item_video.audio_track_locale";
    v140[91] = @"item_video.subtitle_language";
    v140[92] = @"item_video.subtitle_track_index";
    v140[93] = @"episode_sort_id";
    v140[94] = @"item_video.has_alternate_audio";
    v140[95] = @"item_video.has_subtitles";
    v140[96] = @"item_extra.content_rating";
    v140[97] = @"item_video.movie_info";
    v140[98] = @"item_extra.media_kind";
    v140[99] = @"item_extra.is_user_disabled";
    v140[100] = @"item_stats.play_count_user";
    v140[101] = @"item_stats.play_count_recent";
    v140[102] = @"item_stats.date_played";
    v140[103] = @"item_stats.date_accessed";
    v140[104] = @"item_stats.skip_count_user";
    v140[105] = @"item_stats.skip_count_recent";
    v140[106] = @"item_stats.date_skipped";
    v140[107] = @"item_stats.user_rating";
    v140[108] = @"item_stats.user_rating_is_derived";
    v140[109] = @"album.user_rating";
    v140[110] = @"album.user_rating_is_derived";
    v140[111] = @"item_stats.bookmark_time_ms";
    v140[112] = @"item_stats.remember_bookmark";
    v140[113] = @"item_stats.has_been_played";
    v140[114] = @"item_stats.hidden";
    v140[115] = @"item_stats.liked_state";
    v140[116] = @"item_stats.liked_state_changed";
    v140[117] = @"item_extra.copyright";
    v140[118] = @"lyrics.lyrics";
    v140[119] = @"lyrics.checksum";
    v140[120] = @"lyrics.pending_checksum";
    v140[121] = @"lyrics.store_lyrics_available";
    v140[122] = @"lyrics.time_synced_lyrics_available";
    v140[123] = @"item_playback.relative_volume";
    v140[124] = @"item_video.is_rental";
    v140[125] = @"item_video.is_demo";
    v140[126] = @"item_video.has_hls";
    v140[127] = @"item_store.is_ota_purchased";
    v140[128] = @"chapter.chapter_data";
    v140[129] = @"(CASE WHEN LENGTH(IFNULL(chapter.chapter_data,'')) > 0 THEN 1 ELSE 0 END)";
    v140[130] = @"container_item.container_pid";
    v140[131] = @"container_item.container_item_pid";
    v140[132] = @"container_item.position";
    v140[133] = @"ML3IsCurrentlyRestrictedMedia(item.media_type, item_extra.content_rating, item_extra.content_rating_level, (SELECT value FROM _MLDatabaseProperties WHERE key='MPExplicitContentAllowedBoolean'))";
    v140[134] = @"item_kvs.key";
    v140[135] = @"ML3TrackPropertyStoreBookmarkMetadataIdentifierFn(item.media_type, item_store.store_item_id, item_store.subscription_store_item_id, item_store.feed_url, item_store.external_guid, item.item_pid, item.item_artist_pid, item.album_pid)";
    v140[136] = @"cloud_kvs.bookmark_sync_timestamp";
    v140[137] = @"cloud_kvs.bookmark_sync_revision";
    v140[138] = @"item_store.date_purchased";
    v140[139] = @"item_store.key_platform_id";
    v140[140] = @"item_store.storefront_id";
    v140[141] = @"item_store.store_kind";
    v140[142] = @"item_store.key_versions";
    v140[143] = @"item_store.purchase_history_token";
    v140[144] = @"item_playback.codec_type";
    v140[145] = @"item_playback.codec_subtype";
    v140[146] = @"item_playback.format";
    v140[147] = @"item_playback.data_kind";
    v140[148] = @"item_playback.data_url";
    v140[149] = @"item_playback.has_video";
    v140[150] = @"item_store.key_id_2";
    v140[151] = @"item_video.has_chapter_data";
    v140[152] = @"item_video.show_sort_type";
    v140[153] = @"item_video.episode_type";
    v140[154] = @"item_video.episode_type_display_name";
    v140[155] = @"item_video.episode_sub_sort_order";
    v140[156] = @"item_store.purchase_history_id";
    v140[157] = @"item_store.sync_id";
    v140[158] = @"item_store.home_sharing_id";
    v140[159] = @"item_store.purchase_history_redownload_params";
    v140[160] = @"item_store.match_redownload_params";
    v140[174] = @"item_store.extras_url";
    v140[175] = @"item_store.vpp_is_licensed";
    v140[176] = @"item_store.vpp_org_id";
    v140[177] = @"item_store.vpp_org_name";
    v140[178] = @"item_store.sync_redownload_params";
    v140[179] = @"needs_reporting";
    v140[180] = @"item_store.subscription_store_item_id";
    v140[184] = @"album.liked_state";
    v140[185] = @"album.sync_id";
    v140[186] = @"album.album_year";
    v140[187] = @"album.liked_state_changed_date";
    v140[189] = @"item_extra.version";
    v140[190] = @"item_extra.display_version";
    v140[191] = @"item_extra.classical_work";
    v140[192] = @"item_extra.classical_movement";
    v140[193] = @"item_extra.classical_movement_count";
    v140[194] = @"item_extra.classical_movement_number";
    v140[195] = @"item_playback.progression_direction";
    v140[196] = @"item_artist.store_id";
    v140[197] = @"album_artist.store_id";
    v140[204] = @"item_store.sync_in_my_library";
    v140[205] = @"item_store.cloud_in_my_library";
    v140[206] = @"item_store.cloud_album_id";
    v140[207] = @"item_store.cloud_playback_endpoint_type";
    v140[208] = @"item_store.cloud_universal_library_id";
    v140[209] = @"item_store.asset_store_item_id";
    v140[210] = @"item_store.reporting_store_item_id";
    v140[211] = @"item.show_composer";
    v140[213] = @"item.is_music_show";
    v140[214] = @"item_video.hls_offline_playback_keys";
    v140[215] = @"item_video.is_premium";
    v140[216] = @"item_video.color_capability";
    v140[217] = @"item_video.hls_color_capability";
    v140[218] = @"item_video.video_quality";
    v140[219] = @"item_video.hls_video_quality";
    v140[220] = @"item_video.hls_playlist_url";
    v140[221] = @"item_video.audio_capability";
    v140[222] = @"item_video.hls_audio_capability";
    v140[224] = @"album_artist.cloud_universal_library_id";
    v140[226] = @"item_extra.is_preorder";
    v140[227] = @"item_video.hls_asset_traits";
    v140[228] = @"item_video.hls_key_server_url";
    v140[229] = @"item_video.hls_key_cert_url";
    v140[230] = @"item_video.hls_key_server_protocol";
    v140[231] = @"item_store.extended_playback_attribute";
    v140[161] = @"item_store.cloud_status";
    v141 = @"item_store.extended_lyrics_attribute";
    v140[162] = @"remote_location_id";
    v140[163] = @"(item.base_location_id == 0 AND item.remote_location_id == 0 AND item_store.sync_id != 0)";
    v140[164] = @"(item_store.is_protected > 0)";
    v140[165] = @"( (item.base_location_id = 0 AND item_store.playback_endpoint_type = 3) OR item_store.is_protected = 2)";
    v140[166] = @"(item.base_location_id > 0)";
    v140[167] = @"(item.base_location_id = 100)";
    v140[168] = @"(item.base_location_id > 200)";
    v140[169] = @"(item.base_location_id BETWEEN 100 AND 200)";
    v140[170] = @"(item.base_location_id >= 250)";
    v140[171] = @"(item.remote_location_id >= 50 AND item.remote_location_id < 300)";
    v140[172] = @"(item.remote_location_id >= 50 AND item.base_location_id < 250)";
    v140[173] = @"(CASE WHEN LENGTH(IFNULL(item_store.match_redownload_params, '')) > 0 THEN item_store.match_redownload_params ELSE item_store.purchase_history_redownload_params END)";
    v140[181] = @"(item.base_location_id OR item.remote_location_id)";
    v140[182] = @"(item_extra.content_rating == 1)";
    v140[183] = @"(item_extra.content_rating == 2)";
    v140[188] = @"(LENGTH(IFNULL(item_store.match_redownload_params, '')) > 0 OR LENGTH(IFNULL(item_store.purchase_history_redownload_params, '')) > 0)";
    v140[198] = @"best_artwork_token.available_artwork_token AS available_item_artwork_token";
    v140[199] = @"best_artwork_token.fetchable_artwork_token AS fetchable_item_artwork_token";
    v140[200] = @"best_artwork_token.fetchable_artwork_source_type AS fetchable_item_artwork_source_type";
    v140[201] = @"best_artwork_token.available_artwork_token AS available_item_screenshot_token";
    v140[202] = @"best_artwork_token.fetchable_artwork_token AS fetchable_item_screenshot_token";
    v140[203] = @"best_artwork_token.fetchable_artwork_source_type AS fetchable_item_screenshot_source_type";
    v140[212] = @"(CASE WHEN item.show_composer = 1 THEN composer.composer ELSE album_artist.album_artist END)";
    v140[223] = @"date_downloaded";
    v140[225] = @"item_stats.liked_state_changed_date";
    v110 = [MEMORY[0x277CBEA60] arrayWithObjects:v140 count:233];
    v111 = ML3TrackAllProperties;
    ML3TrackAllProperties = v110;

    v112 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"ML3IsCurrentlyRestrictedMedia(item.media_type, item_extra.content_rating, item_extra.content_rating_level, (SELECT value FROM _MLDatabaseProperties WHERE key='MPExplicitContentAllowedBoolean'))", @"ML3TrackPropertyStoreBookmarkMetadataIdentifierFn(item.media_type, item_store.store_item_id, item_store.subscription_store_item_id, item_store.feed_url, item_store.external_guid, item.item_pid, item.item_artist_pid, item.album_pid)", 0}];
    v113 = ML3TrackFunctionsProperties;
    ML3TrackFunctionsProperties = v112;

    v114 = objc_alloc(MEMORY[0x277CBEB38]);
    v115 = +[ML3Entity predisambiguatedProperties];
    v116 = [v114 initWithDictionary:v115];

    [selfCopy predisambiguateProperties:ML3TrackAllProperties toDictionary:v116];
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    v117 = ML3TrackFunctionsProperties;
    v118 = [v117 countByEnumeratingWithState:&v135 objects:v139 count:16];
    if (v118)
    {
      v119 = v118;
      v120 = *v136;
      do
      {
        for (i = 0; i != v119; ++i)
        {
          if (*v136 != v120)
          {
            objc_enumerationMutation(v117);
          }

          [v116 setObject:*(*(&v135 + 1) + 8 * i) forKey:*(*(&v135 + 1) + 8 * i)];
        }

        v119 = [v117 countByEnumeratingWithState:&v135 objects:v139 count:16];
      }

      while (v119);
    }

    v122 = [v116 copy];
    v123 = ML3TrackPredisambiguatedPropertyForProperties;
    ML3TrackPredisambiguatedPropertyForProperties = v122;

    v124 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"item_video.audio_track_id", @"item_video.audio_track_locale", @"base_location_id", @"item_stats.bookmark_time_ms", @"date_added", @"item_stats.date_accessed", @"item_stats.date_played", @"item_store.date_released", @"item_stats.date_skipped", @"item_stats.download_identifier", @"item_stats.has_been_played", @"item_extra.location_kind_id", @"item_stats.liked_state", @"item_stats.liked_state_changed", @"item_stats.liked_state_changed_date", @"item_extra.location", @"lyrics.lyrics", @"lyrics.checksum", @"lyrics.pending_checksum", @"item_stats.play_count_recent", @"item_stats.play_count_user", @"item_stats.skip_count_recent", @"item_stats.skip_count_user", @"album.user_rating", @"album.user_rating_is_derived", @"item_stats.user_rating", @"item_stats.user_rating_is_derived", @"cloud_kvs.bookmark_sync_timestamp", @"cloud_kvs.bookmark_sync_revision", @"item_extra.file_size", @"keep_local", @"keep_local_status", @"keep_local_status_reason", @"keep_local_constraints", 0}];
    v125 = ML3TrackContentsUnchangingProperties;
    ML3TrackContentsUnchangingProperties = v124;

    v126 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"chapter.chapter_data", @"(CASE WHEN LENGTH(IFNULL(chapter.chapter_data, '')) > 0 THEN 1 ELSE 0 END)", @"item_stats.chosen_by_auto_fill", 0}];
    v127 = ML3TrackInvisibleProperties;
    ML3TrackInvisibleProperties = v126;

    v128 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"item_stats.play_count_user", @"item_stats.play_count_recent", @"item_store.is_protected", @"keep_local", @"item_store.cloud_status", @"item_stats.needs_restore", @"date_downloaded", 0}];
    v129 = ML3TrackNoAssistantSyncProperties;
    ML3TrackNoAssistantSyncProperties = v128;

    v130 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"item_artist.item_artist", @"item_artist.sort_item_artist", @"album.album", @"album.sort_album", @"composer.composer", @"composer.sort_composer", @"album_artist.album_artist", @"album_artist.sort_album_artist", @"item_artist.series_name", @"item_artist.sort_series_name", @"genre.genre", @"ML3TrackPropertyStoreBookmarkMetadataIdentifierFn(item.media_type, item_store.store_item_id, item_store.subscription_store_item_id, item_store.feed_url, item_store.external_guid, item.item_pid, item.item_artist_pid, item.album_pid)", @"(item.base_location_id > 0)", @"(item.base_location_id = 100)", @"(item.base_location_id > 200)", @"(item.base_location_id BETWEEN 100 AND 200)", @"(item.remote_location_id >= 50 AND item.remote_location_id < 300)", @"(item.remote_location_id >= 50 AND item.base_location_id < 250)", @"(CASE WHEN LENGTH(IFNULL(item_store.match_redownload_params, '')) > 0 THEN item_store.match_redownload_params ELSE item_store.purchase_history_redownload_params END)", @"remote_location_id", @"(item.base_location_id == 0 AND item.remote_location_id == 0 AND item_store.sync_id != 0)", @"(item_store.is_protected > 0)", @"( (item.base_location_id = 0 AND item_store.playback_endpoint_type = 3) OR item_store.is_protected = 2)", @"(item.base_location_id OR item.remote_location_id)", @"(item.base_location_id >= 250)", @"(item_extra.content_rating == 1)", @"(item_extra.content_rating == 2)", @"((item_extra.total_time_ms - item_stats.bookmark_time_ms < 30000 AND item_extra.total_time_ms > 60000) OR (item_stats.bookmark_time_ms >= .95 * item_extra.total_time_ms))", @"(item.remote_location_id != 100)", @"(NOT item.in_my_library)", @"(LENGTH(IFNULL(item_store.match_redownload_params, '')) > 0 OR LENGTH(IFNULL(item_store.purchase_history_redownload_params, '')) > 0)", @"best_artwork_token.available_artwork_token AS available_item_artwork_token", @"best_artwork_token.fetchable_artwork_token AS fetchable_item_artwork_token", @"best_artwork_token.fetchable_artwork_source_type AS fetchable_item_artwork_source_type", @"best_artwork_token.available_artwork_token AS available_item_screenshot_token", @"best_artwork_token.fetchable_artwork_token AS fetchable_item_screenshot_token", @"best_artwork_token.fetchable_artwork_source_type AS fetchable_item_screenshot_source_type", @"(CASE WHEN item.show_composer = 1 THEN composer.composer ELSE album_artist.album_artist END)", @"cloud_kvs.bookmark_sync_timestamp", @"cloud_kvs.bookmark_sync_revision", @"CASE WHEN rental_playback_date_started != 0 THEN MIN(rental_playback_date_started + rental_playback_duration, rental_date_started + rental_duration) ELSE rental_date_started + rental_duration END", @"(rental_date_started + rental_duration)", 0}];
    v131 = ML3TrackUnsettableProperties;
    ML3TrackUnsettableProperties = v130;

    v132 = 8640;
    do
    {

      v132 -= 8;
    }

    while (v132);
  }
}

- (void)createVideoSnapshotAtTime:(double)time
{
  v45[1] = *MEMORY[0x277D85DE8];
  v5 = [(ML3Entity *)self valueForProperty:@"item_video.is_rental"];
  bOOLValue = [v5 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v7 = [(ML3Entity *)self valueForProperty:@"(item.base_location_id > 0)"];
    bOOLValue2 = [v7 BOOLValue];

    if (bOOLValue2)
    {
      v9 = [(ML3Entity *)self valueForProperty:@"(IFNULL(base_location.path, '') || '/' || item_extra.location)"];
      if ([v9 length])
      {
        WeakRetained = objc_loadWeakRetained(&self->super._library);
        v11 = [WeakRetained mediaFolderPathByAppendingPathComponent:v9];

        v12 = MEMORY[0x277CE6650];
        v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11 isDirectory:0];
        v14 = [v12 URLAssetWithURL:v13 options:0];

        if (([v14 hasProtectedContent] & 1) == 0)
        {
          v15 = 105.0;
          if (time <= 0.0)
          {
            time = 105.0;
          }

          v37 = 0;
          v38 = 0;
          v39 = 0;
          if (v14)
          {
            [v14 duration];
            v15 = (v37 / v38);
          }

          if (time > v15)
          {
            time = v15 * 0.5;
          }

          v16 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 134217984;
            *(&buf + 4) = time;
            _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "Generating video snapshot at time offset %g", &buf, 0xCu);
          }

          v17 = [MEMORY[0x277CE6408] assetImageGeneratorWithAsset:v14];
          memset(&v36, 0, sizeof(v36));
          CMTimeMakeWithSeconds(&v36, time, 1);
          v18 = [MEMORY[0x277CCAE60] value:&v36 withObjCType:"{?=qiIq}"];
          v45[0] = v18;
          v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];

          *&buf = 0;
          *(&buf + 1) = &buf;
          v43 = 0x2020000000;
          v44 = 0;
          v20 = dispatch_semaphore_create(0);
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __53__ML3Track_VideoSnapshot__createVideoSnapshotAtTime___block_invoke;
          v33[3] = &unk_27875CE48;
          p_buf = &buf;
          v21 = v20;
          v34 = v21;
          [v17 generateCGImagesAsynchronouslyForTimes:v19 completionHandler:v33];
          v22 = dispatch_time(0, 5000000000);
          if (dispatch_semaphore_wait(v21, v22))
          {
            v23 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *v40 = 134217984;
              timeCopy = time;
              _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_DEFAULT, "Timed out waiting for generateCGImagesAsynchronouslyForTimes: %g", v40, 0xCu);
            }

            [v17 cancelAllCGImageGeneration];
          }

          else if (*(*(&buf + 1) + 24))
          {
            v24 = +[ML3MusicLibrary devicePreferredImageFormat];
            data = [MEMORY[0x277CBEB28] data];
            DataImageDestination = MSVImageUtilitiesCreateDataImageDestination();
            if (v24)
            {
              MSVImageUtilitiesAddImageToDestination();
            }

            else
            {
              MSVImageUtilitiesAddJPEGToDestination();
            }

            v26 = CGImageDestinationFinalize(DataImageDestination);
            CFRelease(DataImageDestination);
            CFRelease(*(*(&buf + 1) + 24));
            if (v26)
            {
              uUID = [MEMORY[0x277CCAD78] UUID];
              uUIDString = [uUID UUIDString];

              library = [(ML3Entity *)self library];
              [library importArtworkTokenForEntityPersistentID:-[ML3Entity persistentID](self entityType:"persistentID") artworkToken:0 artworkType:uUIDString sourceType:{2, 300}];
              v30 = [(ML3Entity *)self valueForProperty:@"media_type"];
              unsignedIntValue = [v30 unsignedIntValue];

              [library importOriginalArtworkFromImageData:data withArtworkToken:uUIDString artworkType:2 sourceType:300 mediaType:unsignedIntValue];
            }
          }

          _Block_object_dispose(&buf, 8);
        }
      }
    }
  }
}

intptr_t __53__ML3Track_VideoSnapshot__createVideoSnapshotAtTime___block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  if (cf)
  {
    *(*(*(a1 + 40) + 8) + 24) = CFRetain(cf);
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (BOOL)needsVideoSnapshot
{
  v3 = [(ML3Entity *)self valueForProperty:@"best_artwork_token.available_artwork_token AS available_item_screenshot_token"];
  if ([v3 length])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ML3Entity *)self valueForProperty:@"media_type"];
    unsignedIntValue = [v5 unsignedIntValue];

    v4 = unsignedIntValue == 512 || unsignedIntValue == 0x2000;
  }

  return v4;
}

- (void)updateStoreBookmarkMetadataIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  supportsUbiquitousPlaybackPositions = [WeakRetained supportsUbiquitousPlaybackPositions];

  if (supportsUbiquitousPlaybackPositions)
  {
    v5 = [(ML3Entity *)self valueForProperty:@"item_kvs.key"];
    if ([v5 length])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [(ML3Entity *)self valueForProperty:@"item_stats.remember_bookmark"];
    if ([v8 BOOLValue] && ((-[ML3Entity valueForProperty:](self, "valueForProperty:", @"ML3TrackPropertyStoreBookmarkMetadataIdentifierFn(item.media_type, item_store.store_item_id, item_store.subscription_store_item_id, item_store.feed_url, item_store.external_guid, item.item_pid, item.item_artist_pid, item.album_pid)"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "length")) ? (v10 = v9) : (v10 = 0), v11 = v10, v9, v11))
    {
      if (v7)
      {
        v12 = v7;
      }

      else
      {
        v12 = &stru_28408B690;
      }

      if (([v11 isEqualToString:v12] & 1) == 0)
      {
        [(ML3Entity *)self setValue:v11 forProperty:@"item_kvs.key"];
      }
    }

    else
    {
      if (v7)
      {
        library = [(ML3Entity *)self library];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __49__ML3Track_updateStoreBookmarkMetadataIdentifier__block_invoke;
        v14[3] = &unk_278760178;
        v14[4] = self;
        [library performDatabaseTransactionWithBlock:v14];
      }

      v9 = 0;
    }
  }
}

uint64_t __49__ML3Track_updateStoreBookmarkMetadataIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 numberWithLongLong:{objc_msgSend(v3, "persistentID")}];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  [v4 executeUpdate:@"DELETE FROM item_kvs WHERE item_pid = ?" withParameters:v6 error:0];

  return 1;
}

- (void)updateCollectionCloudStatus
{
  v15 = *MEMORY[0x277D85DE8];
  v13[0] = xmmword_278760148;
  v13[1] = *off_278760158;
  v14 = @"genre_id";
  v12[0] = objc_opt_class();
  v12[1] = objc_opt_class();
  v12[2] = objc_opt_class();
  v12[3] = objc_opt_class();
  v12[4] = objc_opt_class();
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  [(ML3Entity *)self getValues:v10 forProperties:v13 count:5];
  for (i = 0; i != 5; ++i)
  {
    longLongValue = [*(v10 + i * 8) longLongValue];
    if (longLongValue)
    {
      v5 = longLongValue;
      v6 = v12[i];
      WeakRetained = objc_loadWeakRetained(&self->super._library);
      v8 = [v6 newWithPersistentID:v5 inLibrary:WeakRetained];

      [v8 updateCloudStatus];
    }
  }

  for (j = 32; j != -8; j -= 8)
  {
  }
}

- (id)artworkTokenAtPlaybackTime:(double)time
{
  if (time < 0.0 || ([(ML3Track *)self chapterTOC], (v5 = objc_claimAutoreleasedReturnValue()) == 0) || (v6 = v5, [ML3MusicLibrary artworkTokenForChapterWithItemPID:[(ML3Entity *)self persistentID] retrievalTime:time], v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = [(ML3Entity *)self valueForProperty:@"best_artwork_token.available_artwork_token AS available_item_artwork_token"];
  }

  return v7;
}

- (id)chapterTOC
{
  v3 = [(ML3Entity *)self valueForProperty:@"chapter.chapter_data"];
  v4 = [v3 length];
  if (v4)
  {
    [v3 bytes];
    v4 = 0;
    if (!ChapterData_CreateWithFlattenedData())
    {
      v4 = [[ML3ChapterTOC alloc] initWithChapterDataRef:0 track:self];
    }
  }

  return v4;
}

- (id)rawIntegrity
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3958;
  v11 = __Block_byref_object_dispose__3959;
  v12 = 0;
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__ML3Track_rawIntegrity__block_invoke;
  v6[3] = &unk_2787651A8;
  v6[4] = self;
  v6[5] = &v7;
  [WeakRetained databaseConnectionAllowingWrites:0 withBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __24__ML3Track_rawIntegrity__block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(*(a1 + 32) + 16);
  v5 = a2;
  v6 = [v3 numberWithLongLong:v4];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [v5 executeQuery:@"SELECT integrity FROM item_extra WHERE item_pid = ?" withParameters:v7];

  v9 = [v8 objectForFirstRowAndColumn];
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

- (BOOL)updateIntegrity
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = [(ML3Entity *)self valueForProperty:@"ML3TrackIntegrityCompute(item.item_pid, item.media_type, item_extra.location, item_extra.file_size)"];
  v4 = v3;
  if (v3)
  {
    null = v3;
  }

  else
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v6 = null;

  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__ML3Track_updateIntegrity__block_invoke;
  v11[3] = &unk_278763398;
  v14 = &v15;
  v8 = v6;
  v12 = v8;
  selfCopy = self;
  [WeakRetained databaseConnectionAllowingWrites:1 withBlock:v11];

  v9 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v9;
}

void __27__ML3Track_updateIntegrity__block_invoke(void *a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = a1[5];
  v10[0] = a1[4];
  v4 = MEMORY[0x277CCABB0];
  v5 = *(v3 + 16);
  v6 = a2;
  v7 = [v4 numberWithLongLong:v5];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v9 = [v6 executeUpdate:@"UPDATE item_extra SET integrity = ? WHERE item_pid = ?" withParameters:v8 error:0];

  *(*(a1[6] + 8) + 24) = v9;
}

- (ML3Track)initWithDictionary:(id)dictionary inLibrary:(id)library cachedNameOrders:(id)orders usingConnection:(id)connection
{
  connectionCopy = connection;
  ordersCopy = orders;
  libraryCopy = library;
  v13 = [dictionary mutableCopy];
  v14 = [v13 objectForKey:@"ROWID"];
  if (!v14)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:ML3CreateIntegerUUID()];
    [v13 setObject:v14 forKey:@"ROWID"];
  }

  [objc_opt_class() populateSortOrdersOfPropertyValues:v13 inLibrary:libraryCopy cachedNameOrders:ordersCopy];
  v17.receiver = self;
  v17.super_class = ML3Track;
  v15 = [(ML3Entity *)&v17 initWithDictionary:v13 inLibrary:libraryCopy cachedNameOrders:ordersCopy usingConnection:connectionCopy];

  return v15;
}

- (id)absoluteFilePath
{
  v3 = [(ML3Entity *)self valueForProperty:@"(IFNULL(base_location.path, '') || '/' || item_extra.location)"];
  v4 = v3;
  if (v3 && [v3 length] >= 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._library);
    v5 = [WeakRetained mediaFolderPathByAppendingPathComponent:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)enumeratePathsToDeleteFromLibrary:(id)library persistentIDs:(id)ds usingConnection:(id)connection usingBlock:(id)block
{
  dsCopy = ds;
  connectionCopy = connection;
  blockCopy = block;
  v11 = [dsCopy count];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    do
    {
      if (v12 - v13 >= 0x1F4)
      {
        v14 = 500;
      }

      else
      {
        v14 = v12 - v13;
      }

      v15 = [dsCopy subarrayWithRange:{v13, v14}];
      v16 = +[ML3DatabaseStatementRenderer defaultRenderer];
      v17 = [v16 statementWithPrefix:@"SELECT item_extra.location inParameterCount:{base_location.path, item.item_pid, item.base_location_id, item_store.store_saga_id, item_store.purchase_history_id, item_store.is_subscription FROM item JOIN item_extra USING (item_pid) JOIN item_store USING(item_pid) LEFT OUTER JOIN base_location USING (base_location_id) WHERE item.item_pid", objc_msgSend(v15, "count")}];

      v18 = [connectionCopy executeQuery:v17 withParameters:v15];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __87__ML3Track_enumeratePathsToDeleteFromLibrary_persistentIDs_usingConnection_usingBlock___block_invoke;
      v19[3] = &unk_278760218;
      v20 = blockCopy;
      [v18 enumerateRowsWithBlock:v19];
      v13 += v14;
    }

    while (v13 < v12);
  }
}

void __87__ML3Track_enumeratePathsToDeleteFromLibrary_persistentIDs_usingConnection_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 stringForColumnIndex:0];
  if ([v4 length])
  {
    v5 = [v3 stringForColumnIndex:1];
    if ([v5 length])
    {
      v6 = MEMORY[0x277CCACA8];
      v7 = +[ML3MusicLibrary mediaFolderPath];
      v10[0] = v7;
      v10[1] = v5;
      v10[2] = v4;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];
      v9 = [v6 pathWithComponents:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  [v3 int64ForColumnIndex:2];
  [v3 int64ForColumnIndex:3];
  [v3 int64ForColumnIndex:4];
  [v3 int64ForColumnIndex:5];
  [v3 int64ForColumnIndex:6];
  (*(*(a1 + 32) + 16))();
}

+ (void)enumeratePathsToDeleteFromLibrary:(id)library persistentIDs:(id)ds usingBlock:(id)block
{
  libraryCopy = library;
  dsCopy = ds;
  blockCopy = block;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__ML3Track_enumeratePathsToDeleteFromLibrary_persistentIDs_usingBlock___block_invoke;
  v13[3] = &unk_2787640A0;
  v14 = libraryCopy;
  v15 = dsCopy;
  v16 = blockCopy;
  v10 = blockCopy;
  v11 = dsCopy;
  v12 = libraryCopy;
  [v12 databaseConnectionAllowingWrites:0 withBlock:v13];
}

+ (BOOL)clearPlaybackKeysFromLibrary:(id)library persistentIDs:(id)ds
{
  libraryCopy = library;
  dsCopy = ds;
  v7 = dsCopy;
  if (dsCopy && [dsCopy count])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__ML3Track_clearPlaybackKeysFromLibrary_persistentIDs___block_invoke;
    v10[3] = &unk_2787651A8;
    v11 = v7;
    v12 = &v13;
    [libraryCopy databaseConnectionAllowingWrites:1 withBlock:v10];
    v8 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

void __55__ML3Track_clearPlaybackKeysFromLibrary_persistentIDs___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v5 = [v4 statementWithPrefix:@"UPDATE item_video SET hls_offline_playback_keys = NULL WHERE item_video.item_pid" inParameterCount:{objc_msgSend(*(a1 + 32), "count")}];

  v6 = *(a1 + 32);
  v10 = 0;
  LOBYTE(v4) = [v3 executeUpdate:v5 withParameters:v6 error:&v10];

  v7 = v10;
  *(*(*(a1 + 40) + 8) + 24) = v4;
  if (v7)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v7 localizedDescription];
      *buf = 138543362;
      v12 = v9;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "Failed to clear playback keys. %{public}@", buf, 0xCu);
    }
  }
}

+ (BOOL)clearLocationFromLibrary:(id)library persistentIDs:(id)ds disableKeepLocal:(BOOL)local usingConnection:(id)connection
{
  localCopy = local;
  libraryCopy = library;
  dsCopy = ds;
  connectionCopy = connection;
  if (dsCopy && [dsCopy count])
  {
    v12 = [dsCopy count];
    v13 = @"UPDATE item SET base_location_id=0, date_downloaded=0, download_source_container_pid=0 WHERE item.item_pid";
    if (localCopy)
    {
      v13 = @"UPDATE item SET base_location_id=0, date_downloaded=0, download_source_container_pid=0, keep_local=-1, keep_local_constraints=0, keep_local_status=0, keep_local_status_reason=0 WHERE item.item_pid";
    }

    v36 = v13;
    if (v12)
    {
      v14 = v12;
      selfCopy = self;
      v33 = v12;
      v15 = 0;
      v16 = 0x27875C000uLL;
      v35 = connectionCopy;
      while (1)
      {
        v17 = v14 - v15 >= 0x1F4 ? 500 : v14 - v15;
        v18 = [dsCopy subarrayWithRange:{v15, v17, selfCopy}];
        defaultRenderer = [*(v16 + 1208) defaultRenderer];
        v20 = [defaultRenderer statementWithPrefix:v36 inParameterCount:{objc_msgSend(v18, "count")}];

        if (([connectionCopy executeUpdate:v20 withParameters:v18 error:0] & 1) == 0)
        {
          break;
        }

        defaultRenderer2 = [*(v16 + 1208) defaultRenderer];
        v22 = [defaultRenderer2 statementWithPrefix:@"UPDATE item_extra SET location = '' WHERE item_extra.item_pid" inParameterCount:{objc_msgSend(v18, "count")}];

        if (([connectionCopy executeUpdate:v22 withParameters:v18 error:0] & 1) == 0)
        {
          v30 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *v40 = 0;
            _os_log_impl(&dword_22D2FA000, v30, OS_LOG_TYPE_ERROR, "Failed to clear location properties of tracks", v40, 2u);
          }

LABEL_31:
          goto LABEL_32;
        }

        v37 = v15;
        defaultRenderer3 = [*(v16 + 1208) defaultRenderer];
        v24 = [defaultRenderer3 statementWithPrefix:@"UPDATE item_store SET sync_id = 0 inParameterCount:{downloader_account_id = 0, family_account_id = 0, is_protected = 0, is_ota_purchased = 0 WHERE item_store.item_pid", objc_msgSend(v18, "count")}];

        if ([connectionCopy executeUpdate:v24 withParameters:v18 error:0])
        {
          v25 = dsCopy;
          defaultRenderer4 = [*(v16 + 1208) defaultRenderer];
          v27 = [defaultRenderer4 statementWithPrefix:@"UPDATE item_video SET hls_asset_traits = 0 WHERE item_video.item_pid" inParameterCount:{objc_msgSend(v18, "count")}];

          if ([connectionCopy executeUpdate:v27 withParameters:v18 error:0])
          {
            [selfCopy incrementRevisionForRevisionTypeContentWithConnection:connectionCopy deletionType:0 persistentIDs:v18];
            v37 += v17;
            v28 = 1;
          }

          else
          {
            v29 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *v38 = 0;
              _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_ERROR, "Failed to clear video traits properties of tracks", v38, 2u);
            }

            v28 = 0;
          }

          dsCopy = v25;
          v14 = v33;
        }

        else
        {
          v27 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_22D2FA000, v27, OS_LOG_TYPE_ERROR, "Failed to clear store properties of tracks", buf, 2u);
          }

          v28 = 0;
        }

        if (!v28)
        {
          connectionCopy = v35;
          goto LABEL_33;
        }

        v15 = v37;
        v16 = 0x27875C000;
        connectionCopy = v35;
        if (v37 >= v14)
        {
          goto LABEL_33;
        }
      }

      v22 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v41 = 0;
        _os_log_impl(&dword_22D2FA000, v22, OS_LOG_TYPE_ERROR, "Failed to clear download properties of tracks", v41, 2u);
      }

      goto LABEL_31;
    }

LABEL_32:
    LOBYTE(v28) = 0;
  }

  else
  {
    LOBYTE(v28) = 1;
  }

LABEL_33:

  return v28;
}

+ (BOOL)clearLocationFromLibrary:(id)library persistentIDs:(id)ds disableKeepLocal:(BOOL)local
{
  libraryCopy = library;
  dsCopy = ds;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __68__ML3Track_clearLocationFromLibrary_persistentIDs_disableKeepLocal___block_invoke;
  v14[3] = &unk_2787601F0;
  v17 = &v20;
  selfCopy = self;
  v10 = libraryCopy;
  v15 = v10;
  v11 = dsCopy;
  v16 = v11;
  localCopy = local;
  [v10 databaseConnectionAllowingWrites:1 withBlock:v14];
  v12 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return v12;
}

uint64_t __68__ML3Track_clearLocationFromLibrary_persistentIDs_disableKeepLocal___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 56) clearLocationFromLibrary:*(a1 + 32) persistentIDs:*(a1 + 40) disableKeepLocal:*(a1 + 64) usingConnection:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

+ (BOOL)registerBookmarkMetadataIdentifierFunctionOnConnection:(id)connection
{
  connectionCopy = connection;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __67__ML3Track_registerBookmarkMetadataIdentifierFunctionOnConnection___block_invoke;
  v6[3] = &unk_2787601C8;
  v7 = connectionCopy;
  v4 = connectionCopy;
  [v4 registerFunctionName:@"ML3TrackPropertyStoreBookmarkMetadataIdentifierFn" argumentCount:8 block:v6];

  return 1;
}

void __67__ML3Track_registerBookmarkMetadataIdentifierFunctionOnConnection___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v7 = sqlite3_value_int(*a4);
  v8 = sqlite3_value_int64(a4[1]);
  if (!v8)
  {
    v8 = sqlite3_value_int64(a4[2]);
  }

  if (v8)
  {
    v9 = (v7 & 0x1124) == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v8];
    v16 = ML3CopyUTF8StringFromCFString(v10);
    sqlite3_result_text(a2, v16, -1, MEMORY[0x277D86138]);
  }

  else
  {
    v10 = MLDBArgumentAsString(a4, 3u);
    v11 = MLDBArgumentAsString(a4, 4u);
    if (-[__CFString length](v10, "length") && [v11 length])
    {
      v33[0] = v10;
      v33[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
      v13 = [v12 componentsJoinedByString:&stru_28408B690];
      v14 = SBKIdentifierStringByMD5HashingString(v13);

      v15 = ML3CopyUTF8StringFromCFString(v14);
      sqlite3_result_text(a2, v15, -1, MEMORY[0x277D86138]);
    }

    else
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __67__ML3Track_registerBookmarkMetadataIdentifierFunctionOnConnection___block_invoke_2;
      v29[3] = &unk_2787601A0;
      v31 = a4;
      v30 = *(a1 + 32);
      v17 = MEMORY[0x2318CDB10](v29);
      v18 = (v17)[2](v17, @"item_extra.title", @"item_pid", 5);
      if ([v18 length])
      {
        v19 = (v17)[2](v17, @"item_artist.item_artist", @"item_artist_pid", 6);
        v20 = (v17)[2](v17, @"album.album", @"album_pid", 7);
        if (![(__CFString *)v19 length]|| ![(__CFString *)v20 length])
        {
          if (v20)
          {
            v21 = v20;
          }

          else
          {
            v21 = &stru_28408B690;
          }

          v22 = v21;

          if (v19)
          {
            v23 = v19;
          }

          else
          {
            v23 = &stru_28408B690;
          }

          v24 = v23;

          v19 = v24;
          v20 = v22;
        }

        v32[0] = v18;
        v32[1] = v19;
        v32[2] = v20;
        v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
        v26 = [v25 componentsJoinedByString:&stru_28408B690];
        v27 = SBKIdentifierStringByMD5HashingString(v26);
      }

      else
      {
        v27 = 0;
      }

      if ([(__CFString *)v27 length])
      {
        v28 = ML3CopyUTF8StringFromCFString(v27);
        sqlite3_result_text(a2, v28, -1, MEMORY[0x277D86138]);
      }

      else
      {
        sqlite3_result_null(a2);
      }

      v14 = v30;
    }
  }
}

id __67__ML3Track_registerBookmarkMetadataIdentifierFunctionOnConnection___block_invoke_2(uint64_t a1, void *a2, void *a3, int a4)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = *(*(a1 + 40) + 8 * a4);
  v7 = a3;
  v8 = a2;
  v9 = sqlite3_value_int64(v6);
  v10 = [v8 stringByDeletingPathExtension];
  v11 = [v8 pathExtension];

  v12 = [v7 stringByDeletingPathExtension];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT %@.%@ FROM %@ WHERE %@ = ?", v10, v11, v10, v12];
  v14 = *(a1 + 32);
  v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
  v20[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v17 = [v14 executeQuery:v13 withParameters:v16];

  v18 = [v17 stringValueForFirstRowAndColumn];

  return v18;
}

+ (void)updateAllBookmarkableStoreBookmarkMetadataIdentifiersOnConnection:(id)connection
{
  v14[2] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v4 = @"ROWID";
  v14[0] = @"ROWID";
  v14[1] = @"ML3TrackPropertyStoreBookmarkMetadataIdentifierFn(item.media_type, item_store.store_item_id, item_store.subscription_store_item_id, item_store.feed_url, item_store.external_guid, item.item_pid, item.item_artist_pid, item.album_pid)";
  v5 = [ML3ComparisonPredicate predicateWithProperty:@"item_stats.remember_bookmark" equalToInteger:1];
  v6 = [ML3ComparisonPredicate predicateWithProperty:@"ML3TrackPropertyStoreBookmarkMetadataIdentifierFn(item.media_type value:item_store.store_item_id comparison:item_store.subscription_store_item_id caseInsensitive:item_store.feed_url treatNullAsString:item_store.external_guid, item.item_pid, item.item_artist_pid, item.album_pid)", &stru_28408B690, 2, 1, &stru_28408B690];
  v13[0] = v5;
  v13[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v8 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v7];

  v9 = [(ML3Entity *)ML3Track newSelectAllEntitiesSQLForProperties:v14 count:2 predicate:v8];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT OR REPLACE INTO item_upp (item_pid, bookkeeper_identifier) %@", v9];
  databaseStatementParameters = [v8 databaseStatementParameters];
  [connectionCopy executeUpdate:v10 withParameters:databaseStatementParameters error:0];

  for (i = 1; i != -1; --i)
  {
  }
}

+ (BOOL)trackValueAreInTheCloud:(id)cloud
{
  cloudCopy = cloud;
  v4 = [cloudCopy objectForKey:@"(item.base_location_id BETWEEN 100 AND 200)"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue & 1) != 0 || ([cloudCopy objectForKey:@"(item.base_location_id = 100)"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "BOOLValue"), v6, (v7))
  {
    v8 = 1;
  }

  else
  {
    v9 = [cloudCopy objectForKey:{@"(CASE WHEN LENGTH(IFNULL(item_store.match_redownload_params, '')) > 0 THEN item_store.match_redownload_params ELSE item_store.purchase_history_redownload_params END)"}];
    v10 = [v9 length];

    v11 = [cloudCopy objectForKey:@"item_extra.location"];
    v12 = [v11 length];

    if (v10)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 0;
    }

    v8 = v13;
  }

  return v8;
}

+ (BOOL)unlinkRedownloadableAssetsFromLibrary:(id)library persistentIDs:(id)ds deletionType:(int)type disableKeepLocal:(BOOL)local deletedFileSize:(int64_t *)size
{
  v45 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  dsCopy = ds;
  v14 = dsCopy;
  if (dsCopy && [dsCopy count])
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v16 = [MEMORY[0x277CBEB58] set];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __110__ML3Track_unlinkRedownloadableAssetsFromLibrary_persistentIDs_deletionType_disableKeepLocal_deletedFileSize___block_invoke;
    v27[3] = &unk_278760128;
    v28 = v14;
    selfCopy = self;
    v29 = libraryCopy;
    v17 = v16;
    v30 = v17;
    v32 = &v37;
    localCopy = local;
    typeCopy = type;
    sizeCopy = size;
    v18 = defaultManager;
    v31 = v18;
    [v29 performDatabaseTransactionWithBlock:v27];
    if (*(v38 + 24) == 1)
    {
      v19 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [v17 count];
        v21 = @"user action";
        if (type == 2)
        {
          v21 = @"automated action";
        }

        *buf = 134218242;
        v42 = v20;
        v43 = 2114;
        v44 = v21;
        _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "Unlinking %ld assets due to %{public}@", buf, 0x16u);
      }

      v22 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __110__ML3Track_unlinkRedownloadableAssetsFromLibrary_persistentIDs_deletionType_disableKeepLocal_deletedFileSize___block_invoke_2544;
      block[3] = &unk_278765FB8;
      v26 = v17;
      dispatch_async(v22, block);

      v23 = *(v38 + 24);
    }

    else
    {
      v23 = 0;
    }

    _Block_object_dispose(&v37, 8);
  }

  else
  {
    v23 = 1;
  }

  return v23 & 1;
}

uint64_t __110__ML3Track_unlinkRedownloadableAssetsFromLibrary_persistentIDs_deletionType_disableKeepLocal_deletedFileSize___block_invoke(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v30 = a2;
  v3 = [MEMORY[0x277CBEB18] array];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v54 = malloc_type_malloc(8 * [*(a1 + 32) count], 0x100004000313F17uLL);
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __110__ML3Track_unlinkRedownloadableAssetsFromLibrary_persistentIDs_deletionType_disableKeepLocal_deletedFileSize___block_invoke_2;
  v46[3] = &unk_278764EF0;
  v46[4] = &v51;
  v29 = MEMORY[0x2318CDB10](v46);
  v4 = *(a1 + 72);
  v5 = *(a1 + 32);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __110__ML3Track_unlinkRedownloadableAssetsFromLibrary_persistentIDs_deletionType_disableKeepLocal_deletedFileSize___block_invoke_3;
  v41[3] = &unk_278760100;
  v6 = *(a1 + 40);
  v42 = *(a1 + 48);
  v7 = v3;
  v43 = v7;
  v44 = &v51;
  v45 = &v47;
  [v4 enumeratePathsToDeleteFromLibrary:v6 persistentIDs:v5 usingBlock:v41];
  [ML3Track _writeSyncDeletesToPlistWithLibrary:*(a1 + 40) forPersistentIDs:*(a1 + 32)];
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 72) clearLocationFromLibrary:*(a1 + 40) persistentIDs:v7 disableKeepLocal:*(a1 + 92) usingConnection:v30];
  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    goto LABEL_24;
  }

  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 72) clearPlaybackKeysFromLibrary:*(a1 + 40) persistentIDs:v7];
  if (!*(*(*(a1 + 64) + 8) + 24))
  {
    goto LABEL_24;
  }

  v8 = 0;
  do
  {
    if (ML3TrackRulesShouldSetRemovalPropertiesOnAssetDeleteForSource(v8))
    {
      v9 = ML3TrackRulesRemovalPropertiesForSource(v8);
      if ([v9 count])
      {
        v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
        v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v9, "count")}];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __110__ML3Track_unlinkRedownloadableAssetsFromLibrary_persistentIDs_deletionType_disableKeepLocal_deletedFileSize___block_invoke_2538;
        v38[3] = &unk_278765418;
        v12 = v10;
        v39 = v12;
        v13 = v11;
        v40 = v13;
        [v9 enumerateKeysAndObjectsUsingBlock:v38];
        [(ML3Entity *)ML3Track setValues:v13 forProperties:v12 forEntityPersistentIDs:v7 inLibrary:*(a1 + 40) usingConnection:v30];
      }
    }

    v8 = (v8 + 1);
  }

  while (v8 != 7);
  if (!v48[3] || (v14 = *(a1 + 40), v15 = *(a1 + 88), v16 = v52[3], v37.receiver = *(a1 + 72), v37.super_class = &OBJC_METACLASS___ML3Track, *(*(*(a1 + 64) + 8) + 24) = objc_msgSendSuper2(&v37, sel_deleteFromLibrary_deletionType_persistentIDs_count_, v14, v15, v16), (*(*(*(a1 + 64) + 8) + 24) & 1) != 0))
  {
    v17 = *(a1 + 80);
    if (v17)
    {
      *v17 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = *(a1 + 48);
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v55 count:16];
    if (v19)
    {
      v20 = *v34;
      v21 = *MEMORY[0x277CCA1C0];
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v34 != v20)
          {
            objc_enumerationMutation(v18);
          }

          if (*(a1 + 80))
          {
            v23 = [*(a1 + 56) attributesOfItemAtPath:*(*(&v33 + 1) + 8 * i) error:0];
            v24 = [v23 objectForKey:v21];
            v25 = [v24 longLongValue];

            v26 = *(a1 + 80);
            if (v26)
            {
              *v26 += v25;
            }
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v33 objects:v55 count:16];
      }

      while (v19);
    }

    v29[2]();
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __110__ML3Track_unlinkRedownloadableAssetsFromLibrary_persistentIDs_deletionType_disableKeepLocal_deletedFileSize___block_invoke_2_2542;
    v31[3] = &unk_278765158;
    v32 = *(a1 + 40);
    [v30 enqueueBlockForTransactionCommit:v31];
    v27 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
LABEL_24:
    v29[2]();
    v27 = 0;
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v51, 8);

  return v27 & 1;
}

void __110__ML3Track_unlinkRedownloadableAssetsFromLibrary_persistentIDs_deletionType_disableKeepLocal_deletedFileSize___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  if (v2)
  {
    free(v2);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __110__ML3Track_unlinkRedownloadableAssetsFromLibrary_persistentIDs_deletionType_disableKeepLocal_deletedFileSize___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = a2;
  if (v8)
  {
    [*(a1 + 32) addObject:v8];
  }

  if (a4)
  {
    v9 = *(a1 + 40);
    v10 = [MEMORY[0x277CCABB0] numberWithLongLong:a5];
    [v9 addObject:v10];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 134217984;
      v13 = a5;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "Deleting track that is not from the cloud with persistent-id: %lld", &v12, 0xCu);
    }

    *(*(*(*(a1 + 48) + 8) + 24) + 8 * (*(*(*(a1 + 56) + 8) + 24))++) = a5;
  }
}

void __110__ML3Track_unlinkRedownloadableAssetsFromLibrary_persistentIDs_deletionType_disableKeepLocal_deletedFileSize___block_invoke_2538(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 40) addObject:v6];
}

+ (id)collectionClassesToUpdateBeforeDelete
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
}

+ (void)populateSortOrdersOfPropertyValues:(id)values inLibrary:(id)library cachedNameOrders:(id)orders
{
  v40 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  libraryCopy = library;
  ordersCopy = orders;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74__ML3Track_populateSortOrdersOfPropertyValues_inLibrary_cachedNameOrders___block_invoke;
  v17[3] = &unk_278760008;
  v10 = valuesCopy;
  v18 = v10;
  v19 = ordersCopy;
  v20 = libraryCopy;
  v11 = libraryCopy;
  v12 = ordersCopy;
  v13 = MEMORY[0x2318CDB10](v17);
  v14 = [v10 objectForKey:@"is_compilation"];
  intValue = [v14 intValue];

  if (intValue)
  {
    v38 = xmmword_278760028;
    v39 = 0;
    v16 = &v38;
  }

  else
  {
    v36[0] = xmmword_278760040;
    v36[1] = *off_278760050;
    v37 = 0;
    v16 = v36;
  }

  (v13)[2](v13, @"album_artist_order", @"album_artist_order_section", v16);
  v35[0] = xmmword_278760068;
  v35[1] = *&off_278760078;
  (v13)[2](v13, @"album_order", @"album_order_section", v35);
  v34 = 0;
  v33 = xmmword_278760088;
  (v13)[2](v13, @"item_artist_order", @"item_artist_order_section", &v33);
  v32 = 0;
  v31 = xmmword_2787600A0;
  (v13)[2](v13, @"composer_order", @"composer_order_section", &v31);
  v30[0] = @"genre.genre";
  v30[1] = 0;
  (v13)[2](v13, @"genre_order", @"genre_order_section", v30);
  v29 = 0;
  v28[0] = xmmword_2787600B8;
  v28[1] = *off_2787600C8;
  (v13)[2](v13, @"series_name_order", @"series_name_order_section", v28);
  v27 = 0;
  v26 = xmmword_2787600E0;
  (v13)[2](v13, @"title_order", @"title_order_section", &v26);
  v25[0] = @"item_extra.title";
  v25[1] = 0;
  (v13)[2](v13, @"item_search.search_title", 0, v25);
  v24[0] = @"album.album";
  v24[1] = 0;
  (v13)[2](v13, @"item_search.search_album", 0, v24);
  v23[0] = @"item_artist.item_artist";
  v23[1] = 0;
  (v13)[2](v13, @"item_search.search_artist", 0, v23);
  v22[0] = @"composer.composer";
  v22[1] = 0;
  (v13)[2](v13, @"item_search.search_composer", 0, v22);
  v21[0] = @"album_artist.album_artist";
  v21[1] = 0;
  (v13)[2](v13, @"item_search.search_album_artist", 0, v21);
}

void __74__ML3Track_populateSortOrdersOfPropertyValues_inLibrary_cachedNameOrders___block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [a1[4] objectForKey:v7];

  if (!v9 && *a4)
  {
    v10 = a4 + 1;
    while (1)
    {
      v11 = [a1[4] objectForKey:?];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 integerValue] >= 1)
      {
        v13 = [v11 stringValue];

        v11 = v13;
        break;
      }

      if (!*v10++)
      {
        goto LABEL_2;
      }
    }

    if (v11)
    {
      v14 = [a1[5] objectForKey:v11];
      v15 = v14;
      if (v14)
      {
        v16 = [v14 ML3NameOrderValue];
      }

      else
      {
        v16 = [a1[6] nameOrderForString:v11];
      }

      v18 = v17;
      if (v17 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v24 = 138543618;
          v25 = v7;
          v26 = 2114;
          v27 = v11;
          _os_log_impl(&dword_22D2FA000, v19, OS_LOG_TYPE_DEFAULT, "Could not find sort order for %{public}@ of %{public}@", &v24, 0x16u);
        }
      }

      else
      {
        v20 = a1[4];
        v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v16];
        [v20 setObject:v21 forKey:v7];

        if (v8)
        {
          v22 = a1[4];
          v23 = [MEMORY[0x277CCABB0] numberWithLongLong:v18];
          [v22 setObject:v23 forKey:v8];
        }
      }
    }
  }

LABEL_2:
}

+ (BOOL)trackWithPersistentID:(int64_t)d existsInLibraryWithConnection:(id)connection
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  connectionCopy = connection;
  v7 = [v5 numberWithLongLong:d];
  v11[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v9 = [connectionCopy executeQuery:@"SELECT 1 FROM item WHERE ROWID = ?" withParameters:v8];

  LOBYTE(v7) = [v9 hasAtLeastOneRow];
  return v7;
}

+ (BOOL)trackWithPersistentID:(int64_t)d visibleInLibrary:(id)library
{
  libraryCopy = library;
  v6 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:d];
  v7 = [(ML3Entity *)ML3Track queryWithLibrary:libraryCopy predicate:v6];

  hasEntities = [v7 hasEntities];
  return hasEntities;
}

+ (BOOL)trackWithPersistentID:(int64_t)d existsInLibrary:(id)library
{
  libraryCopy = library;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__ML3Track_trackWithPersistentID_existsInLibrary___block_invoke;
  v8[3] = &unk_27875FFE0;
  v8[4] = &v9;
  v8[5] = self;
  v8[6] = d;
  [libraryCopy databaseConnectionAllowingWrites:0 withBlock:v8];
  LOBYTE(d) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);

  return d;
}

uint64_t __50__ML3Track_trackWithPersistentID_existsInLibrary___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 40) trackWithPersistentID:*(a1 + 48) existsInLibraryWithConnection:a2];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

+ (BOOL)removeFromMyLibrary:(id)library deletionType:(int)type persistentIDs:(const int64_t *)ds count:(unint64_t)count
{
  libraryCopy = library;
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:count];
  {
    v10 = *ds++;
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
    [i addObject:v11];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__ML3Track_removeFromMyLibrary_deletionType_persistentIDs_count___block_invoke;
  v15[3] = &unk_278764E80;
  v16 = libraryCopy;
  v17 = i;
  v12 = i;
  v13 = libraryCopy;
  [v13 performDatabaseTransactionWithBlock:v15];

  return 1;
}

uint64_t __65__ML3Track_removeFromMyLibrary_deletionType_persistentIDs_count___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = dispatch_semaphore_create(0);
  [ML3Track _writeSyncDeletesToPlistWithLibrary:*(a1 + 32) forPersistentIDs:*(a1 + 40)];
  v5 = MEMORY[0x277D85DD0];
  v6 = 2;
  do
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = v5;
    v11[1] = 3221225472;
    v11[2] = __65__ML3Track_removeFromMyLibrary_deletionType_persistentIDs_count___block_invoke_2;
    v11[3] = &unk_2787660C8;
    v9 = v4;
    v12 = v9;
    [v7 removeTracksWithPersistentIDs:v8 fromSource:v6 usingConnection:v3 withCompletionHandler:v11];
    dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);

    v6 = (v6 + 1);
  }

  while (v6 != 6);

  return 1;
}

+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type canonicalizeCollections:(BOOL)collections persistentIDs:(const int64_t *)ds count:(unint64_t)count usingConnection:(id)connection
{
  collectionsCopy = collections;
  v40 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  connectionCopy = connection;
  v16 = connectionCopy;
  if (count)
  {
    typeCopy = type;
    v30 = connectionCopy;
    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    array = [MEMORY[0x277CBEB18] array];
    v19 = 0;
    do
    {
      v20 = [MEMORY[0x277CCABB0] numberWithLongLong:ds[v19]];
      [array addObject:v20];

      ++v19;
    }

    while (count != v19);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __103__ML3Track_deleteFromLibrary_deletionType_canonicalizeCollections_persistentIDs_count_usingConnection___block_invoke;
    v34[3] = &unk_278763DA8;
    v21 = v17;
    v35 = v21;
    [self enumeratePathsToDeleteFromLibrary:libraryCopy persistentIDs:array usingBlock:v34];
    v33.receiver = self;
    v33.super_class = &OBJC_METACLASS___ML3Track;
    v16 = v30;
    v22 = objc_msgSendSuper2(&v33, sel_deleteFromLibrary_deletionType_canonicalizeCollections_persistentIDs_count_usingConnection_, libraryCopy, typeCopy, collectionsCopy, ds, count, v30);
    if (v22)
    {
      v23 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v21 count];
        v25 = @"user action";
        if (typeCopy == 2)
        {
          v25 = @"automated action";
        }

        *buf = 134218242;
        v37 = v24;
        v38 = 2114;
        v39 = v25;
        _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_DEFAULT, "Deleting %ld assets due to %{public}@", buf, 0x16u);
      }

      v26 = dispatch_time(0, 5000000000);
      v27 = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __103__ML3Track_deleteFromLibrary_deletionType_canonicalizeCollections_persistentIDs_count_usingConnection___block_invoke_2510;
      block[3] = &unk_278765FB8;
      v32 = v21;
      dispatch_after(v26, v27, block);
    }
  }

  else
  {
    v22 = 1;
  }

  return v22;
}

uint64_t __103__ML3Track_deleteFromLibrary_deletionType_canonicalizeCollections_persistentIDs_count_usingConnection___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type canonicalizeCollections:(BOOL)collections persistentIDs:(const int64_t *)ds count:(unint64_t)count
{
  libraryCopy = library;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __87__ML3Track_deleteFromLibrary_deletionType_canonicalizeCollections_persistentIDs_count___block_invoke;
  v15[3] = &unk_2787625C0;
  v17 = &v23;
  selfCopy = self;
  v13 = libraryCopy;
  typeCopy = type;
  collectionsCopy = collections;
  v16 = v13;
  dsCopy = ds;
  countCopy = count;
  [v13 performDatabaseTransactionWithBlock:v15];
  LOBYTE(count) = *(v24 + 24);

  _Block_object_dispose(&v23, 8);
  return count;
}

+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type persistentIDs:(const int64_t *)ds count:(unint64_t)count
{
  libraryCopy = library;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__ML3Track_deleteFromLibrary_deletionType_persistentIDs_count___block_invoke;
  v13[3] = &unk_27875FFB8;
  v15 = &v20;
  selfCopy = self;
  v11 = libraryCopy;
  typeCopy = type;
  v14 = v11;
  dsCopy = ds;
  countCopy = count;
  [v11 performDatabaseTransactionWithBlock:v13];
  LOBYTE(count) = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return count;
}

+ (BOOL)_writeSyncDeletesToPlistWithLibrary:(id)library forPersistentIDs:(id)ds
{
  v68 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  dsCopy = ds;
  v7 = 1;
  v38 = [libraryCopy pathForResourceFileOrFolder:1 basePath:0 relativeToBase:0 createParentFolderIfNecessary:1];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v8 = dsCopy;
  v9 = [v8 countByEnumeratingWithState:&v48 objects:v67 count:16];
  if (v9)
  {
    v10 = v9;
    v40 = 0;
    v11 = 0x27875C000uLL;
    v47 = *v49;
    v39 = libraryCopy;
    v44 = v8;
    do
    {
      v12 = 0;
      v46 = v10;
      do
      {
        if (*v49 != v47)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v48 + 1) + 8 * v12);
        v14 = [*(v11 + 1688) newWithPersistentID:objc_msgSend(v13 inLibrary:{"unsignedLongLongValue"), libraryCopy}];
        if ([v14 existsInLibrary])
        {
          v65[4] = xmmword_27875FF88;
          v65[5] = *off_27875FF98;
          v66 = @"base_location_id";
          v65[0] = xmmword_27875FF48;
          v65[1] = *&off_27875FF58;
          v65[2] = xmmword_27875FF68;
          v65[3] = *&off_27875FF78;
          v64 = 0;
          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          [v14 getValues:&v58 forProperties:v65 count:13];
          v15 = v58;
          v16 = v64;
          if ([v15 unsignedLongLongValue] && (objc_msgSend(v16, "longLongValue") > 249 || !objc_msgSend(v16, "longLongValue")))
          {
            dictionary = [MEMORY[0x277CBEB38] dictionary];
            v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(&v61 + 1), "longLongValue")}];
            v21 = MEMORY[0x277CCABB0];
            [v60 doubleValue];
            v43 = [v21 numberWithUnsignedInt:ML3UInt32MacTimeFromCFAbsoluteTime(v22)];
            v23 = MEMORY[0x277CCABB0];
            [*(&v60 + 1) doubleValue];
            v42 = [v23 numberWithUnsignedInt:ML3UInt32MacTimeFromCFAbsoluteTime(v24)];
            v25 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(&v62 + 1), "longLongValue")}];
            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v63, "longLongValue")}];
            [dictionary setValue:v58 forKey:@"persistentID"];
            [dictionary setValue:MEMORY[0x277CBEC38] forKey:@"deleted"];
            if (![*(&v58 + 1) longLongValue])
            {
              if ([v59 intValue])
              {
                [dictionary setValue:v59 forKey:@"playCount"];
                [dictionary setObject:v43 forKey:@"playMacOSDate"];
                [dictionary setValue:v61 forKey:@"playedState"];
              }

              if ([*(&v59 + 1) intValue])
              {
                [dictionary setValue:*(&v59 + 1) forKey:@"skipCount"];
                [dictionary setObject:v42 forKey:@"skipMacOSDate"];
              }

              [dictionary setValue:v45 forKey:@"bookmarkTimeInMS"];
              [dictionary setValue:v62 forKey:@"audioTrackID"];
              [dictionary setValue:v25 forKey:@"userRating"];
              [dictionary setValue:v26 forKey:@"likedState"];
              [dictionary setValue:*(&v63 + 1) forKey:@"albumLikedState"];
            }

            v27 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              longLongValue = [v13 longLongValue];
              *buf = 134218242;
              v53 = longLongValue;
              v54 = 2114;
              v55 = dictionary;
              _os_log_impl(&dword_22D2FA000, v27, OS_LOG_TYPE_DEFAULT, "Writing tombstone for track with persistent ID %lld: %{public}@", buf, 0x16u);
            }

            v29 = v40;
            if (!v40)
            {
              v41 = v25;
              v30 = [MEMORY[0x277CBEA60] arrayWithContentsOfFile:v38];
              v31 = [v30 mutableCopy];
              v32 = v31;
              if (v31)
              {
                array = v31;
              }

              else
              {
                array = [MEMORY[0x277CBEB18] array];
              }

              v34 = array;

              v29 = v34;
              v25 = v41;
            }

            v40 = v29;
            [v29 addObject:dictionary];

            libraryCopy = v39;
          }

          else
          {
            dictionary = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEFAULT))
            {
              longLongValue2 = [v13 longLongValue];
              longLongValue3 = [v15 longLongValue];
              longLongValue4 = [v16 longLongValue];
              *buf = 134218496;
              v53 = longLongValue2;
              v54 = 2048;
              v55 = longLongValue3;
              libraryCopy = v39;
              v56 = 2048;
              v57 = longLongValue4;
              _os_log_impl(&dword_22D2FA000, dictionary, OS_LOG_TYPE_DEFAULT, "Skipping writing tombstone for track with persistent ID %lld (sync_id = %lld, base_location_id = %lld)", buf, 0x20u);
            }
          }

          for (i = 96; i != -8; i -= 8)
          {
          }

          v8 = v44;
          v11 = 0x27875C000;
          v10 = v46;
        }

        ++v12;
      }

      while (v12 != v10);
      v10 = [v8 countByEnumeratingWithState:&v48 objects:v67 count:16];
    }

    while (v10);

    if (!v40)
    {
      v7 = 1;
      goto LABEL_36;
    }

    v7 = [v40 writeToFile:v38 atomically:1];
    v36 = v40;
  }

  else
  {
    v36 = v8;
  }

LABEL_36:
  return v7;
}

+ (BOOL)libraryContentsChangeForProperty:(id)property
{
  propertyCopy = property;
  if ([ML3TrackContentsUnchangingProperties containsObject:propertyCopy])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [ML3TrackInvisibleProperties containsObject:propertyCopy] ^ 1;
  }

  return v4;
}

+ (id)foreignColumnForProperty:(id)property
{
  v3 = [ML3TrackForeignColumnForProperties objectForKey:property];
  if ([v3 length])
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

+ (id)foreignDatabaseTableForProperty:(id)property
{
  v3 = [ML3TrackForeignDatabaseTableForProperties objectForKey:property];
  if ([v3 length])
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

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  v5 = [ML3TrackJoinsForProperties objectForKey:propertyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___ML3Track;
    v7 = objc_msgSendSuper2(&v10, sel_joinClausesForProperty_, propertyCopy);
  }

  v8 = v7;

  return v8;
}

+ (id)subselectPropertyForProperty:(id)property
{
  v3 = [ML3TrackSubSelectProperties objectForKey:property];
  v4 = [v3 objectForKey:@"property"];

  return v4;
}

+ (id)subselectStatementForProperty:(id)property
{
  v3 = [ML3TrackSubSelectProperties objectForKey:property];
  v4 = [v3 objectForKey:@"subselect"];

  return v4;
}

+ (id)predicateByOptimizingComparisonPredicate:(id)predicate
{
  predicateCopy = predicate;
  property = [predicateCopy property];
  v6 = [property isEqualToString:@"((item.media_type & 1024) = 1024)"];

  v7 = predicateCopy;
  if (v6)
  {
    v8 = 1024;
LABEL_9:
    v15 = _containmentPredicateForIsMediaTypePredicate(v7, v8);
LABEL_10:
    v16 = v15;
    goto LABEL_11;
  }

  property2 = [predicateCopy property];
  v10 = [property2 isEqualToString:@"((item.media_type & 260)!=0)"];

  v7 = predicateCopy;
  if (v10)
  {
    v8 = 260;
    goto LABEL_9;
  }

  property3 = [predicateCopy property];
  v12 = [property3 isEqualToString:@"((item.media_type & 4128)!=0)"];

  v7 = predicateCopy;
  if (v12)
  {
    v8 = 4128;
    goto LABEL_9;
  }

  property4 = [predicateCopy property];
  v14 = [property4 isEqualToString:@"(((item.media_type & ~65280) = 0) OR (item.media_type = 1032))"];

  v7 = predicateCopy;
  if (v14)
  {
    v8 = 65280;
    goto LABEL_9;
  }

  property5 = [predicateCopy property];
  v19 = [property5 isEqualToString:@"media_type"];

  if (!v19)
  {
LABEL_24:
    v29.receiver = self;
    v29.super_class = &OBJC_METACLASS___ML3Track;
    v15 = objc_msgSendSuper2(&v29, sel_predicateByOptimizingComparisonPredicate_, predicateCopy);
    goto LABEL_10;
  }

  comparison = [predicateCopy comparison];
  value = [predicateCopy value];
  integerValue = [value integerValue];

  if (comparison == 2)
  {
    property6 = [predicateCopy property];
    v24 = [ML3ComparisonPredicate predicateWithProperty:property6 equalToInteger:integerValue];

    v25 = [self predicateByOptimizingComparisonPredicate:v24];
    v16 = [(ML3UnaryPredicate *)ML3NegationPredicate predicateWithPredicate:v25];

    goto LABEL_11;
  }

  if (!integerValue)
  {
    v15 = +[ML3TruthPredicate falsePredicate];
    goto LABEL_10;
  }

  if (integerValue == 0xFFFFFF)
  {
    v15 = +[ML3TruthPredicate truePredicate];
    goto LABEL_10;
  }

  if (comparison != 10)
  {
    if (comparison == 1)
    {
      v15 = predicateCopy;
      goto LABEL_10;
    }

    goto LABEL_24;
  }

  if (integerValue == 32)
  {
    v26 = &unk_2840C81E0;
  }

  else if ((integerValue & 0xFFFFF7FF) == 0x1000)
  {
    v26 = &unk_2840C81F8;
  }

  else if (integerValue == 4128)
  {
    v26 = &unk_2840C8210;
  }

  else if (integerValue == 4)
  {
    v26 = &unk_2840C8228;
  }

  else if ((integerValue & 0xFFFFF7FF) == 0x100)
  {
    v26 = &unk_2840C8240;
  }

  else
  {
    if (integerValue != 260)
    {
LABEL_39:
      v15 = _containmentMediaTypeMasksPredicateForMediaTypeMask(integerValue);
      goto LABEL_10;
    }

    v26 = &unk_2840C8258;
  }

  v27 = [MEMORY[0x277CBEB98] setWithArray:v26];
  if (!v27)
  {
    goto LABEL_39;
  }

  v28 = v27;
  v16 = [ML3ContainmentPredicate predicateWithProperty:@"media_type" values:v27];

LABEL_11:

  return v16;
}

+ (id)orderingTermsForITTGTrackOrder:(unsigned int)order descending:(BOOL)descending
{
  v218[6] = *MEMORY[0x277D85DE8];
  descendingCopy = descending;
  v6 = 0;
  switch(order)
  {
    case 0u:
    case 1u:
    case 2u:
      goto LABEL_263;
    case 3u:
      v79 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v80 = 2;
      }

      else
      {
        v80 = 1;
      }

      v9 = [(ML3OrderingTerm *)v79 initWithProperty:@"ROWID" direction:v80];
      v188 = v9;
      v81 = MEMORY[0x277CBEA60];
      v82 = &v188;
      goto LABEL_232;
    case 5u:
      v116 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v117 = 2;
      }

      else
      {
        v117 = 1;
      }

      v9 = [(ML3OrderingTerm *)v116 initWithProperty:@"title_order" direction:v117];
      v218[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v117];
      v218[1] = v10;
      v118 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v117];
      v218[2] = v118;
      v119 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v117];
      v218[3] = v119;
      v120 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v117];
      v218[4] = v120;
      v121 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v117];
      v218[5] = v121;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v218 count:6];

      goto LABEL_261;
    case 6u:
    case 0x22u:
      v7 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      v9 = [(ML3OrderingTerm *)v7 initWithProperty:@"album_order" direction:v8];
      v217[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"album_artist_order" direction:v8];
      v217[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v8];
      v217[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v8];
      v217[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v8];
      v217[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v8];
      v217[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v217;
      goto LABEL_256;
    case 7u:
    case 0x20u:
      v23 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      v9 = [(ML3OrderingTerm *)v23 initWithProperty:@"item_artist_order" direction:v24];
      v216[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v24];
      v216[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v24];
      v216[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v24];
      v216[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v24];
      v216[4] = v13;
      v19 = MEMORY[0x277CBEA60];
      v20 = v216;
      goto LABEL_244;
    case 8u:
      v71 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v72 = 2;
      }

      else
      {
        v72 = 1;
      }

      v9 = [(ML3OrderingTerm *)v71 initWithProperty:@"item_playback.bit_rate" direction:v72];
      v197[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v72];
      v197[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v197;
      goto LABEL_209;
    case 9u:
    case 0x23u:
      v21 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v22 = 2;
      }

      else
      {
        v22 = 1;
      }

      v9 = [(ML3OrderingTerm *)v21 initWithProperty:@"genre_order" direction:v22];
      v213[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v22];
      v213[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v22];
      v213[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v22];
      v213[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v22];
      v213[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v22];
      v213[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v213;
      goto LABEL_256;
    case 0xAu:
      v134 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v135 = 2;
      }

      else
      {
        v135 = 1;
      }

      v9 = [(ML3OrderingTerm *)v134 initWithProperty:@"item_extra.media_kind" direction:v135];
      v195[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v135];
      v195[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v195;
      goto LABEL_209;
    case 0xCu:
      v128 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v129 = 2;
      }

      else
      {
        v129 = 1;
      }

      v9 = [(ML3OrderingTerm *)v128 initWithProperty:@"track_number" direction:v129];
      v194[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v129];
      v194[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v129];
      v194[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v129];
      v194[3] = v12;
      v62 = MEMORY[0x277CBEA60];
      v63 = v194;
      goto LABEL_188;
    case 0xDu:
      v85 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v86 = 2;
      }

      else
      {
        v86 = 1;
      }

      v9 = [(ML3OrderingTerm *)v85 initWithProperty:@"item_extra.file_size" direction:v86];
      v192[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v86];
      v192[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v192;
      goto LABEL_209;
    case 0xEu:
      v87 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v88 = 2;
      }

      else
      {
        v88 = 1;
      }

      v9 = [(ML3OrderingTerm *)v87 initWithProperty:@"item_extra.file_size" direction:v88];
      v191[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v88];
      v191[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v191;
      goto LABEL_209;
    case 0xFu:
      v124 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v125 = 2;
      }

      else
      {
        v125 = 1;
      }

      v9 = [(ML3OrderingTerm *)v124 initWithProperty:@"item_extra.year" direction:v125];
      v190[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v125];
      v190[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v125];
      v190[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v125];
      v190[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v125];
      v190[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v125];
      v190[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v190;
      goto LABEL_256;
    case 0x10u:
      v93 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v94 = 2;
      }

      else
      {
        v94 = 1;
      }

      v9 = [(ML3OrderingTerm *)v93 initWithProperty:@"item_playback.sample_rate" direction:v94];
      v196[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v94];
      v196[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v196;
      goto LABEL_209;
    case 0x11u:
      v138 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v139 = 2;
      }

      else
      {
        v139 = 1;
      }

      v9 = [(ML3OrderingTerm *)v138 initWithProperty:@"category.category" direction:v139];
      v187[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v139];
      v187[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v187;
      goto LABEL_209;
    case 0x14u:
      v69 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v70 = 2;
      }

      else
      {
        v70 = 1;
      }

      v9 = [(ML3OrderingTerm *)v69 initWithProperty:@"item_extra.description" direction:v70];
      v182[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v70];
      v182[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v182;
      goto LABEL_209;
    case 0x15u:
      v130 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v131 = 2;
      }

      else
      {
        v131 = 1;
      }

      v9 = [(ML3OrderingTerm *)v130 initWithProperty:@"item_extra.comment" direction:v131];
      v211[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v131];
      v211[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v211;
      goto LABEL_209;
    case 0x16u:
      v51 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v52 = 2;
      }

      else
      {
        v52 = 1;
      }

      if (descendingCopy)
      {
        v53 = 1;
      }

      else
      {
        v53 = 2;
      }

      v9 = [(ML3OrderingTerm *)v51 initWithProperty:@"date_added" direction:v52];
      v203[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v53];
      v203[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v203;
      goto LABEL_209;
    case 0x17u:
      v67 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v68 = 2;
      }

      else
      {
        v68 = 1;
      }

      v9 = [(ML3OrderingTerm *)v67 initWithProperty:@"item_playback.eq_preset" direction:v68];
      v207[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v68];
      v207[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v207;
      goto LABEL_209;
    case 0x18u:
    case 0x24u:
      v17 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v18 = 2;
      }

      else
      {
        v18 = 1;
      }

      v9 = [(ML3OrderingTerm *)v17 initWithProperty:@"composer_order" direction:v18];
      v214[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v18];
      v214[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v18];
      v214[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v18];
      v214[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v18];
      v214[4] = v13;
      v19 = MEMORY[0x277CBEA60];
      v20 = v214;
      goto LABEL_244;
    case 0x19u:
      v54 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v55 = 2;
      }

      else
      {
        v55 = 1;
      }

      if (descendingCopy)
      {
        v56 = 1;
      }

      else
      {
        v56 = 2;
      }

      v9 = [(ML3OrderingTerm *)v54 initWithProperty:@"item_playback.volume_normalization_energy" direction:v55];
      v189[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v56];
      v189[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v56];
      v189[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v56];
      v189[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v56];
      v189[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v56];
      v189[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v189;
      goto LABEL_256;
    case 0x1Au:
      v145 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v146 = 2;
      }

      else
      {
        v146 = 1;
      }

      if (descendingCopy)
      {
        v147 = 1;
      }

      else
      {
        v147 = 2;
      }

      v9 = [(ML3OrderingTerm *)v145 initWithProperty:@"item_stats.play_count_user" direction:v146];
      v204[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v147];
      v204[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v147];
      v204[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v147];
      v204[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v147];
      v204[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v147];
      v204[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v204;
      goto LABEL_256;
    case 0x1Bu:
      v142 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v143 = 2;
      }

      else
      {
        v143 = 1;
      }

      if (descendingCopy)
      {
        v144 = 1;
      }

      else
      {
        v144 = 2;
      }

      v9 = [(ML3OrderingTerm *)v142 initWithProperty:@"item_stats.date_played" direction:v143];
      v205[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v144];
      v205[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v144];
      v205[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v144];
      v205[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v144];
      v205[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v144];
      v205[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v205;
      goto LABEL_256;
    case 0x1Cu:
      v60 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v61 = 2;
      }

      else
      {
        v61 = 1;
      }

      v9 = [(ML3OrderingTerm *)v60 initWithProperty:@"disc_number" direction:v61];
      v193[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v61];
      v193[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v61];
      v193[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v61];
      v193[3] = v12;
      v62 = MEMORY[0x277CBEA60];
      v63 = v193;
LABEL_188:
      v6 = [v62 arrayWithObjects:v63 count:4];
      goto LABEL_259;
    case 0x1Du:
      v73 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v74 = 2;
      }

      else
      {
        v74 = 1;
      }

      if (descendingCopy)
      {
        v75 = 1;
      }

      else
      {
        v75 = 2;
      }

      v9 = [(ML3OrderingTerm *)v73 initWithProperty:@"item_stats.user_rating" direction:v74];
      v206[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v75];
      v206[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v75];
      v206[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v75];
      v206[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v75];
      v206[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v75];
      v206[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v206;
      goto LABEL_256;
    case 0x1Eu:
      v89 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v90 = 2;
      }

      else
      {
        v90 = 1;
      }

      if (descendingCopy)
      {
        v91 = 1;
      }

      else
      {
        v91 = 2;
      }

      v9 = [(ML3OrderingTerm *)v89 initWithProperty:@"is_compilation" direction:v90];
      v185[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v91];
      v185[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v91];
      v185[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v91];
      v185[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v91];
      v185[4] = v13;
      v19 = MEMORY[0x277CBEA60];
      v20 = v185;
      goto LABEL_244;
    case 0x1Fu:
      v76 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v77 = 2;
      }

      else
      {
        v77 = 1;
      }

      if (descendingCopy)
      {
        v78 = 1;
      }

      else
      {
        v78 = 2;
      }

      v9 = [(ML3OrderingTerm *)v76 initWithProperty:@"genre_order" direction:v77];
      v184[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"is_compilation" direction:v77];
      v184[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v78];
      v184[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v78];
      v184[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v78];
      v184[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v78];
      v184[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v184;
      goto LABEL_256;
    case 0x28u:
      v152 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v153 = 2;
      }

      else
      {
        v153 = 1;
      }

      if (descendingCopy)
      {
        v154 = 1;
      }

      else
      {
        v154 = 2;
      }

      v9 = [(ML3OrderingTerm *)v152 initWithProperty:@"item_store.date_released" direction:v153];
      v183[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v154];
      v183[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v154];
      v183[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v154];
      v183[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v154];
      v183[4] = v13;
      v19 = MEMORY[0x277CBEA60];
      v20 = v183;
      goto LABEL_244;
    case 0x29u:
      v57 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v58 = 2;
      }

      else
      {
        v58 = 1;
      }

      if (descendingCopy)
      {
        v59 = 1;
      }

      else
      {
        v59 = 2;
      }

      v9 = [(ML3OrderingTerm *)v57 initWithProperty:@"item_extra.bpm" direction:v58];
      v186[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v59];
      v186[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v59];
      v186[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v59];
      v186[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v59];
      v186[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v59];
      v186[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v186;
      goto LABEL_256;
    case 0x2Bu:
      v126 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v127 = 2;
      }

      else
      {
        v127 = 1;
      }

      v9 = [(ML3OrderingTerm *)v126 initWithProperty:@"item_extra.grouping" direction:v127];
      v212[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v127];
      v212[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_artist_order" direction:v127];
      v212[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v127];
      v212[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v127];
      v212[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v127];
      v212[5] = v14;
      v113 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v127];
      v212[6] = v113;
      v114 = MEMORY[0x277CBEA60];
      v115 = v212;
      goto LABEL_183;
    case 0x2Cu:
      v150 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v151 = 2;
      }

      else
      {
        v151 = 1;
      }

      v9 = [(ML3OrderingTerm *)v150 initWithProperty:@"series_name_order" direction:v151];
      v210[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_video.season_number" direction:v151];
      v210[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"episode_sort_id" direction:v151];
      v210[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"item_video.episode_id" direction:v151];
      v210[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v151];
      v210[4] = v13;
      v19 = MEMORY[0x277CBEA60];
      v20 = v210;
      goto LABEL_244;
    case 0x2Du:
      v46 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v47 = 2;
      }

      else
      {
        v47 = 1;
      }

      v9 = [(ML3OrderingTerm *)v46 initWithProperty:@"item_video.season_number" direction:v47];
      v202[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"series_name_order" direction:v47];
      v202[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"episode_sort_id" direction:v47];
      v202[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"item_video.episode_id" direction:v47];
      v202[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v47];
      v202[4] = v13;
      v19 = MEMORY[0x277CBEA60];
      v20 = v202;
      goto LABEL_244;
    case 0x2Eu:
      v95 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v96 = 2;
      }

      else
      {
        v96 = 1;
      }

      v9 = [(ML3OrderingTerm *)v95 initWithProperty:@"item_video.episode_id" direction:v96];
      v209[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v96];
      v209[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v209;
      goto LABEL_209;
    case 0x2Fu:
      v44 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v45 = 2;
      }

      else
      {
        v45 = 1;
      }

      v9 = [(ML3OrderingTerm *)v44 initWithProperty:@"episode_sort_id" direction:v45];
      v208[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_video.episode_id" direction:v45];
      v208[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v45];
      v208[2] = v11;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v208 count:3];
      goto LABEL_260;
    case 0x31u:
      v34 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v35 = 2;
      }

      else
      {
        v35 = 1;
      }

      if (descendingCopy)
      {
        v36 = 1;
      }

      else
      {
        v36 = 2;
      }

      v9 = [(ML3OrderingTerm *)v34 initWithProperty:@"item_stats.skip_count_user" direction:v35];
      v201[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v36];
      v201[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v36];
      v201[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v36];
      v201[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v36];
      v201[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v36];
      v201[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v201;
      goto LABEL_256;
    case 0x32u:
      v64 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v65 = 2;
      }

      else
      {
        v65 = 1;
      }

      if (descendingCopy)
      {
        v66 = 1;
      }

      else
      {
        v66 = 2;
      }

      v9 = [(ML3OrderingTerm *)v64 initWithProperty:@"item_stats.date_skipped" direction:v65];
      v200[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v66];
      v200[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v66];
      v200[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v66];
      v200[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v66];
      v200[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v66];
      v200[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v200;
      goto LABEL_256;
    case 0x33u:
      v83 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v84 = 2;
      }

      else
      {
        v84 = 1;
      }

      v9 = [(ML3OrderingTerm *)v83 initWithProperty:@"album_artist_order" direction:v84];
      v215[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v84];
      v215[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v84];
      v215[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v84];
      v215[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v84];
      v215[4] = v13;
      v19 = MEMORY[0x277CBEA60];
      v20 = v215;
LABEL_244:
      v6 = [v19 arrayWithObjects:v20 count:5];
      goto LABEL_258;
    case 0x34u:
      v132 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v133 = 2;
      }

      else
      {
        v133 = 1;
      }

      v9 = [(ML3OrderingTerm *)v132 initWithProperty:@"item_artist_order" direction:v133];
      v198[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_extra.year" direction:v133];
      v198[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v133];
      v198[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v133];
      v198[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v133];
      v198[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v133];
      v198[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v198;
      goto LABEL_256;
    case 0x35u:
      v158 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v159 = 2;
      }

      else
      {
        v159 = 1;
      }

      v9 = [(ML3OrderingTerm *)v158 initWithProperty:@"item_artist_order" direction:v159];
      v199[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v159];
      v199[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v159];
      v199[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v159];
      v199[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v159];
      v199[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v159];
      v199[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v199;
      goto LABEL_256;
    case 0x36u:
      v48 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v49 = 2;
      }

      else
      {
        v49 = 1;
      }

      if (descendingCopy)
      {
        v50 = 1;
      }

      else
      {
        v50 = 2;
      }

      v9 = [(ML3OrderingTerm *)v48 initWithProperty:@"album.user_rating" direction:v49];
      v181[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v50];
      v181[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v50];
      v181[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v50];
      v181[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v50];
      v181[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v50];
      v181[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v181;
      goto LABEL_256;
    case 0x37u:
      v9 = _ML3LogCategoryDefault();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_277;
      }

      *buf = 67109120;
      orderCopy = 55;
      v92 = "Unsupported order type: %u";
      goto LABEL_276;
    case 0x38u:
      v110 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v111 = 2;
      }

      else
      {
        v111 = 1;
      }

      if (descendingCopy)
      {
        v112 = 1;
      }

      else
      {
        v112 = 2;
      }

      v9 = [(ML3OrderingTerm *)v110 initWithProperty:@"composer_order" direction:v111];
      v180[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v112];
      v180[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_artist_order" direction:v112];
      v180[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v112];
      v180[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v112];
      v180[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v112];
      v180[5] = v14;
      v113 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v112];
      v180[6] = v113;
      v114 = MEMORY[0x277CBEA60];
      v115 = v180;
LABEL_183:
      v6 = [v114 arrayWithObjects:v115 count:7];

      goto LABEL_257;
    case 0x39u:
      v155 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v156 = 2;
      }

      else
      {
        v156 = 1;
      }

      if (descendingCopy)
      {
        v157 = 1;
      }

      else
      {
        v157 = 2;
      }

      v9 = [(ML3OrderingTerm *)v155 initWithProperty:@"category.category" direction:v156];
      v179[0] = v9;
      v166 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v157];
      v179[1] = v166;
      v165 = [[ML3OrderingTerm alloc] initWithProperty:@"album_artist_order" direction:v157];
      v179[2] = v165;
      v164 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v157];
      v179[3] = v164;
      v100 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v157];
      v179[4] = v100;
      v101 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v157];
      v179[5] = v101;
      v102 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v157];
      v179[6] = v102;
      v103 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v157];
      v179[7] = v103;
      v104 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v157];
      v179[8] = v104;
      v105 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v157];
      v179[9] = v105;
      v106 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v157];
      v179[10] = v106;
      v107 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v157];
      v179[11] = v107;
      v108 = MEMORY[0x277CBEA60];
      v109 = v179;
      goto LABEL_273;
    case 0x3Au:
      v97 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v98 = 2;
      }

      else
      {
        v98 = 1;
      }

      if (descendingCopy)
      {
        v99 = 1;
      }

      else
      {
        v99 = 2;
      }

      v9 = [(ML3OrderingTerm *)v97 initWithProperty:@"genre_order" direction:v98];
      v177[0] = v9;
      v166 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v99];
      v177[1] = v166;
      v165 = [[ML3OrderingTerm alloc] initWithProperty:@"album_artist_order" direction:v99];
      v177[2] = v165;
      v164 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v99];
      v177[3] = v164;
      v100 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v99];
      v177[4] = v100;
      v101 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v99];
      v177[5] = v101;
      v102 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v99];
      v177[6] = v102;
      v103 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v99];
      v177[7] = v103;
      v104 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v99];
      v177[8] = v104;
      v105 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v99];
      v177[9] = v105;
      v106 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v99];
      v177[10] = v106;
      v107 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v99];
      v177[11] = v107;
      v108 = MEMORY[0x277CBEA60];
      v109 = v177;
      goto LABEL_273;
    case 0x3Bu:
      v37 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v38 = 2;
      }

      else
      {
        v38 = 1;
      }

      if (descendingCopy)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      v9 = [(ML3OrderingTerm *)v37 initWithProperty:@"genre_order" direction:v38];
      v176[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v38];
      v176[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v39];
      v176[2] = v11;
      v40 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v39];
      v176[3] = v40;
      v41 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v39];
      v176[4] = v41;
      v42 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v39];
      v176[5] = v42;
      v43 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v39];
      v176[6] = v43;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v176 count:7];

      goto LABEL_260;
    case 0x3Cu:
      v25 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v26 = 2;
      }

      else
      {
        v26 = 1;
      }

      v9 = [(ML3OrderingTerm *)v25 initWithProperty:@"item_extra.genius_id" direction:v26];
      v175[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v26];
      v175[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v175;
      goto LABEL_209;
    case 0x3Du:
      v161 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v162 = 2;
      }

      else
      {
        v162 = 1;
      }

      if (descendingCopy)
      {
        v163 = 1;
      }

      else
      {
        v163 = 2;
      }

      v9 = [(ML3OrderingTerm *)v161 initWithProperty:@"item_store.feed_url" direction:v162];
      v178[0] = v9;
      v166 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v163];
      v178[1] = v166;
      v165 = [[ML3OrderingTerm alloc] initWithProperty:@"album_artist_order" direction:v163];
      v178[2] = v165;
      v164 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v163];
      v178[3] = v164;
      v100 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v163];
      v178[4] = v100;
      v101 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v163];
      v178[5] = v101;
      v102 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v163];
      v178[6] = v102;
      v103 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v163];
      v178[7] = v103;
      v104 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v163];
      v178[8] = v104;
      v105 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v163];
      v178[9] = v105;
      v106 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v163];
      v178[10] = v106;
      v107 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v163];
      v178[11] = v107;
      v108 = MEMORY[0x277CBEA60];
      v109 = v178;
LABEL_273:
      v6 = [v108 arrayWithObjects:v109 count:12];

      break;
    case 0x3Eu:
      v148 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v149 = 2;
      }

      else
      {
        v149 = 1;
      }

      v9 = [(ML3OrderingTerm *)v148 initWithProperty:@"item_store.store_item_id" direction:v149];
      v174 = v9;
      v81 = MEMORY[0x277CBEA60];
      v82 = &v174;
      goto LABEL_232;
    case 0x43u:
      v32 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      v9 = [(ML3OrderingTerm *)v32 initWithProperty:@"item_extra.is_user_disabled" direction:v33];
      v171[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v33];
      v171[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v171;
      goto LABEL_209;
    case 0x46u:
      v122 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v123 = 2;
      }

      else
      {
        v123 = 1;
      }

      v9 = [(ML3OrderingTerm *)v122 initWithProperty:@"item_store.store_saga_id" direction:v123];
      v173[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v123];
      v173[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v173;
      goto LABEL_209;
    case 0x47u:
      v136 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v137 = 2;
      }

      else
      {
        v137 = 1;
      }

      v9 = [(ML3OrderingTerm *)v136 initWithProperty:@"item_store.account_id" direction:v137];
      v172[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v137];
      v172[1] = v10;
      v27 = MEMORY[0x277CBEA60];
      v28 = v172;
LABEL_209:
      v6 = [v27 arrayWithObjects:v28 count:2];
      goto LABEL_261;
    case 0x48u:
      v29 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v30 = 2;
      }

      else
      {
        v30 = 1;
      }

      if (descendingCopy)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      v9 = [(ML3OrderingTerm *)v29 initWithProperty:@"item_store.cloud_status" direction:v30];
      v170[0] = v9;
      v10 = [[ML3OrderingTerm alloc] initWithProperty:@"item_artist_order" direction:v31];
      v170[1] = v10;
      v11 = [[ML3OrderingTerm alloc] initWithProperty:@"album_order" direction:v31];
      v170[2] = v11;
      v12 = [[ML3OrderingTerm alloc] initWithProperty:@"disc_number" direction:v31];
      v170[3] = v12;
      v13 = [[ML3OrderingTerm alloc] initWithProperty:@"track_number" direction:v31];
      v170[4] = v13;
      v14 = [[ML3OrderingTerm alloc] initWithProperty:@"title_order" direction:v31];
      v170[5] = v14;
      v15 = MEMORY[0x277CBEA60];
      v16 = v170;
LABEL_256:
      v6 = [v15 arrayWithObjects:v16 count:6];
LABEL_257:

LABEL_258:
LABEL_259:

LABEL_260:
LABEL_261:

      break;
    case 0x70u:
      v140 = [ML3OrderingTerm alloc];
      if (descendingCopy)
      {
        v141 = 2;
      }

      else
      {
        v141 = 1;
      }

      v9 = [(ML3OrderingTerm *)v140 initWithProperty:@"item_stats.liked_state_changed_date" direction:v141];
      v169 = v9;
      v81 = MEMORY[0x277CBEA60];
      v82 = &v169;
LABEL_232:
      v6 = [v81 arrayWithObjects:v82 count:1];
      break;
    default:
      v9 = _ML3LogCategoryDefault();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        orderCopy = order;
        v92 = "Unexpected order type: %u";
LABEL_276:
        _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, v92, buf, 8u);
      }

LABEL_277:
      v6 = 0;
      break;
  }

LABEL_263:

  return v6;
}

+ (id)containerQueryWithContainer:(id)container predicate:(id)predicate orderingTerms:(id)terms
{
  termsCopy = terms;
  predicateCopy = predicate;
  containerCopy = container;
  v11 = [[ML3ContainerQuery alloc] initWithEntityClass:self container:containerCopy predicate:predicateCopy orderingTerms:termsCopy];

  return v11;
}

+ (id)containerQueryWithContainer:(id)container predicate:(id)predicate
{
  predicateCopy = predicate;
  containerCopy = container;
  v8 = [[ML3ContainerQuery alloc] initWithEntityClass:self container:containerCopy predicate:predicateCopy orderingTerms:0];

  return v8;
}

+ (id)containerQueryWithContainer:(id)container
{
  containerCopy = container;
  v5 = [[ML3ContainerQuery alloc] initWithEntityClass:self container:containerCopy predicate:0 orderingTerms:0];

  return v5;
}

- (BOOL)_populateLocationPropertiesWithPath:(id)path protectionType:(int64_t)type fromLibrary:(id)library usingConnection:(id)connection
{
  v34 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  libraryCopy = library;
  connectionCopy = connection;
  v14 = objc_alloc_init(MEMORY[0x277CCAA00]);
  if ([pathCopy length])
  {
    v15 = [v14 fileExistsAtPath:pathCopy] ^ 1;
  }

  else
  {
    v15 = 1;
  }

  if ([pathCopy length] && v15)
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v33 = pathCopy;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "populateLocationPropertiesWithPath called with invalid path '%{public}@'", buf, 0xCu);
    }
  }

  if (v15)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ML3Entity persistentID](self, "persistentID")}];
    v31 = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    [ML3Track clearLocationFromLibrary:libraryCopy persistentIDs:v18];
  }

  else
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __109__ML3Track_ML3TrackImporter___populateLocationPropertiesWithPath_protectionType_fromLibrary_usingConnection___block_invoke;
    v23 = &unk_2787634F0;
    selfCopy = self;
    v25 = v14;
    v26 = pathCopy;
    v29 = a2;
    v27 = libraryCopy;
    typeCopy = type;
    v28 = connectionCopy;
    [v28 performTransactionWithBlock:&v20];
  }

  [(ML3Track *)self updateCollectionCloudStatus:v20];
  [(ML3Track *)self updateIntegrity];

  return 1;
}

BOOL __109__ML3Track_ML3TrackImporter___populateLocationPropertiesWithPath_protectionType_fromLibrary_usingConnection___block_invoke(uint64_t a1)
{
  v104[7] = *MEMORY[0x277D85DE8];
  v2 = @"keep_local";
  v104[0] = @"keep_local";
  v3 = @"keep_local_status";
  v104[1] = @"keep_local_status";
  v4 = @"keep_local_status_reason";
  v104[2] = @"keep_local_status_reason";
  v5 = @"(IFNULL(base_location.path, '') || '/' || item_extra.location)";
  v104[3] = @"(IFNULL(base_location.path, '') || '/' || item_extra.location)";
  v6 = @"item_store.key_id";
  v104[4] = @"item_store.key_id";
  v7 = @"media_type";
  v104[5] = @"media_type";
  v8 = @"(CASE WHEN LENGTH(IFNULL(chapter.chapter_data,'')) > 0 THEN 1 ELSE 0 END)";
  v104[6] = @"(CASE WHEN LENGTH(IFNULL(chapter.chapter_data,'')) > 0 THEN 1 ELSE 0 END)";
  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v100 = 0u;
  [*(a1 + 32) getValues:&v100 forProperties:v104 count:7];
  v9 = @"base_location_id";
  v99[0] = @"base_location_id";
  v10 = @"item_extra.location";
  v99[1] = @"item_extra.location";
  v11 = @"item_extra.file_size";
  v99[2] = @"item_extra.file_size";
  v12 = @"item_stats.needs_restore";
  v99[3] = @"item_stats.needs_restore";
  v13 = @"keep_local";
  v99[4] = @"keep_local";
  v14 = @"keep_local_status";
  v99[5] = @"keep_local_status";
  v15 = @"keep_local_status_reason";
  v99[6] = @"keep_local_status_reason";
  v16 = @"item_store.is_protected";
  v99[7] = @"item_store.is_protected";
  v17 = @"item_stats.download_identifier";
  v99[8] = @"item_stats.download_identifier";
  v18 = @"item_stats.date_accessed";
  v99[9] = @"item_stats.date_accessed";
  v19 = @"date_downloaded";
  v99[10] = @"date_downloaded";
  v98 = 0;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v93 = 0u;
  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v87 = 0;
  v22 = [v20 attributesOfItemAtPath:v21 error:&v87];
  v23 = v87;
  if (v22)
  {
    v24 = [v22 objectForKey:*MEMORY[0x277CCA1E0]];
    v84 = v23;
    if ([v24 isEqualToString:*MEMORY[0x277CCA1E8]])
    {
      [MEMORY[0x277CCABB0] numberWithLong:MSVGetDiskUsageForPath()];
    }

    else
    {
      [v22 objectForKey:*MEMORY[0x277CCA1C0]];
    }
    v25 = ;
    v27 = v94;
    *&v94 = v25;

    v28 = [*(a1 + 48) lastPathComponent];
    if (![v28 length])
    {
      v81 = [MEMORY[0x277CCA890] currentHandler];
      [v81 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"ML3TrackImporter.m" lineNumber:460 description:{@"populateLocationPropertiesWithPath passed file with invalid name '%@'", v28}];
    }

    v83 = v28;
    objc_storeStrong(&v93 + 1, v28);
    v29 = *(a1 + 56);
    v30 = [*(a1 + 48) stringByDeletingLastPathComponent];
    v31 = [v29 mediaFolderRelativePath:v30];

    v32 = *(a1 + 56);
    v85 = v31;
    v33 = [ML3ComparisonPredicate predicateWithProperty:@"path" equalToValue:v31];
    v34 = [(ML3Entity *)ML3BaseLocation anyInLibrary:v32 predicate:v33];

    if (!v34)
    {
      v35 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{v85, @"path", 0}];
      v34 = [ML3BaseLocation newWithDictionary:v35 inLibrary:*(a1 + 56)];
    }

    v36 = [v34 valueForProperty:@"ROWID"];
    v37 = v93;
    *&v93 = v36;

    v38 = *(&v94 + 1);
    *(&v94 + 1) = MEMORY[0x277CBEC28];

    v39 = v97;
    *&v97 = 0;

    if ([v93 intValue] >= 250 && objc_msgSend(v100, "integerValue") <= 0)
    {
      if ([*(&v100 + 1) integerValue] == 1 || (MSVDeviceIsWatch() & 1) != 0)
      {
        v41 = v95;
        *&v95 = &unk_2840C9338;
      }

      else
      {
        v41 = v95;
        *&v95 = &unk_2840C9320;
      }
    }

    else
    {
      v40 = v100;
      v41 = v95;
      *&v95 = v40;
    }

    if ([v93 intValue] <= 249)
    {
      v42 = &unk_2840C9338;
    }

    else
    {
      v42 = &unk_2840C9350;
    }

    objc_storeStrong(&v95 + 1, v42);
    v43 = v96;
    *&v96 = &unk_2840C9368;

    v44 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 80)];
    v45 = *(&v96 + 1);
    *(&v96 + 1) = v44;

    if (!*(a1 + 80))
    {
      v46 = v102;
      if ([v46 integerValue])
      {
        v47 = *(&v96 + 1);
        *(&v96 + 1) = &unk_2840C9380;
      }
    }

    v48 = [MEMORY[0x277CBEAA8] date];
    v49 = *(&v97 + 1);
    *(&v97 + 1) = v48;

    v50 = [MEMORY[0x277CBEAA8] date];
    v51 = v98;
    v98 = v50;

    [*(a1 + 32) setValues:&v93 forProperties:v99 count:11];
    v52 = *(a1 + 64);
    v53 = [MEMORY[0x277CBEAA8] date];
    v88[0] = v53;
    v54 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 32), "persistentID")}];
    v88[1] = v54;
    v55 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:2];
    v86 = 0;
    [v52 executeUpdate:@"update container set date_downloaded=? where container_pid in (select DISTINCT container_pid from (select container_pid from container_item join container using(container_pid) where keep_local > 0 AND item_pid=?))" withParameters:v55 error:&v86];
    v56 = v86;

    if (v56)
    {
      v57 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        v58 = [*(a1 + 32) persistentID];
        *buf = 134218242;
        v90 = v58;
        v91 = 2114;
        v92 = v56;
        _os_log_impl(&dword_22D2FA000, v57, OS_LOG_TYPE_ERROR, "updating container for item_pid=%lld finished with error=%{public}@", buf, 0x16u);
      }
    }

    v59 = [*(&v102 + 1) integerValue];
    v60 = [v103 BOOLValue];
    if (v59 == 2 && (v60 & 1) == 0)
    {
      v61 = objc_alloc(MEMORY[0x277CE6650]);
      v62 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(a1 + 48)];
      v63 = [v61 initWithURL:v62 options:0];

      if (v63)
      {
        v64 = [ML3Track importChaptersByParsingAsset:v63];
        if (v64)
        {
          v65 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_22D2FA000, v65, OS_LOG_TYPE_DEFAULT, "updating chapter data from asset file", buf, 2u);
          }

          [*(a1 + 32) populateChapterDataWithImportChapters:v64];
        }
      }
    }

    v66 = *(&v101 + 1);
    if (v66)
    {
      v67 = *(a1 + 56);
      v68 = [ML3ComparisonPredicate predicateWithProperty:@"(IFNULL(base_location.path equalToValue:'') || '/' || item_extra.location)", v66];
      v69 = [(ML3Entity *)ML3Track anyInLibrary:v67 predicate:v68 options:7];

      if (!v69)
      {
        v82 = v24;
        v70 = [*(a1 + 56) mediaFolderPathByAppendingPathComponent:v66];
        v71 = [v70 pathExtension];
        if (v71 && ([MEMORY[0x277CBEB98] setWithObjects:{@"movpkg", @"m4bpkg", 0}], v72 = objc_claimAutoreleasedReturnValue(), v73 = objc_msgSend(v72, "containsObject:", v71), v72, v73))
        {
          v74 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v90 = v70;
            _os_log_impl(&dword_22D2FA000, v74, OS_LOG_TYPE_DEFAULT, "Marking orphan asset purgeable at path: %{public}@", buf, 0xCu);
          }

          MSVEnableDirStatsForDirectory();
          [*(a1 + 56) markSystemPurgeableMusicPath:v70 forUrgency:0];
        }

        else
        {
          v75 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v90 = v70;
            _os_log_impl(&dword_22D2FA000, v75, OS_LOG_TYPE_DEFAULT, "Deleting orphan asset at path: %{public}@", buf, 0xCu);
          }

          v76 = [MEMORY[0x277CBEB98] setWithObject:v70];
          ML3DeleteAssetsAtPaths(v76);
        }

        v24 = v82;
      }
    }

    v23 = v84;
  }

  else
  {
    v24 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 48);
      *buf = 138543618;
      v90 = v26;
      v91 = 2114;
      v92 = v23;
      _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_ERROR, "failed to obtain file attributes for %{public}@. err=%{public}@", buf, 0x16u);
    }
  }

  for (i = 80; i != -8; i -= 8)
  {
  }

  for (j = 10; j != -1; --j)
  {
  }

  for (k = 6; k != -1; --k)
  {
  }

  return v22 != 0;
}

- (void)populateLocationPropertiesWithPath:(id)path protectionType:(int64_t)type completionBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  library = [(ML3Entity *)self library];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__ML3Track_ML3TrackImporter__populateLocationPropertiesWithPath_protectionType_completionBlock___block_invoke;
  v13[3] = &unk_278763490;
  v13[4] = self;
  v14 = pathCopy;
  v15 = library;
  typeCopy = type;
  v11 = library;
  v12 = pathCopy;
  [v11 performAsyncDatabaseWriteTransactionWithBlock:v13 completionBlock:blockCopy];
}

- (void)populateLocationPropertiesWithPath:(id)path protectionType:(int64_t)type
{
  pathCopy = path;
  library = [(ML3Entity *)self library];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__ML3Track_ML3TrackImporter__populateLocationPropertiesWithPath_protectionType___block_invoke;
  v10[3] = &unk_278763490;
  v10[4] = self;
  v11 = pathCopy;
  v12 = library;
  typeCopy = type;
  v8 = library;
  v9 = pathCopy;
  [v8 performDatabaseTransactionWithBlock:v10];
}

- (void)populateChapterDataWithImportChapters:(id)chapters
{
  chaptersCopy = chapters;
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__ML3Track_ML3TrackImporter__populateChapterDataWithImportChapters___block_invoke;
  v7[3] = &unk_278764E80;
  v7[4] = self;
  v8 = chaptersCopy;
  v6 = chaptersCopy;
  [WeakRetained performDatabaseTransactionWithBlock:v7];
}

uint64_t __68__ML3Track_ML3TrackImporter__populateChapterDataWithImportChapters___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [v2 flattenedChapterDataWithImportChapters:v3 library:WeakRetained trackPersistentID:{objc_msgSend(*(a1 + 32), "persistentID")}];

  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 setValue:v5 forProperty:@"chapter.chapter_data"];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB68] null];
    [v6 setValue:v7 forProperty:@"chapter.chapter_data"];
  }

  return 1;
}

- (BOOL)populateArtworkCacheWithArtworkData:(id)data
{
  v15 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (dataCopy)
  {
    v5 = [[ML3ArtworkTokenSet alloc] initWithEntity:self artworkType:1];
    v6 = [(ML3ArtworkTokenSet *)v5 artworkTokenForSource:500];
    if ([v6 length])
    {
      v7 = [(ML3Entity *)self valueForProperty:@"media_type"];
      integerValue = [v7 integerValue];

      WeakRetained = objc_loadWeakRetained(&self->super._library);
      v10 = [WeakRetained importOriginalArtworkFromImageData:dataCopy withArtworkToken:v6 artworkType:1 sourceType:500 mediaType:integerValue];
    }

    else
    {
      v11 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = 134217984;
        persistentID = [(ML3Entity *)self persistentID];
        _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "Attempting to import store item artwork with invalid artwork token for item pid %lld", &v13, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

+ (id)importChaptersByParsingAsset:(id)asset
{
  v58 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  availableChapterLocales = [assetCopy availableChapterLocales];
  if ([availableChapterLocales count])
  {
    systemLocale = [MEMORY[0x277CBEAF8] systemLocale];
    selfCopy = self;
    v33 = availableChapterLocales;
    if (([availableChapterLocales containsObject:systemLocale] & 1) == 0)
    {
      v7 = [availableChapterLocales objectAtIndex:0];

      systemLocale = v7;
    }

    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v43 = *MEMORY[0x277CE5F10];
    v8 = [MEMORY[0x277CBEA60] arrayWithObject:?];
    v34 = assetCopy;
    v31 = systemLocale;
    v9 = [assetCopy chapterMetadataGroupsWithTitleLocale:systemLocale containingItemsWithCommonKeys:v8];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v9;
    v37 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v37)
    {
      v36 = *v53;
      v40 = *MEMORY[0x277CE5F28];
      v39 = *MEMORY[0x277CE5F30];
      do
      {
        v10 = 0;
        do
        {
          if (*v53 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v38 = v10;
          items = [*(*(&v52 + 1) + 8 * v10) items];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v41 = items;
          v12 = [items countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v12)
          {
            v13 = v12;
            v44 = *v49;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v49 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v15 = *(*(&v48 + 1) + 8 * i);
                v16 = dispatch_semaphore_create(0);
                v17 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"commonKey", @"extraAttributes", @"time", @"value", 0}];
                v46[0] = MEMORY[0x277D85DD0];
                v46[1] = 3221225472;
                v46[2] = __59__ML3Track_ML3TrackImporter__importChaptersByParsingAsset___block_invoke;
                v46[3] = &unk_278765FB8;
                v18 = v16;
                v47 = v18;
                [v15 loadValuesAsynchronouslyForKeys:v17 completionHandler:v46];

                dispatch_semaphore_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
                if (v15)
                {
                  [v15 time];
                }

                else
                {
                  memset(&time, 0, sizeof(time));
                }

                v19 = (floor(CMTimeGetSeconds(&time)) * 1000.0);
                v20 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v19];
                commonKey = [v15 commonKey];
                if ([commonKey isEqualToString:v43])
                {
                  dataValue = [v15 dataValue];
                }

                else
                {
                  if ([commonKey isEqualToString:v40])
                  {
                    stringValue = [v15 stringValue];
                    extraAttributes = [v15 extraAttributes];
                    v25 = [extraAttributes objectForKey:v39];

                    dataValue = 0;
                    goto LABEL_23;
                  }

                  dataValue = 0;
                }

                stringValue = 0;
                v25 = 0;
                if (dataValue)
                {
                  goto LABEL_25;
                }

LABEL_23:
                if (stringValue || v25)
                {
LABEL_25:
                  v26 = [v42 objectForKey:v20];
                  if (v26)
                  {
                    if (dataValue)
                    {
                      goto LABEL_27;
                    }

LABEL_29:
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v27 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v25];
                      [(MLTrackImportChapter *)v26 setURL:v27];
                      [(MLTrackImportChapter *)v26 setURLTitle:stringValue];
                    }

                    else if (stringValue)
                    {
                      [(MLTrackImportChapter *)v26 setTitle:stringValue];
                    }
                  }

                  else
                  {
                    v26 = objc_alloc_init(MLTrackImportChapter);
                    [(MLTrackImportChapter *)v26 setStartTimeInMilliseconds:v19];
                    [v42 setObject:v26 forKey:v20];
                    if (!dataValue)
                    {
                      goto LABEL_29;
                    }

LABEL_27:
                    [(MLTrackImportChapter *)v26 setImageData:dataValue];
                  }
                }
              }

              v13 = [v41 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v13);
          }

          v10 = v38 + 1;
        }

        while (v38 + 1 != v37);
        v37 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v37);
    }

    allValues = [v42 allValues];
    v29 = [selfCopy _normalizedImportChapters:allValues trackPersistentID:0];

    availableChapterLocales = v33;
    assetCopy = v34;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

+ (id)flattenedChapterDataFromDAAPInfoDictionary:(id)dictionary trackPersistentID:(int64_t)d
{
  v57 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKey:@"chapters"];
  v8 = [v7 objectForKey:@"time-format"];

  if (v8 && ([v8 isEqualToString:@"decimal-seconds"] & 1) == 0)
  {
    currentLocale = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(currentLocale, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v54 = v8;
      _os_log_impl(&dword_22D2FA000, currentLocale, OS_LOG_TYPE_ERROR, "Unknown time format in chapter data: %{public}@, returning nil", buf, 0xCu);
    }

    v28 = 0;
    goto LABEL_29;
  }

  dCopy = d;
  v44 = v8;
  v9 = 0x277CBE000uLL;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  array = [MEMORY[0x277CBEB18] array];
  v45 = dictionaryCopy;
  v11 = [dictionaryCopy objectForKey:@"chapters"];
  v12 = [v11 objectForKey:@"locales"];

  v13 = [v12 count];
  v14 = *MEMORY[0x277CBE6C8];
  if (!v13)
  {
    goto LABEL_17;
  }

  v15 = 0;
  v46 = *MEMORY[0x277CBE690];
  while (1)
  {
    v16 = objc_alloc(*(v9 + 2808));
    v17 = [v12 objectAtIndex:v15];
    v18 = [v16 initWithLocaleIdentifier:v17];

    v19 = [v18 objectForKey:v14];
    v20 = [currentLocale objectForKey:v14];
    if (([v19 isEqualToString:v20] & 1) == 0)
    {

      if (!v18)
      {
        goto LABEL_9;
      }

LABEL_8:
      v27 = [v18 objectForKey:v14];
      [array addObject:v27];

      goto LABEL_9;
    }

    v21 = [v18 objectForKey:v46];
    [currentLocale objectForKey:v46];
    v22 = v14;
    v23 = v9;
    v24 = v12;
    v26 = v25 = currentLocale;
    v48 = [v21 isEqualToString:v26];

    currentLocale = v25;
    v12 = v24;
    v9 = v23;
    v14 = v22;

    if (v48)
    {
      break;
    }

    if (v18)
    {
      goto LABEL_8;
    }

LABEL_9:

    if ([v12 count] <= ++v15)
    {
      goto LABEL_17;
    }
  }

  v29 = [v12 objectAtIndex:v15];

  if (!v29)
  {
LABEL_17:
    v30 = [currentLocale objectForKey:v14];
    v31 = [array indexOfObject:v30];
    if (v31 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_22;
    }

    if ([array count])
    {
      v32 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        localeIdentifier = [currentLocale localeIdentifier];
        v34 = [v12 objectAtIndex:0];
        *buf = 138543618;
        v54 = localeIdentifier;
        v55 = 2114;
        v56 = v34;
        _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ not found in locales, using %{public}@ instead", buf, 0x16u);
      }

      v31 = 0;
LABEL_22:
      v29 = [v12 objectAtIndex:v31];
    }

    else
    {
      v29 = 0;
    }
  }

  dictionaryCopy = v45;
  v35 = [v45 objectForKey:@"chapters"];
  v36 = [v35 objectForKey:@"chapter-list"];

  v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v36, "count")}];
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __91__ML3Track_ML3TrackImporter__flattenedChapterDataFromDAAPInfoDictionary_trackPersistentID___block_invoke;
  v49[3] = &unk_278763468;
  v50 = v29;
  v52 = dCopy;
  v38 = v37;
  v51 = v38;
  v39 = v29;
  [v36 enumerateObjectsUsingBlock:v49];
  v28 = [v42 flattenedChapterDataWithImportChapters:v38 library:0 trackPersistentID:dCopy];
  if (!v28)
  {
    v40 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v54 = 0;
      _os_log_impl(&dword_22D2FA000, v40, OS_LOG_TYPE_ERROR, "Could not create flattened item chapters: %ld", buf, 0xCu);
    }
  }

  v8 = v44;
LABEL_29:

  return v28;
}

void __91__ML3Track_ML3TrackImporter__flattenedChapterDataFromDAAPInfoDictionary_trackPersistentID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = objc_alloc_init(MLTrackImportChapter);
  v4 = [v3 objectForKey:@"start"];
  [v4 floatValue];
  v6 = (v5 * 1000.0);

  [(MLTrackImportChapter *)v10 setStartTimeInMilliseconds:v6];
  v7 = [v3 objectForKey:@"titles"];

  v8 = [v7 objectForKey:*(a1 + 32)];
  [(MLTrackImportChapter *)v10 setTitle:v8];

  v9 = [ML3MusicLibrary artworkTokenForChapterWithItemPID:*(a1 + 48) retrievalTime:v6];
  [(MLTrackImportChapter *)v10 setImageCacheKey:v9];

  [*(a1 + 40) addObject:v10];
}

+ (id)flattenedChapterDataFromSyncInfoDictionaries:(id)dictionaries trackPersistentID:(int64_t)d
{
  v11 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  v5 = dictionariesCopy;
  if (dictionariesCopy && [dictionariesCopy count])
  {
    v6 = ChapterData_Create();
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v10 = v6;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "Could not create chapter data: %ld", buf, 0xCu);
    }
  }

  return 0;
}

void __93__ML3Track_ML3TrackImporter__flattenedChapterDataFromSyncInfoDictionaries_trackPersistentID___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = objc_alloc_init(MLTrackImportChapter);
  v4 = [v17 objectForKey:@"start_time_ms"];
  v5 = [v4 integerValue];

  [(MLTrackImportChapter *)v3 setStartTimeInMilliseconds:v5];
  v6 = [v17 objectForKey:@"name"];
  [(MLTrackImportChapter *)v3 setTitle:v6];

  v7 = MEMORY[0x277CBEBC0];
  v8 = [v17 objectForKey:@"url"];
  v9 = [v7 URLWithString:v8];
  [(MLTrackImportChapter *)v3 setURL:v9];

  v10 = [v17 objectForKey:@"url_title"];
  v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v12 = [v10 stringByTrimmingCharactersInSet:v11];

  [(MLTrackImportChapter *)v3 setURLTitle:v12];
  v13 = [v17 objectForKey:@"artwork_start_time_ms"];

  if (v13)
  {
    v14 = [v17 objectForKey:@"artwork_start_time_ms"];
    v15 = [v14 integerValue];

    if ((v15 & 0x80000000) == 0)
    {
      v16 = [ML3MusicLibrary artworkTokenForChapterWithItemPID:*(a1 + 40) retrievalTime:v15 / 1000.0];
      [(MLTrackImportChapter *)v3 setImageCacheKey:v16];
    }
  }

  [*(a1 + 32) addObject:v3];
}

+ (id)flattenedChapterDataWithImportChapters:(id)chapters library:(id)library trackPersistentID:(int64_t)d
{
  libraryCopy = library;
  v9 = [self _normalizedImportChapters:chapters trackPersistentID:d];
  if ([v9 count])
  {
    v21 = 0;
    ChapterData_Create();
    v10 = [v9 sortedArrayUsingSelector:sel_compare_];
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__13433;
    v19[4] = __Block_byref_object_dispose__13434;
    v20 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __95__ML3Track_ML3TrackImporter__flattenedChapterDataWithImportChapters_library_trackPersistentID___block_invoke;
    v13[3] = &unk_278763418;
    v11 = v10;
    v16 = v19;
    v17 = v21;
    v14 = v11;
    v15 = libraryCopy;
    dCopy = d;
    [v11 enumerateObjectsUsingBlock:v13];
    ChapterData_ExportFlattenedData();
    ChapterData_Release();

    _Block_object_dispose(v19, 8);
  }

  return 0;
}

void __95__ML3Track_ML3TrackImporter__flattenedChapterDataWithImportChapters_library_trackPersistentID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = a3 + 1;
  if (v6 >= [*(a1 + 32) count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [*(a1 + 32) objectAtIndex:v6];
  }

  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v39 = *(a1 + 64);
  v45 = *(*(*(a1 + 48) + 8) + 40);
  v10 = v5;
  v41 = v7;
  v42 = v8;
  v11 = [v10 startTimeInMilliseconds];
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x2020000000;
  v55 = 0;
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __MLChapterDataAddImportChapter_block_invoke;
  v53[3] = &unk_278763518;
  v53[4] = v54;
  v53[5] = v9;
  v44 = v11;
  v53[6] = v11;
  v12 = MEMORY[0x2318CDB10](v53);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __MLChapterDataAddImportChapter_block_invoke_2;
  v51[3] = &unk_278763540;
  v43 = v12;
  v52 = v43;
  v13 = MEMORY[0x2318CDB10](v51);
  v14 = [v10 title];
  v15 = [v45 title];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __MLChapterDataAddImportChapter_block_invoke_3;
  v50[3] = &__block_descriptor_48_e18_v16__0__NSString_8l;
  v50[4] = v9;
  v50[5] = v44;
  LOBYTE(v8) = (v13)[2](v13, v14, v15, v50);

  if ((v8 & 1) == 0)
  {
    v16 = v45;
    if (!v45)
    {
      v16 = v10;
    }

    v17 = v16;
    v18 = v41;
    if (!v41)
    {
      v18 = v10;
    }

    v19 = v18;
    v20 = [v17 title];
    if (![v20 length])
    {
      v21 = [v19 title];
      if (![v21 length])
      {
        v38 = [v17 isEqualIgnoringTimesAndTitle:v19];

        if (v38)
        {
          v43[2]();
          MLChapterDataSetUTF16Value(v9, &stru_28408B690);
        }

        goto LABEL_13;
      }
    }

LABEL_13:
  }

  v22 = [v10 URL];
  v23 = [v22 absoluteString];
  v24 = [v45 URL];
  v25 = [v24 absoluteString];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __MLChapterDataAddImportChapter_block_invoke_4;
  v46[3] = &unk_278763588;
  v48 = v9;
  v49 = v44;
  v26 = v10;
  v47 = v26;
  (v13)[2](v13, v23, v25, v46);

  v27 = [v26 imageData];
  if (v27)
  {
    v43[2]();
    v28 = [v26 imageCacheKey];
    v29 = v27;
    v30 = v42;
    MLChapterDataSetChapterArtworkCacheKey(v9, v44, v28);
    if ([v29 length])
    {
      v31 = [(ML3Entity *)ML3Track newWithPersistentID:v40 inLibrary:v30];
      v32 = [v31 valueForProperty:@"media_type"];
      v33 = [v32 unsignedIntValue];

      v34 = [ML3MusicLibrary artworkTokenForChapterWithItemPID:v40 retrievalTime:v44];
      [v30 importOriginalArtworkFromImageData:v29 withArtworkToken:v34 artworkType:3 sourceType:300 mediaType:v33];
    }

    goto LABEL_20;
  }

  v35 = [v26 imageCacheKey];

  if (v35)
  {
    v43[2]();
    v28 = [v26 imageCacheKey];
    MLChapterDataSetChapterArtworkCacheKey(v9, v44, v28);
LABEL_20:
  }

  _Block_object_dispose(v54, 8);
  v36 = *(*(a1 + 48) + 8);
  v37 = *(v36 + 40);
  *(v36 + 40) = v26;
}

+ (id)_normalizedImportChapters:(id)chapters trackPersistentID:(int64_t)d
{
  v19 = *MEMORY[0x277D85DE8];
  [chapters sortedArrayUsingSelector:sel_compare_];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        [v10 normalizeProperties];
        if (d)
        {
          imageCacheKey = [v10 imageCacheKey];
          if (!imageCacheKey)
          {
            imageData = [v10 imageData];

            if (!imageData)
            {
              continue;
            }

            imageCacheKey = +[ML3MusicLibrary artworkTokenForChapterWithItemPID:retrievalTime:](ML3MusicLibrary, "artworkTokenForChapterWithItemPID:retrievalTime:", d, [v10 startTimeInMilliseconds] / 1000.0);
            [v10 setImageCacheKey:imageCacheKey];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v5;
}

- (id)protocolItemForDynamicUpdate
{
  v3 = objc_alloc_init(MIPMediaItem);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__ML3Track_MLProtocol__protocolItemForDynamicUpdate__block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  if (protocolItemForDynamicUpdate_onceToken != -1)
  {
    dispatch_once(&protocolItemForDynamicUpdate_onceToken, block);
  }

  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__ML3Track_MLProtocol__protocolItemForDynamicUpdate__block_invoke_2;
  v9[3] = &unk_278764670;
  v9[4] = self;
  v5 = v3;
  v10 = v5;
  [WeakRetained databaseConnectionAllowingWrites:0 withBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __52__ML3Track_MLProtocol__protocolItemForDynamicUpdate__block_invoke(uint64_t a1)
{
  v25[14] = *MEMORY[0x277D85DE8];
  v2 = @"media_type";
  v25[0] = @"media_type";
  v3 = @"item_stats.date_played";
  v25[1] = @"item_stats.date_played";
  v4 = @"item_store.date_released";
  v25[2] = @"item_store.date_released";
  v5 = @"item_stats.date_skipped";
  v25[3] = @"item_stats.date_skipped";
  v6 = @"(item.base_location_id > 0)";
  v25[4] = @"(item.base_location_id > 0)";
  v7 = @"item_stats.liked_state";
  v25[5] = @"item_stats.liked_state";
  v8 = @"item_stats.liked_state_changed";
  v25[6] = @"item_stats.liked_state_changed";
  v9 = @"item_stats.play_count_recent";
  v25[7] = @"item_stats.play_count_recent";
  v10 = @"item_stats.play_count_user";
  v25[8] = @"item_stats.play_count_user";
  v11 = @"item_stats.skip_count_recent";
  v25[9] = @"item_stats.skip_count_recent";
  v12 = @"item_stats.skip_count_user";
  v25[10] = @"item_stats.skip_count_user";
  v13 = @"album.user_rating";
  v25[11] = @"album.user_rating";
  v14 = @"item_stats.user_rating";
  v25[12] = @"item_stats.user_rating";
  v15 = @"item_stats.liked_state_changed_date";
  v25[13] = @"item_stats.liked_state_changed_date";
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:14];
  v17 = protocolItemForDynamicUpdate___trackProperties;
  protocolItemForDynamicUpdate___trackProperties = v16;

  v18 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v20 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:*(*(a1 + 32) + 16)];
  v21 = [v18 unrestrictedAllItemsQueryWithlibrary:WeakRetained predicate:v20 orderingTerms:0];

  v22 = [v21 selectPersistentIDsSQLAndProperties:protocolItemForDynamicUpdate___trackProperties ordered:0];
  v23 = protocolItemForDynamicUpdate___sqlQueryStr;
  protocolItemForDynamicUpdate___sqlQueryStr = v22;

  for (i = 13; i != -1; --i)
  {
  }
}

void __52__ML3Track_MLProtocol__protocolItemForDynamicUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = protocolItemForDynamicUpdate___sqlQueryStr;
  v4 = MEMORY[0x277CCABB0];
  v5 = *(*(a1 + 32) + 16);
  v6 = a2;
  v7 = [v4 numberWithLongLong:v5];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v6 executeQuery:v3 withParameters:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__ML3Track_MLProtocol__protocolItemForDynamicUpdate__block_invoke_3;
  v10[3] = &unk_278766118;
  v11 = *(a1 + 40);
  [v9 enumerateRowsWithBlock:v10];
}

void __52__ML3Track_MLProtocol__protocolItemForDynamicUpdate__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  *a4 = 1;
  LOWORD(a4) = [v8 intForColumnIndex:1];
  [*(a1 + 32) setLastPlayedDateTime:{objc_msgSend(v8, "int64ForColumnIndex:", 2)}];
  [*(a1 + 32) setReleaseDateTime:{objc_msgSend(v8, "int64ForColumnIndex:", 3)}];
  [*(a1 + 32) setLastSkippedDateTime:{objc_msgSend(v8, "int64ForColumnIndex:", 4)}];
  [*(a1 + 32) setHasLocalAsset:{objc_msgSend(v8, "int64ForColumnIndex:", 5) != 0}];
  [*(a1 + 32) setLikedState:{objc_msgSend(v8, "intForColumnIndex:", 6)}];
  [*(a1 + 32) setLikedStateChanged:{objc_msgSend(v8, "intForColumnIndex:", 7) != 0}];
  [*(a1 + 32) setPlayCount:{objc_msgSend(v8, "intForColumnIndex:", 9)}];
  [*(a1 + 32) setPlayCountDelta:{objc_msgSend(v8, "intForColumnIndex:", 8)}];
  [*(a1 + 32) setSkipCount:{objc_msgSend(v8, "intForColumnIndex:", 11)}];
  [*(a1 + 32) setSkipCountDelta:{objc_msgSend(v8, "intForColumnIndex:", 10)}];
  [*(a1 + 32) setLikedStateChangedDate:{objc_msgSend(v8, "int64ForColumnIndex:", 14)}];
  if ((a4 & 0x408) != 0)
  {
    v6 = objc_alloc_init(MIPSong);
    -[MIPSong setUserRating:](v6, "setUserRating:", [v8 intForColumnIndex:13]);
    v7 = objc_alloc_init(MIPAlbum);
    -[MIPAlbum setUserRating:](v7, "setUserRating:", [v8 intForColumnIndex:12]);
    [(MIPSong *)v6 setAlbum:v7];
    [*(a1 + 32) setSong:v6];
  }
}

- (id)protocolItem
{
  v3 = objc_alloc_init(MIPMediaItem);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__ML3Track_MLProtocol__protocolItem__block_invoke;
  block[3] = &unk_278765FB8;
  block[4] = self;
  if (protocolItem_onceToken != -1)
  {
    dispatch_once(&protocolItem_onceToken, block);
  }

  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __36__ML3Track_MLProtocol__protocolItem__block_invoke_2;
  v10[3] = &unk_278764640;
  v10[4] = self;
  v5 = v3;
  v11 = v5;
  v12 = WeakRetained;
  v6 = WeakRetained;
  [v6 databaseConnectionAllowingWrites:0 withBlock:v10];
  v7 = v12;
  v8 = v5;

  return v5;
}

void __36__ML3Track_MLProtocol__protocolItem__block_invoke(uint64_t a1)
{
  v163[152] = *MEMORY[0x277D85DE8];
  v2 = @"item_extra.title";
  v163[0] = @"item_extra.title";
  v3 = @"media_type";
  v163[1] = @"media_type";
  v4 = @"item_extra.sort_title";
  v163[2] = @"item_extra.sort_title";
  v5 = @"item_store.date_released";
  v163[3] = @"item_store.date_released";
  v6 = @"date_added";
  v163[4] = @"date_added";
  v7 = @"item_extra.date_modified";
  v163[5] = @"item_extra.date_modified";
  v8 = @"item_extra.file_size";
  v163[6] = @"item_extra.file_size";
  v9 = @"item_extra.total_time_ms";
  v163[7] = @"item_extra.total_time_ms";
  v10 = @"item_extra.content_rating";
  v163[8] = @"item_extra.content_rating";
  v11 = @"(item_extra.content_rating == 1)";
  v163[9] = @"(item_extra.content_rating == 1)";
  v12 = @"item_extra.description";
  v163[10] = @"item_extra.description";
  v13 = @"item_extra.description_long";
  v163[11] = @"item_extra.description_long";
  v14 = @"item_extra.copyright";
  v163[12] = @"item_extra.copyright";
  v15 = @"best_artwork_token.available_artwork_token AS available_item_artwork_token";
  v163[13] = @"best_artwork_token.available_artwork_token AS available_item_artwork_token";
  v16 = @"item_store.store_item_id";
  v163[14] = @"item_store.store_item_id";
  v17 = @"item_store.storefront_id";
  v163[15] = @"item_store.storefront_id";
  v18 = @"item_store.account_id";
  v163[16] = @"item_store.account_id";
  v19 = @"item_store.purchase_history_id";
  v163[17] = @"item_store.purchase_history_id";
  v20 = @"item_store.purchase_history_token";
  v163[18] = @"item_store.purchase_history_token";
  v21 = @"item_store.purchase_history_redownload_params";
  v163[19] = @"item_store.purchase_history_redownload_params";
  v22 = @"item_store.store_saga_id";
  v163[20] = @"item_store.store_saga_id";
  v23 = @"item_store.match_redownload_params";
  v163[21] = @"item_store.match_redownload_params";
  v24 = @"item_store.sync_id";
  v163[22] = @"item_store.sync_id";
  v25 = @"item_playback.audio_format";
  v163[23] = @"item_playback.audio_format";
  v26 = @"disc_number";
  v163[24] = @"disc_number";
  v27 = @"item_extra.genius_id";
  v163[25] = @"item_extra.genius_id";
  v28 = @"lyrics.lyrics";
  v163[26] = @"lyrics.lyrics";
  v29 = @"lyrics.checksum";
  v163[27] = @"lyrics.checksum";
  v30 = @"track_number";
  v163[28] = @"track_number";
  v31 = @"item_stats.user_rating";
  v163[29] = @"item_stats.user_rating";
  v32 = @"exclude_from_shuffle";
  v163[30] = @"exclude_from_shuffle";
  v33 = @"item_playback.has_video";
  v163[31] = @"item_playback.has_video";
  v34 = @"item_video.rental_duration";
  v163[32] = @"item_video.rental_duration";
  v35 = @"item_video.rental_playback_duration";
  v163[33] = @"item_video.rental_playback_duration";
  v36 = @"item_video.rental_playback_date_started";
  v163[34] = @"item_video.rental_playback_date_started";
  v37 = @"item_video.rental_date_started";
  v163[35] = @"item_video.rental_date_started";
  v38 = @"item_video.audio_language";
  v163[36] = @"item_video.audio_language";
  v39 = @"item_video.audio_track_id";
  v163[37] = @"item_video.audio_track_id";
  v40 = @"item_video.audio_track_index";
  v163[38] = @"item_video.audio_track_index";
  v41 = @"item_video.extended_content_rating";
  v163[39] = @"item_video.extended_content_rating";
  v42 = @"item_video.movie_info";
  v163[40] = @"item_video.movie_info";
  v43 = @"item_video.subtitle_language";
  v163[41] = @"item_video.subtitle_language";
  v44 = @"item_video.subtitle_track_index";
  v163[42] = @"item_video.subtitle_track_index";
  v45 = @"(item_video.video_quality != 0)";
  v163[43] = @"(item_video.video_quality != 0)";
  v46 = @"item_video.has_alternate_audio";
  v163[44] = @"item_video.has_alternate_audio";
  v47 = @"item_video.has_chapter_data";
  v163[45] = @"item_video.has_chapter_data";
  v48 = @"item_video.has_subtitles";
  v163[46] = @"item_video.has_subtitles";
  v49 = @"item_video.is_rental";
  v163[47] = @"item_video.is_rental";
  v50 = @"item_video.episode_id";
  v163[48] = @"item_video.episode_id";
  v51 = @"episode_sort_id";
  v163[49] = @"episode_sort_id";
  v52 = @"item_video.network_name";
  v163[50] = @"item_video.network_name";
  v53 = @"item_video.season_number";
  v163[51] = @"item_video.season_number";
  v54 = @"item_store.external_guid";
  v163[52] = @"item_store.external_guid";
  v55 = @"item_extra.disc_count";
  v163[53] = @"item_extra.disc_count";
  v56 = @"item_extra.track_count";
  v163[54] = @"item_extra.track_count";
  v57 = @"album.album";
  v163[55] = @"album.album";
  v58 = @"album.sort_album";
  v163[56] = @"album.sort_album";
  v59 = @"album.user_rating";
  v163[57] = @"album.user_rating";
  v60 = @"is_compilation";
  v163[58] = @"is_compilation";
  v61 = @"item_artist.store_id";
  v163[59] = @"item_artist.store_id";
  v62 = @"item_artist.item_artist";
  v163[60] = @"item_artist.item_artist";
  v63 = @"item_artist.sort_item_artist";
  v163[61] = @"item_artist.sort_item_artist";
  v64 = @"album_artist.album_artist";
  v163[62] = @"album_artist.album_artist";
  v65 = @"album_artist.sort_album_artist";
  v163[63] = @"album_artist.sort_album_artist";
  v66 = @"composer.composer";
  v163[64] = @"composer.composer";
  v67 = @"composer.sort_composer";
  v163[65] = @"composer.sort_composer";
  v68 = @"genre.genre";
  v163[66] = @"genre.genre";
  v69 = @"item_playback.gapless_encoding_drain";
  v163[67] = @"item_playback.gapless_encoding_drain";
  v70 = @"item_playback.gapless_last_frame_resynch";
  v163[68] = @"item_playback.gapless_last_frame_resynch";
  v71 = @"item_playback.gapless_heuristic_info";
  v163[69] = @"item_playback.gapless_heuristic_info";
  v72 = @"item_playback.gapless_encoding_delay";
  v163[70] = @"item_playback.gapless_encoding_delay";
  v73 = @"item_playback.start_time_ms";
  v163[71] = @"item_playback.start_time_ms";
  v74 = @"item_playback.stop_time_ms";
  v163[72] = @"item_playback.stop_time_ms";
  v75 = @"item_playback.volume_normalization_energy";
  v163[73] = @"item_playback.volume_normalization_energy";
  v76 = @"item_extra.bpm";
  v163[74] = @"item_extra.bpm";
  v77 = @"item_playback.bit_rate";
  v163[75] = @"item_playback.bit_rate";
  v78 = @"item_playback.codec_subtype";
  v163[76] = @"item_playback.codec_subtype";
  v79 = @"item_playback.codec_type";
  v163[77] = @"item_playback.codec_type";
  v80 = @"item_playback.data_kind";
  v163[78] = @"item_playback.data_kind";
  v81 = @"item_playback.data_url";
  v163[79] = @"item_playback.data_url";
  v82 = @"item_playback.eq_preset";
  v163[80] = @"item_playback.eq_preset";
  v83 = @"item_playback.format";
  v163[81] = @"item_playback.format";
  v84 = @"item_playback.relative_volume";
  v163[82] = @"item_playback.relative_volume";
  v85 = @"item_playback.sample_rate";
  v163[83] = @"item_playback.sample_rate";
  v86 = @"item_extra.year";
  v163[84] = @"item_extra.year";
  v87 = @"item_extra.content_rating_level";
  v163[85] = @"item_extra.content_rating_level";
  v88 = @"item_extra.comment";
  v163[86] = @"item_extra.comment";
  v89 = @"item_extra.location_kind_id";
  v163[87] = @"item_extra.location_kind_id";
  v90 = @"item_store.key_versions";
  v163[88] = @"item_store.key_versions";
  v91 = @"item_store.key_platform_id";
  v163[89] = @"item_store.key_platform_id";
  v92 = @"item_store.key_id";
  v163[90] = @"item_store.key_id";
  v93 = @"item_store.key_id_2";
  v163[91] = @"item_store.key_id_2";
  v94 = @"item_store.artwork_url";
  v163[92] = @"item_store.artwork_url";
  v95 = @"item_store.store_xid";
  v163[93] = @"item_store.store_xid";
  v96 = @"item_store.extras_url";
  v163[94] = @"item_store.extras_url";
  v97 = @"album_pid";
  v163[95] = @"album_pid";
  v98 = @"item_artist_pid";
  v163[96] = @"item_artist_pid";
  v99 = @"album_artist_pid";
  v163[97] = @"album_artist_pid";
  v100 = @"genre_id";
  v163[98] = @"genre_id";
  v101 = @"item_store.cloud_status";
  v163[99] = @"item_store.cloud_status";
  v102 = @"item_playback.progression_direction";
  v163[100] = @"item_playback.progression_direction";
  v103 = @"item_stats.play_count_user";
  v163[101] = @"item_stats.play_count_user";
  v104 = @"item_stats.play_count_recent";
  v163[102] = @"item_stats.play_count_recent";
  v105 = @"item_stats.date_played";
  v163[103] = @"item_stats.date_played";
  v106 = @"item_stats.skip_count_user";
  v163[104] = @"item_stats.skip_count_user";
  v107 = @"item_stats.skip_count_recent";
  v163[105] = @"item_stats.skip_count_recent";
  v108 = @"item_stats.date_skipped";
  v163[106] = @"item_stats.date_skipped";
  v109 = @"item_stats.remember_bookmark";
  v163[107] = @"item_stats.remember_bookmark";
  v110 = @"item_stats.bookmark_time_ms";
  v163[108] = @"item_stats.bookmark_time_ms";
  v111 = @"item_stats.hidden";
  v163[109] = @"item_stats.hidden";
  v112 = @"chapter.chapter_data";
  v163[110] = @"chapter.chapter_data";
  v113 = @"(item.base_location_id > 200)";
  v163[111] = @"(item.base_location_id > 200)";
  v114 = @"item_playback.duration";
  v163[112] = @"item_playback.duration";
  v115 = @"item_extra.grouping";
  v163[113] = @"item_extra.grouping";
  v116 = @"item_store.store_playlist_id";
  v163[114] = @"item_store.store_playlist_id";
  v117 = @"item_store.store_composer_id";
  v163[115] = @"item_store.store_composer_id";
  v118 = @"item_store.store_genre_id";
  v163[116] = @"item_store.store_genre_id";
  v119 = @"composer_pid";
  v163[117] = @"composer_pid";
  v120 = @"item_stats.liked_state";
  v163[118] = @"item_stats.liked_state";
  v121 = @"item_stats.liked_state_changed";
  v163[119] = @"item_stats.liked_state_changed";
  v122 = @"needs_reporting";
  v163[120] = @"needs_reporting";
  v123 = @"item_store.subscription_store_item_id";
  v163[121] = @"item_store.subscription_store_item_id";
  v124 = @"in_my_library";
  v163[122] = @"in_my_library";
  v125 = @"item_store.cloud_asset_available";
  v163[123] = @"item_store.cloud_asset_available";
  v126 = @"item_store.is_protected";
  v163[124] = @"item_store.is_protected";
  v127 = @"item_store.cloud_album_id";
  v163[125] = @"item_store.cloud_album_id";
  v128 = @"item_extra.is_user_disabled";
  v163[126] = @"item_extra.is_user_disabled";
  v129 = @"item_store.feed_url";
  v163[127] = @"item_store.feed_url";
  v130 = @"item_artist.series_name";
  v163[128] = @"item_artist.series_name";
  v131 = @"item_store.cloud_playback_endpoint_type";
  v163[129] = @"item_store.cloud_playback_endpoint_type";
  v132 = @"item_store.playback_endpoint_type";
  v163[130] = @"item_store.playback_endpoint_type";
  v133 = @"item_store.store_matched_status";
  v163[131] = @"item_store.store_matched_status";
  v134 = @"item_store.cloud_in_my_library";
  v163[132] = @"item_store.cloud_in_my_library";
  v135 = @"album_artist.store_id";
  v163[133] = @"album_artist.store_id";
  v136 = @"item_store.cloud_universal_library_id";
  v163[134] = @"item_store.cloud_universal_library_id";
  v137 = @"best_artwork_token.fetchable_artwork_source_type AS fetchable_item_artwork_source_type";
  v163[135] = @"best_artwork_token.fetchable_artwork_source_type AS fetchable_item_artwork_source_type";
  v138 = @"best_artwork_token.fetchable_artwork_token AS fetchable_item_artwork_token";
  v163[136] = @"best_artwork_token.fetchable_artwork_token AS fetchable_item_artwork_token";
  v139 = @"item_video.hls_playlist_url";
  v163[137] = @"item_video.hls_playlist_url";
  v140 = @"album_artist.cloud_universal_library_id";
  v163[138] = @"album_artist.cloud_universal_library_id";
  v141 = @"item_extra.is_preorder";
  v163[139] = @"item_extra.is_preorder";
  v142 = @"item_stats.liked_state_changed_date";
  v163[140] = @"item_stats.liked_state_changed_date";
  v143 = @"item_store.reporting_store_item_id";
  v163[141] = @"item_store.reporting_store_item_id";
  v144 = @"item_store.asset_store_item_id";
  v163[142] = @"item_store.asset_store_item_id";
  v145 = @"album.liked_state";
  v163[143] = @"album.liked_state";
  v146 = @"album.liked_state_changed_date";
  v163[144] = @"album.liked_state_changed_date";
  v147 = @"album_artist.liked_state";
  v163[145] = @"album_artist.liked_state";
  v148 = @"album_artist.liked_state_changed_date";
  v163[146] = @"album_artist.liked_state_changed_date";
  v149 = @"album_artist.sync_id";
  v163[147] = @"album_artist.sync_id";
  v150 = @"album.sync_id";
  v163[148] = @"album.sync_id";
  v151 = @"item_artist.sync_id";
  v163[149] = @"item_artist.sync_id";
  v152 = @"album_artist_order";
  v163[150] = @"album_artist_order";
  v153 = @"album_artist_order_section";
  v163[151] = @"album_artist_order_section";
  v154 = [MEMORY[0x277CBEA60] arrayWithObjects:v163 count:152];
  v155 = protocolItem___trackProperties;
  protocolItem___trackProperties = v154;

  v156 = objc_opt_class();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v158 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:*(*(a1 + 32) + 16)];
  v159 = [v156 unrestrictedAllItemsQueryWithlibrary:WeakRetained predicate:v158 orderingTerms:0];

  v160 = [v159 selectPersistentIDsSQLAndProperties:protocolItem___trackProperties ordered:0];
  v161 = protocolItem___sqlQueryStr;
  protocolItem___sqlQueryStr = v160;

  for (i = 151; i != -1; --i)
  {
  }
}

void __36__ML3Track_MLProtocol__protocolItem__block_invoke_2(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = protocolItem___sqlQueryStr;
  v4 = MEMORY[0x277CCABB0];
  v5 = *(*(a1 + 32) + 16);
  v6 = a2;
  v7 = [v4 numberWithLongLong:v5];
  v16[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v9 = [v6 executeQuery:v3 withParameters:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __36__ML3Track_MLProtocol__protocolItem__block_invoke_3;
  v12[3] = &unk_278764618;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  v13 = v10;
  v14 = v11;
  v15 = *(a1 + 48);
  [v9 enumerateRowsWithBlock:v12];
}

void __36__ML3Track_MLProtocol__protocolItem__block_invoke_3(id *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v93 = a2;
  [a1[4] setMediaType:{ML3ProtocolMediaTypeForMLMediaType(objc_msgSend(v93, "intForColumnIndex:", 2))}];
  v5 = [v93 stringForColumnIndex:1];
  [a1[4] setTitle:v5];

  v6 = [v93 stringForColumnIndex:3];
  [a1[4] setSortTitle:v6];

  [a1[4] setReleaseDateTime:{objc_msgSend(v93, "int64ForColumnIndex:", 4)}];
  [a1[4] setCreationDateTime:{objc_msgSend(v93, "int64ForColumnIndex:", 5)}];
  [a1[4] setModificationDateTime:{objc_msgSend(v93, "int64ForColumnIndex:", 6)}];
  [a1[4] setFileSize:{objc_msgSend(v93, "int64ForColumnIndex:", 7)}];
  [a1[4] setDuration:{objc_msgSend(v93, "int64ForColumnIndex:", 8)}];
  [a1[4] setContentRating:{objc_msgSend(v93, "intForColumnIndex:", 9)}];
  [a1[4] setExplicitContent:{objc_msgSend(v93, "intForColumnIndex:", 10) != 0}];
  v7 = [v93 stringForColumnIndex:11];
  [a1[4] setShortDescription:v7];

  v8 = [v93 stringForColumnIndex:12];
  [a1[4] setLongDescription:v8];

  v9 = [v93 stringForColumnIndex:13];
  [a1[4] setCopyright:v9];

  [a1[4] setStoreId:{objc_msgSend(v93, "int64ForColumnIndex:", 15)}];
  [a1[4] setStorefrontId:{objc_msgSend(v93, "int64ForColumnIndex:", 16)}];
  [a1[4] setAccountId:{objc_msgSend(v93, "int64ForColumnIndex:", 17)}];
  [a1[4] setPurchaseHistoryId:{objc_msgSend(v93, "int64ForColumnIndex:", 18)}];
  [a1[4] setPurchaseHistoryToken:{objc_msgSend(v93, "int64ForColumnIndex:", 19)}];
  v10 = [v93 stringForColumnIndex:20];
  [a1[4] setPurchaseHistoryRedownloadParams:v10];

  [a1[4] setSagaId:{objc_msgSend(v93, "int64ForColumnIndex:", 21)}];
  [a1[4] setYear:{objc_msgSend(v93, "intForColumnIndex:", 85)}];
  [a1[4] setContentRatingLevel:{objc_msgSend(v93, "intForColumnIndex:", 86)}];
  v11 = [v93 stringForColumnIndex:22];
  [a1[4] setSagaRedownloadParams:v11];

  v12 = [v93 stringForColumnIndex:87];
  [a1[4] setComment:v12];

  [a1[4] setFileKind:{objc_msgSend(v93, "intForColumnIndex:", 88)}];
  [a1[4] setDrmVersionsCode:{objc_msgSend(v93, "int64ForColumnIndex:", 89)}];
  [a1[4] setDrmPlatformIdCode:{objc_msgSend(v93, "int64ForColumnIndex:", 90)}];
  [a1[4] setDrmKey1IdCode:{objc_msgSend(v93, "int64ForColumnIndex:", 91)}];
  [a1[4] setDrmKey2IdCode:{objc_msgSend(v93, "int64ForColumnIndex:", 92)}];
  v13 = [v93 stringForColumnIndex:93];
  [a1[4] setChapterMetadataUrl:v13];

  v14 = [v93 stringForColumnIndex:94];
  [a1[4] setStoreXID:v14];

  v15 = [v93 stringForColumnIndex:95];
  [a1[4] setExtrasUrl:v15];

  [a1[4] setCloudStatus:{objc_msgSend(v93, "intForColumnIndex:", 100)}];
  [a1[4] setPlayCount:{objc_msgSend(v93, "intForColumnIndex:", 102)}];
  [a1[4] setPlayCountDelta:{objc_msgSend(v93, "intForColumnIndex:", 103)}];
  [a1[4] setLastPlayedDateTime:{objc_msgSend(v93, "int64ForColumnIndex:", 104)}];
  [a1[4] setSkipCount:{objc_msgSend(v93, "intForColumnIndex:", 105)}];
  [a1[4] setSkipCountDelta:{objc_msgSend(v93, "intForColumnIndex:", 106)}];
  [a1[4] setLastSkippedDateTime:{objc_msgSend(v93, "int64ForColumnIndex:", 107)}];
  [a1[4] setRememberBookmark:{objc_msgSend(v93, "intForColumnIndex:", 108) != 0}];
  [a1[4] setBookmarkTimeMilliseconds:{objc_msgSend(v93, "int64ForColumnIndex:", 109)}];
  [a1[4] setHidden:{objc_msgSend(v93, "intForColumnIndex:", 110) != 0}];
  [a1[4] setHasLocalAsset:{objc_msgSend(v93, "intForColumnIndex:", 112) != 0}];
  v16 = [v93 stringForColumnIndex:14];
  [a1[4] setArtworkId:v16];

  v17 = [v93 stringForColumnIndex:114];
  [a1[4] setGrouping:v17];

  [a1[4] setStorePlaylistId:{objc_msgSend(v93, "int64ForColumnIndex:", 115)}];
  [a1[4] setLikedState:{objc_msgSend(v93, "intForColumnIndex:", 119)}];
  [a1[4] setLikedStateChanged:{objc_msgSend(v93, "intForColumnIndex:", 120) != 0}];
  [a1[4] setNeedsReporting:{objc_msgSend(v93, "intForColumnIndex:", 121) != 0}];
  [a1[4] setSubscriptionStoreItemId:{objc_msgSend(v93, "int64ForColumnIndex:", 122)}];
  [a1[4] setIsInUsersLibrary:{objc_msgSend(v93, "intForColumnIndex:", 123) != 0}];
  [a1[4] setCloudAssetAvailable:{objc_msgSend(v93, "intForColumnIndex:", 124) != 0}];
  [a1[4] setStoreProtectionType:{objc_msgSend(v93, "intForColumnIndex:", 125)}];
  [a1[4] setUserDisabled:{objc_msgSend(v93, "intForColumnIndex:", 127) != 0}];
  [a1[4] setCloudPlaybackEndpointType:{objc_msgSend(v93, "intForColumnIndex:", 130)}];
  [a1[4] setPlaybackEndpointType:{objc_msgSend(v93, "intForColumnIndex:", 131)}];
  [a1[4] setCloudMatchedStatus:{objc_msgSend(v93, "intForColumnIndex:", 132)}];
  [a1[4] setInUsersCloudLibrary:{objc_msgSend(v93, "intForColumnIndex:", 133) != 0}];
  v18 = [v93 stringForColumnIndex:135];
  [a1[4] setCloudUniversalLibraryId:v18];

  v19 = [v93 stringForColumnIndex:46];
  [a1[4] setHasChapterData:v19 != 0];

  v20 = [v93 dataForColumnIndex:111];
  [a1[4] setFlattenedChapterData:v20];

  [a1[4] setIsPreorder:{objc_msgSend(v93, "intForColumnIndex:", 140) != 0}];
  [a1[4] setLikedStateChangedDate:{objc_msgSend(v93, "int64ForColumnIndex:", 141)}];
  [a1[4] setReportingStoreItemId:{objc_msgSend(v93, "int64ForColumnIndex:", 142)}];
  [a1[4] setAssetStoreItemId:{objc_msgSend(v93, "int64ForColumnIndex:", 143)}];
  v21 = [v93 intForColumnIndex:136];
  if (v21)
  {
    [a1[4] setSecondaryArtworkSourceType:v21];
  }

  v22 = [v93 stringForColumnIndex:137];
  if ([v22 length])
  {
    [a1[4] setSecondaryArtworkId:v22];
  }

  v88 = v22;
  v23 = [v93 int64ForColumnIndex:23];
  v24 = [a1[5] persistentID];
  v25 = [a1[6] syncLibraryID];
  if (v24)
  {
    v26 = objc_alloc_init(MIPLibraryIdentifier);
    [(MIPLibraryIdentifier *)v26 setLibraryId:v24];
    v27 = [a1[6] libraryUID];
    [(MIPLibraryIdentifier *)v26 setLibraryName:v27];

    [a1[4] addLibraryIdentifiers:v26];
  }

  if (v23 >= 1 && [v25 length])
  {
    v28 = objc_alloc_init(MIPLibraryIdentifier);
    [(MIPLibraryIdentifier *)v28 setLibraryId:v23];
    [(MIPLibraryIdentifier *)v28 setLibraryName:v25];
    [a1[4] addLibraryIdentifiers:v28];
  }

  v87 = v25;
  v92 = [v93 intForColumnIndex:2];
  v29 = [a1[6] libraryUID];
  v30 = [a1[6] syncLibraryID];
  v31 = objc_alloc_init(MIPArtist);
  -[MIPArtist setStoreId:](v31, "setStoreId:", [v93 int64ForColumnIndex:60]);
  [(MIPArtist *)v31 setArtworkId:0];
  v32 = [v93 stringForColumnIndex:61];
  [(MIPArtist *)v31 setName:v32];

  v33 = [v93 stringForColumnIndex:62];
  [(MIPArtist *)v31 setSortName:v33];

  -[MIPArtist setPersistentId:](v31, "setPersistentId:", [v93 int64ForColumnIndex:97]);
  v34 = [v93 int64ForColumnIndex:150];
  v35 = [MEMORY[0x277CBEB18] array];
  v36 = objc_alloc_init(MIPLibraryIdentifier);
  [(MIPLibraryIdentifier *)v36 setLibraryId:[(MIPArtist *)v31 persistentId]];
  [(MIPLibraryIdentifier *)v36 setLibraryName:v29];
  v84 = v36;
  [v35 addObject:v36];
  if (v34 >= 1 && [v30 length])
  {
    v37 = objc_alloc_init(MIPLibraryIdentifier);
    [(MIPLibraryIdentifier *)v37 setLibraryId:v34];
    [(MIPLibraryIdentifier *)v37 setLibraryName:v30];
    [v35 addObject:v37];
  }

  v85 = v35;
  [(MIPArtist *)v31 setLibraryIdentifiers:v35];
  v38 = objc_alloc_init(MIPAlbum);
  -[MIPAlbum setStoreId:](v38, "setStoreId:", [v93 int64ForColumnIndex:115]);
  v39 = [v93 stringForColumnIndex:14];
  [(MIPAlbum *)v38 setArtworkId:v39];

  v40 = [v93 stringForColumnIndex:56];
  [(MIPAlbum *)v38 setName:v40];

  -[MIPAlbum setNumDiscs:](v38, "setNumDiscs:", [v93 intForColumnIndex:54]);
  -[MIPAlbum setNumTracks:](v38, "setNumTracks:", [v93 intForColumnIndex:55]);
  v41 = [v93 stringForColumnIndex:57];
  [(MIPAlbum *)v38 setSortName:v41];

  -[MIPAlbum setUserRating:](v38, "setUserRating:", [v93 intForColumnIndex:58]);
  -[MIPAlbum setCompilation:](v38, "setCompilation:", [v93 intForColumnIndex:59] != 0);
  -[MIPAlbum setPersistentId:](v38, "setPersistentId:", [v93 int64ForColumnIndex:96]);
  v42 = [v93 stringForColumnIndex:126];
  [(MIPAlbum *)v38 setCloudId:v42];

  -[MIPAlbum setLikedState:](v38, "setLikedState:", [v93 intForColumnIndex:144]);
  -[MIPAlbum setLikedStateChangedDate:](v38, "setLikedStateChangedDate:", [v93 int64ForColumnIndex:145]);
  v43 = [v93 int64ForColumnIndex:149];
  v44 = [MEMORY[0x277CBEB18] array];
  v45 = objc_alloc_init(MIPLibraryIdentifier);
  [(MIPLibraryIdentifier *)v45 setLibraryId:[(MIPAlbum *)v38 persistentId]];
  [(MIPLibraryIdentifier *)v45 setLibraryName:v29];
  v83 = v45;
  [v44 addObject:v45];
  v91 = v44;
  if (v43 >= 1 && [v30 length])
  {
    v46 = objc_alloc_init(MIPLibraryIdentifier);
    [(MIPLibraryIdentifier *)v46 setLibraryId:v43];
    [(MIPLibraryIdentifier *)v46 setLibraryName:v30];
    [v91 addObject:v46];

    v44 = v91;
  }

  v90 = v30;
  [(MIPAlbum *)v38 setLibraryIdentifiers:v44];
  v47 = objc_alloc_init(MIPArtist);
  -[MIPArtist setStoreId:](v47, "setStoreId:", [v93 int64ForColumnIndex:134]);
  v48 = [v93 stringForColumnIndex:14];
  [(MIPArtist *)v47 setArtworkId:v48];

  v49 = [v93 stringForColumnIndex:63];
  [(MIPArtist *)v47 setName:v49];

  v50 = [v93 stringForColumnIndex:64];
  [(MIPArtist *)v47 setSortName:v50];

  -[MIPArtist setPersistentId:](v47, "setPersistentId:", [v93 int64ForColumnIndex:98]);
  v51 = [v93 stringForColumnIndex:139];
  [(MIPArtist *)v47 setCloudUniversalLibraryId:v51];

  -[MIPArtist setLikedState:](v47, "setLikedState:", [v93 intForColumnIndex:146]);
  -[MIPArtist setLikedStateChangedDate:](v47, "setLikedStateChangedDate:", [v93 int64ForColumnIndex:147]);
  -[MIPArtist setSortOrder:](v47, "setSortOrder:", [v93 int64ForColumnIndex:151]);
  -[MIPArtist setSortOrderSection:](v47, "setSortOrderSection:", [v93 int64ForColumnIndex:152]);
  v52 = [v93 int64ForColumnIndex:148];
  v53 = [MEMORY[0x277CBEB18] array];
  v54 = objc_alloc_init(MIPLibraryIdentifier);
  [(MIPLibraryIdentifier *)v54 setLibraryId:[(MIPArtist *)v47 persistentId]];
  v86 = v29;
  [(MIPLibraryIdentifier *)v54 setLibraryName:v29];
  v81 = v54;
  [v53 addObject:v54];
  if (v52 >= 1 && [v90 length])
  {
    v55 = objc_alloc_init(MIPLibraryIdentifier);
    [(MIPLibraryIdentifier *)v55 setLibraryId:v52];
    [(MIPLibraryIdentifier *)v55 setLibraryName:v90];
    [v91 addObject:v55];
  }

  v82 = v53;
  [(MIPArtist *)v47 setLibraryIdentifiers:v53];
  [(MIPAlbum *)v38 setArtist:v47];
  v56 = objc_alloc_init(MIPArtist);
  -[MIPArtist setStoreId:](v56, "setStoreId:", [v93 int64ForColumnIndex:116]);
  [(MIPArtist *)v56 setArtworkId:0];
  v57 = [v93 stringForColumnIndex:65];
  [(MIPArtist *)v56 setName:v57];

  v58 = [v93 stringForColumnIndex:66];
  [(MIPArtist *)v56 setSortName:v58];

  -[MIPArtist setPersistentId:](v56, "setPersistentId:", [v93 int64ForColumnIndex:118]);
  v59 = objc_alloc_init(MIPGenre);
  -[MIPGenre setStoreId:](v59, "setStoreId:", [v93 int64ForColumnIndex:117]);
  v60 = [v93 stringForColumnIndex:67];
  [(MIPGenre *)v59 setName:v60];

  -[MIPGenre setPersistentId:](v59, "setPersistentId:", [v93 int64ForColumnIndex:99]);
  v61 = objc_alloc_init(MIPPlaybackInfo);
  -[MIPPlaybackInfo setGaplessEncodingDrainCode:](v61, "setGaplessEncodingDrainCode:", [v93 int64ForColumnIndex:68]);
  -[MIPPlaybackInfo setGaplessFrameResyncCode:](v61, "setGaplessFrameResyncCode:", [v93 int64ForColumnIndex:69]);
  -[MIPPlaybackInfo setGaplessHeuristicCode:](v61, "setGaplessHeuristicCode:", [v93 int64ForColumnIndex:70]);
  -[MIPPlaybackInfo setGaplessHeuristicDelayCode:](v61, "setGaplessHeuristicDelayCode:", [v93 int64ForColumnIndex:71]);
  -[MIPPlaybackInfo setStartTime:](v61, "setStartTime:", [v93 int64ForColumnIndex:72]);
  -[MIPPlaybackInfo setStopTime:](v61, "setStopTime:", [v93 int64ForColumnIndex:73]);
  -[MIPPlaybackInfo setVolumeNormalizationEnergy:](v61, "setVolumeNormalizationEnergy:", [v93 int64ForColumnIndex:74]);
  -[MIPPlaybackInfo setBeatsPerMinute:](v61, "setBeatsPerMinute:", [v93 int64ForColumnIndex:75]);
  -[MIPPlaybackInfo setBitRate:](v61, "setBitRate:", [v93 int64ForColumnIndex:76]);
  -[MIPPlaybackInfo setCodecSubType:](v61, "setCodecSubType:", [v93 int64ForColumnIndex:77]);
  -[MIPPlaybackInfo setCodecType:](v61, "setCodecType:", [v93 int64ForColumnIndex:78]);
  -[MIPPlaybackInfo setDataKind:](v61, "setDataKind:", [v93 int64ForColumnIndex:79]);
  v62 = [v93 stringForColumnIndex:80];
  [(MIPPlaybackInfo *)v61 setDataUrl:v62];

  v63 = [v93 stringForColumnIndex:81];
  [(MIPPlaybackInfo *)v61 setEqPreset:v63];

  v64 = [v93 stringForColumnIndex:82];
  [(MIPPlaybackInfo *)v61 setPlaybackFormat:v64];

  -[MIPPlaybackInfo setRelativeVolume:](v61, "setRelativeVolume:", [v93 intForColumnIndex:83]);
  -[MIPPlaybackInfo setSampleRate:](v61, "setSampleRate:", [v93 intForColumnIndex:84]);
  -[MIPPlaybackInfo setProgressionDirection:](v61, "setProgressionDirection:", [v93 intForColumnIndex:101]);
  -[MIPPlaybackInfo setDurationInSamples:](v61, "setDurationInSamples:", [v93 int64ForColumnIndex:113]);
  LOWORD(v65) = v92;
  if ((v92 & 0x404) != 0)
  {
    v66 = objc_alloc_init(MIPSeries);
    v67 = [v93 stringForColumnIndex:56];
    [(MIPSeries *)v66 setName:v67];

    v68 = [v93 stringForColumnIndex:57];
    [(MIPSeries *)v66 setSortName:v68];

    -[MIPSeries setStoreId:](v66, "setStoreId:", [v93 int64ForColumnIndex:115]);
  }

  else
  {
    v66 = 0;
  }

  if ((v92 & 0x408) != 0)
  {
    v69 = objc_alloc_init(MIPSong);
    -[MIPSong setAudioFormat:](v69, "setAudioFormat:", [v93 intForColumnIndex:24]);
    -[MIPSong setDiscNumber:](v69, "setDiscNumber:", [v93 intForColumnIndex:25]);
    -[MIPSong setGeniusId:](v69, "setGeniusId:", [v93 int64ForColumnIndex:26]);
    -[MIPSong setLyricsChecksum:](v69, "setLyricsChecksum:", [v93 int64ForColumnIndex:28]);
    -[MIPSong setTrackNumber:](v69, "setTrackNumber:", [v93 intForColumnIndex:29]);
    -[MIPSong setUserRating:](v69, "setUserRating:", [v93 intForColumnIndex:30]);
    -[MIPSong setExcludeFromShuffle:](v69, "setExcludeFromShuffle:", [v93 intForColumnIndex:31] != 0);
    -[MIPSong setHasVideo:](v69, "setHasVideo:", [v93 intForColumnIndex:32] != 0);
    v65 = [v93 stringForColumnIndex:138];
    [(MIPSong *)v69 setHlsPlaylistURL:v65];

    LOWORD(v65) = v92;
    [(MIPSong *)v69 setArtist:v31];
    [(MIPSong *)v69 setAlbum:v38];
    [(MIPSong *)v69 setComposer:v56];
    [(MIPSong *)v69 setGenre:v59];
    [(MIPSong *)v69 setPlaybackInfo:v61];
    [a1[4] setSong:v69];

    if ((v92 & 0x400) != 0)
    {
      v70 = objc_alloc_init(MIPTVShow);
      [(MIPTVShow *)v70 setArtist:v31];
      [(MIPTVShow *)v70 setSeries:v66];
      v71 = [v93 stringForColumnIndex:49];
      [(MIPTVShow *)v70 setEpisodeId:v71];

      v72 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v93, "intForColumnIndex:", 50)];
      [(MIPTVShow *)v70 setEpisodeSortId:v72];

      v65 = [v93 stringForColumnIndex:51];
      [(MIPTVShow *)v70 setNetworkName:v65];

      LOWORD(v65) = v92;
      -[MIPTVShow setSeasonNumber:](v70, "setSeasonNumber:", [v93 intForColumnIndex:52]);
      -[MIPTVShow setVideoQuality:](v70, "setVideoQuality:", [v93 intForColumnIndex:44]);
      [a1[4] setTvShow:v70];
    }
  }

  if ((v65 & 0x800) != 0)
  {
    v75 = objc_alloc_init(MIPMovie);
    [(MIPMovie *)v75 setArtist:v31];
    -[MIPMovie setRentalDuration:](v75, "setRentalDuration:", [v93 intForColumnIndex:33]);
    -[MIPMovie setRentalPlaybackDuration:](v75, "setRentalPlaybackDuration:", [v93 intForColumnIndex:34]);
    -[MIPMovie setRentalPlaybackStartedDateTime:](v75, "setRentalPlaybackStartedDateTime:", [v93 intForColumnIndex:35]);
    -[MIPMovie setRentalStartedDateTime:](v75, "setRentalStartedDateTime:", [v93 intForColumnIndex:36]);
    -[MIPMovie setAudioLanguage:](v75, "setAudioLanguage:", [v93 intForColumnIndex:37]);
    -[MIPMovie setAudioTrackId:](v75, "setAudioTrackId:", [v93 intForColumnIndex:38]);
    -[MIPMovie setAudioTrackIndex:](v75, "setAudioTrackIndex:", [v93 intForColumnIndex:39]);
    v76 = [v93 stringForColumnIndex:40];
    [(MIPMovie *)v75 setExtendedContentName:v76];

    v77 = [v93 stringForColumnIndex:41];
    [(MIPMovie *)v75 setMovieInfo:v77];

    -[MIPMovie setSubtitleLanguage:](v75, "setSubtitleLanguage:", [v93 intForColumnIndex:42]);
    -[MIPMovie setSubtitleTrackIndex:](v75, "setSubtitleTrackIndex:", [v93 intForColumnIndex:43]);
    -[MIPMovie setVideoQuality:](v75, "setVideoQuality:", [v93 intForColumnIndex:44]);
    -[MIPMovie setHasAlternateAudio:](v75, "setHasAlternateAudio:", [v93 intForColumnIndex:45] != 0);
    -[MIPMovie setHasChapterData:](v75, "setHasChapterData:", [v93 intForColumnIndex:46] != 0);
    -[MIPMovie setHasSubtitles:](v75, "setHasSubtitles:", [v93 intForColumnIndex:47] != 0);
    -[MIPMovie setRental:](v75, "setRental:", [v93 intForColumnIndex:48] != 0);
    v65 = [v93 dataForColumnIndex:111];
    [(MIPMovie *)v75 setFlattenedChapterData:v65];

    LOBYTE(v65) = v92;
    [a1[4] setMovie:v75];

    if ((v92 & 4) == 0)
    {
LABEL_27:
      if ((v65 & 2) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((v65 & 4) == 0)
  {
    goto LABEL_27;
  }

  v78 = objc_alloc_init(MIPPodcast);
  [(MIPPodcast *)v78 setArtist:v31];
  [(MIPPodcast *)v78 setSeries:v66];
  v79 = [v93 stringForColumnIndex:53];
  [(MIPPodcast *)v78 setExternalGuid:v79];

  v80 = [v93 stringForColumnIndex:128];
  [(MIPPodcast *)v78 setFeedUrl:v80];

  [a1[4] setPodcast:v78];
  if ((v92 & 2) != 0)
  {
LABEL_28:
    v73 = objc_alloc_init(MIPAudiobook);
    -[MIPAudiobook setAudioFormat:](v73, "setAudioFormat:", [v93 intForColumnIndex:24]);
    -[MIPAudiobook setDiscNumber:](v73, "setDiscNumber:", [v93 intForColumnIndex:25]);
    -[MIPAudiobook setTrackNumber:](v73, "setTrackNumber:", [v93 intForColumnIndex:29]);
    -[MIPAudiobook setUserRating:](v73, "setUserRating:", [v93 intForColumnIndex:30]);
    -[MIPAudiobook setExcludeFromShuffle:](v73, "setExcludeFromShuffle:", [v93 intForColumnIndex:31] != 0);
    -[MIPAudiobook setHasVideo:](v73, "setHasVideo:", [v93 intForColumnIndex:32] != 0);
    v74 = [v93 stringForColumnIndex:138];
    [(MIPAudiobook *)v73 setHlsPlaylistURL:v74];

    [(MIPAudiobook *)v73 setArtist:v31];
    [(MIPAudiobook *)v73 setAlbum:v38];
    [(MIPAudiobook *)v73 setComposer:v56];
    [(MIPAudiobook *)v73 setGenre:v59];
    [(MIPAudiobook *)v73 setPlaybackInfo:v61];
    [a1[4] setAudiobook:v73];
  }

LABEL_29:
  *a4 = 1;
}

- (id)multiverseIdentifierLibraryOnly:(BOOL)only
{
  onlyCopy = only;
  v5 = objc_alloc_init(MIPMultiverseIdentifier);
  [(MIPMultiverseIdentifier *)v5 setMediaObjectType:6];
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v7 = objc_alloc_init(MIPLibraryIdentifier);
  [(MIPLibraryIdentifier *)v7 setLibraryId:self->super._persistentID];
  libraryUID = [WeakRetained libraryUID];
  [(MIPLibraryIdentifier *)v7 setLibraryName:libraryUID];

  [(MIPMultiverseIdentifier *)v5 addLibraryIdentifiers:v7];
  v9 = @"SELECT item_store.sync_id, item_extra.title, item.media_type, item_store.account_id, item_store.store_item_id, item_store.store_saga_id, item_store.purchase_history_id, item_store.cloud_universal_library_id FROM item JOIN item_store USING (item_pid) JOIN item_extra USING (item_pid) WHERE item.ROWID = ?";
  if (onlyCopy)
  {
    v9 = @"SELECT item_store.sync_id FROM item JOIN item_store USING (item_pid) WHERE item.ROWID = ?";
  }

  v10 = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__ML3Track_MLProtocol__multiverseIdentifierLibraryOnly___block_invoke;
  v16[3] = &unk_278764230;
  v17 = v10;
  selfCopy = self;
  v11 = v5;
  v19 = v11;
  v20 = onlyCopy;
  v12 = v10;
  [WeakRetained databaseConnectionAllowingWrites:0 withBlock:v16];
  v13 = v19;
  v14 = v11;

  return v11;
}

void __56__ML3Track_MLProtocol__multiverseIdentifierLibraryOnly___block_invoke(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 16);
  v6 = a2;
  v7 = [v3 numberWithLongLong:v5];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v9 = [v6 executeQuery:v4 withParameters:v8];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__ML3Track_MLProtocol__multiverseIdentifierLibraryOnly___block_invoke_2;
  v11[3] = &unk_278764208;
  v10 = *(a1 + 48);
  v11[4] = *(a1 + 40);
  v12 = v10;
  v13 = *(a1 + 56);
  [v9 enumerateRowsWithBlock:v11];
}

void __56__ML3Track_MLProtocol__multiverseIdentifierLibraryOnly___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 int64ForColumnIndex:0];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v5 = [WeakRetained syncLibraryID];

  if (v3 >= 1 && [v5 length])
  {
    v6 = objc_alloc_init(MIPLibraryIdentifier);
    [(MIPLibraryIdentifier *)v6 setLibraryId:v3];
    [(MIPLibraryIdentifier *)v6 setLibraryName:v5];
    [*(a1 + 40) addLibraryIdentifiers:v6];
  }

  if ((*(a1 + 48) & 1) == 0)
  {
    v7 = [v14 stringForColumnIndex:1];
    v8 = [v14 intForColumnIndex:2];
    v9 = [v14 int64ForColumnIndex:3];
    v10 = [v14 int64ForColumnIndex:4];
    v11 = [v14 int64ForColumnIndex:5];
    v12 = [v14 int64ForColumnIndex:6];
    v13 = [v14 stringForColumnIndex:7];
    if ([v7 length])
    {
      [*(a1 + 40) setName:v7];
    }

    if (v8 >= 1)
    {
      [*(a1 + 40) setMediaType:ML3ProtocolMediaTypeForMLMediaType(v8)];
    }

    if (v9 >= 1)
    {
      [*(a1 + 40) setAccountId:v9];
    }

    if (v10 >= 1)
    {
      [*(a1 + 40) setStoreId:v10];
    }

    if (v11 >= 1)
    {
      [*(a1 + 40) setSagaId:v11];
    }

    if (v12 >= 1)
    {
      [*(a1 + 40) setPurchaseHistoryId:v12];
    }

    if ([v13 length])
    {
      [*(a1 + 40) setCloudUniversalLibraryId:v13];
    }
  }
}

@end
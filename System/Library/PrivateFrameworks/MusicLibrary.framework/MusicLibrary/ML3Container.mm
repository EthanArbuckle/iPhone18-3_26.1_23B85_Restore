@interface ML3Container
+ (BOOL)_reloadContainedMediaTypes:(BOOL)types removedMediaTypes:(id)mediaTypes addedMediaTypes:(id)addedMediaTypes notify:(BOOL)notify incrementEntityRevision:(BOOL)revision usingLibrary:(id)library connection:(id)connection forContainerPersistentID:(int64_t)self0;
+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type persistentIDs:(const int64_t *)ds count:(unint64_t)count preserveUndeletableEntities:(BOOL)entities;
+ (BOOL)hasCriterionInCriteriaList:(SearchCriteriaList *)list forITDBTrackField:(int)field;
+ (BOOL)smartCriteriaCanBeEvaluated:(id)evaluated;
+ (BOOL)updateBuiltInSmartPlaylistNamesForCurrentLanguageInLibrary:(id)library;
+ (id)_allStaticItemContainersInLibrary:(id)library usingConnection:(id)connection;
+ (id)_mediaTypesForTracksInContainerWithPersistentID:(int64_t)d connection:(id)connection;
+ (id)_mediaTypesForTracksWithPersistentIDs:(id)ds usingConnection:(id)connection;
+ (id)autoCreatedBuiltInSmartPlaylistsPIDs:(id)ds;
+ (id)currentDeviceFavoritesPlaylistInLibrary:(id)library usingConnection:(id)connection;
+ (id)defaultFilterPredicates;
+ (id)joinClausesForProperty:(id)property;
+ (id)nextFilepathForPlaylistType:(int)type withPersistentID:(unint64_t)d inLibrary:(id)library;
+ (id)predicateForCriteriaList:(SearchCriteriaList *)list parentMatchedAny:(BOOL)any;
+ (id)sagaIDTreeForPlaylistWithIdentifier:(int64_t)identifier inLibrary:(id)library includeUndeletablePlaylists:(BOOL)playlists;
+ (id)sagaIDTreeForPlaylistWithIdentifier:(int64_t)identifier inLibrary:(id)library persistentIDsToIgnore:(id)ignore;
+ (id)userUndeleteablePlaylistPersistentIDSInLibrary:(id)library;
+ (int)protocolSortTypeFromTrackOrder:(unsigned int)order;
+ (unsigned)trackOrderFromProtocolSortType:(int)type;
+ (void)_addMediaTypesToContainerWithPersistentID:(int64_t)d mediaTypes:(id)types connection:(id)connection;
+ (void)_clearContainerMediaTypeInContainerWithPersistentID:(int64_t)d connection:(id)connection;
+ (void)_insertNewSmartPlaylist:(id)playlist criteriaBlob:(id)blob evaluationOrder:(unsigned int)order limited:(BOOL)limited trackOrder:(unsigned int)trackOrder distinguishedKind:(int)kind inLibrary:(id)library cachedNameOrders:(id)self0;
+ (void)_removeMediaTypesFromContainerWithPersistentID:(int64_t)d mediaTypes:(id)types connection:(id)connection;
+ (void)_updateContainedMediaTypeInContainerWithPersistentID:(int64_t)d connection:(id)connection itemUpdateBlock:(id)block;
+ (void)deleteAutoCreatedBuiltInSmartPlaylistsPIDs:(id)ds inLibrary:(id)library;
+ (void)initialize;
+ (void)populateMediaTypesOfStaticContainersInLibrary:(id)library;
+ (void)populateSortOrdersOfPropertyValues:(id)values inLibrary:(id)library cachedNameOrders:(id)orders;
+ (void)reloadContainedMediaTypesForContainerWithPersistID:(int64_t)d usingConnection:(id)connection;
+ (void)removeAnyNonLibraryItemsInPersistentIDs:(id)ds fromContainersInLibrary:(id)library usingConnection:(id)connection;
+ (void)removeNonLibraryItemsFromContainer:(id)container usingConnection:(id)connection;
+ (void)removeNonLibraryItemsFromContainersInLibrary:(id)library usingConnection:(id)connection;
- (BOOL)_reloadContainedMediaTypes:(BOOL)types removedMediaTypes:(id)mediaTypes addedMediaTypes:(id)addedMediaTypes notify:(BOOL)notify incrementEntityRevision:(BOOL)revision usingConnection:(id)connection;
- (BOOL)_removeTracksAtIndexes:(id)indexes notify:(BOOL)notify usingConnection:(id)connection;
- (BOOL)_setItemPersistentIDs:(id)ds andEntryProperties:(id)properties withAttributionIdentifier:(id)identifier reloadContainedMediaTypes:(BOOL)types removedMediaTypes:(id)mediaTypes addedMediaTypes:(id)addedMediaTypes notify:(BOOL)notify incrementEntityRevision:(BOOL)self0 usingConnection:(id)self1;
- (BOOL)_supportsOrderedTrackOperations;
- (BOOL)appendTracksWithPersistentIDs:(id)ds andEntryProperties:(id)properties withAttributionIdentifier:(id)identifier notify:(BOOL)notify;
- (BOOL)isBuiltInSmartPlaylist;
- (BOOL)isEvaluationOrderingDescending;
- (BOOL)isLimitOrderingDescending;
- (BOOL)isLimitedByCount;
- (BOOL)moveTrackFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (BOOL)removeAllTracks;
- (BOOL)removeFirstTrack;
- (BOOL)removeTracksAtIndexes:(id)indexes notify:(BOOL)notify;
- (BOOL)setItemReactionText:(id)text onEntryAtPosition:(unint64_t)position forUserIdentifier:(id)identifier previousReactionText:(id *)reactionText;
- (BOOL)setTracksWithPersistentIDs:(id)ds andEntryProperties:(id)properties withAttributionIdentifier:(id)identifier notify:(BOOL)notify;
- (ML3Container)initWithDictionary:(id)dictionary inLibrary:(id)library cachedNameOrders:(id)orders usingConnection:(id)connection;
- (ML3Predicate)smartCriteriaPredicate;
- (NSArray)cloudDisplayOrderingTerms;
- (NSArray)displayOrderingTerms;
- (NSArray)limitOrderingTerms;
- (NSString)limitingProperty;
- (SearchCriteriaList)importedCriteriaList;
- (id)_BOOLeanStringForCriteriaInfo:(id *)info;
- (id)_addUnitesForCriterionInfo:(id *)info;
- (id)_convertNumericValueFromCriterionMatchKey:(unsigned int)key criteriaValue:(int64_t)value;
- (id)_criteriaListDescription:(SearchCriteriaList *)description level:(int64_t)level;
- (id)_dateStringForCriteriaInfo:(id *)info;
- (id)_nonzeroStringForCriteriaInfo:(id *)info;
- (id)_numericStringForCriteriaInfo:(id *)info;
- (id)_stringForCriterionBuffer:(id *)buffer;
- (id)_stringForCriterionMatchKey:(id *)key;
- (id)_stringForCriterionMatchType:(id *)type;
- (id)_stringForTrackFieldCloudStatus:(int64_t)status;
- (id)_stringForTrackFieldMediaKind:(int64_t)kind;
- (id)_stringStringForCriteriaInfo:(id *)info;
- (id)childPlaylistPersistentIds;
- (id)criteriaListDescription;
- (id)evaluationOrderingTerms;
- (id)multiverseIdentifier;
- (id)parentPlaylistPersistentIdsAndNames;
- (id)protocolItem;
- (id)protocolItemForDynamicUpdate;
- (id)trackPersistentIds;
- (int64_t)_maxPositionForTracksUsingConnection:(id)connection;
- (int64_t)limitValue;
- (void)_setContainerSeedItemPersistentIDValue:(id)value;
- (void)setValues:(id)values forProperties:(id)properties async:(BOOL)async withCompletionBlock:(id)block;
@end

@implementation ML3Container

+ (void)initialize
{
  v26[6] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    v2 = [ML3OrderingTerm orderingTermWithProperty:@"cloud_is_subscribed"];
    v26[0] = v2;
    v3 = [ML3OrderingTerm orderingTermWithProperty:@"(container.smart_is_folder = 0)"];
    v26[1] = v3;
    v4 = [ML3OrderingTerm orderingTermWithProperty:@"(container.smart_is_genius = 0)"];
    v26[2] = v4;
    v5 = [ML3OrderingTerm orderingTermWithProperty:@"(container.smart_criteria IS NULL)"];
    v26[3] = v5;
    v6 = [ML3OrderingTerm orderingTermWithProperty:@"name_order"];
    v26[4] = v6;
    v7 = [ML3OrderingTerm orderingTermWithProperty:@"container_pid"];
    v26[5] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:6];
    v9 = ML3ContainerDefaultOrderingTerms;
    ML3ContainerDefaultOrderingTerms = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{&unk_2840C8330, @"(IFNULL(container.workout_template_id, 0) != 0)", &unk_2840C8348, @"(container.distinguished_kind = 17)", &unk_2840C8360, @"(container.distinguished_kind = 32)", &unk_2840C8378, @"((IFNULL(container.smart_is_genius, 0) << 2) | ((container.smart_criteria IS NOT NULL) << 1) | IFNULL(container.is_saveable, 0))", &unk_2840C8390, @"(container.is_container_type_active_target AND container.smart_is_genius)", &unk_2840C83A8, @"(container.is_container_type_active_target AND (container.container_type = 2))", &unk_2840C83C0, @"(container.distinguished_kind = 19 OR container.distinguished_kind = 20)", &unk_2840C83D8, @"(container.distinguished_kind = 20 AND container.is_container_type_active_target)", &unk_2840C83F0, @"(container.distinguished_kind = 71)", &unk_2840C8408, @"(container.distinguished_kind = 10000 AND container.is_container_type_active_target)", &unk_2840C8420, @"(container.distinguished_kind = 10010 AND container.is_container_type_active_target)", &unk_2840C8438, @"(is_src_remote = 0 OR container.distinguished_kind = 0)", &unk_2840C8450, @"((container.smart_criteria IS NOT NULL) AND (container.smart_is_dynamic = 1) AND (container.smart_is_limited = 1))", &unk_2840C8468, @"(container.smart_criteria IS NULL)", &unk_2840C8480, @"(container.smart_is_genius = 0)", &unk_2840C8498, @"(container.smart_is_folder = 0)", &unk_2840C84B0, @"(container.distinguished_kind = 0 AND container.is_hidden = 0 AND container.smart_criteria IS NULL AND container.smart_is_genius = 0 AND (container.cloud_is_subscribed = 0 OR container.is_editable = 1))", &unk_2840C84C8, @"(container.is_src_remote = 1)", &unk_2840C84E0, @"container_seed.item_pid", &unk_2840C84F8, @"(IFNULL(container_item.container_pid, 0) != 0 OR smart_criteria IS NOT NULL)", &unk_2840C8510, @"best_artwork_token.available_artwork_token AS available_container_artwork_token", &unk_2840C8528, @"best_artwork_token.fetchable_artwork_token AS fetchable_item_artwork_token", &unk_2840C8540, @"best_artwork_token.fetchable_artwork_source_type AS fetchable_item_artwork_source_type", 0}];
    v11 = ML3ContainerJoinsForProperties;
    ML3ContainerJoinsForProperties = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    v13 = ML3ContainerSectionPropertyForProperties;
    ML3ContainerSectionPropertyForProperties = v12;

    v14 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"container_seed", @"container_seed.item_pid", @"best_artwork_token", @"best_artwork_token.available_artwork_token AS available_container_artwork_token", @"best_artwork_token", @"best_artwork_token.fetchable_artwork_token AS fetchable_item_artwork_token", @"best_artwork_token", @"best_artwork_token.fetchable_artwork_source_type AS fetchable_item_artwork_source_type", 0}];
    v15 = ML3ContainerForeignDatabaseTableForProperties;
    ML3ContainerForeignDatabaseTableForProperties = v14;

    v16 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"item_pid", @"container_seed.item_pid", @"available_artwork_token", @"best_artwork_token.available_artwork_token AS available_container_artwork_token", @"fetchable_artwork_token", @"best_artwork_token.fetchable_artwork_token AS fetchable_item_artwork_token", @"fetchable_artwork_source_type", @"best_artwork_token.fetchable_artwork_source_type AS fetchable_item_artwork_source_type", 0}];
    v17 = ML3ContainerForeignColumnForProperties;
    ML3ContainerForeignColumnForProperties = v16;

    v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"container_seed", 0}];
    v19 = ML3ContainerExtraTablesToDelete;
    ML3ContainerExtraTablesToDelete = v18;

    v20 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"container_pid", @"container_seed", 0}];
    v21 = ML3ContainerPersistentIDForTable;
    ML3ContainerPersistentIDForTable = v20;

    v22 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"play_count_user", @"play_count_recent", @"date_played", @"date_modified", @"liked_state", @"keep_local", @"keep_local_status", @"keep_local_status_reason", @"keep_local_constraints", @"cloud_user_count", @"cloud_global_like_count", @"cloud_global_play_count", @"date_played_local", @"liked_state_changed_date", 0}];
    v23 = ML3ContainerContentsUnchangingProperties;
    ML3ContainerContentsUnchangingProperties = v22;

    v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"play_count_user", @"play_count_recent", 0}];
    v25 = ML3ContainerNoAssistantSyncProperties;
    ML3ContainerNoAssistantSyncProperties = v24;

    bzero(&TrackFieldToML3Info, 0xB80uLL);
    qword_280B5E030 = @"item_extra.title";
    unk_280B5E038 = StringPredicateForCriteriaInfo;
    qword_280B5E040 = @"album.album";
    unk_280B5E048 = StringPredicateForCriteriaInfo;
    qword_280B5E050 = @"item_artist.item_artist";
    unk_280B5E058 = StringPredicateForCriteriaInfo;
    qword_280B5E060 = @"item_playback.bit_rate";
    qword_280B5E068 = NumericPredicateForCriteriaInfo;
    unk_280B5E070 = @"item_playback.sample_rate";
    qword_280B5E078 = NumericPredicateForCriteriaInfo;
    unk_280B5E080 = @"item_extra.year";
    qword_280B5E088 = NumericPredicateForCriteriaInfo;
    unk_280B5E090 = @"genre.genre";
    qword_280B5E098 = StringPredicateForCriteriaInfo;
    unk_280B5E0A0 = @"item_extra.location_kind_id";
    qword_280B5E0A8 = StringPredicateForCriteriaInfo;
    qword_280B5E0C0 = @"track_number";
    unk_280B5E0C8 = NumericPredicateForCriteriaInfo;
    qword_280B5E0E0 = @"item_extra.total_time_ms";
    unk_280B5E0E8 = NumericPredicateForCriteriaInfo;
    qword_280B5E0F0 = @"item_extra.comment";
    unk_280B5E0F8 = StringPredicateForCriteriaInfo;
    qword_280B5E120 = @"item_playback.eq_preset";
    unk_280B5E128 = StringPredicateForCriteriaInfo;
    qword_280B5E130 = @"composer.composer";
    unk_280B5E138 = StringPredicateForCriteriaInfo;
    qword_280B5E150 = @"item_playback.volume_normalization_energy";
    unk_280B5E158 = NumericPredicateForCriteriaInfo;
    qword_280B5E190 = @"disc_number";
    unk_280B5E198 = NumericPredicateForCriteriaInfo;
    qword_280B5E1C0 = @"ROWID";
    unk_280B5E1C8 = NumericPredicateForCriteriaInfo;
    qword_280B5E1D0 = @"ROWID";
    unk_280B5E1D8 = NumericPredicateForCriteriaInfo;
    qword_280B5E1E0 = @"item_extra.is_user_disabled";
    unk_280B5E1E8 = BooleanPredicateForCriteriaInfo;
    qword_280B5E200 = @"is_compilation";
    unk_280B5E208 = BooleanPredicateForCriteriaInfo;
    qword_280B5E240 = @"item_extra.bpm";
    qword_280B5E248 = NumericPredicateForCriteriaInfo;
    qword_280B5E280 = @"item_extra.grouping";
    qword_280B5E288 = StringPredicateForCriteriaInfo;
    qword_280B5E2A0 = @"item_store.store_item_id";
    qword_280B5E2A8 = NumericPredicateForCriteriaInfo;
    qword_280B5E2B0 = @"item_artist.store_id";
    qword_280B5E2B8 = NumericPredicateForCriteriaInfo;
    qword_280B5E2C0 = @"item_store.store_playlist_id";
    qword_280B5E2C8 = NumericPredicateForCriteriaInfo;
    qword_280B5E2D0 = @"item_store.store_composer_id";
    qword_280B5E2D8 = NumericPredicateForCriteriaInfo;
    qword_280B5E2E0 = @"item_store.store_genre_id";
    qword_280B5E2E8 = NumericPredicateForCriteriaInfo;
    qword_280B5E320 = @"item_extra.disc_count";
    qword_280B5E328 = NumericPredicateForCriteriaInfo;
    qword_280B5E330 = @"item_playback.start_time_ms";
    qword_280B5E338 = NumericPredicateForCriteriaInfo;
    qword_280B5E340 = @"item_playback.stop_time_ms";
    qword_280B5E348 = NumericPredicateForCriteriaInfo;
    qword_280B5E350 = @"item_extra.track_count";
    qword_280B5E358 = NumericPredicateForCriteriaInfo;
    qword_280B5E360 = @"item_store.storefront_id";
    qword_280B5E368 = NumericPredicateForCriteriaInfo;
    qword_280B5E370 = @"item_extra.description";
    qword_280B5E378 = StringPredicateForCriteriaInfo;
    qword_280B5E380 = @"category.category";
    qword_280B5E388 = StringPredicateForCriteriaInfo;
    qword_280B5E480 = @"album_artist.album_artist";
    qword_280B5E488 = StringPredicateForCriteriaInfo;
    qword_280B5E4B0 = @"item_playback.relative_volume";
    qword_280B5E4B8 = NumericPredicateForCriteriaInfo;
    qword_280B5E4F0 = @"item_extra.sort_title";
    qword_280B5E4F8 = StringPredicateForCriteriaInfo;
    qword_280B5E500 = @"album.sort_album";
    qword_280B5E508 = StringPredicateForCriteriaInfo;
    qword_280B5E510 = @"item_artist.sort_item_artist";
    qword_280B5E518 = StringPredicateForCriteriaInfo;
    qword_280B5E520 = @"album_artist.sort_album_artist";
    qword_280B5E528 = StringPredicateForCriteriaInfo;
    qword_280B5E530 = @"composer.sort_composer";
    qword_280B5E538 = StringPredicateForCriteriaInfo;
    qword_280B5E540 = @"item_artist.sort_series_name";
    qword_280B5E548 = StringPredicateForCriteriaInfo;
    qword_280B5E5B0 = @"album.user_rating";
    qword_280B5E5B8 = NumericPredicateForCriteriaInfo;
    qword_280B5E5F0 = @"item_stats.remember_bookmark";
    qword_280B5E5F8 = BooleanPredicateForCriteriaInfo;
    qword_280B5E570 = @"item_extra.description_long";
    qword_280B5E578 = StringPredicateForCriteriaInfo;
    qword_280B5E610 = @"item_video.has_alternate_audio";
    qword_280B5E618 = BooleanPredicateForCriteriaInfo;
    qword_280B5E630 = @"item_video.audio_language";
    qword_280B5E638 = NumericPredicateForCriteriaInfo;
    qword_280B5E640 = @"item_video.audio_track_index";
    qword_280B5E648 = NumericPredicateForCriteriaInfo;
    qword_280B5E650 = @"item_video.audio_track_id";
    qword_280B5E658 = NumericPredicateForCriteriaInfo;
    qword_280B5E700 = @"item_extra.genius_id";
    qword_280B5E708 = NumericPredicateForCriteriaInfo;
    qword_280B5E710 = @"exclude_from_shuffle";
    qword_280B5E718 = BooleanPredicateForCriteriaInfo;
    qword_280B5E720 = @"lyrics.lyrics";
    qword_280B5E728 = StringPredicateForCriteriaInfo;
    qword_280B5E730 = @"item_store.store_item_id";
    qword_280B5E738 = NumericPredicateForCriteriaInfo;
    qword_280B5E760 = @"((item.media_type & 4128)!=0)";
    qword_280B5E768 = BooleanPredicateForCriteriaInfo;
    qword_280B5E770 = @"((item.media_type & 4128)!=0)";
    qword_280B5E778 = NumericPredicateForCriteriaInfo;
    qword_280B5E7D0 = @"item_extra.copyright";
    qword_280B5E7D8 = StringPredicateForCriteriaInfo;
    qword_280B5E7E0 = @"item_extra.is_user_disabled";
    qword_280B5E7E8 = BooleanPredicateForCriteriaInfo;
    qword_280B5E780 = @"item_store.store_xid";
    qword_280B5E788 = NumericPredicateForCriteriaInfo;
    qword_280B5E7F0 = @"best_artwork_token.available_artwork_token IS NOT NULL";
    qword_280B5E7F8 = BooleanPredicateForCriteriaInfo;
    qword_280B5E800 = @"item_extra.collection_description";
    qword_280B5E808 = StringPredicateForCriteriaInfo;
    qword_280B5E810 = @"item_store.store_flavor";
    qword_280B5E818 = StringPredicateForCriteriaInfo;
    qword_280B5E840 = @"item_stats.chosen_by_auto_fill";
    qword_280B5E848 = BooleanPredicateForCriteriaInfo;
    qword_280B5E820 = @"item_store.store_saga_id";
    qword_280B5E828 = NumericPredicateForCriteriaInfo;
    qword_280B5E870 = @"item_store.cloud_status";
    qword_280B5E878 = NumericPredicateForCriteriaInfo;
    qword_280B5E0D0 = @"item_extra.file_size";
    unk_280B5E0D8 = NumericPredicateForCriteriaInfo;
    qword_280B5E0B0 = @"item_extra.date_modified";
    unk_280B5E0B8 = DatePredicateForCriteriaInfo;
    qword_280B5E110 = @"date_added";
    unk_280B5E118 = DatePredicateForCriteriaInfo;
    qword_280B5E230 = @"item_store.date_released";
    qword_280B5E238 = DatePredicateForCriteriaInfo;
    qword_280B5E170 = @"item_stats.play_count_user";
    unk_280B5E178 = NumericPredicateForCriteriaInfo;
    qword_280B5E180 = @"item_stats.date_played";
    unk_280B5E188 = DatePredicateForCriteriaInfo;
    qword_280B5E1A0 = @"item_stats.user_rating";
    unk_280B5E1A8 = NumericPredicateForCriteriaInfo;
    qword_280B5E450 = @"item_stats.skip_count_user";
    qword_280B5E458 = NumericPredicateForCriteriaInfo;
    qword_280B5E460 = @"item_stats.date_skipped";
    qword_280B5E468 = DatePredicateForCriteriaInfo;
    qword_280B5E5E0 = @"item_stats.bookmark_time_ms";
    qword_280B5E5E8 = NumericPredicateForCriteriaInfo;
    qword_280B5E600 = @"item_stats.has_been_played";
    qword_280B5E608 = BooleanPredicateForCriteriaInfo;
    qword_280B5E860 = @"(item.base_location_id >= 250)";
    qword_280B5E868 = BooleanPredicateForCriteriaInfo;
    qword_280B5E260 = @"best_artwork_token.available_artwork_token IS NOT NULL";
    qword_280B5E268 = BooleanPredicateForCriteriaInfo;
    qword_280B5E9B0 = @"item_stats.liked_state";
    qword_280B5E9B8 = NumericPredicateForCriteriaInfo;
    qword_280B5EB80 = @"item_stats.liked_state_changed_date";
    qword_280B5EB88 = DatePredicateForCriteriaInfo;
    qword_280B5E9D0 = @"album.liked_state";
    qword_280B5E9D8 = NumericPredicateForCriteriaInfo;
    qword_280B5E3D0 = @"item_extra.media_kind";
    qword_280B5E3D8 = NumericPredicateForCriteriaInfo;
  }
}

+ (id)defaultFilterPredicates
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = [ML3ComparisonPredicate predicateWithProperty:@"is_ignorable_itunes_playlist" equalToValue:MEMORY[0x277CBEC28]];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (BOOL)_setItemPersistentIDs:(id)ds andEntryProperties:(id)properties withAttributionIdentifier:(id)identifier reloadContainedMediaTypes:(BOOL)types removedMediaTypes:(id)mediaTypes addedMediaTypes:(id)addedMediaTypes notify:(BOOL)notify incrementEntityRevision:(BOOL)self0 usingConnection:(id)self1
{
  typesCopy = types;
  v167[1] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  propertiesCopy = properties;
  identifierCopy = identifier;
  mediaTypesCopy = mediaTypes;
  addedMediaTypesCopy = addedMediaTypes;
  connectionCopy = connection;
  v20 = [MEMORY[0x277CCABB0] numberWithLongLong:self->super._persistentID];
  v136 = connectionCopy;
  selfCopy = self;
  if ([dsCopy count])
  {
    v127 = v20;
    v112 = typesCopy;
    v113 = dsCopy;
    v21 = [[ML3ContainerItemDiffOperation alloc] initWithContainerPersistentID:self->super._persistentID updatedItemsPersistentIDs:dsCopy updatedItemsProperties:propertiesCopy connection:connectionCopy];
    [(ML3ContainerItemDiffOperation *)v21 start];
    [(ML3ContainerItemDiffOperation *)v21 waitUntilFinished];
    v114 = v21;
    containerItemsToDelete = [(ML3ContainerItemDiffOperation *)v21 containerItemsToDelete];
    v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(containerItemsToDelete, "count")}];
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    v24 = containerItemsToDelete;
    v25 = [v24 countByEnumeratingWithState:&v146 objects:v165 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v147;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v147 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(*(&v146 + 1) + 8 * i), "persistentID")}];
          [v23 addObject:v29];
        }

        v26 = [v24 countByEnumeratingWithState:&v146 objects:v165 count:16];
      }

      while (v26);
    }

    v128 = propertiesCopy;
    v117 = v24;

    v30 = +[ML3DatabaseStatementRenderer defaultRenderer];
    v31 = [v23 count];
    v122 = v30;
    if (v31)
    {
      v32 = v31;
      v33 = 0;
      while (1)
      {
        if (v32 - v33 >= 0x64)
        {
          v34 = 100;
        }

        else
        {
          v34 = v32 - v33;
        }

        v35 = [v23 subarrayWithRange:v33, v34];
        v36 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v156 = v35;
          _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_DEFAULT, "Deleting container_item rows with persistent-ids: %{public}@", buf, 0xCu);
        }

        v37 = [v30 statementWithPrefix:@"DELETE FROM container_item_person WHERE container_item_pid" inParameterCount:v34];
        v145 = 0;
        v38 = [v136 executeUpdate:v37 withParameters:v35 error:&v145];
        v39 = v145;
        v40 = v30;
        v41 = v39;
        if ((v38 & 1) == 0)
        {
          break;
        }

        v42 = v39;
        v43 = [v40 statementWithPrefix:@"DELETE FROM container_item WHERE ROWID" inParameterCount:v34];
        v144 = 0;
        v44 = [v136 executeUpdate:v43 withParameters:v35 error:&v144];
        v45 = v144;
        v46 = v34;
        v47 = v45;
        if ((v44 & 1) == 0)
        {
          v57 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v156 = v47;
            _os_log_impl(&dword_22D2FA000, v57, OS_LOG_TYPE_ERROR, "Failed to delete container_item rows with error: %{public}@", buf, 0xCu);
          }

          v41 = v42;
          goto LABEL_34;
        }

        v33 += v46;

        v30 = v122;
        if (v33 >= v32)
        {
          goto LABEL_35;
        }
      }

      v47 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v156 = v41;
        _os_log_impl(&dword_22D2FA000, v47, OS_LOG_TYPE_ERROR, "Failed to delete container_item_person rows with error: %{public}@", buf, 0xCu);
      }

LABEL_34:
    }

LABEL_35:
    if (identifierCopy)
    {
      v164 = identifierCopy;
      v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v164 count:1];
      v59 = [v136 executeQuery:@"SELECT person_pid FROM person WHERE cloud_id = ?" withParameters:v58];
      int64ValueForFirstRowAndColumn = [v59 int64ValueForFirstRowAndColumn];

      v61 = v114;
      v129 = int64ValueForFirstRowAndColumn;
      if (!int64ValueForFirstRowAndColumn)
      {
        v62 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v156 = identifierCopy;
          _os_log_impl(&dword_22D2FA000, v62, OS_LOG_TYPE_ERROR, "No person entry for cloud ID '%{public}@' - skipping attribution", buf, 0xCu);
        }

        v129 = 0;
      }
    }

    else
    {
      v129 = 0;
      v61 = v114;
    }

    v63 = [(ML3Entity *)selfCopy valueForProperty:@"keep_local"];
    integerValue = [v63 integerValue];

    containerItemsToUpdate = [(ML3ContainerItemDiffOperation *)v61 containerItemsToUpdate];
    v120 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v136 tableName:@"container_item"];
    v121 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v136 tableName:@"container_item_person"];
    v140 = 0u;
    v141 = 0u;
    v142 = 0u;
    v143 = 0u;
    obj = containerItemsToUpdate;
    propertiesCopy = v128;
    v126 = [obj countByEnumeratingWithState:&v140 objects:v163 count:16];
    if (!v126)
    {
      goto LABEL_81;
    }

    v124 = integerValue - 1;
    v125 = *v141;
    *&v66 = 134218242;
    v111 = v66;
LABEL_43:
    v67 = 0;
    while (1)
    {
      if (*v141 != v125)
      {
        objc_enumerationMutation(obj);
      }

      v130 = v67;
      v68 = *(*(&v140 + 1) + 8 * v67);
      persistentID = [v68 persistentID];
      v70 = os_log_create("com.apple.amp.medialibrary", "Default");
      v71 = os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT);
      v135 = persistentID;
      if (persistentID)
      {
        if (v71)
        {
          newPosition = [v68 newPosition];
          persistentID2 = [v68 persistentID];
          previousPosition = [v68 previousPosition];
          newPosition2 = [v68 newPosition];
          *buf = 134218752;
          v156 = newPosition;
          v157 = 2048;
          v158 = persistentID2;
          v159 = 2048;
          v160 = previousPosition;
          v161 = 2048;
          v162 = newPosition2;
          _os_log_impl(&dword_22D2FA000, v70, OS_LOG_TYPE_DEFAULT, "Mapped item at position %lld to existing container_item with pid %lld (update position: %lld -> %lld)", buf, 0x2Au);
        }
      }

      else
      {
        if (v71)
        {
          newPosition3 = [v68 newPosition];
          *buf = 134217984;
          v156 = newPosition3;
          _os_log_impl(&dword_22D2FA000, v70, OS_LOG_TYPE_DEFAULT, "Creating new container_item for item at position %lld", buf, 0xCu);
        }

        [v68 setPersistentID:{-[ML3PersistentIDGenerator nextPersistentID](v120, "nextPersistentID")}];
      }

      v77 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v68, "newPosition")}];
      v78 = [propertiesCopy objectForKeyedSubscript:v77];

      v79 = [v78 objectForKeyedSubscript:@"uuid"];
      v80 = v79;
      if (v79)
      {
        uuid = v79;
      }

      else
      {
        uuid = [v68 uuid];
      }

      v82 = uuid;

      v83 = [v78 objectForKeyedSubscript:@"position_uuid"];
      v84 = v83;
      v134 = v78;
      if (v83)
      {
        positionUUID = v83;
      }

      else
      {
        positionUUID = [v68 positionUUID];
      }

      v86 = positionUUID;

      occurrenceID = [v68 occurrenceID];
      v88 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v68, "persistentID")}];
      v154[0] = v88;
      v154[1] = v127;
      v89 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v68, "itemPersistentID")}];
      v154[2] = v89;
      v90 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v68, "newPosition")}];
      v154[3] = v90;
      v132 = v86;
      v133 = v82;
      v154[4] = v82;
      v154[5] = v86;
      v131 = occurrenceID;
      v154[6] = occurrenceID;
      v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v154 count:7];
      v139 = 0;
      LOBYTE(v86) = [v136 executeUpdate:@"INSERT OR REPLACE INTO container_item (container_item_pid withParameters:container_pid error:{item_pid, position, uuid, position_uuid, occurrence_id) VALUES (?, ?, ?, ?, ?, ?, ?)", v91, &v139}];
      v92 = v139;

      if ((v86 & 1) == 0)
      {
        break;
      }

      v93 = v135;
      if (!v135 && v129)
      {
        nextPersistentID = [(ML3PersistentIDGenerator *)v121 nextPersistentID];
        v95 = [MEMORY[0x277CCABB0] numberWithLongLong:nextPersistentID];
        v153[0] = v95;
        v96 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v68, "persistentID")}];
        v153[1] = v96;
        v97 = [MEMORY[0x277CCABB0] numberWithLongLong:v129];
        v153[2] = v97;
        v98 = [MEMORY[0x277CBEA60] arrayWithObjects:v153 count:3];
        v138 = 0;
        v99 = [v136 executeUpdate:@"INSERT OR REPLACE INTO container_item_person (container_item_person_pid withParameters:container_item_pid error:{person_pid) VALUES (?, ?, ?)", v98, &v138}];
        v100 = v138;

        if ((v99 & 1) == 0)
        {
          v101 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
          {
            itemPersistentID = [v68 itemPersistentID];
            *buf = v111;
            v156 = itemPersistentID;
            v157 = 2114;
            v158 = v100;
            _os_log_impl(&dword_22D2FA000, v101, OS_LOG_TYPE_ERROR, "Failed to add container_item_person for track %lld. err = %{public}@", buf, 0x16u);
          }
        }

        v93 = 0;
      }

      propertiesCopy = v128;
      if (!v93 && v124 <= 1)
      {
        v103 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v68, "itemPersistentID")}];
        v152[0] = v103;
        v152[1] = &unk_2840C8DC8;
        v104 = [MEMORY[0x277CBEA60] arrayWithObjects:v152 count:2];
        v137 = 0;
        v105 = [v136 executeUpdate:@"UPDATE item set keep_local=0 WHERE (item_pid=? AND keep_local<?);" withParameters:v104 error:&v137];
        v106 = v137;

        if (!v105)
        {
          v107 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
          {
            persistentID3 = [v68 persistentID];
            *buf = v111;
            v156 = persistentID3;
            v157 = 2114;
            v158 = v106;
            _os_log_impl(&dword_22D2FA000, v107, OS_LOG_TYPE_ERROR, "Failed to clear keep_local for track %lld - error: %{public}@", buf, 0x16u);
          }

LABEL_80:
          goto LABEL_81;
        }
      }

      v67 = v130 + 1;
      if (v126 == v130 + 1)
      {
        v126 = [obj countByEnumeratingWithState:&v140 objects:v163 count:16];
        if (v126)
        {
          goto LABEL_43;
        }

LABEL_81:

        notifyCopy3 = notify;
        revisionCopy3 = revision;
        v51 = v127;
        v50 = v114;
LABEL_82:

        dsCopy = v113;
        typesCopy = v112;
        goto LABEL_83;
      }
    }

    v106 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v156 = v92;
      _os_log_impl(&dword_22D2FA000, v106, OS_LOG_TYPE_ERROR, "Failed to insert container_item with error: %{public}@", buf, 0xCu);
    }

    propertiesCopy = v128;
    goto LABEL_80;
  }

  v167[0] = v20;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v167 count:1];
  v151 = 0;
  v49 = [connectionCopy executeUpdate:@"DELETE FROM container_item_person WHERE container_item_pid in (SELECT container_item_pid from container_item where container_pid=?)" withParameters:v48 error:&v151];
  v50 = v151;

  v51 = v20;
  if ((v49 & 1) == 0)
  {
    v52 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v156 = v50;
      _os_log_impl(&dword_22D2FA000, v52, OS_LOG_TYPE_ERROR, "Failed to delete from container_item_persons with error: %{public}@", buf, 0xCu);
    }
  }

  v166 = v20;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v166 count:1];
  v150 = 0;
  v54 = [v136 executeUpdate:@"DELETE FROM container_item WHERE container_pid = ?" withParameters:v53 error:&v150];
  v117 = v150;

  if ((v54 & 1) == 0)
  {
    v112 = typesCopy;
    v113 = dsCopy;
    v23 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v156 = v117;
      _os_log_impl(&dword_22D2FA000, v23, OS_LOG_TYPE_ERROR, "Failed to delete all existing container_item rows with error: %{public}@", buf, 0xCu);
    }

    notifyCopy3 = notify;
    revisionCopy3 = revision;
    goto LABEL_82;
  }

  notifyCopy3 = notify;
  revisionCopy3 = revision;
LABEL_83:

  v109 = [(ML3Container *)selfCopy _reloadContainedMediaTypes:typesCopy removedMediaTypes:mediaTypesCopy addedMediaTypes:addedMediaTypesCopy notify:notifyCopy3 incrementEntityRevision:revisionCopy3 usingConnection:v136];
  return v109;
}

- (BOOL)_supportsOrderedTrackOperations
{
  v3 = [MEMORY[0x277CBEB98] set];
  v4 = [(ML3Entity *)self valueForProperty:@"distinguished_kind"];
  v5 = [v3 containsObject:v4];

  return v5 ^ 1;
}

- (void)_setContainerSeedItemPersistentIDValue:(id)value
{
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ML3Container__setContainerSeedItemPersistentIDValue___block_invoke;
  v7[3] = &unk_278764670;
  v7[4] = self;
  v8 = valueCopy;
  v6 = valueCopy;
  [WeakRetained databaseConnectionAllowingWrites:1 withBlock:v7];
}

void __55__ML3Container__setContainerSeedItemPersistentIDValue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__ML3Container__setContainerSeedItemPersistentIDValue___block_invoke_2;
  v7[3] = &unk_2787627F0;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v6 = v3;
  [v6 performTransactionWithBlock:v7];
}

uint64_t __55__ML3Container__setContainerSeedItemPersistentIDValue___block_invoke_2(void *a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1[5] + 16)];
  v12[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  LODWORD(v2) = [v2 executeUpdate:@"DELETE FROM container_seed WHERE container_pid = ?;" withParameters:v4 error:0];

  if (!v2)
  {
    return 0;
  }

  v5 = a1[4];
  v6 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1[5] + 16)];
  v7 = a1[6];
  v11[0] = v6;
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v9 = [v5 executeUpdate:@"INSERT INTO container_seed (container_pid withParameters:item_pid) VALUES (? error:{?);", v8, 0}];

  return v9;
}

- (BOOL)_removeTracksAtIndexes:(id)indexes notify:(BOOL)notify usingConnection:(id)connection
{
  notifyCopy = notify;
  indexesCopy = indexes;
  connectionCopy = connection;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[ML3Entity persistentID](self, "persistentID")}];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x2020000000;
  v24[3] = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__ML3Container__removeTracksAtIndexes_notify_usingConnection___block_invoke;
  v16[3] = &unk_2787627C8;
  v19 = v24;
  v16[4] = self;
  v22 = a2;
  v20 = &v25;
  v12 = connectionCopy;
  v17 = v12;
  v13 = v11;
  v18 = v13;
  v21 = v23;
  [indexesCopy enumerateRangesUsingBlock:v16];
  if (*(v26 + 24) == 1)
  {
    v14 = [(ML3Container *)self _reloadContainedMediaTypes:1 removedMediaTypes:0 addedMediaTypes:0 notify:notifyCopy incrementEntityRevision:1 usingConnection:v12];
    *(v26 + 24) = v14;
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v24, 8);

  _Block_object_dispose(&v25, 8);
  return v14;
}

void __62__ML3Container__removeTracksAtIndexes_notify_usingConnection___block_invoke(void *a1, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v40[3] = *MEMORY[0x277D85DE8];
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 24);
  if (v8)
  {
    v9 = a2 > v8;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a1[10] object:a1[4] file:@"ML3Container.m" lineNumber:2273 description:@"[NSIndexSet enumerateRangesUsingBlock:] is not enumerating ranges in order!"];

    v7 = *(a1[7] + 8);
  }

  *(v7 + 24) = a2;
  v10 = a1[5];
  v40[0] = a1[6];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2 - *(*(a1[9] + 8) + 24)];
  v40[1] = v11;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2 + a3 + ~*(*(a1[9] + 8) + 24)];
  v40[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:3];
  v35 = 0;
  v14 = [v10 executeUpdate:@"DELETE FROM container_item_person WHERE container_item_pid in (SELECT container_item_pid from container_item where container_pid = ? AND position BETWEEN ? AND ?)" withParameters:v13 error:&v35];
  v15 = v35;
  *(*(a1[8] + 8) + 24) = v14;

  if ((v14 & 1) == 0)
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v39 = v15;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_ERROR, "Failed to delete from container_item_persons with error: %{public}@", buf, 0xCu);
    }
  }

  v17 = a1[5];
  v37[0] = a1[6];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2 - *(*(a1[9] + 8) + 24)];
  v37[1] = v18;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2 + a3 + ~*(*(a1[9] + 8) + 24)];
  v37[2] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
  v34 = 0;
  v21 = [v17 executeUpdate:@"DELETE FROM container_item WHERE container_pid = ? AND position BETWEEN ? AND ?" withParameters:v20 error:&v34];
  v22 = v34;
  *(*(a1[8] + 8) + 24) = v21;

  if (*(*(a1[8] + 8) + 24))
  {
    v23 = a1[5];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v25 = a1[6];
    v36[0] = v24;
    v36[1] = v25;
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2 - *(*(a1[9] + 8) + 24)];
    v36[2] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
    v33 = 0;
    LOBYTE(v23) = [v23 executeUpdate:@"UPDATE container_item SET position = (position - ?) WHERE container_pid = ? AND position >= ?" withParameters:v27 error:&v33];
    v28 = v33;
    *(*(a1[8] + 8) + 24) = v23;

    if ((*(*(a1[8] + 8) + 24) & 1) == 0)
    {
      v29 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v39 = v28;
        _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_ERROR, "Failed to update container_item position(s) with error: %{public}@", buf, 0xCu);
      }

      *a4 = 1;
    }
  }

  else
  {
    v30 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v39 = v22;
      _os_log_impl(&dword_22D2FA000, v30, OS_LOG_TYPE_ERROR, "Failed to delete existing container_item row(s) with error: %{public}@", buf, 0xCu);
    }

    *a4 = 1;
  }

  *(*(a1[9] + 8) + 24) += a3;
}

- (BOOL)_reloadContainedMediaTypes:(BOOL)types removedMediaTypes:(id)mediaTypes addedMediaTypes:(id)addedMediaTypes notify:(BOOL)notify incrementEntityRevision:(BOOL)revision usingConnection:(id)connection
{
  revisionCopy = revision;
  notifyCopy = notify;
  typesCopy = types;
  connectionCopy = connection;
  addedMediaTypesCopy = addedMediaTypes;
  mediaTypesCopy = mediaTypes;
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  LOBYTE(revisionCopy) = [ML3Container _reloadContainedMediaTypes:typesCopy removedMediaTypes:mediaTypesCopy addedMediaTypes:addedMediaTypesCopy notify:notifyCopy incrementEntityRevision:revisionCopy usingLibrary:WeakRetained connection:connectionCopy forContainerPersistentID:[(ML3Entity *)self persistentID]];

  return revisionCopy;
}

- (int64_t)_maxPositionForTracksUsingConnection:(id)connection
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCABB0];
  connectionCopy = connection;
  v6 = [v4 numberWithLongLong:{-[ML3Entity persistentID](self, "persistentID")}];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8 = [connectionCopy executeQuery:@"SELECT IFNULL(MAX(position) withParameters:{-1) FROM container_item WHERE container_pid = ?", v7}];

  objectForFirstRowAndColumn = [v8 objectForFirstRowAndColumn];
  integerValue = [objectForFirstRowAndColumn integerValue];

  return integerValue;
}

- (BOOL)setItemReactionText:(id)text onEntryAtPosition:(unint64_t)position forUserIdentifier:(id)identifier previousReactionText:(id *)reactionText
{
  textCopy = text;
  identifierCopy = identifier;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__8381;
  v28 = __Block_byref_object_dispose__8382;
  v29 = 0;
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __93__ML3Container_setItemReactionText_onEntryAtPosition_forUserIdentifier_previousReactionText___block_invoke;
  v17[3] = &unk_278762778;
  v13 = identifierCopy;
  v18 = v13;
  selfCopy = self;
  positionCopy = position;
  v21 = &v24;
  v14 = textCopy;
  v20 = v14;
  v22 = &v30;
  [WeakRetained databaseConnectionAllowingWrites:1 withBlock:v17];

  if (reactionText)
  {
    *reactionText = v25[5];
  }

  v15 = *(v31 + 24);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v15;
}

void __93__ML3Container_setItemReactionText_onEntryAtPosition_forUserIdentifier_previousReactionText___block_invoke(void *a1, void *a2)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1[4])
  {
    v46[0] = a1[4];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    v5 = [v3 executeQuery:@"SELECT person_pid FROM person WHERE cloud_id = ?" withParameters:v4];
    v6 = [v5 int64ValueForFirstRowAndColumn];
  }

  else
  {
    v6 = 0;
  }

  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1[5] + 16)];
  v45[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[9]];
  v45[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v10 = [v3 executeQuery:@"SELECT container_item_pid FROM container_item WHERE container_pid = ? AND position = ?" withParameters:v9];
  v11 = [v10 int64ValueForFirstRowAndColumn];

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
  v44[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
  v44[1] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v15 = [v3 executeQuery:@"SELECT container_item_reaction_pid withParameters:{reaction FROM container_item_reaction WHERE person_pid = ? AND container_item_pid = ?", v14}];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __93__ML3Container_setItemReactionText_onEntryAtPosition_forUserIdentifier_previousReactionText___block_invoke_2;
  v36[3] = &unk_278765228;
  v16 = a1[7];
  v36[4] = &v37;
  v36[5] = v16;
  [v15 enumerateRowsWithBlock:v36];

  if (v38[3])
  {
    if (a1[6])
    {
      v42[0] = a1[6];
      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
      v42[1] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
      v34 = 0;
      v19 = [v3 executeUpdate:@"UPDATE container_item_reaction SET reaction = ? WHERE container_item_reaction_pid = ?" withParameters:v18 error:&v34];
      v20 = v34;
    }

    else
    {
      v17 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
      v43 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
      v35 = 0;
      v19 = [v3 executeUpdate:@"DELETE FROM container_item_reaction WHERE container_item_reaction_pid = ?" withParameters:v18 error:&v35];
      v20 = v35;
    }

    v29 = v20;
    *(*(a1[8] + 8) + 24) = v19;
  }

  else
  {
    v17 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v3 tableName:@"container_item_reaction"];
    v21 = [(ML3PersistentIDGenerator *)v17 nextPersistentID];
    v38[3] = v21;
    v18 = [MEMORY[0x277CCABB0] numberWithLongLong:v21];
    v41[0] = v18;
    v31 = [MEMORY[0x277CCABB0] numberWithLongLong:v11];
    v41[1] = v31;
    v22 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
    v23 = a1[6];
    v41[2] = v22;
    v41[3] = v23;
    v24 = MEMORY[0x277CCABB0];
    v25 = [MEMORY[0x277CBEAA8] now];
    [v25 timeIntervalSince1970];
    v26 = [v24 numberWithDouble:?];
    v41[4] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];
    v33 = 0;
    v28 = [v3 executeUpdate:@"INSERT INTO container_item_reaction (container_item_reaction_pid withParameters:container_item_pid error:{person_pid, reaction, date) VALUES (?, ?, ?, ?, ?)", v27, &v33}];
    v29 = v33;
    *(*(a1[8] + 8) + 24) = v28;
  }

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __93__ML3Container_setItemReactionText_onEntryAtPosition_forUserIdentifier_previousReactionText___block_invoke_3;
  v32[3] = &unk_278763C40;
  v30 = a1[8];
  v32[4] = a1[5];
  v32[5] = v30;
  [v3 enqueueBlockForTransactionCommit:v32];

  _Block_object_dispose(&v37, 8);
}

void __93__ML3Container_setItemReactionText_onEntryAtPosition_forUserIdentifier_previousReactionText___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 int64ForColumnIndex:0];
  v4 = [v3 stringForColumnIndex:1];

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __93__ML3Container_setItemReactionText_onEntryAtPosition_forUserIdentifier_previousReactionText___block_invoke_3(uint64_t a1, int a2)
{
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && a2 != 0)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained notifyDisplayValuesPropertyDidChange];
  }
}

- (BOOL)isBuiltInSmartPlaylist
{
  v2 = [(ML3Entity *)self valueForProperty:@"distinguished_kind"];
  longValue = [v2 longValue];

  v4 = 0;
  v5 = &dword_28408603C;
  do
  {
    v7 = *v5;
    v5 += 6;
    v6 = v7;
    if (v4 > 3)
    {
      break;
    }

    ++v4;
  }

  while (v6 != longValue);
  return v6 == longValue;
}

- (id)parentPlaylistPersistentIdsAndNames
{
  v19[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v4 = [(ML3Entity *)self valueForProperty:@"parent_pid"];
  longLongValue = [v4 longLongValue];

  v18 = longLongValue;
  while (v16[3])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
    v7 = [ML3ComparisonPredicate predicateWithProperty:@"container_pid" value:v6 comparison:1];

    WeakRetained = objc_loadWeakRetained(&self->super._library);
    v9 = [(ML3Entity *)ML3Container queryWithLibrary:WeakRetained predicate:v7];

    v19[0] = @"name";
    v19[1] = @"parent_pid";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__ML3Container_parentPlaylistPersistentIdsAndNames__block_invoke;
    v12[3] = &unk_278762750;
    v14 = &v15;
    v13 = v3;
    [v9 enumeratePersistentIDsAndProperties:v10 usingBlock:v12];
  }

  _Block_object_dispose(&v15, 8);

  return v3;
}

void __51__ML3Container_parentPlaylistPersistentIdsAndNames__block_invoke(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = MEMORY[0x277CBEAC0];
  v6 = MEMORY[0x277CCABB0];
  v7 = *(*(*(a1 + 40) + 8) + 24);
  v8 = *a3;
  v9 = [v6 numberWithLongLong:v7];
  v11 = [v5 dictionaryWithObject:v8 forKey:v9];

  [*(a1 + 32) addObject:v11];
  v10 = a3[1];
  *(*(*(a1 + 40) + 8) + 24) = [v10 longLongValue];
}

- (id)childPlaylistPersistentIds
{
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:self->super._persistentID];
  v4 = [ML3ComparisonPredicate predicateWithProperty:@"parent_pid" value:v3 comparison:1];

  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v6 = [(ML3Entity *)ML3Container queryWithLibrary:WeakRetained predicate:v4];

  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "countOfEntities")}];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__ML3Container_childPlaylistPersistentIds__block_invoke;
  v10[3] = &unk_278765BD8;
  v8 = v7;
  v11 = v8;
  [v6 enumeratePersistentIDsUsingBlock:v10];

  return v8;
}

void __42__ML3Container_childPlaylistPersistentIds__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 addObject:v3];
}

- (id)trackPersistentIds
{
  v12[1] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v5 = [ML3ComparisonPredicate predicateWithProperty:@"container_pid" equalToInt64:self->super._persistentID];
  v6 = [(ML3Entity *)ML3ContainerItem queryWithLibrary:WeakRetained predicate:v5];

  v12[0] = @"item_pid";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__ML3Container_trackPersistentIds__block_invoke;
  v10[3] = &unk_278762DC0;
  v8 = array;
  v11 = v8;
  [v6 enumeratePersistentIDsAndProperties:v7 usingBlock:v10];

  return v8;
}

- (BOOL)removeFirstTrack
{
  v3 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
  LOBYTE(self) = [(ML3Container *)self removeTracksAtIndexes:v3 notify:1];

  return self;
}

- (BOOL)removeTracksAtIndexes:(id)indexes notify:(BOOL)notify
{
  indexesCopy = indexes;
  if (![(ML3Container *)self _supportsOrderedTrackOperations])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Container.m" lineNumber:1967 description:@"removeTracksAtIndexes:notify: called on unsupported container"];
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 1;
  if ([indexesCopy count])
  {
    WeakRetained = objc_loadWeakRetained(&self->super._library);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__ML3Container_removeTracksAtIndexes_notify___block_invoke;
    v12[3] = &unk_278762728;
    v14 = &v16;
    v12[4] = self;
    v13 = indexesCopy;
    notifyCopy = notify;
    [WeakRetained performDatabaseTransactionWithBlock:v12];
  }

  v9 = *(v17 + 24);
  _Block_object_dispose(&v16, 8);

  return v9;
}

- (BOOL)moveTrackFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  if (![(ML3Container *)self _supportsOrderedTrackOperations])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Container.m" lineNumber:1898 description:@"moveTrackFromIndex:toIndex: called on unsupported container"];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v8 = 1;
  v16 = 1;
  if (index != toIndex)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._library);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __43__ML3Container_moveTrackFromIndex_toIndex___block_invoke;
    v12[3] = &unk_278762700;
    v12[4] = self;
    v12[5] = &v13;
    v12[6] = index;
    v12[7] = toIndex;
    [WeakRetained performDatabaseTransactionWithBlock:v12];

    v8 = *(v14 + 24);
  }

  _Block_object_dispose(&v13, 8);
  return v8 & 1;
}

uint64_t __43__ML3Container_moveTrackFromIndex_toIndex___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 32), "persistentID")}];
  v5 = [*(a1 + 32) _maxPositionForTracksUsingConnection:v3];
  if (v5 == -1)
  {
    v6 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      *buf = 134218240;
      v37 = v7;
      v38 = 2048;
      v39 = [v7 persistentID];
      _os_log_impl(&dword_22D2FA000, v6, OS_LOG_TYPE_ERROR, "No tracks in container %p (pid = %lld)", buf, 0x16u);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v8 = (a1 + 48);
  if (*(a1 + 48) > v5)
  {
    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      v11 = *(a1 + 32);
      v12 = [v11 persistentID];
      *buf = 134218752;
      v37 = v10;
      v38 = 2048;
      v39 = v5;
      v40 = 2048;
      v41 = v11;
      v42 = 2048;
      v43 = v12;
      _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "From index (%lu) out of bounds (%ld) of %p (pid = %lld)", buf, 0x2Au);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v13 = (a1 + 56);
  if (*(a1 + 56) > v5)
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 56);
      v16 = *(a1 + 32);
      v17 = [v16 persistentID];
      *buf = 134218752;
      v37 = v15;
      v38 = 2048;
      v39 = v5;
      v40 = 2048;
      v41 = v16;
      v42 = 2048;
      v43 = v17;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "To index (%lu) out of bounds (%ld) of %p (pid = %lld)", buf, 0x2Au);
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v32 = v3;
    v33 = v4;
    if (*v8 >= *v13)
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*v8 - 1];
      v21 = (a1 + 56);
      v13 = (a1 + 48);
      v20 = &unk_2840C8DC8;
    }

    else
    {
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*v8 + 1];
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*v13];
      v20 = &unk_2840C8DF8;
      v21 = (a1 + 48);
    }

    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*v21];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*v13];
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    v35[0] = v25;
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 56)];
    v35[1] = v26;
    v35[2] = v18;
    v35[3] = v19;
    v35[4] = v20;
    v35[5] = v33;
    v35[6] = v23;
    v35[7] = v24;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:8];
    v34 = 0;
    v28 = [v32 executeUpdate:@"UPDATE container_item SET position = (CASE WHEN position = ? THEN ? ELSE CASE WHEN position BETWEEN ? AND ? THEN position + ? END END) WHERE container_pid = ? AND position BETWEEN ? AND ?" withParameters:v27 error:&v34];
    v29 = v34;
    *(*(*(a1 + 40) + 8) + 24) = v28;

    if (*(*(*(a1 + 40) + 8) + 24))
    {
      *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _reloadContainedMediaTypes:0 removedMediaTypes:0 addedMediaTypes:0 notify:1 incrementEntityRevision:1 usingConnection:v32];
    }

    else
    {
      v30 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v37 = v29;
        _os_log_impl(&dword_22D2FA000, v30, OS_LOG_TYPE_ERROR, "Failed to update positions in container_item with error: %{public}@", buf, 0xCu);
      }
    }

    v4 = v33;

    v22 = *(*(*(a1 + 40) + 8) + 24);
    v3 = v32;
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (BOOL)appendTracksWithPersistentIDs:(id)ds andEntryProperties:(id)properties withAttributionIdentifier:(id)identifier notify:(BOOL)notify
{
  dsCopy = ds;
  propertiesCopy = properties;
  identifierCopy = identifier;
  if ([dsCopy count])
  {
    if (![(ML3Container *)self _supportsOrderedTrackOperations])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Container.m" lineNumber:1829 description:@"appendTracksWithPersistentIDs:notify: called on unsupported container"];
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v14 = [(ML3Entity *)self valueForProperty:@"keep_local"];
    integerValue = [v14 integerValue];

    WeakRetained = objc_loadWeakRetained(&self->super._library);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __98__ML3Container_appendTracksWithPersistentIDs_andEntryProperties_withAttributionIdentifier_notify___block_invoke;
    v20[3] = &unk_2787626D8;
    v20[4] = self;
    v21 = identifierCopy;
    v22 = dsCopy;
    v23 = propertiesCopy;
    v24 = &v27;
    v25 = integerValue;
    notifyCopy = notify;
    [WeakRetained performDatabaseTransactionWithBlock:v20];

    v17 = *(v28 + 24);
    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v17 = 1;
  }

  return v17 & 1;
}

uint64_t __98__ML3Container_appendTracksWithPersistentIDs_andEntryProperties_withAttributionIdentifier_notify___block_invoke(uint64_t a1, void *a2)
{
  v83[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _maxPositionForTracksUsingConnection:v3];
  v61 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 32), "persistentID")}];
  v60 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v3 tableName:@"container_item"];
  v56 = [[ML3PersistentIDGenerator alloc] initWithDatabaseConnection:v3 tableName:@"container_item_person"];
  if (!*(a1 + 40))
  {
LABEL_6:
    v63 = 0;
    goto LABEL_7;
  }

  v83[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];
  v6 = [v3 executeQuery:@"SELECT person_pid FROM person WHERE cloud_id = ?" withParameters:v5];
  v7 = [v6 int64ValueForFirstRowAndColumn];

  v63 = v7;
  if (!v7)
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 138543362;
      *v78 = v9;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_ERROR, "No person entry for cloud ID '%{public}@' - skipping attribution", buf, 0xCu);
    }

    goto LABEL_6;
  }

LABEL_7:
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = *(a1 + 48);
  v59 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
  v11 = 0;
  if (!v59)
  {
    v39 = 0x277CBE000;
    goto LABEL_39;
  }

  v58 = *v72;
  *&v10 = 138543618;
  v54 = v10;
  v57 = v3;
  while (2)
  {
    v12 = 0;
    v13 = v11;
    do
    {
      if (*v72 != v58)
      {
        objc_enumerationMutation(obj);
      }

      v14 = v4 + 1;
      v15 = *(*(&v71 + 1) + 8 * v12);
      v16 = [*(a1 + 56) objectForKeyedSubscript:{v15, v54}];
      v17 = [v16 objectForKeyedSubscript:@"uuid"];
      v18 = v17;
      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = &stru_28408B690;
      }

      v20 = v19;

      v66 = v16;
      v21 = [v16 objectForKeyedSubscript:@"position_uuid"];
      v22 = v21;
      if (v21)
      {
        v23 = v21;
      }

      else
      {
        v23 = &stru_28408B690;
      }

      v24 = v23;

      v25 = [(ML3PersistentIDGenerator *)v60 nextPersistentID];
      v26 = [MEMORY[0x277CCABB0] numberWithLongLong:v25];
      v81[0] = v26;
      v81[1] = v61;
      v62 = v15;
      v81[2] = v15;
      v64 = v14;
      [MEMORY[0x277CCABB0] numberWithInteger:v14];
      v28 = v27 = a1;
      v81[3] = v28;
      v81[4] = v20;
      v65 = v20;
      v81[5] = v24;
      v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v81 count:6];
      v70 = v13;
      v30 = [v57 executeUpdate:@"INSERT INTO container_item (container_item_pid withParameters:container_pid error:{item_pid, position, uuid, position_uuid) VALUES (?, ?, ?, ?, ?, ?)", v29, &v70}];
      v67 = v70;

      *(*(*(v27 + 64) + 8) + 24) = v30;
      a1 = v27;

      if ((*(*(*(v27 + 64) + 8) + 24) & 1) == 0)
      {
        v42 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *v78 = v67;
          _os_log_impl(&dword_22D2FA000, v42, OS_LOG_TYPE_ERROR, "Failed to insert container_item with error: %{public}@", buf, 0xCu);
        }

        v3 = v57;
        v39 = 0x277CBE000;
        goto LABEL_38;
      }

      if (v63)
      {
        v31 = [(ML3PersistentIDGenerator *)v56 nextPersistentID];
        v32 = [MEMORY[0x277CCABB0] numberWithLongLong:v31];
        v80[0] = v32;
        v33 = [MEMORY[0x277CCABB0] numberWithLongLong:v25];
        v80[1] = v33;
        v34 = [MEMORY[0x277CCABB0] numberWithLongLong:v63];
        v80[2] = v34;
        v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:3];
        v69 = 0;
        v36 = [v57 executeUpdate:@"INSERT INTO container_item_person (container_item_person_pid withParameters:container_item_pid error:{person_pid) VALUES (?, ?, ?)", v35, &v69}];
        v37 = v69;
        *(*(*(v27 + 64) + 8) + 24) = v36;

        if ((v36 & 1) == 0)
        {
          v38 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = v54;
            *v78 = v62;
            *&v78[8] = 2114;
            *&v78[10] = v37;
            _os_log_impl(&dword_22D2FA000, v38, OS_LOG_TYPE_ERROR, "Failed to add container_item_person for track %{public}@. err = %{public}@", buf, 0x16u);
          }
        }

        a1 = v27;
      }

      v3 = v57;
      v39 = 0x277CBE000uLL;
      v4 = v64;
      if ((*(a1 + 72) - 1) <= 1)
      {
        v79[0] = v62;
        v79[1] = &unk_2840C8DC8;
        v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
        v68 = 0;
        v41 = [v57 executeUpdate:@"UPDATE item set keep_local=0 WHERE (item_pid=? AND keep_local<?);" withParameters:v40 error:&v68];
        v42 = v68;
        *(*(*(a1 + 64) + 8) + 24) = v41;

        if (*(*(*(a1 + 64) + 8) + 24) == 1)
        {

          goto LABEL_28;
        }

        v43 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v44 = *(a1 + 72);
          v45 = [v62 longLongValue];
          *buf = 67109634;
          *v78 = v44;
          *&v78[4] = 2048;
          *&v78[6] = v45;
          *&v78[14] = 2114;
          *&v78[16] = v42;
          _os_log_impl(&dword_22D2FA000, v43, OS_LOG_TYPE_ERROR, "Could not set keep_local to %d for track %lld - error: %{public}@", buf, 0x1Cu);
        }

LABEL_38:
        v11 = v67;
        goto LABEL_39;
      }

LABEL_28:

      ++v12;
      v11 = v67;
      v13 = v67;
    }

    while (v59 != v12);
    v59 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
    if (v59)
    {
      continue;
    }

    break;
  }

LABEL_39:

  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    v46 = *(a1 + 32);
    v47 = MEMORY[0x277CCABB0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v48 = [v47 numberWithDouble:?];
    v76 = v48;
    v49 = [*(v39 + 2656) arrayWithObjects:&v76 count:1];
    v75 = @"date_modified";
    v50 = [*(v39 + 2656) arrayWithObjects:&v75 count:1];
    [v46 setValues:v49 forProperties:v50 usingConnection:v3];

    v51 = [ML3Container _mediaTypesForTracksWithPersistentIDs:*(a1 + 48) usingConnection:v3];
    *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) _reloadContainedMediaTypes:objc_msgSend(v51 removedMediaTypes:"count") == 0 addedMediaTypes:0 notify:v51 incrementEntityRevision:*(a1 + 76) usingConnection:{1, v3}];

    v52 = *(*(*(a1 + 64) + 8) + 24);
  }

  else
  {
    v52 = 0;
  }

  return v52 & 1;
}

- (BOOL)setTracksWithPersistentIDs:(id)ds andEntryProperties:(id)properties withAttributionIdentifier:(id)identifier notify:(BOOL)notify
{
  dsCopy = ds;
  propertiesCopy = properties;
  identifierCopy = identifier;
  if (![(ML3Container *)self _supportsOrderedTrackOperations])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Container.m" lineNumber:1810 description:@"setTracksWithPersistentIDs:notify: called on unsupported container"];
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __95__ML3Container_setTracksWithPersistentIDs_andEntryProperties_withAttributionIdentifier_notify___block_invoke;
  v21[3] = &unk_2787626B0;
  v25 = &v27;
  v21[4] = self;
  v15 = dsCopy;
  v22 = v15;
  v16 = propertiesCopy;
  v23 = v16;
  v17 = identifierCopy;
  v24 = v17;
  notifyCopy = notify;
  [WeakRetained performDatabaseTransactionWithBlock:v21];

  v18 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return v18;
}

uint64_t __95__ML3Container_setTracksWithPersistentIDs_andEntryProperties_withAttributionIdentifier_notify___block_invoke(uint64_t a1, uint64_t a2)
{
  BYTE1(v4) = 1;
  LOBYTE(v4) = *(a1 + 72);
  *(*(*(a1 + 64) + 8) + 24) = [*(a1 + 32) _setItemPersistentIDs:*(a1 + 40) andEntryProperties:*(a1 + 48) withAttributionIdentifier:*(a1 + 56) reloadContainedMediaTypes:1 removedMediaTypes:0 addedMediaTypes:0 notify:v4 incrementEntityRevision:a2 usingConnection:?];
  return *(*(*(a1 + 64) + 8) + 24);
}

- (BOOL)removeAllTracks
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__ML3Container_removeAllTracks__block_invoke;
  v5[3] = &unk_278762A98;
  v5[4] = self;
  v5[5] = &v6;
  [WeakRetained performDatabaseTransactionWithBlock:v5];

  LOBYTE(WeakRetained) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return WeakRetained;
}

uint64_t __31__ML3Container_removeAllTracks__block_invoke(uint64_t a1, uint64_t a2)
{
  LOWORD(v4) = 257;
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _setItemPersistentIDs:0 andEntryProperties:MEMORY[0x277CBEC10] withAttributionIdentifier:0 reloadContainedMediaTypes:1 removedMediaTypes:0 addedMediaTypes:0 notify:v4 incrementEntityRevision:a2 usingConnection:?];
  return *(*(*(a1 + 40) + 8) + 24);
}

- (NSArray)displayOrderingTerms
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(ML3Entity *)self valueForProperty:@"is_reversed"];
  bOOLValue = [v3 BOOLValue];

  v5 = [(ML3Entity *)self valueForProperty:@"play_order"];
  intValue = [v5 intValue];

  v7 = [ML3Track orderingTermsForITTGTrackOrder:intValue descending:bOOLValue];
  if ([v7 count])
  {
    v8 = v7;
  }

  else
  {
    limitOrderingTerms = [(ML3Container *)self limitOrderingTerms];
    if ([limitOrderingTerms count])
    {
      v8 = limitOrderingTerms;
    }

    else
    {
      evaluationOrderingTerms = [(ML3Container *)self evaluationOrderingTerms];
      if ([evaluationOrderingTerms count])
      {
        v11 = evaluationOrderingTerms;
      }

      else
      {
        if ([(ML3Container *)self importedCriteriaList])
        {
          LockSearchCriteriaList();
          v12 = CountSearchCriteria();
          if (v12)
          {
            v14 = 0;
            *&v13 = 67109120;
            v19 = v13;
            do
            {
              SearchCriterionInfo = GetSearchCriterionInfo();
              if (SearchCriterionInfo)
              {
                v16 = SearchCriterionInfo;
                v17 = os_log_create("com.apple.amp.medialibrary", "Default");
                if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134217984;
                  v21 = v16;
                  _os_log_impl(&dword_22D2FA000, v17, OS_LOG_TYPE_ERROR, "Got an error getting search criterion info: %ld", buf, 0xCu);
                }
              }

              ++v14;
            }

            while (v12 != v14);
            v12 = 0;
          }

          UnlockSearchCriteriaList();
          DisposeSearchCriteriaList();
        }

        else
        {
          v12 = 0;
        }

        v11 = [ML3Track orderingTermsForITTGTrackOrder:v12 descending:0, v19];
      }

      v8 = v11;
    }
  }

  return v8;
}

- (NSArray)cloudDisplayOrderingTerms
{
  v3 = [(ML3Entity *)self valueForProperty:@"is_reversed"];
  bOOLValue = [v3 BOOLValue];

  v5 = [(ML3Entity *)self valueForProperty:@"play_order"];
  intValue = [v5 intValue];

  return [ML3Track orderingTermsForITTGTrackOrder:intValue descending:bOOLValue];
}

- (int64_t)limitValue
{
  v3 = [(ML3Entity *)self valueForProperty:@"smart_limit_kind"];
  intValue = [v3 intValue];

  v5 = [(ML3Entity *)self valueForProperty:@"smart_limit_value"];
  longLongValue = [v5 longLongValue];

  if (intValue <= 2)
  {
    if (intValue)
    {
      if (intValue != 1)
      {
        return longLongValue;
      }

      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (intValue == 4)
  {
    longLongValue <<= 10;
LABEL_10:
    longLongValue <<= 20;
    return longLongValue;
  }

  if (intValue == 3)
  {
    longLongValue *= 60;
LABEL_8:
    longLongValue *= 60000;
  }

  return longLongValue;
}

- (NSArray)limitOrderingTerms
{
  v3 = [(ML3Entity *)self valueForProperty:@"smart_limit_order"];
  intValue = [v3 intValue];

  isLimitOrderingDescending = [(ML3Container *)self isLimitOrderingDescending];

  return [ML3Track orderingTermsForITTGTrackOrder:intValue descending:isLimitOrderingDescending];
}

- (id)evaluationOrderingTerms
{
  v3 = [(ML3Entity *)self valueForProperty:@"smart_evaluation_order"];
  intValue = [v3 intValue];

  isEvaluationOrderingDescending = [(ML3Container *)self isEvaluationOrderingDescending];

  return [ML3Track orderingTermsForITTGTrackOrder:intValue descending:isEvaluationOrderingDescending];
}

- (NSString)limitingProperty
{
  v2 = [(ML3Entity *)self valueForProperty:@"smart_limit_kind"];
  intValue = [v2 intValue];

  v4 = 0;
  if (intValue <= 1)
  {
    if (!intValue)
    {
      goto LABEL_9;
    }

    if (intValue != 1)
    {
      goto LABEL_11;
    }

LABEL_8:
    v4 = @"item_extra.file_size";
LABEL_10:
    v5 = v4;
    goto LABEL_11;
  }

  switch(intValue)
  {
    case 2:
      v4 = @"1";
      break;
    case 4:
      goto LABEL_8;
    case 3:
LABEL_9:
      v4 = @"item_extra.total_time_ms";
      goto LABEL_10;
  }

LABEL_11:

  return v4;
}

- (BOOL)isLimitOrderingDescending
{
  v3 = [(ML3Entity *)self valueForProperty:@"smart_limit_order"];
  intValue = [v3 intValue];

  v5 = [(ML3Entity *)self valueForProperty:@"smart_reverse_limit_order"];
  intValue2 = [v5 intValue];
  v7 = intValue2 != 0;

  if (intValue <= 0x1D && ((1 << intValue) & 0x2C400000) != 0 || intValue == 112)
  {
    return intValue2 == 0;
  }

  return v7;
}

- (BOOL)isLimitedByCount
{
  v2 = [(ML3Entity *)self valueForProperty:@"smart_limit_kind"];
  v3 = [v2 intValue] == 2;

  return v3;
}

- (BOOL)isEvaluationOrderingDescending
{
  v2 = [(ML3Entity *)self valueForProperty:@"smart_evaluation_order"];
  intValue = [v2 intValue];

  return intValue <= 0x1D && ((1 << intValue) & 0x2C400000) != 0 || intValue == 112;
}

- (ML3Predicate)smartCriteriaPredicate
{
  importedCriteriaList = [(ML3Container *)self importedCriteriaList];
  if (importedCriteriaList)
  {
    v3 = [objc_opt_class() predicateForCriteriaList:importedCriteriaList parentMatchedAny:0];
    DisposeSearchCriteriaList();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SearchCriteriaList)importedCriteriaList
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [(ML3Entity *)self valueForProperty:@"smart_criteria"];
  v4 = v3;
  v11 = 0;
  if (v3)
  {
    v5 = MEMORY[0x2318CCB20]([v3 bytes], objc_msgSend(v3, "length"), &v11);
    if (v5)
    {
      v6 = v5;
      v7 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        persistentID = [(ML3Entity *)self persistentID];
        *buf = 134218496;
        selfCopy = self;
        v14 = 2048;
        v15 = persistentID;
        v16 = 2048;
        v17 = v6;
        _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_ERROR, "Could not parse search criteria list for playlist %p (pid = %lld): %ld", buf, 0x20u);
      }
    }
  }

  v9 = v11;

  return v9;
}

- (void)setValues:(id)values forProperties:(id)properties async:(BOOL)async withCompletionBlock:(id)block
{
  asyncCopy = async;
  valuesCopy = values;
  propertiesCopy = properties;
  blockCopy = block;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __66__ML3Container_setValues_forProperties_async_withCompletionBlock___block_invoke;
  v30[3] = &unk_278762470;
  v16 = valuesCopy;
  v31 = v16;
  v17 = WeakRetained;
  v32 = v17;
  selfCopy = self;
  v18 = dictionary;
  v34 = v18;
  v19 = indexSet;
  v35 = v19;
  [propertiesCopy enumerateObjectsUsingBlock:v30];
  if ([v18 count] || objc_msgSend(v19, "count"))
  {
    v20 = [propertiesCopy mutableCopy];
    v21 = [v16 mutableCopy];
    [v20 removeObjectsAtIndexes:v19];
    [v21 removeObjectsAtIndexes:v19];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __66__ML3Container_setValues_forProperties_async_withCompletionBlock___block_invoke_2;
    v27[3] = &unk_278765658;
    v22 = v20;
    v28 = v22;
    v23 = v21;
    v29 = v23;
    [v18 enumerateKeysAndObjectsUsingBlock:v27];
    v24 = v22;

    v25 = v23;
    propertiesCopy = v24;
    v16 = v25;
  }

  if ([propertiesCopy count])
  {
    v26.receiver = self;
    v26.super_class = ML3Container;
    [(ML3Entity *)&v26 setValues:v16 forProperties:propertiesCopy async:asyncCopy withCompletionBlock:blockCopy];
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy, 1, 0);
  }
}

void __66__ML3Container_setValues_forProperties_async_withCompletionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  if ([v13 isEqual:@"name"])
  {
    v5 = [*(a1 + 32) objectAtIndex:a3];
    v6 = [*(a1 + 40) nameOrderForString:v5];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 8));
      v9 = [WeakRetained insertStringIntoSortMapNoTransaction:v5];
    }

    else
    {
      v9 = v6;
    }

    v11 = *(a1 + 56);
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v9];
    [v11 setObject:v12 forKey:@"name_order"];
  }

  else
  {
    if (![v13 isEqual:@"container_seed.item_pid"])
    {
      goto LABEL_9;
    }

    [*(a1 + 64) addIndex:a3];
    v10 = *(a1 + 48);
    v5 = [*(a1 + 32) objectAtIndex:a3];
    [v10 _setContainerSeedItemPersistentIDValue:v5];
  }

LABEL_9:
}

void __66__ML3Container_setValues_forProperties_async_withCompletionBlock___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 40) addObject:v6];
}

- (ML3Container)initWithDictionary:(id)dictionary inLibrary:(id)library cachedNameOrders:(id)orders usingConnection:(id)connection
{
  libraryCopy = library;
  ordersCopy = orders;
  connectionCopy = connection;
  v13 = [dictionary mutableCopy];
  v14 = [v13 objectForKey:@"ROWID"];
  if (!v14)
  {
    v14 = [MEMORY[0x277CCABB0] numberWithLongLong:ML3CreateIntegerUUID()];
    [v13 setObject:v14 forKey:@"ROWID"];
  }

  unsignedLongLongValue = [v14 unsignedLongLongValue];
  v15 = [v13 objectForKey:@"container_type"];
  integerValue = [v15 integerValue];
  v50 = ordersCopy;
  if (integerValue != 3)
  {
    v7 = [v13 objectForKey:@"smart_is_genius"];
    if (![v7 integerValue])
    {
      v17 = 0;
      goto LABEL_8;
    }
  }

  v6 = [v13 objectForKey:@"is_container_type_active_target"];
  v17 = 1;
  if (![v6 integerValue])
  {
LABEL_8:
    v18 = v17;
    v19 = [v13 objectForKey:@"(container.is_container_type_active_target AND container.smart_is_genius)"];
    v17 = [v19 integerValue] != 0;

    if (!v18)
    {
      goto LABEL_10;
    }
  }

LABEL_10:
  if (integerValue != 3)
  {
  }

  v20 = [v13 objectForKey:@"container_type"];
  integerValue2 = [v20 integerValue];
  if (integerValue2 == 3 && ([v13 objectForKey:@"is_container_type_active_target"], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "integerValue")))
  {
    v22 = 1;
  }

  else
  {
    v23 = [v13 objectForKey:@"(container.is_container_type_active_target AND (container.container_type = 2))"];
    v22 = [v23 integerValue] != 0;

    if (integerValue2 != 3)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  [v13 removeObjectForKey:@"(container.is_container_type_active_target AND container.smart_is_genius)"];
  [v13 removeObjectForKey:@"(container.is_container_type_active_target AND (container.container_type = 2))"];
  if (v17)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v13 setObject:v24 forKey:@"is_container_type_active_target"];

    v25 = [MEMORY[0x277CCABB0] numberWithInt:3];
    [v13 setObject:v25 forKey:@"container_type"];

    v26 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v13 setObject:v26 forKey:@"smart_is_genius"];
  }

  if (v22)
  {
    v27 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v13 setObject:v27 forKey:@"is_container_type_active_target"];

    v28 = [MEMORY[0x277CCABB0] numberWithInt:2];
    [v13 setObject:v28 forKey:@"container_type"];
  }

  v29 = [v13 objectForKey:@"filepath"];

  if (!v29)
  {
    v30 = objc_opt_class();
    if (v17)
    {
      v31 = 3;
    }

    else
    {
      v31 = 2;
    }

    v32 = [v30 nextFilepathForPlaylistType:v31 withPersistentID:unsignedLongLongValue inLibrary:libraryCopy];
    [v13 setValue:v32 forKey:@"filepath"];
  }

  v33 = [v13 objectForKey:@"date_created"];
  if (!v33)
  {
    v34 = MEMORY[0x277CCABB0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v33 = [v34 numberWithDouble:?];
    [v13 setObject:v33 forKey:@"date_created"];
  }

  v35 = [v13 objectForKey:@"date_modified"];
  if (!v35)
  {
    v36 = MEMORY[0x277CCABB0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v35 = [v36 numberWithDouble:?];
    [v13 setObject:v35 forKey:@"date_modified"];
  }

  v37 = [v13 objectForKey:@"distinguished_kind"];
  v38 = v37;
  if (v37)
  {
    integerValue3 = [v37 integerValue];
    if (integerValue3)
    {
      v40 = [v13 objectForKey:@"is_hidden"];
      bOOLValue = [v40 BOOLValue];

      if (bOOLValue)
      {
        if ((integerValue3 > 0x20 || ((1 << integerValue3) & 0x100180000) == 0) && integerValue3 != 10000 && integerValue3 != 10010)
        {
          v42 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v13 setValue:v42 forKey:@"is_ignorable_itunes_playlist"];
        }
      }
    }
  }

  [objc_opt_class() populateSortOrdersOfPropertyValues:v13 inLibrary:libraryCopy cachedNameOrders:v50];
  v43 = [v13 objectForKey:@"orig_date_modified"];

  if (!v43)
  {
    v44 = MEMORY[0x277CCABB0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v45 = [v44 numberWithDouble:?];
    [v13 setObject:v45 forKey:@"orig_date_modified"];
  }

  v52.receiver = self;
  v52.super_class = ML3Container;
  v46 = [(ML3Entity *)&v52 initWithDictionary:v13 inLibrary:libraryCopy cachedNameOrders:v50 usingConnection:connectionCopy];

  return v46;
}

+ (BOOL)_reloadContainedMediaTypes:(BOOL)types removedMediaTypes:(id)mediaTypes addedMediaTypes:(id)addedMediaTypes notify:(BOOL)notify incrementEntityRevision:(BOOL)revision usingLibrary:(id)library connection:(id)connection forContainerPersistentID:(int64_t)self0
{
  revisionCopy = revision;
  notifyCopy = notify;
  typesCopy = types;
  mediaTypesCopy = mediaTypes;
  addedMediaTypesCopy = addedMediaTypes;
  libraryCopy = library;
  connectionCopy = connection;
  if ((typesCopy & 1) != 0 || [addedMediaTypesCopy count] || objc_msgSend(mediaTypesCopy, "count"))
  {
    v21 = [addedMediaTypesCopy count] || objc_msgSend(mediaTypesCopy, "count") != 0;
    if (v21 == typesCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Container.m" lineNumber:2219 description:{@"Only one of reloadContainedMediaTypes, and removedMediaTypes/addedMediaTypes can be used"}];
    }
  }

  if ([mediaTypesCopy count])
  {
    [ML3Container _removeMediaTypesFromContainerWithPersistentID:d mediaTypes:mediaTypesCopy connection:connectionCopy];
  }

  if ([addedMediaTypesCopy count])
  {
    [ML3Container _addMediaTypesToContainerWithPersistentID:d mediaTypes:addedMediaTypesCopy connection:connectionCopy];
  }

  if (notifyCopy)
  {
    v25 = MEMORY[0x277D85DD0];
    v26 = 3221225472;
    v27 = __157__ML3Container__reloadContainedMediaTypes_removedMediaTypes_addedMediaTypes_notify_incrementEntityRevision_usingLibrary_connection_forContainerPersistentID___block_invoke;
    v28 = &unk_2787651D0;
    dCopy = d;
    v29 = libraryCopy;
    [connectionCopy enqueueBlockForTransactionCommit:&v25];
  }

  if (revisionCopy)
  {
    v22 = [objc_opt_class() incrementRevisionWithLibrary:libraryCopy persistentID:d deletionType:0 revisionType:0 usingConnection:connectionCopy];
    if (!typesCopy)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v22 = 1;
  if (typesCopy)
  {
LABEL_19:
    [ML3Container reloadContainedMediaTypesForContainerWithPersistID:d usingConnection:connectionCopy, v25, v26, v27, v28];
  }

LABEL_20:

  return v22;
}

void __157__ML3Container__reloadContainedMediaTypes_removedMediaTypes_addedMediaTypes_notify_incrementEntityRevision_usingLibrary_connection_forContainerPersistentID___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v6 = [(ML3Entity *)[ML3Container alloc] initWithPersistentID:*(a1 + 40) inLibrary:*(a1 + 32)];
    v3 = [(ML3Entity *)v6 valueForProperty:@"is_hidden"];
    v4 = [v3 BOOLValue];

    v5 = *(a1 + 32);
    if (v4)
    {
      [v5 notifyNonContentsPropertyDidChange];
    }

    else
    {
      [v5 notifyEntitiesAddedOrRemoved];
      [*(a1 + 32) notifyContentsDidChange];
    }
  }
}

+ (void)_insertNewSmartPlaylist:(id)playlist criteriaBlob:(id)blob evaluationOrder:(unsigned int)order limited:(BOOL)limited trackOrder:(unsigned int)trackOrder distinguishedKind:(int)kind inLibrary:(id)library cachedNameOrders:(id)self0
{
  v10 = *&kind;
  v11 = *&trackOrder;
  limitedCopy = limited;
  v30[17] = *MEMORY[0x277D85DE8];
  v30[0] = playlist;
  v29[0] = @"name";
  v29[1] = @"distinguished_kind";
  v15 = MEMORY[0x277CCABB0];
  ordersCopy = orders;
  libraryCopy = library;
  blobCopy = blob;
  playlistCopy = playlist;
  v19 = [v15 numberWithUnsignedInt:v10];
  v30[1] = v19;
  v29[2] = @"date_created";
  v20 = MEMORY[0x277CCABB0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v21 = [v20 numberWithDouble:?];
  v30[2] = v21;
  v30[3] = &unk_2840C8E28;
  v29[3] = @"parent_pid";
  v29[4] = @"is_hidden";
  v30[4] = &unk_2840C8E28;
  v30[5] = &unk_2840C8E28;
  v29[5] = @"smart_is_folder";
  v29[6] = @"smart_criteria";
  v30[6] = blobCopy;
  v30[7] = &unk_2840C8DC8;
  v29[7] = @"smart_is_dynamic";
  v29[8] = @"smart_is_filtered";
  v30[8] = &unk_2840C8DC8;
  v30[9] = &unk_2840C8E28;
  v29[9] = @"smart_is_genius";
  v29[10] = @"smart_is_limited";
  v22 = [MEMORY[0x277CCABB0] numberWithBool:limitedCopy];
  v30[10] = v22;
  v29[11] = @"smart_limit_order";
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v11];
  v30[11] = v23;
  v29[12] = @"smart_evaluation_order";
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:order];
  v30[12] = v24;
  v30[13] = &unk_2840C8E40;
  v29[13] = @"smart_limit_value";
  v29[14] = @"smart_limit_kind";
  v30[14] = &unk_2840C8E58;
  v30[15] = &unk_2840C8DC8;
  v29[15] = @"is_ignored_syncing";
  v29[16] = @"contained_media_type";
  v30[16] = &unk_2840C8E28;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:17];

  v26 = [(ML3Entity *)ML3Container newWithDictionary:v25 inLibrary:libraryCopy cachedNameOrders:ordersCopy];
}

+ (id)_allStaticItemContainersInLibrary:(id)library usingConnection:(id)connection
{
  libraryCopy = library;
  v6 = MEMORY[0x277CBEB18];
  connectionCopy = connection;
  array = [v6 array];
  v9 = [connectionCopy executeQuery:@"SELECT container.container_pid FROM container JOIN container_item ON (container.container_pid = container_item.container_pid AND position = 0) WHERE distinguished_kind = 0 AND smart_criteria IS NULL AND is_hidden = 0 AND cloud_is_subscribed = 0 AND cloud_is_curator_playlist = 0"];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__ML3Container__allStaticItemContainersInLibrary_usingConnection___block_invoke;
  v15[3] = &unk_278763E40;
  v16 = libraryCopy;
  v10 = array;
  v17 = v10;
  v11 = libraryCopy;
  [v9 enumerateRowsWithBlock:v15];
  v12 = v17;
  v13 = v10;

  return v10;
}

void __66__ML3Container__allStaticItemContainersInLibrary_usingConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = +[ML3Entity newWithPersistentID:inLibrary:](ML3Container, "newWithPersistentID:inLibrary:", [a2 int64ForColumnIndex:0], *(a1 + 32));
  [*(a1 + 40) addObject:v3];
}

+ (id)currentDeviceFavoritesPlaylistInLibrary:(id)library usingConnection:(id)connection
{
  libraryCopy = library;
  v6 = [connection executeQuery:@"SELECT container_pid FROM container WHERE distinguished_kind=?" withParameters:&unk_2840C8558];
  int64ValueForFirstRowAndColumn = [v6 int64ValueForFirstRowAndColumn];
  if (int64ValueForFirstRowAndColumn)
  {
    v8 = [(ML3Entity *)ML3Container newWithPersistentID:int64ValueForFirstRowAndColumn inLibrary:libraryCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)reloadContainedMediaTypesForContainerWithPersistID:(int64_t)d usingConnection:(id)connection
{
  connectionCopy = connection;
  [ML3Container _clearContainerMediaTypeInContainerWithPersistentID:d connection:connectionCopy];
  v6 = [ML3Container _mediaTypesForTracksInContainerWithPersistentID:d connection:connectionCopy];
  [ML3Container _addMediaTypesToContainerWithPersistentID:d mediaTypes:v6 connection:connectionCopy];
}

+ (void)removeNonLibraryItemsFromContainer:(id)container usingConnection:(id)connection
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAB58];
  connectionCopy = connection;
  containerCopy = container;
  indexSet = [v5 indexSet];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(containerCopy, "persistentID")}];
  v15[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v11 = [connectionCopy executeQuery:@"SELECT position FROM container_item LEFT OUTER JOIN item USING (item_pid) WHERE NOT IFNULL(in_my_library withParameters:{0) AND container_pid = ?", v10}];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__ML3Container_removeNonLibraryItemsFromContainer_usingConnection___block_invoke;
  v13[3] = &unk_278766118;
  v14 = indexSet;
  v12 = indexSet;
  [v11 enumerateRowsWithBlock:v13];
  [containerCopy _removeTracksAtIndexes:v12 notify:1 usingConnection:connectionCopy];
}

uint64_t __67__ML3Container_removeNonLibraryItemsFromContainer_usingConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 int64ForColumnIndex:0];
  v4 = *(a1 + 32);

  return [v4 addIndex:v3];
}

+ (void)removeNonLibraryItemsFromContainersInLibrary:(id)library usingConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v7 = [self _allStaticItemContainersInLibrary:library usingConnection:connectionCopy];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [self removeNonLibraryItemsFromContainer:*(*(&v12 + 1) + 8 * v11++) usingConnection:connectionCopy];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (void)removeAnyNonLibraryItemsInPersistentIDs:(id)ds fromContainersInLibrary:(id)library usingConnection:(id)connection
{
  dsCopy = ds;
  libraryCopy = library;
  connectionCopy = connection;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v10 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v11 = [dsCopy count];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    do
    {
      if (v12 - v13 >= 0x64)
      {
        v14 = 100;
      }

      else
      {
        v14 = v12 - v13;
      }

      v15 = [dsCopy subarrayWithRange:{v13, v14, libraryCopy}];
      v13 += v14;
      v16 = objc_msgSend(v10, "statementWithPrefix:inParameterCount:", @"SELECT IFNULL(in_my_library, 0), container_pid, position FROM container_item LEFT OUTER JOIN item USING (item_pid) JOIN container USING (container_pid) WHERE distinguished_kind IN (0, 19, 20) AND smart_criteria IS NULL AND is_hidden = 0 AND cloud_is_subscribed = 0 AND cloud_is_curator_playlist = 0 AND (item.item_pid IS NULL OR container_item.item_pid"), v14;
      v17 = [v16 stringByAppendingString:@""]);

      v18 = [connectionCopy executeQuery:v17 withParameters:v15];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __96__ML3Container_removeAnyNonLibraryItemsInPersistentIDs_fromContainersInLibrary_usingConnection___block_invoke;
      v25[3] = &unk_278766118;
      v26 = dictionary;
      [v18 enumerateRowsWithBlock:v25];
    }

    while (v13 < v12);
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __96__ML3Container_removeAnyNonLibraryItemsInPersistentIDs_fromContainersInLibrary_usingConnection___block_invoke_2;
  v22[3] = &unk_2787627A0;
  v23 = libraryCopy;
  v24 = connectionCopy;
  v19 = connectionCopy;
  v20 = libraryCopy;
  [dictionary enumerateKeysAndObjectsUsingBlock:v22];
}

uint64_t __96__ML3Container_removeAnyNonLibraryItemsInPersistentIDs_fromContainersInLibrary_usingConnection___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  if (![v8 intForColumnIndex:0])
  {
    v3 = [v8 numberForColumnIndex:1];
    v4 = [v8 int64ForColumnIndex:2];
    v5 = [*(a1 + 32) objectForKey:v3];
    if (v5)
    {
      v6 = v5;
      [v5 addIndex:v4];
    }

    else
    {
      v6 = [MEMORY[0x277CCAB58] indexSetWithIndex:v4];
      [*(a1 + 32) setObject:v6 forKey:v3];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __96__ML3Container_removeAnyNonLibraryItemsInPersistentIDs_fromContainersInLibrary_usingConnection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = +[ML3Entity newWithPersistentID:inLibrary:](ML3Container, "newWithPersistentID:inLibrary:", [a2 longLongValue], *(a1 + 32));
  [v6 _removeTracksAtIndexes:v5 notify:1 usingConnection:*(a1 + 40)];
}

+ (void)populateMediaTypesOfStaticContainersInLibrary:(id)library
{
  libraryCopy = library;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__ML3Container_populateMediaTypesOfStaticContainersInLibrary___block_invoke;
  v7[3] = &unk_278764670;
  v8 = libraryCopy;
  v9 = v4;
  v5 = v4;
  v6 = libraryCopy;
  [v6 databaseConnectionAllowingWrites:0 withBlock:v7];
}

void __62__ML3Container_populateMediaTypesOfStaticContainersInLibrary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executeQuery:@"SELECT ROWID FROM container WHERE smart_is_dynamic = 0 AND is_hidden = 0"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__ML3Container_populateMediaTypesOfStaticContainersInLibrary___block_invoke_2;
  v9[3] = &unk_278763E40;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  [v4 enumerateRowsWithBlock:v9];
  v5 = *(a1 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__ML3Container_populateMediaTypesOfStaticContainersInLibrary___block_invoke_3;
  v7[3] = &unk_278762688;
  v8 = v3;
  v6 = v3;
  [v5 enumerateObjectsUsingBlock:v7];
}

void __62__ML3Container_populateMediaTypesOfStaticContainersInLibrary___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = +[ML3Entity newWithPersistentID:inLibrary:](ML3Container, "newWithPersistentID:inLibrary:", [a2 int64ForColumnIndex:0], *(a1 + 32));
  [*(a1 + 40) addObject:v3];
}

uint64_t __62__ML3Container_populateMediaTypesOfStaticContainersInLibrary___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 persistentID];
  v4 = *(a1 + 32);

  return [ML3Container reloadContainedMediaTypesForContainerWithPersistID:v3 usingConnection:v4];
}

+ (void)_removeMediaTypesFromContainerWithPersistentID:(int64_t)d mediaTypes:(id)types connection:(id)connection
{
  typesCopy = types;
  connectionCopy = connection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__ML3Container__removeMediaTypesFromContainerWithPersistentID_mediaTypes_connection___block_invoke;
  v11[3] = &unk_278762660;
  v12 = typesCopy;
  v13 = connectionCopy;
  dCopy = d;
  v9 = connectionCopy;
  v10 = typesCopy;
  [ML3Container _updateContainedMediaTypeInContainerWithPersistentID:d connection:v9 itemUpdateBlock:v11];
}

uint64_t __85__ML3Container__removeMediaTypesFromContainerWithPersistentID_mediaTypes_connection___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __85__ML3Container__removeMediaTypesFromContainerWithPersistentID_mediaTypes_connection___block_invoke_2;
  v7[3] = &unk_278762610;
  v9 = &v11;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = v3;
  v10 = v4;
  [v2 enumerateMediaTypesWithBlock:v7];
  v5 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __85__ML3Container__removeMediaTypesFromContainerWithPersistentID_mediaTypes_connection___block_invoke_2(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v7 = a1[4];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{a1[6], v8}];
  v12[1] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v12[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  *(*(a1[5] + 8) + 24) = [v7 executeUpdate:@"UPDATE container_item_media_type SET count = count - ? WHERE container_pid = ? AND media_type = ?" withParameters:v11 error:0];

  if ((*(*(a1[5] + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

+ (void)_addMediaTypesToContainerWithPersistentID:(int64_t)d mediaTypes:(id)types connection:(id)connection
{
  typesCopy = types;
  connectionCopy = connection;
  if ([typesCopy count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __80__ML3Container__addMediaTypesToContainerWithPersistentID_mediaTypes_connection___block_invoke;
    v10[3] = &unk_278762660;
    v11 = connectionCopy;
    v12 = typesCopy;
    dCopy = d;
    [self _updateContainedMediaTypeInContainerWithPersistentID:d connection:v11 itemUpdateBlock:v10];
  }
}

uint64_t __80__ML3Container__addMediaTypesToContainerWithPersistentID_mediaTypes_connection___block_invoke(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__ML3Container__addMediaTypesToContainerWithPersistentID_mediaTypes_connection___block_invoke_2;
  v7[3] = &unk_278762638;
  v2 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = &v12;
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v9 = v3;
  v11 = v4;
  [v2 performTransactionWithBlock:v7];
  v5 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v5;
}

uint64_t __80__ML3Container__addMediaTypesToContainerWithPersistentID_mediaTypes_connection___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __80__ML3Container__addMediaTypesToContainerWithPersistentID_mediaTypes_connection___block_invoke_3;
  v7[3] = &unk_278762610;
  v6 = *(a1 + 40);
  v3 = v6;
  v8 = v6;
  v9 = *(a1 + 56);
  [v2 enumerateMediaTypesWithBlock:v7];
  v4 = *(*(*(a1 + 48) + 8) + 24);

  return v4;
}

void __80__ML3Container__addMediaTypesToContainerWithPersistentID_mediaTypes_connection___block_invoke_3(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v8 = a1[4];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:a1[6]];
  v18[0] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  *(*(a1[5] + 8) + 24) = [v8 executeUpdate:@"INSERT OR IGNORE INTO container_item_media_type (container_pid withParameters:media_type) VALUES(? error:{?)", v11, 0}];

  if (*(*(a1[5] + 8) + 24) != 1 || (v12 = a1[4], [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCABB0], "numberWithLongLong:", a1[6], v13), v14 = objc_claimAutoreleasedReturnValue(), v17[1] = v14, objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", a2), v15 = objc_claimAutoreleasedReturnValue(), v17[2] = v15, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v17, 3), v16 = objc_claimAutoreleasedReturnValue(), *(*(a1[5] + 8) + 24) = objc_msgSend(v12, "executeUpdate:withParameters:error:", @"UPDATE container_item_media_type SET count = count + ? WHERE container_pid = ? AND media_type = ?", v16, 0), v16, v15, v14, v13, (*(*(a1[5] + 8) + 24) & 1) == 0))
  {
    *a4 = 1;
  }
}

+ (void)_clearContainerMediaTypeInContainerWithPersistentID:(int64_t)d connection:(id)connection
{
  connectionCopy = connection;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __79__ML3Container__clearContainerMediaTypeInContainerWithPersistentID_connection___block_invoke;
  v8[3] = &unk_2787625E8;
  v9 = connectionCopy;
  dCopy = d;
  v7 = connectionCopy;
  [self _updateContainedMediaTypeInContainerWithPersistentID:d connection:v7 itemUpdateBlock:v8];
}

uint64_t __79__ML3Container__clearContainerMediaTypeInContainerWithPersistentID_connection___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 40)];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v4 = [v1 executeUpdate:@"DELETE FROM container_item_media_type WHERE container_pid = ?" withParameters:v3 error:0];

  return v4;
}

+ (id)_mediaTypesForTracksInContainerWithPersistentID:(int64_t)d connection:(id)connection
{
  v14[1] = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = objc_alloc_init(MLMediaTypeCountedSet);
  v7 = [MEMORY[0x277CCABB0] numberWithLongLong:d];
  v14[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v9 = [connectionCopy executeQuery:@"SELECT media_type withParameters:{COUNT(media_type) FROM item JOIN container_item USING (item_pid) WHERE container_pid = ? GROUP BY media_type", v8}];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __75__ML3Container__mediaTypesForTracksInContainerWithPersistentID_connection___block_invoke;
  v12[3] = &unk_278766118;
  v10 = v6;
  v13 = v10;
  [v9 enumerateRowsWithBlock:v12];

  return v10;
}

uint64_t __75__ML3Container__mediaTypesForTracksInContainerWithPersistentID_connection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 numberForColumnIndex:0];
  v5 = [v4 integerValue];

  v6 = [v3 numberForColumnIndex:1];

  v7 = [v6 integerValue];
  v8 = *(a1 + 32);

  return [v8 addMediaType:v5 count:v7];
}

+ (id)_mediaTypesForTracksWithPersistentIDs:(id)ds usingConnection:(id)connection
{
  dsCopy = ds;
  connectionCopy = connection;
  v7 = objc_alloc_init(MLMediaTypeCountedSet);
  v8 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v9 = [dsCopy count];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    do
    {
      if (v10 - v12 >= 0x64)
      {
        v13 = 100;
      }

      else
      {
        v13 = v10 - v12;
      }

      v14 = [dsCopy subarrayWithRange:{v12, v13}];
      v12 += v13;
      v15 = [v8 statementWithPrefix:@"SELECT media_type inParameterCount:{COUNT(media_type) FROM item WHERE item_pid", v13}];

      v11 = [v15 stringByAppendingString:@" GROUP BY media_type"];

      v16 = [connectionCopy executeQuery:v11 withParameters:v14];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __70__ML3Container__mediaTypesForTracksWithPersistentIDs_usingConnection___block_invoke;
      v18[3] = &unk_278766118;
      v19 = v7;
      [v16 enumerateRowsWithBlock:v18];
    }

    while (v12 < v10);
  }

  return v7;
}

void __70__ML3Container__mediaTypesForTracksWithPersistentIDs_usingConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = [v3 numberForColumnIndex:0];
  v4 = [v6 integerValue];
  v5 = [v3 numberForColumnIndex:1];

  [v2 addMediaType:v4 count:{objc_msgSend(v5, "integerValue")}];
}

+ (void)_updateContainedMediaTypeInContainerWithPersistentID:(int64_t)d connection:(id)connection itemUpdateBlock:(id)block
{
  connectionCopy = connection;
  if ((*(block + 2))(block))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __96__ML3Container__updateContainedMediaTypeInContainerWithPersistentID_connection_itemUpdateBlock___block_invoke;
    v8[3] = &unk_2787625E8;
    v9 = connectionCopy;
    dCopy = d;
    [v9 performTransactionWithBlock:v8];
  }
}

uint64_t __96__ML3Container__updateContainedMediaTypeInContainerWithPersistentID_connection_itemUpdateBlock___block_invoke(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 40)];
  v18[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  v5 = [v2 executeQuery:@"SELECT media_type FROM container_item_media_type WHERE container_pid = ? AND count > 0" withParameters:v4];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__ML3Container__updateContainedMediaTypeInContainerWithPersistentID_connection_itemUpdateBlock___block_invoke_2;
  v12[3] = &unk_2787653C8;
  v12[4] = &v13;
  [v5 enumerateRowsWithBlock:v12];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v14 + 6)];
  v17[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a1 + 40)];
  v17[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v10 = [v6 executeUpdate:@"UPDATE container SET contained_media_type = ? WHERE container_pid = ?" withParameters:v9 error:0];

  _Block_object_dispose(&v13, 8);
  return v10;
}

void __96__ML3Container__updateContainedMediaTypeInContainerWithPersistentID_connection_itemUpdateBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 numberForColumnIndex:0];
  v4 = [v3 integerValue];

  if (v4 != 0xFFFFFF)
  {
    *(*(*(a1 + 32) + 8) + 24) |= v4;
  }
}

+ (BOOL)deleteFromLibrary:(id)library deletionType:(int)type persistentIDs:(const int64_t *)ds count:(unint64_t)count preserveUndeletableEntities:(BOOL)entities
{
  libraryCopy = library;
  v13 = libraryCopy;
  v14 = 1;
  if (count)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 1;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __95__ML3Container_deleteFromLibrary_deletionType_persistentIDs_count_preserveUndeletableEntities___block_invoke;
    v16[3] = &unk_2787625C0;
    entitiesCopy = entities;
    countCopy = count;
    dsCopy = ds;
    selfCopy = self;
    typeCopy = type;
    v17 = libraryCopy;
    v18 = &v24;
    [v17 performDatabaseTransactionWithBlock:v16];
    v14 = *(v25 + 24);

    _Block_object_dispose(&v24, 8);
  }

  return v14 & 1;
}

uint64_t __95__ML3Container_deleteFromLibrary_deletionType_persistentIDs_count_preserveUndeletableEntities___block_invoke(uint64_t a1, void *a2)
{
  v140 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 76) == 1)
  {
    v77 = malloc_type_malloc(8 * *(a1 + 48), 0x100004000313F17uLL);
  }

  else
  {
    v77 = 0;
  }

  v74 = [MEMORY[0x277CBEB58] set];
  if (*(a1 + 76) == 1)
  {
    v75 = [ML3Container userUndeleteablePlaylistPersistentIDSInLibrary:*(a1 + 32)];
  }

  else
  {
    v75 = 0;
  }

  v76 = [MEMORY[0x277CBEB58] setWithCapacity:*(a1 + 48)];
  if (*(a1 + 48))
  {
    v79 = 0;
    v4 = 0;
    do
    {
      v5 = [MEMORY[0x277CCABB0] numberWithLongLong:*(*(a1 + 56) + 8 * v4)];
      if (*(a1 + 76) == 1)
      {
        if ([v75 containsObject:v5])
        {
          v6 = v74;
        }

        else
        {
          v77[v79] = *(*(a1 + 56) + 8 * v4);
          v6 = v76;
          ++v79;
        }
      }

      else
      {
        v6 = v76;
      }

      [v6 addObject:v5];

      ++v4;
    }

    while (v4 < *(a1 + 48));
  }

  else
  {
    v79 = 0;
  }

  v72 = [ML3ContainmentPredicate predicateWithProperty:@"parent_pid" values:v76];
  v73 = [(ML3Entity *)ML3Container queryWithLibrary:*(a1 + 32) predicate:v72 orderingTerms:MEMORY[0x277CBEBF8]];
  v7 = [v73 countOfEntities];
  if (!v7)
  {
    goto LABEL_34;
  }

  v8 = v7;
  *v136 = 0;
  *&v136[8] = v136;
  *&v136[16] = 0x3032000000;
  v137 = __Block_byref_object_copy__8381;
  v138 = __Block_byref_object_dispose__8382;
  v139 = [MEMORY[0x277CBEB58] set];
  v117 = 0;
  v118 = &v117;
  v119 = 0x2020000000;
  v120 = 0;
  v113 = 0;
  v114 = &v113;
  v115 = 0x2020000000;
  v116 = 0;
  v116 = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3221225472;
  v107[2] = __95__ML3Container_deleteFromLibrary_deletionType_persistentIDs_count_preserveUndeletableEntities___block_invoke_2;
  v107[3] = &unk_278762598;
  v112 = *(a1 + 76);
  v108 = v75;
  v109 = v136;
  v110 = &v113;
  v111 = &v117;
  [v73 enumeratePersistentIDsUsingBlock:v107];
  [*(a1 + 64) deleteFromLibrary:*(a1 + 32) deletionType:*(a1 + 72) persistentIDs:v114[3] count:v118[3] preserveUndeletableEntities:*(a1 + 76)];
  free(v114[3]);
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = *(*&v136[8] + 40);
  v9 = 0;
  v10 = [obj countByEnumeratingWithState:&v103 objects:v135 count:16];
  if (!v10)
  {
    goto LABEL_33;
  }

  v11 = *v104;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v104 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v103 + 1) + 8 * i);
      v134 = v13;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v134 count:1];
      v102 = v9;
      v15 = [v3 executeUpdate:@"UPDATE container SET parent_pid=0 WHERE container_pid=?" withParameters:v14 error:&v102];
      v16 = v102;

      *(*(*(a1 + 40) + 8) + 24) = v15;
      v9 = v16;
      if (v15)
      {
        v17 = [objc_opt_class() incrementRevisionWithLibrary:*(a1 + 32) persistentID:objc_msgSend(v13 deletionType:"longLongValue") revisionType:0 usingConnection:{0, v3}];
        *(*(*(a1 + 40) + 8) + 24) = v17;
        if (v17)
        {
          continue;
        }

        v18 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = [v13 longLongValue];
          *buf = 134218242;
          v131 = v19;
          v132 = 2114;
          v133 = v16;
          v20 = v18;
          v21 = "Failed to increment entity revision for container_pid=%lld, error=%{public}@";
LABEL_29:
          _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
        }
      }

      else
      {
        v18 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v22 = [v13 longLongValue];
          *buf = 134218242;
          v131 = v22;
          v132 = 2114;
          v133 = v16;
          v20 = v18;
          v21 = "Failed to set parent persistent id for container_pid=%lld, error=%{public}@";
          goto LABEL_29;
        }
      }
    }

    v10 = [obj countByEnumeratingWithState:&v103 objects:v135 count:16];
  }

  while (v10);
LABEL_33:

  _Block_object_dispose(&v113, 8);
  _Block_object_dispose(&v117, 8);
  _Block_object_dispose(v136, 8);

LABEL_34:
  v23 = *(a1 + 32);
  v24 = *(a1 + 72);
  if (*(a1 + 76) == 1)
  {
    v101.receiver = *(a1 + 64);
    v101.super_class = &OBJC_METACLASS___ML3Container;
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSendSuper2(&v101, sel_deleteFromLibrary_deletionType_persistentIDs_count_, v23, v24, v77, v79);
    free(v77);
  }

  else
  {
    v26 = *(a1 + 48);
    v25 = *(a1 + 56);
    v100.receiver = *(a1 + 64);
    v100.super_class = &OBJC_METACLASS___ML3Container;
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSendSuper2(&v100, sel_deleteFromLibrary_deletionType_persistentIDs_count_, v23, v24, v25, v26);
  }

  if (*(*(*(a1 + 40) + 8) + 24) != 1)
  {
    goto LABEL_91;
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v78 = v76;
  v81 = [v78 countByEnumeratingWithState:&v96 objects:v129 count:16];
  if (v81)
  {
    v80 = *v97;
    do
    {
      for (j = 0; j != v81; ++j)
      {
        if (*v97 != v80)
        {
          objc_enumerationMutation(v78);
        }

        v28 = *(*(&v96 + 1) + 8 * j);
        v128 = v28;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v128 count:1];
        v95 = 0;
        v30 = [v3 executeUpdate:@"DELETE FROM container_item_person WHERE container_item_pid in (SELECT container_item_pid from container_item where container_pid = ?)" withParameters:v29 error:&v95];
        v31 = v95;
        *(*(*(a1 + 40) + 8) + 24) = v30;

        if ((v30 & 1) == 0)
        {
          v32 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *v136 = 138543362;
            *&v136[4] = v31;
            _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_ERROR, "Failed to delete from container_item_persons with error: %{public}@", v136, 0xCu);
          }
        }

        v127 = v28;
        v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v127 count:1];
        v94 = v31;
        v34 = [v3 executeUpdate:@"DELETE FROM container_item_reaction WHERE container_item_pid IN (SELECT container_item_pid FROM container_item WHERE container_pid = ?)" withParameters:v33 error:&v94];
        v35 = v94;

        *(*(*(a1 + 40) + 8) + 24) = v34;
        if ((v34 & 1) == 0)
        {
          v36 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *v136 = 138543362;
            *&v136[4] = v35;
            _os_log_impl(&dword_22D2FA000, v36, OS_LOG_TYPE_ERROR, "Failed to delete from container_item with error: %{public}@", v136, 0xCu);
          }
        }

        v126 = v28;
        v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v126 count:1];
        v93 = v35;
        v38 = [v3 executeUpdate:@"DELETE FROM container_item WHERE container_pid = ?" withParameters:v37 error:&v93];
        v39 = v93;

        *(*(*(a1 + 40) + 8) + 24) = v38;
        if ((v38 & 1) == 0)
        {
          v40 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *v136 = 138543362;
            *&v136[4] = v39;
            _os_log_impl(&dword_22D2FA000, v40, OS_LOG_TYPE_ERROR, "Failed to delete from container_item with error: %{public}@", v136, 0xCu);
          }
        }

        v125 = v28;
        v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
        v92 = v39;
        v42 = [v3 executeUpdate:@"DELETE FROM container_author WHERE container_pid = ?" withParameters:v41 error:&v92];
        v43 = v92;

        *(*(*(a1 + 40) + 8) + 24) = v42;
        if ((v42 & 1) == 0)
        {
          v44 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *v136 = 138543362;
            *&v136[4] = v43;
            _os_log_impl(&dword_22D2FA000, v44, OS_LOG_TYPE_ERROR, "Failed to delete from container_author with error: %{public}@", v136, 0xCu);
          }
        }

        v124[0] = v28;
        v124[1] = &unk_2840C8DE0;
        v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v124 count:2];
        v91 = v43;
        v46 = [v3 executeUpdate:@"DELETE FROM artwork_token WHERE entity_pid = ? AND entity_type = ?" withParameters:v45 error:&v91];
        v47 = v91;

        *(*(*(a1 + 40) + 8) + 24) = v46;
        if ((v46 & 1) == 0)
        {
          v48 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *v136 = 138543362;
            *&v136[4] = v47;
            _os_log_impl(&dword_22D2FA000, v48, OS_LOG_TYPE_ERROR, "Failed to delete from artwork_token with error: %{public}@", v136, 0xCu);
          }
        }

        v90 = v47;
        v49 = [v3 executeUpdate:@"DELETE FROM best_artwork_token WHERE entity_pid = ? AND entity_type = ?" withParameters:v45 error:&v90];
        v50 = v90;

        *(*(*(a1 + 40) + 8) + 24) = v49;
        if ((v49 & 1) == 0)
        {
          v51 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *v136 = 138543362;
            *&v136[4] = v50;
            _os_log_impl(&dword_22D2FA000, v51, OS_LOG_TYPE_ERROR, "Failed to delete from best_artwork_token with error: %{public}@", v136, 0xCu);
          }
        }

        v123[0] = v28;
        v123[1] = &unk_2840C8DE0;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v123 count:2];
        v89 = v50;
        v53 = [v3 executeUpdate:@"DELETE FROM library_pins WHERE entity_pid=? AND entity_type=?" withParameters:v52 error:&v89];
        v54 = v89;

        *(*(*(a1 + 40) + 8) + 24) = v53;
        if ((v53 & 1) == 0)
        {
          v55 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *v136 = 138543362;
            *&v136[4] = v54;
            _os_log_impl(&dword_22D2FA000, v55, OS_LOG_TYPE_ERROR, "Failed to delete from library_pins with error: %{public}@", v136, 0xCu);
          }
        }
      }

      v81 = [v78 countByEnumeratingWithState:&v96 objects:v129 count:16];
    }

    while (v81);
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
LABEL_91:
    v70 = 0;
    goto LABEL_92;
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obja = v74;
  v56 = [obja countByEnumeratingWithState:&v85 objects:v122 count:16];
  if (!v56)
  {
    goto LABEL_90;
  }

  v57 = 0;
  v58 = *v86;
  while (2)
  {
    v59 = 0;
    while (2)
    {
      if (*v86 != v58)
      {
        objc_enumerationMutation(obja);
      }

      v60 = *(*(&v85 + 1) + 8 * v59);
      v121 = v60;
      v61 = [MEMORY[0x277CBEA60] arrayWithObjects:&v121 count:1];
      v84 = v57;
      v62 = [v3 executeUpdate:@"UPDATE container SET parent_pid=0 WHERE container_pid=?" withParameters:v61 error:&v84];
      v63 = v84;

      *(*(*(a1 + 40) + 8) + 24) = v62;
      v57 = v63;
      if (v62)
      {
        v64 = [objc_opt_class() incrementRevisionWithLibrary:*(a1 + 32) persistentID:objc_msgSend(v60 deletionType:"longLongValue") revisionType:0 usingConnection:{0, v3}];
        *(*(*(a1 + 40) + 8) + 24) = v64;
        if ((v64 & 1) == 0)
        {
          v65 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
          {
            v66 = [v60 longLongValue];
            *v136 = 134218242;
            *&v136[4] = v66;
            *&v136[12] = 2114;
            *&v136[14] = v63;
            v67 = v65;
            v68 = "Failed to increment entity revision for container_pid=%lld, error=%{public}@";
            goto LABEL_85;
          }

          goto LABEL_86;
        }
      }

      else
      {
        v65 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          v69 = [v60 longLongValue];
          *v136 = 134218242;
          *&v136[4] = v69;
          *&v136[12] = 2114;
          *&v136[14] = v63;
          v67 = v65;
          v68 = "Failed to set parent persistent id for container_pid=%lld, error=%{public}@";
LABEL_85:
          _os_log_impl(&dword_22D2FA000, v67, OS_LOG_TYPE_ERROR, v68, v136, 0x16u);
        }

LABEL_86:
      }

      if (v56 != ++v59)
      {
        continue;
      }

      break;
    }

    v56 = [obja countByEnumeratingWithState:&v85 objects:v122 count:16];
    if (v56)
    {
      continue;
    }

    break;
  }

LABEL_90:
  v70 = *(*(*(a1 + 40) + 8) + 24);
LABEL_92:

  return v70 & 1;
}

uint64_t __95__ML3Container_deleteFromLibrary_deletionType_persistentIDs_count_preserveUndeletableEntities___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  v5 = v4;
  if (*(a1 + 64) == 1)
  {
    v13 = v4;
    v4 = [*(a1 + 32) containsObject:v4];
    if (v4)
    {
      v4 = [*(*(*(a1 + 40) + 8) + 40) addObject:v13];
    }

    else
    {
      v9 = *(*(*(a1 + 48) + 8) + 24);
      v10 = *(*(a1 + 56) + 8);
      v11 = *(v10 + 24);
      *(v10 + 24) = v11 + 1;
      *(v9 + 8 * v11) = a2;
    }

    v5 = v13;
  }

  else
  {
    v6 = *(*(*(a1 + 48) + 8) + 24);
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 24);
    *(v7 + 24) = v8 + 1;
    *(v6 + 8 * v8) = a2;
  }

  return MEMORY[0x2821F96F8](v4, v5);
}

+ (id)sagaIDTreeForPlaylistWithIdentifier:(int64_t)identifier inLibrary:(id)library persistentIDsToIgnore:(id)ignore
{
  v31[1] = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  ignoreCopy = ignore;
  array = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277CBEB98];
  v11 = [MEMORY[0x277CCABB0] numberWithLongLong:identifier];
  v12 = [v10 setWithObject:v11];

  v13 = [ML3ContainmentPredicate predicateWithProperty:@"parent_pid" values:v12];
  v14 = [(ML3Entity *)ML3Container queryWithLibrary:libraryCopy predicate:v13 orderingTerms:MEMORY[0x277CBEBF8]];
  if ([v14 countOfEntities])
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __84__ML3Container_sagaIDTreeForPlaylistWithIdentifier_inLibrary_persistentIDsToIgnore___block_invoke;
    v29[3] = &unk_278765BD8;
    v30 = array2;
    v16 = array2;
    [v14 enumeratePersistentIDsUsingBlock:v29];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __84__ML3Container_sagaIDTreeForPlaylistWithIdentifier_inLibrary_persistentIDsToIgnore___block_invoke_2;
    v25[3] = &unk_278762570;
    v26 = libraryCopy;
    v27 = ignoreCopy;
    v28 = array;
    [v16 enumerateObjectsUsingBlock:v25];
  }

  v17 = [MEMORY[0x277CCABB0] numberWithLongLong:identifier];
  v18 = [ignoreCopy containsObject:v17];

  if ((v18 & 1) == 0)
  {
    v19 = [ML3ContainmentPredicate predicateWithProperty:@"container_pid" values:v12];
    v20 = [(ML3Entity *)ML3Container queryWithLibrary:libraryCopy predicate:v19];
    v31[0] = @"store_cloud_id";
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __84__ML3Container_sagaIDTreeForPlaylistWithIdentifier_inLibrary_persistentIDsToIgnore___block_invoke_3;
    v23[3] = &unk_278762DC0;
    v24 = array;
    [v20 enumeratePersistentIDsAndProperties:v21 usingBlock:v23];
  }

  return array;
}

void __84__ML3Container_sagaIDTreeForPlaylistWithIdentifier_inLibrary_persistentIDsToIgnore___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 addObject:v3];
}

void __84__ML3Container_sagaIDTreeForPlaylistWithIdentifier_inLibrary_persistentIDsToIgnore___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = +[ML3Container sagaIDTreeForPlaylistWithIdentifier:inLibrary:persistentIDsToIgnore:](ML3Container, "sagaIDTreeForPlaylistWithIdentifier:inLibrary:persistentIDsToIgnore:", [a2 longLongValue], *(a1 + 32), *(a1 + 40));
  [*(a1 + 48) addObjectsFromArray:v3];
}

uint64_t __84__ML3Container_sagaIDTreeForPlaylistWithIdentifier_inLibrary_persistentIDsToIgnore___block_invoke_3(uint64_t result, uint64_t a2, void *a3)
{
  if (*a3)
  {
    return [*(result + 32) addObject:?];
  }

  return result;
}

+ (id)sagaIDTreeForPlaylistWithIdentifier:(int64_t)identifier inLibrary:(id)library includeUndeletablePlaylists:(BOOL)playlists
{
  libraryCopy = library;
  if (playlists)
  {
    v8 = 0;
  }

  else
  {
    v8 = [ML3Container userUndeleteablePlaylistPersistentIDSInLibrary:libraryCopy];
  }

  v9 = [ML3Container sagaIDTreeForPlaylistWithIdentifier:identifier inLibrary:libraryCopy persistentIDsToIgnore:v8];

  return v9;
}

+ (id)userUndeleteablePlaylistPersistentIDSInLibrary:(id)library
{
  libraryCopy = library;
  v4 = [MEMORY[0x277CBEB58] set];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x3032000000;
  v14[3] = __Block_byref_object_copy__8381;
  v14[4] = __Block_byref_object_dispose__8382;
  v15 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__ML3Container_userUndeleteablePlaylistPersistentIDSInLibrary___block_invoke;
  v10[3] = &unk_278763398;
  v13 = v14;
  v5 = libraryCopy;
  v11 = v5;
  v6 = v4;
  v12 = v6;
  [v5 databaseConnectionAllowingWrites:0 withBlock:v10];
  v7 = v12;
  v8 = v6;

  _Block_object_dispose(v14, 8);

  return v8;
}

void __63__ML3Container_userUndeleteablePlaylistPersistentIDSInLibrary___block_invoke(void *a1, uint64_t a2)
{
  v3 = [ML3Container currentDeviceFavoritesPlaylistInLibrary:a1[4] usingConnection:a2];
  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1[6] + 8) + 40);
  if (v6)
  {
    v7 = a1[5];
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v6, "persistentID")}];
    [v7 addObject:v8];
  }
}

+ (void)deleteAutoCreatedBuiltInSmartPlaylistsPIDs:(id)ds inLibrary:(id)library
{
  dsCopy = ds;
  libraryCopy = library;
  if ([dsCopy count])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__ML3Container_deleteAutoCreatedBuiltInSmartPlaylistsPIDs_inLibrary___block_invoke;
    v7[3] = &unk_278764670;
    v8 = dsCopy;
    v9 = libraryCopy;
    [v9 databaseConnectionAllowingWrites:1 withBlock:v7];
  }
}

void __69__ML3Container_deleteAutoCreatedBuiltInSmartPlaylistsPIDs_inLibrary___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__ML3Container_deleteAutoCreatedBuiltInSmartPlaylistsPIDs_inLibrary___block_invoke_2;
  v4[3] = &unk_278762548;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [a2 performTransactionWithBlock:v4];
}

uint64_t __69__ML3Container_deleteAutoCreatedBuiltInSmartPlaylistsPIDs_inLibrary___block_invoke_2(uint64_t a1)
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__ML3Container_deleteAutoCreatedBuiltInSmartPlaylistsPIDs_inLibrary___block_invoke_3;
  v6[3] = &unk_278762520;
  v2 = *(a1 + 32);
  v7 = *(a1 + 40);
  [v2 enumerateObjectsUsingBlock:v6];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v3 setValue:v4 forDatabaseProperty:@"autoCreatedSmartPlaylistsDeleted"];

  return 1;
}

void __69__ML3Container_deleteAutoCreatedBuiltInSmartPlaylistsPIDs_inLibrary___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3Container alloc];
  v5 = [v3 longLongValue];

  v6 = [(ML3Entity *)v4 initWithPersistentID:v5 inLibrary:*(a1 + 32)];
  [(ML3Entity *)v6 deleteFromLibrary];
}

+ (id)autoCreatedBuiltInSmartPlaylistsPIDs:(id)ds
{
  dsCopy = ds;
  v4 = [dsCopy valueForDatabaseProperty:@"createdBuiltInSmartPlaylists"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    array = [MEMORY[0x277CBEB18] array];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:5];
    for (i = 0; i != 120; i += 24)
    {
      v9 = [ML3ComparisonPredicate predicateWithProperty:@"distinguished_kind" equalToInteger:*(&builtInCriteriaInfo + i + 20)];
      [v7 addObject:v9];
    }

    v10 = [(ML3CompoundPredicate *)ML3AnyCompoundPredicate predicateMatchingPredicates:v7];
    v11 = [(ML3Entity *)ML3Container queryWithLibrary:dsCopy predicate:v10];
    v12 = [dsCopy valueForDatabaseProperty:@"autoCreatedSmartPlaylistsDeleted"];
    bOOLValue2 = [v12 BOOLValue];

    if ((bOOLValue2 & 1) == 0)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __53__ML3Container_autoCreatedBuiltInSmartPlaylistsPIDs___block_invoke;
      v15[3] = &unk_278765BD8;
      v16 = array;
      [v11 enumeratePersistentIDsUsingBlock:v15];
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

void __53__ML3Container_autoCreatedBuiltInSmartPlaylistsPIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 addObject:v3];
}

+ (BOOL)updateBuiltInSmartPlaylistNamesForCurrentLanguageInLibrary:(id)library
{
  libraryCopy = library;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = &builtInCriteriaInfo;
  v5 = 5;
  do
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:*v4 value:&stru_28408B690 table:@"MLLocalizable"];

    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v4 + 5)];
    [dictionary setObject:v7 forKey:v8];

    v4 += 3;
    --v5;
  }

  while (v5);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__ML3Container_updateBuiltInSmartPlaylistNamesForCurrentLanguageInLibrary___block_invoke;
  v13[3] = &unk_278764E80;
  v14 = dictionary;
  v15 = libraryCopy;
  v9 = libraryCopy;
  v10 = dictionary;
  [v9 performDatabaseTransactionWithBlock:v13];

  return 1;
}

uint64_t __75__ML3Container_updateBuiltInSmartPlaylistNamesForCurrentLanguageInLibrary___block_invoke(uint64_t a1, void *a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) allKeys];
  v15 = [ML3ContainsPredicate predicateWithProperty:@"distinguished_kind" values:v4];

  v5 = [ML3ComparisonPredicate predicateWithProperty:@"is_src_remote" value:&unk_2840C8DC8 comparison:2];
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = *(a1 + 40);
  v22[0] = v15;
  v22[1] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v9 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v8];
  v10 = [(ML3Entity *)ML3Container queryWithLibrary:v7 predicate:v9];

  v21 = @"distinguished_kind";
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__ML3Container_updateBuiltInSmartPlaylistNamesForCurrentLanguageInLibrary___block_invoke_495;
  v18[3] = &unk_2787624D0;
  v19 = *(a1 + 32);
  v20 = v6;
  v12 = v6;
  [v10 enumeratePersistentIDsAndProperties:v11 ordered:0 usingBlock:v18];

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__ML3Container_updateBuiltInSmartPlaylistNamesForCurrentLanguageInLibrary___block_invoke_2;
  v16[3] = &unk_2787624F8;
  v17 = v3;
  v13 = v3;
  [v12 enumerateKeysAndObjectsUsingBlock:v16];

  return 1;
}

void __75__ML3Container_updateBuiltInSmartPlaylistNamesForCurrentLanguageInLibrary___block_invoke_495(uint64_t a1, uint64_t a2, id *a3)
{
  v8 = *a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (v5)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    [v6 setObject:v5 forKey:v7];
  }
}

void __75__ML3Container_updateBuiltInSmartPlaylistNamesForCurrentLanguageInLibrary___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v17[0] = v6;
  v17[1] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  v12 = 0;
  v9 = [v7 executeUpdate:@"UPDATE container SET name = ? WHERE container_pid = ?" withParameters:v8 error:&v12];
  v10 = v12;

  if ((v9 & 1) == 0)
  {
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v6;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "Failed to update name of built-in smart playlist %{public}@ (%{public}@)", buf, 0x16u);
    }
  }
}

+ (id)predicateForCriteriaList:(SearchCriteriaList *)list parentMatchedAny:(BOOL)any
{
  v29 = *MEMORY[0x277D85DE8];
  LockSearchCriteriaList();
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = 0;
  GetSearchCriteriaListOptions();
  v6 = CountSearchCriteria();
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      v24 = 0u;
      v25 = 0u;
      SearchCriterionInfo = GetSearchCriterionInfo();
      if (SearchCriterionInfo)
      {
        break;
      }

      if (BYTE9(v24))
      {
        if (BYTE8(v24))
        {
          v15 = [self predicateForCriteriaList:v25 parentMatchedAny:any];
        }

        else
        {
          if (v24 > 0xB8)
          {
            v11 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              LODWORD(v28) = v24;
              v12 = v11;
              v13 = "unhandled match type: unknown type %d";
              v14 = 8;
LABEL_6:
              _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_ERROR, v13, buf, v14);
            }

LABEL_12:

            goto LABEL_13;
          }

          v16 = (&TrackFieldToML3Info + 16 * v24);
          v17 = v16[1];
          if (!v17)
          {
            if (v24 == 40)
            {
              goto LABEL_13;
            }

            v11 = os_log_create("com.apple.amp.medialibrary", "Default");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
            {
              v18 = NSStringFromITDBTrackField(v24);
              *buf = 138543362;
              v28 = v18;
              _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEBUG, "unhandled match type: unfilterable type %{public}@", buf, 0xCu);
            }

            goto LABEL_12;
          }

          v15 = v17(&v24, *v16);
        }

        v11 = v15;
        if (v15)
        {
          [v5 addObject:v15];
          goto LABEL_12;
        }
      }

LABEL_13:
      if (v7 == ++v8)
      {
        goto LABEL_23;
      }
    }

    v10 = SearchCriterionInfo;
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v28 = v10;
      v12 = v11;
      v13 = "Got an error getting search criterion info: %ld";
      v14 = 12;
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_23:
  UnlockSearchCriteriaList();
  v19 = objc_opt_class();
  if ([v5 count])
  {
    v20 = [v19 predicateMatchingPredicates:v5];
  }

  else
  {
    v20 = 0;
  }

  if ((v26 & 2) != 0)
  {
    v21 = [(ML3UnaryPredicate *)ML3NegationPredicate predicateWithPredicate:v20];

    v20 = v21;
  }

  return v20;
}

+ (BOOL)hasCriterionInCriteriaList:(SearchCriteriaList *)list forITDBTrackField:(int)field
{
  v13 = *MEMORY[0x277D85DE8];
  LockSearchCriteriaList();
  GetSearchCriteriaListOptions();
  v4 = CountSearchCriteria();
  if (v4)
  {
    v5 = v4;
    for (i = 1; ; ++i)
    {
      SearchCriterionInfo = GetSearchCriterionInfo();
      if (SearchCriterionInfo)
      {
        v8 = SearchCriterionInfo;
        v9 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v12 = v8;
          _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_ERROR, "Got an error getting search criterion info: %ld", buf, 0xCu);
        }
      }

      if (i >= v5)
      {
        break;
      }
    }
  }

  UnlockSearchCriteriaList();
  return 0;
}

+ (void)populateSortOrdersOfPropertyValues:(id)values inLibrary:(id)library cachedNameOrders:(id)orders
{
  valuesCopy = values;
  libraryCopy = library;
  ordersCopy = orders;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__ML3Container_populateSortOrdersOfPropertyValues_inLibrary_cachedNameOrders___block_invoke;
  v14[3] = &unk_278762448;
  v15 = valuesCopy;
  v16 = ordersCopy;
  v17 = libraryCopy;
  v10 = libraryCopy;
  v11 = ordersCopy;
  v12 = valuesCopy;
  v13 = MEMORY[0x2318CDB10](v14);
  (v13)[2](v13, @"name_order", @"name");
}

void __78__ML3Container_populateSortOrdersOfPropertyValues_inLibrary_cachedNameOrders___block_invoke(id *a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] objectForKey:v5];

  if (!v7)
  {
    v8 = [a1[4] objectForKey:v6];
    if (v8)
    {
      v9 = v8;
      v10 = [a1[5] objectForKey:v8];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 ML3NameOrderValue];
      }

      else
      {
        v12 = [a1[6] nameOrderForString:v9];
      }

      v14 = v12;
      if (v13 == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (a1[5])
        {
          v15 = os_log_create("com.apple.amp.medialibrary", "Default");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = a1[5];
            v18 = 138543874;
            v19 = v5;
            v20 = 2114;
            v21 = v9;
            v22 = 2114;
            v23 = v16;
            _os_log_impl(&dword_22D2FA000, v15, OS_LOG_TYPE_ERROR, "Could not find sort order for %{public}@ of %{public}@ in %{public}@", &v18, 0x20u);
          }

          goto LABEL_12;
        }

        v14 = [a1[6] insertStringIntoSortMapNoTransaction:v9];
      }

      v17 = a1[4];
      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:v14];
      [v17 setObject:v15 forKey:v5];
LABEL_12:
    }
  }
}

+ (BOOL)smartCriteriaCanBeEvaluated:(id)evaluated
{
  v17 = *MEMORY[0x277D85DE8];
  if (!evaluated)
  {
    goto LABEL_8;
  }

  v14 = 0;
  evaluatedCopy = evaluated;
  evaluatedCopy2 = evaluated;
  bytes = [evaluatedCopy2 bytes];
  v8 = [evaluatedCopy2 length];

  v9 = MEMORY[0x2318CCB20](bytes, v8, &v14);
  if (v9)
  {
    v10 = v9;
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v16 = v10;
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_ERROR, "Could not parse search criteria list for playlist with error %ld", buf, 0xCu);
    }
  }

  if (v14)
  {
    v12 = [self hasCriterionInCriteriaList:v14 forITDBTrackField:40] ^ 1;
    DisposeSearchCriteriaList();
  }

  else
  {
LABEL_8:
    LOBYTE(v12) = 0;
  }

  return v12;
}

+ (id)nextFilepathForPlaylistType:(int)type withPersistentID:(unint64_t)d inLibrary:(id)library
{
  libraryCopy = library;
  if (!d)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ML3Container.m" lineNumber:745 description:@"persistentID must be specified since it is part of the filename format."];
  }

  if (type == 3)
  {
    v10 = 6;
  }

  else
  {
    v10 = 7;
  }

  if (type == 2)
  {
    v11 = 4;
  }

  else
  {
    v11 = v10;
  }

  v12 = [ML3MusicLibrary pathForResourceFileOrFolder:v11];
  if (v12)
  {
    v18 = 0;
    v13 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v12 validFormatSpecifiers:@"%llu" error:&v18, d];
    v14 = v18;
    if (v14)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"ML3Container.m" lineNumber:763 description:{@"Encountered error validating format. pathFormat=%@ error=%@", v12, v14}];
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  v5 = [ML3ContainerJoinsForProperties objectForKey:propertyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___ML3Container;
    v7 = objc_msgSendSuper2(&v10, sel_joinClausesForProperty_, propertyCopy);
  }

  v8 = v7;

  return v8;
}

- (id)protocolItem
{
  v3 = objc_alloc_init(MIPPlaylist);
  if (protocolItem_onceToken_45[0] != -1)
  {
    dispatch_once(protocolItem_onceToken_45, &__block_literal_global_47);
  }

  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v5 = objc_opt_class();
  v6 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:self->super._persistentID];
  v7 = [v5 unrestrictedAllItemsQueryWithlibrary:WeakRetained predicate:v6 orderingTerms:0];

  v8 = [v7 selectPersistentIDsSQLAndProperties:protocolItem___playlistProperties ordered:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __40__ML3Container_MLProtocol__protocolItem__block_invoke_2;
  v15[3] = &unk_2787648C0;
  v16 = v8;
  selfCopy = self;
  v18 = WeakRetained;
  v9 = v3;
  v19 = v9;
  v10 = WeakRetained;
  v11 = v8;
  [v10 databaseConnectionAllowingWrites:0 withBlock:v15];
  v12 = v19;
  v13 = v9;

  return v9;
}

void __40__ML3Container_MLProtocol__protocolItem__block_invoke_2(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v16[0] = MEMORY[0x277CBEC28];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 16);
  v6 = a2;
  v7 = [v3 numberWithLongLong:v5];
  v16[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v9 = [v6 executeQuery:v4 withParameters:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __40__ML3Container_MLProtocol__protocolItem__block_invoke_3;
  v12[3] = &unk_278764618;
  v13 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 40);
  v14 = v10;
  v15 = v11;
  [v9 enumerateRowsWithBlock:v12];
}

void __40__ML3Container_MLProtocol__protocolItem__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v83 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v68 = a3;
  v6 = [v5 int64ForColumnIndex:16];
  v64 = [v5 int64ForColumnIndex:2];
  v7 = [v5 stringForColumnIndex:1];
  v8 = [v5 intForColumnIndex:3];
  v71 = [v5 intForColumnIndex:4];
  v60 = [v5 intForColumnIndex:5];
  v9 = [v5 dataForColumnIndex:6];
  v63 = [v5 intForColumnIndex:18];
  v62 = [v5 intForColumnIndex:19];
  v61 = [v5 intForColumnIndex:20];
  v10 = [v5 stringForColumnIndex:21];
  v11 = [v5 stringForColumnIndex:52];
  v66 = [v5 intForColumnIndex:53];
  v12 = [v5 stringForColumnIndex:54];
  v69 = v11;
  v70 = v12;
  if (v6)
  {
    v59 = v8;
    v13 = *(a1 + 32);
    v14 = [ML3ComparisonPredicate predicateWithProperty:@"container_pid" equalToInt64:v6];
    v15 = [(ML3Entity *)ML3Container anyInLibrary:v13 predicate:v14];

    if (v15)
    {
      v16 = [v15 multiverseIdentifier];
      [*(a1 + 40) setParentIdentifier:v16];
    }

    v11 = v69;
    v8 = v59;
  }

  if (v64)
  {
    [*(a1 + 40) setStoreId:?];
  }

  if ([v7 length])
  {
    [*(a1 + 40) setName:v7];
  }

  if (v8)
  {
    [*(a1 + 40) setHidden:1];
  }

  [*(a1 + 40) setDistinguishedKind:v63];
  [*(a1 + 40) setSortType:{+[ML3Container protocolSortTypeFromTrackOrder:](ML3Container, "protocolSortTypeFromTrackOrder:", v62)}];
  [*(a1 + 40) setReversedSorting:v61 != 0];
  if (v10)
  {
    [*(a1 + 40) setCloudGlobalId:v10];
  }

  [*(a1 + 40) setCloudIsSubscribed:{objc_msgSend(v5, "intForColumnIndex:", 22) != 0}];
  [*(a1 + 40) setCloudIsCuratorPlaylist:{objc_msgSend(v5, "intForColumnIndex:", 23) != 0}];
  v17 = [v5 stringForColumnIndex:24];
  [*(a1 + 40) setExternalVendorIdentifier:v17];

  v18 = [v5 stringForColumnIndex:25];
  [*(a1 + 40) setExternalVendorDisplayName:v18];

  v19 = [v5 stringForColumnIndex:26];
  [*(a1 + 40) setExternalVendorTag:v19];

  [*(a1 + 40) setExternalVendorPlaylist:{objc_msgSend(v5, "intForColumnIndex:", 27) != 0}];
  [*(a1 + 40) setCreationDateTime:{objc_msgSend(v5, "int64ForColumnIndex:", 28)}];
  [*(a1 + 40) setModificationDateTime:{objc_msgSend(v5, "int64ForColumnIndex:", 29)}];
  [*(a1 + 40) setLastPlayedDateTime:{objc_msgSend(v5, "int64ForColumnIndex:", 30)}];
  [*(a1 + 40) setCloudIsSharingDisabled:{objc_msgSend(v5, "intForColumnIndex:", 31) != 0}];
  v20 = [v5 stringForColumnIndex:32];
  [*(a1 + 40) setCloudVersionHash:v20];

  v21 = [v5 stringForColumnIndex:33];
  [*(a1 + 40) setArtworkId:v21];

  [*(a1 + 40) setLikedState:{objc_msgSend(v5, "intForColumnIndex:", 34)}];
  [*(a1 + 40) setRemoteSourceType:{objc_msgSend(v5, "intForColumnIndex:", 35)}];
  [*(a1 + 40) setOwner:{objc_msgSend(v5, "intForColumnIndex:", 36) != 0}];
  [*(a1 + 40) setEditable:{objc_msgSend(v5, "intForColumnIndex:", 37) != 0}];
  [*(a1 + 40) setPlayCount:{objc_msgSend(v5, "intForColumnIndex:", 38)}];
  [*(a1 + 40) setShared:{objc_msgSend(v5, "intForColumnIndex:", 39) != 0}];
  [*(a1 + 40) setVisible:{objc_msgSend(v5, "intForColumnIndex:", 40) != 0}];
  [*(a1 + 40) setAuthorStoreId:{objc_msgSend(v5, "intForColumnIndex:", 41)}];
  v22 = [v5 stringForColumnIndex:42];
  [*(a1 + 40) setAuthorDisplayName:v22];

  v23 = [v5 stringForColumnIndex:43];
  [*(a1 + 40) setAuthorStoreURL:v23];

  v24 = [v5 stringForColumnIndex:44];
  [*(a1 + 40) setAuthorHandle:v24];

  [*(a1 + 40) setMinRefreshInterval:{objc_msgSend(v5, "int64ForColumnIndex:", 45)}];
  [*(a1 + 40) setCloudLastUpdateTime:{objc_msgSend(v5, "int64ForColumnIndex:", 46)}];
  [*(a1 + 40) setSubscriberCount:{objc_msgSend(v5, "intForColumnIndex:", 47)}];
  [*(a1 + 40) setSubscriberPlayCount:{objc_msgSend(v5, "intForColumnIndex:", 48)}];
  [*(a1 + 40) setSubscriberLikedCount:{objc_msgSend(v5, "intForColumnIndex:", 49)}];
  v25 = [v5 stringForColumnIndex:50];
  [*(a1 + 40) setSubscriberURL:v25];

  v26 = [v5 stringForColumnIndex:51];
  [*(a1 + 40) setPlaylistDescription:v26];

  [*(a1 + 40) setPlaylistCategoryTypeMask:{objc_msgSend(v5, "intForColumnIndex:", 55)}];
  v27 = [v5 stringForColumnIndex:56];
  [*(a1 + 40) setPlaylistGroupingSortKey:v27];

  [*(a1 + 40) setTraits:{objc_msgSend(v5, "intForColumnIndex:", 57)}];
  [*(a1 + 40) setLikedStateChangedDate:{objc_msgSend(v5, "intForColumnIndex:", 58)}];
  v28 = [v5 stringForColumnIndex:59];
  [*(a1 + 40) setCoverArtworkRecipe:v28];

  [*(a1 + 40) setIsCollaborative:{objc_msgSend(v5, "intForColumnIndex:", 60) != 0}];
  [*(a1 + 40) setCollaborationMode:{objc_msgSend(v5, "intForColumnIndex:", 61)}];
  v29 = [v5 stringForColumnIndex:62];
  [*(a1 + 40) setCollaborationInvitationURL:v29];

  [*(a1 + 40) setCollaborationInvitationURLExpirationDate:{objc_msgSend(v5, "int64ForColumnIndex:", 63)}];
  [*(a1 + 40) setCollaborationJoinRequestPending:{objc_msgSend(v5, "intForColumnIndex:", 64) != 0}];
  [*(a1 + 40) setCollaboratorStatus:{objc_msgSend(v5, "intForColumnIndex:", 65)}];
  if (v11)
  {
    [*(a1 + 40) setCloudUniversalLibraryId:v11];
  }

  if (v12)
  {
    [*(a1 + 40) setSecondaryArtworkId:v12];
  }

  if (v66)
  {
    [*(a1 + 40) setSecondaryArtworkSourceType:?];
  }

  if (v71)
  {
    v30 = *(a1 + 40);
    v31 = 4;
LABEL_21:
    [v30 setType:v31];
    goto LABEL_22;
  }

  if (!v60)
  {
    v58 = [v9 length];
    v30 = *(a1 + 40);
    if (v58)
    {
      v31 = 2;
    }

    else
    {
      v31 = 1;
    }

    goto LABEL_21;
  }

  [*(a1 + 40) setType:3];
  v43 = [v5 int64ForColumnIndex:17];
  if (v43)
  {
    v44 = *(a1 + 32);
    v45 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:v43];
    v46 = [(ML3Entity *)ML3Track anyInLibrary:v44 predicate:v45];

    if (v46)
    {
      v47 = [v46 multiverseIdentifierLibraryOnly:1];
      [*(a1 + 40) setGeniusSeedTrackIdentifier:v47];
    }
  }

LABEL_22:
  v32 = [v5 intForColumnIndex:11];
  if ([v9 length])
  {
    v33 = objc_alloc_init(MIPSmartPlaylistInfo);
    -[MIPSmartPlaylistInfo setEvaluationOrder:](v33, "setEvaluationOrder:", [v5 intForColumnIndex:7]);
    -[MIPSmartPlaylistInfo setLimitKind:](v33, "setLimitKind:", [v5 intForColumnIndex:8]);
    -[MIPSmartPlaylistInfo setLimitOrder:](v33, "setLimitOrder:", [v5 intForColumnIndex:9]);
    -[MIPSmartPlaylistInfo setLimitValue:](v33, "setLimitValue:", [v5 intForColumnIndex:10]);
    [(MIPSmartPlaylistInfo *)v33 setSmartCriteria:v9];
    [(MIPSmartPlaylistInfo *)v33 setDynamic:v32 != 0];
    -[MIPSmartPlaylistInfo setEnabledItemsOnly:](v33, "setEnabledItemsOnly:", [v5 intForColumnIndex:12] != 0);
    -[MIPSmartPlaylistInfo setFiltered:](v33, "setFiltered:", [v5 intForColumnIndex:13] != 0);
    -[MIPSmartPlaylistInfo setGenius:](v33, "setGenius:", [v5 intForColumnIndex:5] != 0);
    -[MIPSmartPlaylistInfo setLimited:](v33, "setLimited:", [v5 intForColumnIndex:14] != 0);
    -[MIPSmartPlaylistInfo setReverseLimitOrder:](v33, "setReverseLimitOrder:", [v5 intForColumnIndex:15] != 0);
    [*(a1 + 40) setSmartPlaylistInfo:v33];
  }

  if (v71)
  {
    [*(a1 + 48) childPlaylistPersistentIds];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v34 = v80 = 0u;
    v35 = [v34 countByEnumeratingWithState:&v77 objects:v82 count:16];
    if (v35)
    {
      v36 = v35;
      v65 = v10;
      v67 = v9;
      v72 = v7;
      v37 = *v78;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v78 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v77 + 1) + 8 * i);
          v40 = objc_autoreleasePoolPush();
          v41 = -[ML3Entity initWithPersistentID:inLibrary:]([ML3Container alloc], "initWithPersistentID:inLibrary:", [v39 longLongValue], *(a1 + 32));
          v42 = [(ML3Container *)v41 multiverseIdentifier];

          if (v42)
          {
            [*(a1 + 40) addChildIdentifiers:v42];
          }

          objc_autoreleasePoolPop(v40);
        }

        v36 = [v34 countByEnumeratingWithState:&v77 objects:v82 count:16];
      }

      while (v36);
LABEL_51:
      v7 = v72;
      v10 = v65;
      v9 = v67;
      v11 = v69;
      goto LABEL_52;
    }

    goto LABEL_52;
  }

  v48 = [*(a1 + 40) type];
  v49 = v70;
  if (v48 == 1 || !v32)
  {
    [*(a1 + 48) trackPersistentIds];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v34 = v76 = 0u;
    v50 = [v34 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v50)
    {
      v51 = v50;
      v65 = v10;
      v67 = v9;
      v72 = v7;
      v52 = *v74;
      do
      {
        for (j = 0; j != v51; ++j)
        {
          if (*v74 != v52)
          {
            objc_enumerationMutation(v34);
          }

          v54 = *(*(&v73 + 1) + 8 * j);
          v55 = objc_autoreleasePoolPush();
          v56 = -[ML3Entity initWithPersistentID:inLibrary:]([ML3Track alloc], "initWithPersistentID:inLibrary:", [v54 longLongValue], *(a1 + 32));
          v57 = [(ML3Track *)v56 multiverseIdentifier];

          if (v57)
          {
            [*(a1 + 40) addItems:v57];
          }

          objc_autoreleasePoolPop(v55);
        }

        v51 = [v34 countByEnumeratingWithState:&v73 objects:v81 count:16];
      }

      while (v51);
      goto LABEL_51;
    }

LABEL_52:

    v49 = v70;
  }
}

void __40__ML3Container_MLProtocol__protocolItem__block_invoke()
{
  v68[65] = *MEMORY[0x277D85DE8];
  v0 = @"name";
  v68[0] = @"name";
  v1 = @"store_cloud_id";
  v68[1] = @"store_cloud_id";
  v2 = @"is_hidden";
  v68[2] = @"is_hidden";
  v3 = @"smart_is_folder";
  v68[3] = @"smart_is_folder";
  v4 = @"smart_is_genius";
  v68[4] = @"smart_is_genius";
  v5 = @"smart_criteria";
  v68[5] = @"smart_criteria";
  v6 = @"smart_evaluation_order";
  v68[6] = @"smart_evaluation_order";
  v7 = @"smart_limit_kind";
  v68[7] = @"smart_limit_kind";
  v8 = @"smart_limit_order";
  v68[8] = @"smart_limit_order";
  v9 = @"smart_limit_value";
  v68[9] = @"smart_limit_value";
  v10 = @"smart_is_dynamic";
  v68[10] = @"smart_is_dynamic";
  v11 = @"smart_enabled_only";
  v68[11] = @"smart_enabled_only";
  v12 = @"smart_is_filtered";
  v68[12] = @"smart_is_filtered";
  v13 = @"smart_is_limited";
  v68[13] = @"smart_is_limited";
  v14 = @"smart_reverse_limit_order";
  v68[14] = @"smart_reverse_limit_order";
  v15 = @"parent_pid";
  v68[15] = @"parent_pid";
  v16 = @"container_seed.item_pid";
  v68[16] = @"container_seed.item_pid";
  v17 = @"distinguished_kind";
  v68[17] = @"distinguished_kind";
  v18 = @"play_order";
  v68[18] = @"play_order";
  v19 = @"is_reversed";
  v68[19] = @"is_reversed";
  v20 = @"cloud_global_id";
  v68[20] = @"cloud_global_id";
  v21 = @"cloud_is_subscribed";
  v68[21] = @"cloud_is_subscribed";
  v22 = @"cloud_is_curator_playlist";
  v68[22] = @"cloud_is_curator_playlist";
  v23 = @"external_vendor_identifier";
  v68[23] = @"external_vendor_identifier";
  v24 = @"external_vendor_display_name";
  v68[24] = @"external_vendor_display_name";
  v25 = @"external_vendor_container_tag";
  v68[25] = @"external_vendor_container_tag";
  v26 = @"is_external_vendor_playlist";
  v68[26] = @"is_external_vendor_playlist";
  v27 = @"date_created";
  v68[27] = @"date_created";
  v28 = @"date_modified";
  v68[28] = @"date_modified";
  v29 = @"date_played";
  v68[29] = @"date_played";
  v30 = @"cloud_is_sharing_disabled";
  v68[30] = @"cloud_is_sharing_disabled";
  v31 = @"cloud_version_hash";
  v68[31] = @"cloud_version_hash";
  v32 = @"best_artwork_token.available_artwork_token AS available_container_artwork_token";
  v68[32] = @"best_artwork_token.available_artwork_token AS available_container_artwork_token";
  v33 = @"liked_state";
  v68[33] = @"liked_state";
  v34 = @"is_src_remote";
  v68[34] = @"is_src_remote";
  v35 = @"is_owner";
  v68[35] = @"is_owner";
  v36 = @"is_editable";
  v68[36] = @"is_editable";
  v37 = @"play_count_user";
  v68[37] = @"play_count_user";
  v38 = @"cloud_is_public";
  v68[38] = @"cloud_is_public";
  v39 = @"cloud_is_visible";
  v68[39] = @"cloud_is_visible";
  v40 = @"cloud_author_store_id";
  v68[40] = @"cloud_author_store_id";
  v41 = @"cloud_author_display_name";
  v68[41] = @"cloud_author_display_name";
  v42 = @"cloud_author_store_url";
  v68[42] = @"cloud_author_store_url";
  v43 = @"cloud_author_handle";
  v68[43] = @"cloud_author_handle";
  v44 = @"cloud_min_refresh_interval";
  v68[44] = @"cloud_min_refresh_interval";
  v45 = @"cloud_last_update_time";
  v68[45] = @"cloud_last_update_time";
  v46 = @"cloud_user_count";
  v68[46] = @"cloud_user_count";
  v47 = @"cloud_global_play_count";
  v68[47] = @"cloud_global_play_count";
  v48 = @"cloud_global_like_count";
  v68[48] = @"cloud_global_like_count";
  v49 = @"cloud_share_url";
  v68[49] = @"cloud_share_url";
  v50 = @"description";
  v68[50] = @"description";
  v51 = @"cloud_universal_library_id";
  v68[51] = @"cloud_universal_library_id";
  v52 = @"best_artwork_token.fetchable_artwork_source_type AS fetchable_item_artwork_source_type";
  v68[52] = @"best_artwork_token.fetchable_artwork_source_type AS fetchable_item_artwork_source_type";
  v53 = @"best_artwork_token.fetchable_artwork_token AS fetchable_item_artwork_token";
  v68[53] = @"best_artwork_token.fetchable_artwork_token AS fetchable_item_artwork_token";
  v54 = @"category_type_mask";
  v68[54] = @"category_type_mask";
  v55 = @"grouping_sort_key";
  v68[55] = @"grouping_sort_key";
  v56 = @"traits";
  v68[56] = @"traits";
  v57 = @"liked_state_changed_date";
  v68[57] = @"liked_state_changed_date";
  v58 = @"cover_artwork_recipe";
  v68[58] = @"cover_artwork_recipe";
  v59 = @"is_collaborative";
  v68[59] = @"is_collaborative";
  v60 = @"collaborator_invite_options";
  v68[60] = @"collaborator_invite_options";
  v61 = @"collaboration_invitation_link";
  v68[61] = @"collaboration_invitation_link";
  v62 = @"collaboration_invitation_url_expiration_date";
  v68[62] = @"collaboration_invitation_url_expiration_date";
  v63 = @"collaboration_join_request_pending";
  v68[63] = @"collaboration_join_request_pending";
  v64 = @"collaborator_status";
  v68[64] = @"collaborator_status";
  v65 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:65];
  v66 = protocolItem___playlistProperties;
  protocolItem___playlistProperties = v65;

  for (i = 64; i != -1; --i)
  {
  }
}

- (id)protocolItemForDynamicUpdate
{
  v3 = objc_alloc_init(MIPPlaylist);
  if (protocolItemForDynamicUpdate_onceToken_44 != -1)
  {
    dispatch_once(&protocolItemForDynamicUpdate_onceToken_44, &__block_literal_global_20301);
  }

  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v5 = objc_opt_class();
  v6 = [ML3ComparisonPredicate predicateWithProperty:@"ROWID" equalToInt64:self->super._persistentID];
  v7 = [v5 unrestrictedAllItemsQueryWithlibrary:WeakRetained predicate:v6 orderingTerms:0];

  v8 = [v7 selectPersistentIDsSQLAndProperties:protocolItemForDynamicUpdate___playlistProperties ordered:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__ML3Container_MLProtocol__protocolItemForDynamicUpdate__block_invoke_2;
  v14[3] = &unk_278764640;
  v15 = v8;
  selfCopy = self;
  v9 = v3;
  v17 = v9;
  v10 = v8;
  [WeakRetained databaseConnectionAllowingWrites:0 withBlock:v14];
  v11 = v17;
  v12 = v9;

  return v9;
}

void __56__ML3Container_MLProtocol__protocolItemForDynamicUpdate__block_invoke_2(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v12[0] = MEMORY[0x277CBEC28];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 16);
  v6 = a2;
  v7 = [v3 numberWithLongLong:v5];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
  v9 = [v6 executeQuery:v4 withParameters:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__ML3Container_MLProtocol__protocolItemForDynamicUpdate__block_invoke_3;
  v10[3] = &unk_278766118;
  v11 = *(a1 + 48);
  [v9 enumerateRowsWithBlock:v10];
}

void __56__ML3Container_MLProtocol__protocolItemForDynamicUpdate__block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 int64ForColumnIndex:2];
  v4 = [v6 stringForColumnIndex:1];
  v5 = [v6 stringForColumnIndex:3];
  if (v3)
  {
    [*(a1 + 32) setStoreId:v3];
  }

  if ([v4 length])
  {
    [*(a1 + 32) setName:v4];
  }

  if (v5)
  {
    [*(a1 + 32) setCloudGlobalId:v5];
  }

  [*(a1 + 32) setLikedState:{objc_msgSend(v6, "intForColumnIndex:", 4)}];
  [*(a1 + 32) setLikedStateChangedDate:{objc_msgSend(v6, "intForColumnIndex:", 5)}];
}

void __56__ML3Container_MLProtocol__protocolItemForDynamicUpdate__block_invoke()
{
  v8[5] = *MEMORY[0x277D85DE8];
  v0 = @"name";
  v8[0] = @"name";
  v1 = @"store_cloud_id";
  v8[1] = @"store_cloud_id";
  v2 = @"cloud_global_id";
  v8[2] = @"cloud_global_id";
  v3 = @"liked_state";
  v8[3] = @"liked_state";
  v4 = @"liked_state_changed_date";
  v8[4] = @"liked_state_changed_date";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:5];
  v6 = protocolItemForDynamicUpdate___playlistProperties;
  protocolItemForDynamicUpdate___playlistProperties = v5;

  for (i = 4; i != -1; --i)
  {
  }
}

- (id)multiverseIdentifier
{
  v3 = objc_alloc_init(MIPMultiverseIdentifier);
  [(MIPMultiverseIdentifier *)v3 setMediaObjectType:7];
  WeakRetained = objc_loadWeakRetained(&self->super._library);
  v5 = objc_alloc_init(MIPLibraryIdentifier);
  [(MIPLibraryIdentifier *)v5 setLibraryId:self->super._persistentID];
  libraryUID = [WeakRetained libraryUID];
  [(MIPLibraryIdentifier *)v5 setLibraryName:libraryUID];

  [(MIPMultiverseIdentifier *)v3 addLibraryIdentifiers:v5];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__ML3Container_MLProtocol__multiverseIdentifier__block_invoke;
  v11[3] = &unk_278764640;
  v12 = @"SELECT container.name, container.store_cloud_id, container.cloud_universal_library_id FROM container WHERE container.ROWID = ?";
  selfCopy = self;
  v7 = v3;
  v14 = v7;
  [WeakRetained databaseConnectionAllowingWrites:0 withBlock:v11];
  v8 = v14;
  v9 = v7;

  return v7;
}

void __48__ML3Container_MLProtocol__multiverseIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 32);
  v5 = *(*(a1 + 40) + 16);
  v6 = a2;
  v7 = [v3 numberWithLongLong:v5];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v6 executeQuery:v4 withParameters:v8];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__ML3Container_MLProtocol__multiverseIdentifier__block_invoke_2;
  v10[3] = &unk_278766118;
  v11 = *(a1 + 48);
  [v9 enumerateRowsWithBlock:v10];
}

void __48__ML3Container_MLProtocol__multiverseIdentifier__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringForColumnIndex:0];
  [*(a1 + 32) setName:v4];

  v5 = [v3 int64ForColumnIndex:1];
  v7 = [v3 stringForColumnIndex:2];

  if (v5 >= 1)
  {
    [*(a1 + 32) setStoreId:v5];
  }

  v6 = v7;
  if (v7)
  {
    [*(a1 + 32) setCloudUniversalLibraryId:v7];
    v6 = v7;
  }
}

+ (int)protocolSortTypeFromTrackOrder:(unsigned int)order
{
  if (order - 1 > 0x4B)
  {
    return 0;
  }

  else
  {
    return dword_22D5C9A84[order - 1];
  }
}

+ (unsigned)trackOrderFromProtocolSortType:(int)type
{
  if ((type - 1) > 0x49)
  {
    return 1;
  }

  else
  {
    return *&asc_22D5C995C[4 * (type - 1)];
  }
}

- (id)_stringStringForCriteriaInfo:(id *)info
{
  v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharacters:info->var6.var0.var0 length:info->var6.var0.var1 >> 1];

  return v3;
}

- (id)_stringForTrackFieldMediaKind:(int64_t)kind
{
  if (kind > 4095)
  {
    if (kind < 0x40000)
    {
      if (kind >= 0x8000)
      {
        switch(kind)
        {
          case 0x8000:
            return @"rental";
          case 0x10000:
            return @"digital booklet";
          case 0x20000:
            return @"software application";
        }
      }

      else
      {
        switch(kind)
        {
          case 0x1000:
            return @"software package";
          case 0x2000:
            return @"forced music playlist";
          case 0x4000:
            return @"ringtone";
        }
      }
    }

    else if (kind < 0x200000)
    {
      switch(kind)
      {
        case 0x40000:
          return @"software game";
        case 0x80000:
          return @"audio pass";
        case 0x100000:
          return @"voice memo";
      }
    }

    else if (kind >= 0x800000)
    {
      if (kind == 0x800000)
      {
        return @"PDF book";
      }

      if (kind == 0x1000000)
      {
        return @"alert tone";
      }
    }

    else
    {
      if (kind == 0x200000)
      {
        return @"iTunes U";
      }

      if (kind == 0x400000)
      {
        return @"book";
      }
    }
  }

  else if (kind <= 31)
  {
    if (kind > 3)
    {
      switch(kind)
      {
        case 4:
          return @"podcast";
        case 8:
          return @"audiobook";
        case 16:
          return @"PDF booklet";
      }
    }

    else
    {
      switch(kind)
      {
        case 0:
          return @"unknown";
        case 1:
          return @"music";
        case 2:
          return @"movie";
      }
    }
  }

  else if (kind <= 255)
  {
    switch(kind)
    {
      case 32:
        return @"music video";
      case 64:
        return @"TV show";
      case 128:
        return @"interactive booklet";
    }
  }

  else if (kind > 1023)
  {
    if (kind == 1024)
    {
      return @"home video";
    }

    if (kind == 2048)
    {
      return @"future video 3";
    }
  }

  else
  {
    if (kind == 256)
    {
      return @"coached audio";
    }

    if (kind == 512)
    {
      return @"video pass";
    }
  }

  return @"invalid";
}

- (id)_stringForTrackFieldCloudStatus:(int64_t)status
{
  if (status > 7)
  {
    return @"invalid";
  }

  else
  {
    return off_278765E80[status];
  }
}

- (id)_stringForCriterionMatchType:(id *)type
{
  HIDWORD(v4) = type->var0 - 29;
  LODWORD(v4) = HIDWORD(v4);
  v3 = v4 >> 1;
  if (v3 < 7 && ((0x53u >> v3) & 1) != 0)
  {
    v5 = @"is equal to";
    goto LABEL_37;
  }

  var1 = type->var1;
  v7 = var1 & 0xFFFFFF;
  v5 = &stru_28408B690;
  if ((var1 & 0xFFFFFF) <= 0x1F)
  {
    if ((var1 & 0xFFFFFF) > 3)
    {
      switch(v7)
      {
        case 4:
          v8 = @"does not start with";
          v9 = @"starts with";
          goto LABEL_33;
        case 8:
          v8 = @"does not end with";
          v9 = @"ends with";
          goto LABEL_33;
        case 16:
          v8 = @"is not greater than";
          v9 = @"is greater than";
          goto LABEL_33;
      }
    }

    else if (v7)
    {
      if (v7 == 1)
      {
        v8 = @"is not equal to";
        v9 = @"is equal to";
        goto LABEL_33;
      }

      if (v7 == 2)
      {
        v8 = @"does not contain";
        v9 = @"contains";
        goto LABEL_33;
      }
    }

    else
    {
      v5 = @"invalid";
    }
  }

  else if ((var1 & 0xFFFFFF) <= 0xFF)
  {
    switch(v7)
    {
      case 32:
        v8 = @"is not greater than or equal";
        v9 = @"is greater than or equal";
        goto LABEL_33;
      case 64:
        v8 = @"is not less than";
        v9 = @"is less than";
        goto LABEL_33;
      case 128:
        v8 = @"is not less than or equal";
        v9 = @"is less than or equal";
        goto LABEL_33;
    }
  }

  else if ((var1 & 0xFFFFFF) > 0x3FF)
  {
    if (v7 == 1024 || v7 == 2048)
    {
      v8 = @"is not";
      v9 = @"is";
      goto LABEL_33;
    }
  }

  else
  {
    if (v7 == 256)
    {
      v8 = @"is not in range";
      v9 = @"is in range";
      goto LABEL_33;
    }

    if (v7 == 512)
    {
      v8 = @"is not between";
      v9 = @"is between";
LABEL_33:
      if ((var1 & 0x2000000) != 0)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      v5 = v10;
    }
  }

LABEL_37:

  return v5;
}

- (id)_stringForCriterionMatchKey:(id *)key
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unsupported: %d)", key->var0];
  var0 = key->var0;
  v6 = @"Invalid";
  switch(var0)
  {
    case 0u:
      goto LABEL_136;
    case 1u:
      v6 = @"Play Status";
      goto LABEL_136;
    case 2u:
      v6 = @"Name";
      goto LABEL_136;
    case 3u:
      v6 = @"Album";
      goto LABEL_136;
    case 4u:
      v6 = @"Artist";
      goto LABEL_136;
    case 5u:
      v6 = @"Bit Rate";
      goto LABEL_136;
    case 6u:
      v6 = @"Sample Rate";
      goto LABEL_136;
    case 7u:
      v6 = @"Year";
      goto LABEL_136;
    case 8u:
      v6 = @"Genre";
      goto LABEL_136;
    case 9u:
      v6 = @"Kind";
      goto LABEL_136;
    case 0xAu:
      v6 = @"Date Modified";
      goto LABEL_136;
    case 0xBu:
      v6 = @"Track Number";
      goto LABEL_136;
    case 0xCu:
      v6 = @"Size";
      goto LABEL_136;
    case 0xDu:
      v6 = @"Total Time";
      goto LABEL_136;
    case 0xEu:
      v6 = @"Comment";
      goto LABEL_136;
    case 0xFu:
      v6 = @"Location";
      goto LABEL_136;
    case 0x10u:
      v6 = @"Date Added";
      goto LABEL_136;
    case 0x11u:
      v6 = @"EQ Preset";
      goto LABEL_136;
    case 0x12u:
      v6 = @"Composer";
      goto LABEL_136;
    case 0x13u:
      v6 = @"Obsolete Display Artist";
      goto LABEL_136;
    case 0x14u:
      v6 = @"Volume";
      goto LABEL_136;
    case 0x15u:
      v6 = @"Stream Status";
      goto LABEL_136;
    case 0x16u:
      v6 = @"User Play Count";
      goto LABEL_136;
    case 0x17u:
      v6 = @"Play Date";
      goto LABEL_136;
    case 0x18u:
      v6 = @"Disc Number";
      goto LABEL_136;
    case 0x19u:
      v6 = @"Track Rating";
      goto LABEL_136;
    case 0x1Au:
      v6 = @"Price";
      goto LABEL_136;
    case 0x1Bu:
      v6 = @"Object ID";
      goto LABEL_136;
    case 0x1Cu:
      v6 = @"Persistent ID";
      goto LABEL_136;
    case 0x1Du:
      v6 = @"Checked";
      goto LABEL_136;
    case 0x1Eu:
      v6 = @"Playlist Item ID";
      goto LABEL_136;
    case 0x1Fu:
      v6 = @"Compilation";
      goto LABEL_136;
    case 0x20u:
      v6 = @"Purchase Date";
      goto LABEL_136;
    case 0x21u:
      v6 = @"Relevance";
      goto LABEL_136;
    case 0x22u:
      v6 = @"Release Date";
      goto LABEL_136;
    case 0x23u:
      v6 = @"Beat Per Minute";
      goto LABEL_136;
    case 0x24u:
      v6 = @"Parent Container ID";
      goto LABEL_136;
    case 0x25u:
      v6 = @"Artwork";
      goto LABEL_136;
    case 0x26u:
      v6 = @"Popuarity";
      goto LABEL_136;
    case 0x27u:
      v6 = @"Grouping";
      goto LABEL_136;
    case 0x28u:
      v6 = @"Playlist";
      goto LABEL_136;
    case 0x29u:
      v6 = @"Purchased";
      goto LABEL_136;
    case 0x2Au:
      v6 = @"Artist ID";
      goto LABEL_136;
    case 0x2Bu:
      v6 = @"Playlist ID";
      goto LABEL_136;
    case 0x2Cu:
      v6 = @"Composer ID";
      goto LABEL_136;
    case 0x2Du:
      v6 = @"Genre ID";
      goto LABEL_136;
    case 0x2Eu:
      v6 = @"Codec Type";
      goto LABEL_136;
    case 0x2Fu:
      v6 = @"Codec Sub-Type";
      goto LABEL_136;
    case 0x30u:
      v6 = @"Song Data Kind";
      goto LABEL_136;
    case 0x31u:
      v6 = @"Disc Count";
      goto LABEL_136;
    case 0x32u:
      v6 = @"Start Time";
      goto LABEL_136;
    case 0x33u:
      v6 = @"Stop Time";
      goto LABEL_136;
    case 0x34u:
      v6 = @"Track Count";
      goto LABEL_136;
    case 0x35u:
      v6 = @"Store Front ID";
      goto LABEL_136;
    case 0x36u:
      v6 = @"Description";
      goto LABEL_136;
    case 0x37u:
      v6 = @"Category";
      goto LABEL_136;
    case 0x38u:
      v6 = @"Keywords";
      goto LABEL_136;
    case 0x39u:
      v6 = @"Podcast";
      goto LABEL_136;
    case 0x3Au:
      v6 = @"Cloud Match State";
      goto LABEL_136;
    case 0x3Bu:
      v6 = @"Has Lyrics";
      goto LABEL_136;
    case 0x3Cu:
      v6 = @"Media Kind";
      goto LABEL_136;
    case 0x3Eu:
      v6 = @"Series Name";
      goto LABEL_136;
    case 0x3Fu:
      v6 = @"Season Number";
      goto LABEL_136;
    case 0x40u:
      v6 = @"Epsisode ID";
      goto LABEL_136;
    case 0x41u:
      v6 = @"Episode Sort ID";
      goto LABEL_136;
    case 0x42u:
      v6 = @"Network Name";
      goto LABEL_136;
    case 0x43u:
      v6 = @"Last Backup Date";
      goto LABEL_136;
    case 0x44u:
      v6 = @"Skips";
      goto LABEL_136;
    case 0x45u:
      v6 = @"Skip Date";
      goto LABEL_136;
    case 0x46u:
      v6 = @"Gapless Album";
      goto LABEL_136;
    case 0x47u:
      v6 = @"Album Artist";
      goto LABEL_136;
    case 0x48u:
      v6 = @"Shuffle ID";
      goto LABEL_136;
    case 0x49u:
      v6 = @"Track ID";
      goto LABEL_136;
    case 0x4Au:
      v6 = @"Relative Volumne";
      goto LABEL_136;
    case 0x4Bu:
      v6 = @"Attributes";
      goto LABEL_136;
    case 0x4Cu:
    case 0x60u:
      v6 = @"Private";
      goto LABEL_136;
    case 0x4Du:
      v6 = @"Album Info";
      goto LABEL_136;
    case 0x4Eu:
      v6 = @"Sort Name";
      goto LABEL_136;
    case 0x4Fu:
      v6 = @"Sort Album";
      goto LABEL_136;
    case 0x50u:
      v6 = @"Sort Artist";
      goto LABEL_136;
    case 0x51u:
      v6 = @"Sort Album Artist";
      goto LABEL_136;
    case 0x52u:
      v6 = @"Sort Composer";
      goto LABEL_136;
    case 0x53u:
      v6 = @"Sort Series Name";
      goto LABEL_136;
    case 0x54u:
      v6 = @"Moive Info";
      goto LABEL_136;
    case 0x55u:
      v6 = @"Poscast URL";
      goto LABEL_136;
    case 0x56u:
      v6 = @"Long Description";
      goto LABEL_136;
    case 0x57u:
      v6 = @"Exernal GUID";
      goto LABEL_136;
    case 0x58u:
      v6 = @"Chapter Data";
      goto LABEL_136;
    case 0x59u:
      v6 = @"Video Rating";
      goto LABEL_136;
    case 0x5Au:
      v6 = @"Album Rating";
      goto LABEL_136;
    case 0x5Bu:
      v6 = @"Rental Expiration Date";
      goto LABEL_136;
    case 0x5Cu:
      v6 = @"Obsolere Ringtone Status";
      goto LABEL_136;
    case 0x5Du:
      v6 = @"Bookmark Time";
      goto LABEL_136;
    case 0x5Eu:
      v6 = @"Remember Bookmark";
      goto LABEL_136;
    case 0x5Fu:
      v6 = @"Has Been Played";
      goto LABEL_136;
    case 0x61u:
      v6 = @"Has Subtitles";
      goto LABEL_136;
    case 0x62u:
      v6 = @"Audio Language";
      goto LABEL_136;
    case 0x63u:
      v6 = @"Audio Track Index";
      goto LABEL_136;
    case 0x64u:
      v6 = @"Audio Track ID";
      goto LABEL_136;
    case 0x65u:
      v6 = @"Subtitle Language";
      goto LABEL_136;
    case 0x66u:
      v6 = @"Subtitle Track Index";
      goto LABEL_136;
    case 0x67u:
      v6 = @"Subtitle Track ID";
      goto LABEL_136;
    case 0x68u:
      v6 = @"Studio";
      goto LABEL_136;
    case 0x69u:
      v6 = @"Reserved 1";
      goto LABEL_136;
    case 0x6Au:
      v6 = @"Reserved 2";
      goto LABEL_136;
    case 0x6Bu:
      v6 = @"Reserved 3";
      goto LABEL_136;
    case 0x6Cu:
      v6 = @"Reserved 4";
      goto LABEL_136;
    case 0x6Du:
      v6 = @"Reserved 5";
      goto LABEL_136;
    case 0x6Eu:
      v6 = @"Gpaless Info";
      goto LABEL_136;
    case 0x6Fu:
      v6 = @"Genius ID";
      goto LABEL_136;
    case 0x70u:
      v6 = @"Exclude From Shuffle";
      goto LABEL_136;
    case 0x71u:
      v6 = @"Lyrics";
      goto LABEL_136;
    case 0x72u:
      v6 = @"Store Persistent ID";
      goto LABEL_136;
    case 0x73u:
      v6 = @"Jukebox Votes";
      goto LABEL_136;
    case 0x74u:
      v6 = @"Voice Over Language";
      goto LABEL_136;
    case 0x75u:
      v6 = @"iTunes U";
      goto LABEL_136;
    case 0x76u:
      v6 = @"Uncompressed Size";
      goto LABEL_136;
    case 0x77u:
      v6 = @"XID";
      goto LABEL_136;
    case 0x78u:
      v6 = @"Game GUID";
      goto LABEL_136;
    case 0x79u:
      v6 = @"App Identifier";
      goto LABEL_136;
    case 0x7Au:
      v6 = @"Obsolete Track Kind";
      goto LABEL_136;
    case 0x7Bu:
      v6 = @"Version";
      goto LABEL_136;
    case 0x7Cu:
      v6 = @"Copyright";
      goto LABEL_136;
    case 0x7Du:
      v6 = @"User Disabled";
      goto LABEL_136;
    case 0x7Eu:
      v6 = @"Album Artwork";
      goto LABEL_136;
    case 0x7Fu:
      v6 = @"Collection Description";
      goto LABEL_136;
    case 0x80u:
      v6 = @"Flavor";
      goto LABEL_136;
    case 0x81u:
      v6 = @"Cloud ID";
      goto LABEL_136;
    case 0x82u:
      v6 = @"Cloud Download";
      goto LABEL_136;
    case 0x83u:
      v6 = @"Chosen By Auto Fill";
      goto LABEL_136;
    case 0x84u:
      v6 = @"Cloud User ID";
      goto LABEL_136;
    case 0x85u:
      v6 = @"Location (Track Kinds)";
      goto LABEL_136;
    case 0x86u:
      v6 = @"iCloud Type";
      goto LABEL_136;
    case 0x9Au:
      v6 = @"Liked State";
      goto LABEL_136;
    case 0xB7u:
      v6 = @"Liked State Changed Date";
LABEL_136:

      v4 = v6;
      break;
    default:
      break;
  }

  return v4;
}

- (id)_stringForCriterionBuffer:(id *)buffer
{
  switch(buffer->var0)
  {
    case 2u:
    case 3u:
    case 4u:
    case 8u:
    case 9u:
    case 0xEu:
    case 0x11u:
    case 0x12u:
    case 0x27u:
    case 0x36u:
    case 0x37u:
    case 0x3Eu:
    case 0x40u:
    case 0x41u:
    case 0x42u:
    case 0x47u:
    case 0x4Eu:
    case 0x4Fu:
    case 0x50u:
    case 0x51u:
    case 0x52u:
    case 0x53u:
    case 0x56u:
    case 0x57u:
    case 0x71u:
    case 0x7Cu:
    case 0x7Fu:
    case 0x80u:
      var6 = buffer->var6;
      v10 = *&buffer->var0;
      v11 = var6;
      v4 = [(ML3Container *)self _stringStringForCriteriaInfo:&v10];
      break;
    case 5u:
    case 6u:
    case 7u:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0x14u:
    case 0x16u:
    case 0x18u:
    case 0x19u:
    case 0x1Bu:
    case 0x1Cu:
    case 0x23u:
    case 0x28u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Cu:
    case 0x2Du:
    case 0x31u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x35u:
    case 0x3Cu:
    case 0x3Fu:
    case 0x44u:
    case 0x4Au:
    case 0x5Au:
    case 0x5Du:
    case 0x62u:
    case 0x63u:
    case 0x64u:
    case 0x65u:
    case 0x66u:
    case 0x6Fu:
    case 0x72u:
    case 0x76u:
    case 0x77u:
    case 0x81u:
    case 0x86u:
    case 0x9Au:
      v3 = buffer->var6;
      v10 = *&buffer->var0;
      v11 = v3;
      v4 = [(ML3Container *)self _numericStringForCriteriaInfo:&v10];
      break;
    case 0xAu:
    case 0x10u:
    case 0x17u:
    case 0x22u:
    case 0x45u:
    case 0xB7u:
      v7 = buffer->var6;
      v10 = *&buffer->var0;
      v11 = v7;
      v4 = [(ML3Container *)self _dateStringForCriteriaInfo:&v10];
      break;
    case 0x1Du:
    case 0x1Fu:
    case 0x25u:
    case 0x29u:
    case 0x39u:
    case 0x5Eu:
    case 0x5Fu:
    case 0x60u:
    case 0x61u:
    case 0x70u:
    case 0x75u:
    case 0x7Du:
    case 0x83u:
    case 0x85u:
      v6 = buffer->var6;
      v10 = *&buffer->var0;
      v11 = v6;
      v4 = [(ML3Container *)self _BOOLeanStringForCriteriaInfo:&v10];
      break;
    case 0x7Eu:
      v9 = buffer->var6;
      v10 = *&buffer->var0;
      v11 = v9;
      v4 = [(ML3Container *)self _nonzeroStringForCriteriaInfo:&v10];
      break;
    default:
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unsupported: %d)", buffer->var0];
      break;
  }

  return v4;
}

- (id)_convertNumericValueFromCriterionMatchKey:(unsigned int)key criteriaValue:(int64_t)value
{
  if (key == 13)
  {
    v4 = [(ML3Container *)self _formatTime:value];
  }

  else
  {
    if (key == 12)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", value / 0x100000];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", value];
    }
    v4 = ;
  }

  return v4;
}

- (id)_numericStringForCriteriaInfo:(id *)info
{
  var1 = info->var1;
  LODWORD(v15) = 0;
  GetSearchCriterionInfoValueRange();
  ValueRangeCriteriaStartValue = GetValueRangeCriteriaStartValue();
  ValueRangeCriteriaEndValue = GetValueRangeCriteriaEndValue();
  var0 = info->var0;
  if (var0 > 89)
  {
    if (var0 != 90)
    {
      if (var0 == 134)
      {
        v9 = [(ML3Container *)self _stringForTrackFieldCloudStatus:ValueRangeCriteriaStartValue];
        v11 = 0;
        goto LABEL_11;
      }

      goto LABEL_9;
    }

LABEL_8:
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld (%d stars)", ValueRangeCriteriaStartValue, ValueRangeCriteriaStartValue / 20, 0, 0, 0, 0, 0, 0, 0, 0, v15];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld (%d stars)", ValueRangeCriteriaEndValue, ValueRangeCriteriaEndValue / 20];
    goto LABEL_10;
  }

  if (var0 == 25)
  {
    goto LABEL_8;
  }

  if (var0 != 60)
  {
LABEL_9:
    v9 = [(ML3Container *)self _convertNumericValueFromCriterionMatchKey:var0 criteriaValue:ValueRangeCriteriaStartValue];
    v10 = [(ML3Container *)self _convertNumericValueFromCriterionMatchKey:info->var0 criteriaValue:ValueRangeCriteriaEndValue];
    goto LABEL_10;
  }

  v9 = [(ML3Container *)self _stringForTrackFieldMediaKind:ValueRangeCriteriaStartValue];
  v10 = [(ML3Container *)self _stringForTrackFieldMediaKind:ValueRangeCriteriaEndValue];
LABEL_10:
  v11 = v10;
LABEL_11:
  if ((var1 & 0x100) != 0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ to %@", v9, v11];
  }

  else if ((var1 & 0x200) != 0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ and %@", v9, v11];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v9, v14];
  }
  v12 = ;

  return v12;
}

- (id)_nonzeroStringForCriteriaInfo:(id *)info
{
  var6 = info->var6;
  v6[0] = *&info->var0;
  v6[1] = var6;
  v4 = [(ML3Container *)self _BOOLeanStringForCriteriaInfo:v6];

  return v4;
}

- (id)_dateStringForCriteriaInfo:(id *)info
{
  if (_dateStringForCriteriaInfo__onceToken != -1)
  {
    dispatch_once(&_dateStringForCriteriaInfo__onceToken, &__block_literal_global_27530);
  }

  var1 = info->var1;
  GetSearchCriterionInfoValueRange();
  v5 = CFTimeZoneCopySystem();
  v6 = MEMORY[0x277CBECC8];
  v7 = (GetValueRangeCriteriaStartValue() - *v6);
  v8 = (v7 - CFTimeZoneGetSecondsFromGMT(v5, v7));
  v9 = (GetValueRangeCriteriaEndValue() - *v6);
  v10 = v9 - CFTimeZoneGetSecondsFromGMT(v5, v9);
  CFRelease(v5);
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v8];
  v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v10];
  v13 = [_dateStringForCriteriaInfo__formatter stringFromDate:v11];
  v14 = [_dateStringForCriteriaInfo__formatter stringFromDate:v12];
  if ((var1 & 0x100) != 0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) to (%@)", v13, v14];
  }

  else if ((var1 & 0x200) != 0)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"(%@) and (%@)", v13, v14];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v13, v17];
  }
  v15 = ;

  return v15;
}

uint64_t __63__ML3Container_SmartPlaylistDebug___dateStringForCriteriaInfo___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = _dateStringForCriteriaInfo__formatter;
  _dateStringForCriteriaInfo__formatter = v0;

  v2 = _dateStringForCriteriaInfo__formatter;

  return [v2 setDateFormat:@"MM/dd/yyyy HH:mm"];
}

- (id)_BOOLeanStringForCriteriaInfo:(id *)info
{
  HIDWORD(v4) = info->var0 - 29;
  LODWORD(v4) = HIDWORD(v4);
  v3 = v4 >> 1;
  if (v3 > 3)
  {
    if (v3 != 6 && v3 != 4)
    {
      goto LABEL_15;
    }

LABEL_10:
    var1_high = HIBYTE(info->var1);
    v6 = @"true";
    v7 = @"false";
    goto LABEL_11;
  }

  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3 == 1)
  {
    var1_high = HIBYTE(info->var1);
    v6 = @"false";
    v7 = @"true";
LABEL_11:
    v9 = (var1_high & 2) == 0;
    goto LABEL_12;
  }

LABEL_15:
  if (info->var0 == 133 && (info->var1 & 0x400) != 0)
  {
    GetSearchCriterionInfoNumericValue();
  }

  GetSearchCriterionInfoBooleanValue();
  v6 = @"true";
  v7 = @"false";
  v9 = 1;
LABEL_12:
  if (v9)
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

- (id)_addUnitesForCriterionInfo:(id *)info
{
  v3 = @"MB";
  var0 = info->var0;
  v5 = &stru_28408B690;
  if (info->var0 == 6)
  {
    v5 = @"Hz";
  }

  if (var0 != 12)
  {
    v3 = v5;
  }

  if (var0 == 5)
  {
    return @"kbps";
  }

  else
  {
    return v3;
  }
}

- (id)_criteriaListDescription:(SearchCriteriaList *)description level:(int64_t)level
{
  levelCopy = level;
  v13 = *MEMORY[0x277D85DE8];
  LockSearchCriteriaList();
  v5 = [MEMORY[0x277CCAB68] stringWithFormat:@"%*c", (3 * levelCopy), 32];
  GetSearchCriteriaListOptions();
  v6 = CountSearchCriteria();
  [v5 appendString:@"&&\n"];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      SearchCriterionInfo = GetSearchCriterionInfo();
      if (SearchCriterionInfo)
      {
        v9 = SearchCriterionInfo;
        v10 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = v9;
          _os_log_impl(&dword_22D2FA000, v10, OS_LOG_TYPE_ERROR, "Got an error getting search criterion info: %ld", buf, 0xCu);
        }
      }
    }
  }

  UnlockSearchCriteriaList();

  return v5;
}

- (id)criteriaListDescription
{
  v3 = [(ML3Entity *)self valueForProperty:@"smart_criteria"];
  v6 = 0;
  if ([v3 length])
  {
    MEMORY[0x2318CCB20]([v3 bytes], objc_msgSend(v3, "length"), &v6);
    v4 = [(ML3Container *)self _criteriaListDescription:v6 level:0];
  }

  else
  {
    v4 = @"No smart playlist criteria";
  }

  return v4;
}

@end
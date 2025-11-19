@interface ML3UpdateSpotlightIndexOperation
- (BOOL)_verifyLibraryAndAttributesProperties:(id *)a3;
- (id)_createSearchableItemsForAlbumsWithQuery:(id)a3 error:(id *)a4;
- (id)_createSearchableItemsForArtistsWithQuery:(id)a3 error:(id *)a4;
- (id)_createSearchableItemsForPlaylistsWithQuery:(id)a3 error:(id *)a4;
- (id)_createSearchableItemsForTracksWithQuery:(id)a3 error:(id *)a4;
- (id)_createSearchableItemsWithPersistentIDs:(id)a3 entityType:(int64_t)a4 error:(id *)a5;
- (id)_queryForPlaylistsContainingMusicShowsMissedByQuery:(id)a3 inContainerPIDs:(id)a4;
- (void)_batchIndexWithObject:(id)a3 completionBlock:(id)a4;
- (void)_batchIndicesWithObjects:(id)a3 completionBlock:(id)a4;
- (void)_deleteAllAndReindexWithCompletionBlock:(id)a3;
- (void)_deleteAllIndexedItemsWithCompletionBlock:(id)a3;
- (void)_deleteIndexedItemsWithEntityStringIDs:(id)a3 completionBlock:(id)a4;
- (void)_enumerateSearchableItemsWithPersistentIDs:(id)a3 entityType:(int64_t)a4 completionBlock:(id)a5;
- (void)_indexAlbumsWithPersistentIDs:(id)a3 completionBlock:(id)a4;
- (void)_indexArtistsWithPersistentIDs:(id)a3 completionBlock:(id)a4;
- (void)_indexItemsFromLibrarySinceRevision:(int64_t)a3 targetRevision:(int64_t)a4 completionBlock:(id)a5;
- (void)_indexPlaylistsWithPersistentIDs:(id)a3 completionBlock:(id)a4;
- (void)_indexTracksWithPersistentIDs:(id)a3 completionBlock:(id)a4;
- (void)_indexTracksWithPersistentIDs:(id)a3 playlistsWithPersistentIDs:(id)a4 albumsWithPersistentIDs:(id)a5 artistsWithPersistentIDs:(id)a6 completionBlock:(id)a7;
- (void)_updateIndexedItemsWithIdentifiers:(id)a3 completionBlock:(id)a4;
- (void)execute;
@end

@implementation ML3UpdateSpotlightIndexOperation

- (BOOL)_verifyLibraryAndAttributesProperties:(id *)a3
{
  v10.receiver = self;
  v10.super_class = ML3UpdateSpotlightIndexOperation;
  if (![(ML3AsyncDatabaseOperation *)&v10 _verifyLibraryAndAttributesProperties:?])
  {
    return 0;
  }

  v5 = [(ML3DatabaseOperation *)self attributes];
  v6 = [v5 objectForKey:@"MLDatabaseOperationAttributeBundleIDKey"];

  v7 = [v6 isEqualToString:@"com.apple.Music"];
  v8 = v7;
  if (a3 && (v7 & 1) == 0)
  {
    *a3 = [ML3MediaLibraryWriter writerErrorWithCode:500 description:@"ML3UpdateSpotlightIndexOperation requires a bundleID attribute"];
  }

  return v8;
}

- (id)_queryForPlaylistsContainingMusicShowsMissedByQuery:(id)a3 inContainerPIDs:(id)a4
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB58] setWithArray:a4];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __104__ML3UpdateSpotlightIndexOperation__queryForPlaylistsContainingMusicShowsMissedByQuery_inContainerPIDs___block_invoke;
  v36[3] = &unk_278765BD8;
  v7 = v6;
  v37 = v7;
  v28 = v5;
  [v5 enumeratePersistentIDsUsingBlock:v36];
  v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = +[ML3ComparisonPredicate predicateWithProperty:equalToInt64:](ML3ComparisonPredicate, "predicateWithProperty:equalToInt64:", @"container_item.container_pid", [v12 longLongValue]);
        v39[0] = v13;
        v14 = [ML3ComparisonPredicate predicateWithProperty:@"media_type" value:&unk_2840CA448 comparison:10];
        v39[1] = v14;
        v15 = [ML3ComparisonPredicate predicateWithProperty:@"item.is_music_show" equalToInt64:1];
        v39[2] = v15;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:3];
        v17 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v16];

        v18 = [(ML3DatabaseOperation *)self library];
        v19 = [(ML3Entity *)ML3Track unrestrictedQueryWithLibrary:v18 predicate:v17 orderingTerms:MEMORY[0x277CBEBF8]];

        if ([v19 hasEntities])
        {
          [v29 addObject:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v9);
  }

  if ([v29 count])
  {
    v20 = [ML3PersistentIDsPredicate predicateWithPersistentIDs:v29 shouldContain:1];
    v38[0] = v20;
    v21 = [ML3ComparisonPredicate predicateWithProperty:@"smart_is_folder" equalToInteger:0];
    v38[1] = v21;
    v22 = [ML3ComparisonPredicate predicateWithProperty:@"is_hidden" equalToInteger:0];
    v38[2] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
    v24 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v23];

    v25 = [(ML3DatabaseOperation *)self library];
    v26 = [(ML3Entity *)ML3Container unrestrictedQueryWithLibrary:v25 predicate:v24 orderingTerms:MEMORY[0x277CBEBF8]];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void __104__ML3UpdateSpotlightIndexOperation__queryForPlaylistsContainingMusicShowsMissedByQuery_inContainerPIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
  [v2 removeObject:v3];
}

- (id)_createSearchableItemsForArtistsWithQuery:(id)a3 error:(id *)a4
{
  v23[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v23[0] = @"album_artist";
  v23[1] = @"sync_id";
  v23[2] = @"store_id";
  v23[3] = @"cloud_universal_library_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:4];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Creating searchable items for artists", buf, 2u);
  }

  v10 = [(ML3DatabaseOperation *)self attributes];
  v11 = [v10 objectForKeyedSubscript:@"MLDatabaseOperationAttributeSpotlightIndexAppEntityAssociatorKey"];

  v12 = objc_autoreleasePoolPush();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__ML3UpdateSpotlightIndexOperation__createSearchableItemsForArtistsWithQuery_error___block_invoke;
  v17[3] = &unk_278765BB0;
  v13 = v11;
  v18 = v13;
  v14 = v7;
  v19 = v14;
  v20 = self;
  v15 = v8;
  v21 = v15;
  [v6 enumeratePersistentIDsAndProperties:v14 usingBlock:v17];

  objc_autoreleasePoolPop(v12);
  if (a4)
  {
    *a4 = 0;
  }

  return v15;
}

void __84__ML3UpdateSpotlightIndexOperation__createSearchableItemsForArtistsWithQuery_error___block_invoke(uint64_t a1, uint64_t a2, id *a3)
{
  if (a2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *a3;
    v8 = objc_alloc(MEMORY[0x277CC34B8]);
    v9 = [v8 initWithContentType:*MEMORY[0x277CE1D40]];
    [v9 setDisplayName:v7];
    [v9 setTitle:v7];
    if (_os_feature_enabled_impl())
    {
      if (*(a1 + 32))
      {
        v10 = [MEMORY[0x277CBEB38] dictionary];
        v11 = *(a1 + 40);
        v20 = MEMORY[0x277D85DD0];
        v21 = 3221225472;
        v22 = __84__ML3UpdateSpotlightIndexOperation__createSearchableItemsForArtistsWithQuery_error___block_invoke_2;
        v23 = &unk_278765AD0;
        v24 = v10;
        v25 = a3;
        v12 = v10;
        [v11 enumerateObjectsUsingBlock:&v20];
        v13 = *(a1 + 32);
        v14 = [*(a1 + 48) library];
        [v13 associateAppEntityForEntityOfType:7 persistentID:a2 library:v14 properties:v12 withSearchableItemWithAttributeSet:v9];
      }
    }

    v15 = [*(a1 + 48) library];
    v16 = [v15 libraryUID];
    v17 = [(ML3Entity *)ML3AlbumArtist URLForEntityWithPersistentID:a2 libraryUID:v16];
    v18 = [v17 absoluteString];

    v19 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v18 domainIdentifier:0 attributeSet:v9];
    [*(a1 + 56) addObject:v19];

    objc_autoreleasePoolPop(v6);
  }
}

- (id)_createSearchableItemsForAlbumsWithQuery:(id)a3 error:(id *)a4
{
  v30[6] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__25535;
  v28 = __Block_byref_object_dispose__25536;
  v29 = 0;
  v30[0] = @"album";
  v30[1] = @"album_artist.album_artist";
  v30[2] = @"date_played_local";
  v30[3] = @"store_id";
  v30[4] = @"cloud_library_id";
  v30[5] = @"sync_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:6];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Creating searchable items for playlists", buf, 2u);
  }

  v10 = [(ML3DatabaseOperation *)self attributes];
  v11 = [v10 objectForKeyedSubscript:@"MLDatabaseOperationAttributeSpotlightIndexAppEntityAssociatorKey"];

  v12 = objc_autoreleasePoolPush();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__ML3UpdateSpotlightIndexOperation__createSearchableItemsForAlbumsWithQuery_error___block_invoke;
  v17[3] = &unk_278765AF8;
  v22 = &v24;
  v13 = v11;
  v18 = v13;
  v14 = v7;
  v19 = v14;
  v20 = self;
  v15 = v8;
  v21 = v15;
  [v6 enumeratePersistentIDsAndProperties:v14 usingBlock:v17];

  objc_autoreleasePoolPop(v12);
  if (v25[5])
  {

    v15 = 0;
  }

  if (a4)
  {
    *a4 = v25[5];
  }

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __83__ML3UpdateSpotlightIndexOperation__createSearchableItemsForAlbumsWithQuery_error___block_invoke(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  v41[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    context = objc_autoreleasePoolPush();
    v8 = *a3;
    v9 = a3[1];
    v10 = a3[2];
    [v10 doubleValue];
    if (fabs(v11) <= 0.00000011920929)
    {
      v13 = 0;
    }

    else
    {
      v12 = MEMORY[0x277CBEAA8];
      [v10 doubleValue];
      v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
    }

    v20 = objc_alloc(MEMORY[0x277CC34B8]);
    v21 = [v20 initWithContentType:*MEMORY[0x277CE1D40]];
    [v21 setDisplayName:v8];
    [v21 setTitle:v8];
    [v21 setArtist:v9];
    [v21 setLastUsedDate:v13];
    if (_os_feature_enabled_impl())
    {
      if (*(a1 + 32))
      {
        v22 = [MEMORY[0x277CBEB38] dictionary];
        v23 = *(a1 + 40);
        v34 = MEMORY[0x277D85DD0];
        v35 = 3221225472;
        v36 = __83__ML3UpdateSpotlightIndexOperation__createSearchableItemsForAlbumsWithQuery_error___block_invoke_2;
        v37 = &unk_278765AD0;
        v38 = v22;
        v39 = a3;
        v24 = v22;
        [v23 enumerateObjectsUsingBlock:&v34];
        v25 = *(a1 + 32);
        v26 = [*(a1 + 48) library];
        [v25 associateAppEntityForEntityOfType:4 persistentID:a2 library:v26 properties:v24 withSearchableItemWithAttributeSet:v21];
      }
    }

    v27 = [*(a1 + 48) library];
    v28 = [v27 libraryUID];
    v29 = [(ML3Entity *)ML3Album URLForEntityWithPersistentID:a2 libraryUID:v28];
    v30 = [v29 absoluteString];

    v31 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v30 domainIdentifier:0 attributeSet:v21];
    [*(a1 + 56) addObject:v31];

    objc_autoreleasePoolPop(contexta);
  }

  else
  {
    v15 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41[0] = @"Failed to create CSSearchable albums from the library.";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v17 = [v15 errorWithDomain:@"MLDSpotlightIndexOperationErrorDomain" code:1003 userInfo:v16];
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    *a5 = 1;
  }
}

- (id)_createSearchableItemsForPlaylistsWithQuery:(id)a3 error:(id *)a4
{
  v30[9] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__25535;
  v28 = __Block_byref_object_dispose__25536;
  v29 = 0;
  v30[0] = @"name";
  v30[1] = @"description";
  v30[2] = @"play_count_user";
  v30[3] = @"date_created";
  v30[4] = @"date_played_local";
  v30[5] = @"cloud_global_id";
  v30[6] = @"store_cloud_id";
  v30[7] = @"cloud_universal_library_id";
  v30[8] = @"sync_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:9];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Creating searchable items for playlists", buf, 2u);
  }

  v10 = [(ML3DatabaseOperation *)self attributes];
  v11 = [v10 objectForKeyedSubscript:@"MLDatabaseOperationAttributeSpotlightIndexAppEntityAssociatorKey"];

  v12 = objc_autoreleasePoolPush();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __86__ML3UpdateSpotlightIndexOperation__createSearchableItemsForPlaylistsWithQuery_error___block_invoke;
  v17[3] = &unk_278765AF8;
  v22 = &v24;
  v13 = v11;
  v18 = v13;
  v14 = v7;
  v19 = v14;
  v20 = self;
  v15 = v8;
  v21 = v15;
  [v6 enumeratePersistentIDsAndProperties:v14 usingBlock:v17];

  objc_autoreleasePoolPop(v12);
  if (v25[5])
  {

    v15 = 0;
  }

  if (a4)
  {
    *a4 = v25[5];
  }

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __86__ML3UpdateSpotlightIndexOperation__createSearchableItemsForPlaylistsWithQuery_error___block_invoke(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  v43[1] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    context = objc_autoreleasePoolPush();
    v8 = *a3;
    v9 = a3[1];
    v38 = a3[2];
    v10 = a3[3];
    [v10 doubleValue];
    if (fabs(v11) <= 0.00000011920929)
    {
      v37 = 0;
    }

    else
    {
      v12 = MEMORY[0x277CBEAA8];
      [v10 doubleValue];
      v37 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
    }

    v19 = a3[4];
    [v19 doubleValue];
    if (fabs(v20) <= 0.00000011920929)
    {
      v22 = 0;
    }

    else
    {
      v21 = MEMORY[0x277CBEAA8];
      [v19 doubleValue];
      v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
    }

    v23 = objc_alloc(MEMORY[0x277CC34B8]);
    v24 = [v23 initWithContentType:*MEMORY[0x277CE1E28]];
    [v24 setDisplayName:v8];
    [v24 setTitle:v8];
    v35 = v9;
    [v24 setInformation:v9];
    [v24 setPlayCount:v38];
    [v24 setContentCreationDate:v37];
    [v24 setLastUsedDate:v22];
    if (_os_feature_enabled_impl())
    {
      if (*(a1 + 32))
      {
        v25 = [MEMORY[0x277CBEB38] dictionary];
        v26 = *(a1 + 40);
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __86__ML3UpdateSpotlightIndexOperation__createSearchableItemsForPlaylistsWithQuery_error___block_invoke_2;
        v39[3] = &unk_278765AD0;
        v40 = v25;
        v41 = a3;
        v27 = v25;
        [v26 enumerateObjectsUsingBlock:v39];
        v28 = *(a1 + 32);
        v29 = [*(a1 + 48) library];
        [v28 associateAppEntityForEntityOfType:1 persistentID:a2 library:v29 properties:v27 withSearchableItemWithAttributeSet:v24];
      }
    }

    v30 = [*(a1 + 48) library];
    v31 = [v30 libraryUID];
    v32 = [(ML3Entity *)ML3Container URLForEntityWithPersistentID:a2 libraryUID:v31];
    v33 = [v32 absoluteString];

    v34 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v33 domainIdentifier:0 attributeSet:v24];
    [*(a1 + 56) addObject:v34];

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v14 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA450];
    v43[0] = @"Failed to create CSSearchable playlist items from the library.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    v16 = [v14 errorWithDomain:@"MLDSpotlightIndexOperationErrorDomain" code:1003 userInfo:v15];
    v17 = *(*(a1 + 64) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    *a5 = 1;
  }
}

- (id)_createSearchableItemsForTracksWithQuery:(id)a3 error:(id *)a4
{
  v30[29] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__25535;
  v28 = __Block_byref_object_dispose__25536;
  v29 = 0;
  v30[0] = @"media_type";
  v30[1] = @"item_extra.title";
  v30[2] = @"item_extra.copyright";
  v30[3] = @"date_added";
  v30[4] = @"item_extra.total_time_ms";
  v30[5] = @"(item.remote_location_id >= 50 AND item.remote_location_id < 300)";
  v30[6] = @"item_stats.user_rating";
  v30[7] = @"item_stats.play_count_user";
  v30[8] = @"item_video.movie_info";
  v30[9] = @"genre.genre";
  v30[10] = @"(item.base_location_id >= 250)";
  v30[11] = @"(item_extra.content_rating == 1)";
  v30[12] = @"composer.composer";
  v30[13] = @"album.album";
  v30[14] = @"item_artist.item_artist";
  v30[15] = @"track_number";
  v30[16] = @"item_store.subscription_store_item_id";
  v30[17] = @"item_store.store_item_id";
  v30[18] = @"item_extra.content_rating_level";
  v30[19] = @"item_extra.sort_title";
  v30[20] = @"item_stats.date_played";
  v30[21] = @"in_my_library";
  v30[22] = @"item_store.is_artist_uploaded_content";
  v30[23] = @"item_store.sync_id";
  v30[24] = @"item_store.store_saga_id";
  v30[25] = @"item_store.cloud_universal_library_id";
  v30[26] = @"item_store.cloud_album_id";
  v30[27] = @"item_store.reporting_store_item_id";
  v30[28] = @"item_store.asset_store_item_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:29];
  v8 = [MEMORY[0x277CBEB18] array];
  v9 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Creating searchable items for tracks", buf, 2u);
  }

  v10 = [(ML3DatabaseOperation *)self attributes];
  v11 = [v10 objectForKeyedSubscript:@"MLDatabaseOperationAttributeSpotlightIndexAppEntityAssociatorKey"];

  v12 = objc_autoreleasePoolPush();
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83__ML3UpdateSpotlightIndexOperation__createSearchableItemsForTracksWithQuery_error___block_invoke;
  v17[3] = &unk_278765AF8;
  v22 = &v24;
  v13 = v11;
  v18 = v13;
  v14 = v7;
  v19 = v14;
  v20 = self;
  v15 = v8;
  v21 = v15;
  [v6 enumeratePersistentIDsAndProperties:v14 usingBlock:v17];

  objc_autoreleasePoolPop(v12);
  if (v25[5])
  {

    v15 = 0;
  }

  if (a4)
  {
    *a4 = v25[5];
  }

  _Block_object_dispose(&v24, 8);

  return v15;
}

void __83__ML3UpdateSpotlightIndexOperation__createSearchableItemsForTracksWithQuery_error___block_invoke(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  v88[1] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    v13 = MEMORY[0x277CCA9B8];
    v87 = *MEMORY[0x277CCA450];
    v88[0] = @"Failed to create CSSearchable track items from the library.";
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:&v87 count:1];
    v15 = [v13 errorWithDomain:@"MLDSpotlightIndexOperationErrorDomain" code:1003 userInfo:v14];
    v16 = *(*(a1 + 64) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;

    *a5 = 1;
    return;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = [*a3 unsignedIntValue];
  v10 = v9;
  if ((v9 & 0x2E00) != 0)
  {
    v11 = MEMORY[0x277CE1EC0];
  }

  else
  {
    if ((v9 & 8) == 0)
    {
      v18 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Skipping library item with invalid media type", buf, 2u);
      }

      goto LABEL_52;
    }

    v11 = MEMORY[0x277CE1D00];
  }

  v19 = [*v11 identifier];
  if (v19)
  {
    v20 = v19;
    v58 = v8;
    if ((v10 & 0x400) != 0)
    {
      v21 = MEMORY[0x277CC2358];
    }

    else if ((v10 & 0x800) != 0)
    {
      v21 = MEMORY[0x277CC2350];
    }

    else if ((v10 & 0x2000) != 0)
    {
      v21 = MEMORY[0x277CC2348];
    }

    else if ((v10 & 0x200) != 0)
    {
      v21 = MEMORY[0x277CC2368];
    }

    else
    {
      if ((v10 & 8) == 0)
      {
        v78 = 0;
        goto LABEL_22;
      }

      v21 = MEMORY[0x277CC2360];
    }

    v78 = *v21;
LABEL_22:
    v77 = a3[1];
    v76 = a3[2];
    v22 = a3[3];
    [v22 doubleValue];
    v56 = v22;
    if (fabs(v23) <= 0.00000011920929)
    {
      v75 = 0;
    }

    else
    {
      v24 = MEMORY[0x277CBEAA8];
      [v22 doubleValue];
      v75 = [v24 dateWithTimeIntervalSinceReferenceDate:?];
    }

    v74 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a3[4], "unsignedIntValue") / 0x3E8uLL}];
    v73 = a3[5];
    v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(a3[6], "unsignedIntValue") / 0x14uLL}];
    v71 = a3[7];
    v25 = a3[8];
    v55 = v25;
    if (![v25 length])
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
LABEL_35:
      v33 = a3[9];
      v67 = v33;
      if ((v10 & 8) != 0)
      {
        v66 = v33;
      }

      else
      {
        v66 = 0;
      }

      v65 = a3[10];
      v64 = a3[11];
      v63 = a3[12];
      v62 = a3[13];
      v61 = a3[14];
      v60 = a3[15];
      v34 = a3[16];
      if (![v34 longLongValue])
      {
        v35 = a3[17];

        v34 = v35;
      }

      v59 = a3[18];
      v36 = a3[19];
      v37 = a3[20];
      [v37 doubleValue];
      if (fabs(v38) <= 0.00000011920929)
      {
        v40 = 0;
      }

      else
      {
        v39 = MEMORY[0x277CBEAA8];
        [v37 doubleValue];
        v40 = [v39 dateWithTimeIntervalSinceReferenceDate:?];
      }

      v57 = v20;
      v41 = [objc_alloc(MEMORY[0x277CC34B8]) initWithItemContentType:v20];
      [v41 setDisplayName:v77];
      [v41 setTitle:v77];
      [v41 setCopyright:v76];
      [v41 setContentCreationDate:v75];
      [v41 setDuration:v74];
      if (v78)
      {
        v84 = v78;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v84 count:1];
        [v41 setMediaTypes:v42];
      }

      else
      {
        [v41 setMediaTypes:MEMORY[0x277CBEBF8]];
      }

      [v41 setStreamable:v73];
      [v41 setRating:v72];
      [v41 setPlayCount:v71];
      [v41 setDirector:v69];
      [v41 setProducer:v68];
      [v41 setGenre:v67];
      [v41 setPerformers:v70];
      [v41 setLocal:v65];
      [v41 setContentRating:v64];
      [v41 setComposer:v63];
      [v41 setAlbum:v62];
      [v41 setArtist:v61];
      [v41 setAudioTrackNumber:v60];
      [v41 setMusicalGenre:v66];
      v43 = [v34 stringValue];
      [v41 setAdamID:v43];

      [v41 setExtendedContentRating:v59];
      if ([v36 length])
      {
        v83 = v36;
        v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
        [v41 setAlternateNames:v44];
      }

      [v41 setLastUsedDate:v40];
      if (_os_feature_enabled_impl())
      {
        if (*(a1 + 32))
        {
          v45 = [MEMORY[0x277CBEB38] dictionary];
          v46 = *(a1 + 40);
          v79[0] = MEMORY[0x277D85DD0];
          v79[1] = 3221225472;
          v79[2] = __83__ML3UpdateSpotlightIndexOperation__createSearchableItemsForTracksWithQuery_error___block_invoke_79;
          v79[3] = &unk_278765AD0;
          v80 = v45;
          v81 = a3;
          v47 = v45;
          [v46 enumerateObjectsUsingBlock:v79];
          v48 = *(a1 + 32);
          v49 = [*(a1 + 48) library];
          [v48 associateAppEntityForEntityOfType:0 persistentID:a2 library:v49 properties:v47 withSearchableItemWithAttributeSet:v41];
        }
      }

      v50 = [*(a1 + 48) library];
      v51 = [v50 libraryUID];
      v52 = [(ML3Entity *)ML3Track URLForEntityWithPersistentID:a2 libraryUID:v51];
      v53 = [v52 absoluteString];

      v54 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v53 domainIdentifier:0 attributeSet:v41];
      [*(a1 + 56) addObject:v54];

      v18 = v57;
      v8 = v58;
LABEL_52:

      goto LABEL_53;
    }

    v26 = MEMORY[0x277CCAC58];
    v27 = [v25 dataUsingEncoding:4];
    v82 = 0;
    v28 = [v26 propertyListWithData:v27 options:0 format:0 error:&v82];
    v29 = v82;

    if (v29)
    {
      v30 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v86 = v29;
        _os_log_impl(&dword_22D2FA000, v30, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Failed to decode movie info plist with error: %{public}@", buf, 0xCu);
      }

      v69 = 0;
      v70 = 0;
      v68 = 0;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v69 = 0;
        v70 = 0;
        v68 = 0;
        goto LABEL_34;
      }

      v70 = [v28 valueForKeyPath:@"cast.name"];
      v30 = [v28 valueForKeyPath:@"directors.name"];
      v69 = [v30 firstObject];
      [v28 valueForKeyPath:@"producers.name"];
      v32 = v31 = v20;
      v68 = [v32 firstObject];

      v20 = v31;
    }

LABEL_34:
    goto LABEL_35;
  }

LABEL_53:
  objc_autoreleasePoolPop(v8);
}

- (id)_createSearchableItemsWithPersistentIDs:(id)a3 entityType:(int64_t)a4 error:(id *)a5
{
  v70 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a4)
  {
    if (a4 == 1)
    {
      v54 = [ML3ComparisonPredicate predicateWithProperty:@"smart_is_folder" equalToInteger:0];
      *&buf = v54;
      v9 = [ML3ComparisonPredicate predicateWithProperty:@"is_hidden" equalToInteger:0];
      *(&buf + 1) = v9;
      [ML3ComparisonPredicate predicateWithProperty:@"contained_media_type" equalToInteger:0];
      v10 = v56 = a5;
      v66 = v10;
      v11 = [ML3ComparisonPredicate predicateWithProperty:@"contained_media_type" value:&unk_2840CA460 comparison:10];
      v67 = v11;
      v12 = self;
      v13 = v8;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:2];
      v15 = [(ML3CompoundPredicate *)ML3AnyCompoundPredicate predicateMatchingPredicates:v14];
      v69 = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:3];
      v17 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v16];

      v8 = v13;
      self = v12;

      a5 = v56;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    if ([(ML3UpdateSpotlightIndexOperation *)self bundle]== 1)
    {
      v18 = [ML3PropertyPredicate predicateWithProperty:@"in_my_library"];
      *&buf = v18;
      v52 = [ML3PropertyPredicate predicateWithProperty:@"(item.base_location_id OR item.remote_location_id)"];
      *(&buf + 1) = v52;
      v57 = a5;
      v51 = [ML3ComparisonPredicate predicateWithProperty:@"media_type" value:&unk_2840CA460 comparison:10];
      v66 = v51;
      [ML3ComparisonPredicate predicateWithProperty:@"media_type" value:&unk_2840CA448 comparison:10];
      v53 = self;
      v19 = v55 = v8;
      v65[0] = v19;
      v20 = [ML3PropertyPredicate predicateWithProperty:@"item.is_music_show"];
      v65[1] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:2];
      v22 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v21];
      v67 = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:2];
      v24 = [(ML3CompoundPredicate *)ML3AnyCompoundPredicate predicateMatchingPredicates:v23];
      v69 = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&buf count:3];
      v17 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v25];

      a5 = v57;
      self = v53;
      v8 = v55;
    }

    else
    {
      v18 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22D2FA000, v18, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Trying to build searchable items with an unknown bundle id", &buf, 2u);
      }

      v17 = 0;
    }
  }

  if ([v8 count] && v17)
  {
    v64[0] = v17;
    v26 = [ML3PersistentIDsPredicate predicateWithPersistentIDs:v8 shouldContain:1];
    v64[1] = v26;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];
    v28 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v27];

    v17 = v28;
  }

  switch(a4)
  {
    case 0:
      v42 = [(ML3DatabaseOperation *)self library];
      v30 = [(ML3Entity *)ML3Track unrestrictedQueryWithLibrary:v42 predicate:v17 orderingTerms:MEMORY[0x277CBEBF8]];

      v63 = 0;
      v31 = [(ML3UpdateSpotlightIndexOperation *)self _createSearchableItemsForTracksWithQuery:v30 error:&v63];
      v43 = v63;
LABEL_35:
      v32 = v43;
      goto LABEL_36;
    case 7:
      v45 = [(ML3DatabaseOperation *)self library];
      v30 = [(ML3Entity *)ML3AlbumArtist unrestrictedQueryWithLibrary:v45 predicate:v17 orderingTerms:MEMORY[0x277CBEBF8]];

      v59 = 0;
      v31 = [(ML3UpdateSpotlightIndexOperation *)self _createSearchableItemsForArtistsWithQuery:v30 error:&v59];
      v43 = v59;
      goto LABEL_35;
    case 4:
      v44 = [(ML3DatabaseOperation *)self library];
      v30 = [(ML3Entity *)ML3Album unrestrictedQueryWithLibrary:v44 predicate:v17 orderingTerms:MEMORY[0x277CBEBF8]];

      v60 = 0;
      v31 = [(ML3UpdateSpotlightIndexOperation *)self _createSearchableItemsForAlbumsWithQuery:v30 error:&v60];
      v43 = v60;
      goto LABEL_35;
  }

  if (a4 != 1)
  {
    v31 = MEMORY[0x277CBEBF8];
    goto LABEL_43;
  }

  v29 = [(ML3DatabaseOperation *)self library];
  v30 = [(ML3Entity *)ML3Container unrestrictedQueryWithLibrary:v29 predicate:v17 orderingTerms:MEMORY[0x277CBEBF8]];

  v62 = 0;
  v31 = [(ML3UpdateSpotlightIndexOperation *)self _createSearchableItemsForPlaylistsWithQuery:v30 error:&v62];
  v32 = v62;
  if (!v31)
  {
    v49 = [MEMORY[0x277CCA890] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"ML3UpdateSpotlightIndexOperation.m" lineNumber:645 description:@"_createSearchableItemsForPlaylistsWithQuery must return an array of CSSearchableItems."];
  }

  if ([(ML3UpdateSpotlightIndexOperation *)self bundle]== 1)
  {
    v33 = [v31 count];
    if (v33 != [v8 count] && !v32)
    {
      v34 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_22D2FA000, v34, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Some playlists might contain Music Shows & Movies items only, investigating...", &buf, 2u);
      }

      v35 = v8;
      v36 = [(ML3UpdateSpotlightIndexOperation *)self _queryForPlaylistsContainingMusicShowsMissedByQuery:v30 inContainerPIDs:v8];
      v61 = 0;
      [(ML3UpdateSpotlightIndexOperation *)self _createSearchableItemsForPlaylistsWithQuery:v36 error:&v61];
      v38 = v37 = self;
      v32 = v61;
      if (!v38)
      {
        v50 = [MEMORY[0x277CCA890] currentHandler];
        [v50 handleFailureInMethod:a2 object:v37 file:@"ML3UpdateSpotlightIndexOperation.m" lineNumber:654 description:@"_createSearchableItemsForPlaylistsWithQuery must return an array of CSSearchableItems."];
      }

      if ([v38 count])
      {
        v39 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v38 count];
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v40;
          _os_log_impl(&dword_22D2FA000, v39, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Found %ld playlists with Music Shows & Movies items only. Adding them to the searchable items array", &buf, 0xCu);
        }

        v41 = [v31 arrayByAddingObjectsFromArray:v38];

        v31 = v41;
      }

      v8 = v35;
    }
  }

LABEL_36:

  if (v32)
  {
    if (!a5)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_43:
  v48 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_22D2FA000, v48, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Finished searchable items creation", &buf, 2u);
  }

  v32 = 0;
  if (a5)
  {
LABEL_38:
    v46 = v32;
    *a5 = v32;
  }

LABEL_39:

  return v31;
}

- (void)_enumerateSearchableItemsWithPersistentIDs:(id)a3 entityType:(int64_t)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v19 = 0;
  v11 = [(ML3UpdateSpotlightIndexOperation *)self _createSearchableItemsWithPersistentIDs:v8 entityType:a4 error:&v19];
  v12 = v19;
  v13 = os_log_create("com.apple.amp.medialibrary", "Default");
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v18 = 0;
      v15 = "[ML3UpdateSpotlightIndexOperation]  ┃  Failed to create searchable items";
      v16 = &v18;
LABEL_6:
      _os_log_impl(&dword_22D2FA000, v13, OS_LOG_TYPE_DEFAULT, v15, v16, 2u);
    }
  }

  else if (v14)
  {
    v17 = 0;
    v15 = "[ML3UpdateSpotlightIndexOperation]  ┃  Created searchable items batch";
    v16 = &v17;
    goto LABEL_6;
  }

  v9[2](v9, v11, v12);
  objc_autoreleasePoolPop(v10);
}

- (void)_indexArtistsWithPersistentIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Started to index artists", buf, 2u);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __83__ML3UpdateSpotlightIndexOperation__indexArtistsWithPersistentIDs_completionBlock___block_invoke;
    v9[3] = &unk_2787659B8;
    v9[4] = self;
    v10 = v7;
    [(ML3UpdateSpotlightIndexOperation *)self _enumerateSearchableItemsWithPersistentIDs:v6 entityType:7 completionBlock:v9];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __83__ML3UpdateSpotlightIndexOperation__indexArtistsWithPersistentIDs_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) index];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __83__ML3UpdateSpotlightIndexOperation__indexArtistsWithPersistentIDs_completionBlock___block_invoke_2;
    v10[3] = &unk_278765990;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    [v6 indexSearchableItems:v7 completionHandler:v10];
  }
}

void __83__ML3UpdateSpotlightIndexOperation__indexArtistsWithPersistentIDs_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Failed to index spotlight artists", &v9, 2u);
    }
  }

  else if (v6)
  {
    v7 = [*(a1 + 32) count];
    v8 = [*(a1 + 40) bundleIdentifier];
    v9 = 134218242;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Updated %lu artists in spotlight index with bundle ID:%@", &v9, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_indexAlbumsWithPersistentIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Started to index albums", buf, 2u);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__ML3UpdateSpotlightIndexOperation__indexAlbumsWithPersistentIDs_completionBlock___block_invoke;
    v9[3] = &unk_2787659B8;
    v9[4] = self;
    v10 = v7;
    [(ML3UpdateSpotlightIndexOperation *)self _enumerateSearchableItemsWithPersistentIDs:v6 entityType:4 completionBlock:v9];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __82__ML3UpdateSpotlightIndexOperation__indexAlbumsWithPersistentIDs_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) index];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__ML3UpdateSpotlightIndexOperation__indexAlbumsWithPersistentIDs_completionBlock___block_invoke_2;
    v10[3] = &unk_278765990;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    [v6 indexSearchableItems:v7 completionHandler:v10];
  }
}

void __82__ML3UpdateSpotlightIndexOperation__indexAlbumsWithPersistentIDs_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Failed to index spotlight albums", &v9, 2u);
    }
  }

  else if (v6)
  {
    v7 = [*(a1 + 32) count];
    v8 = [*(a1 + 40) bundleIdentifier];
    v9 = 134218242;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Updated %lu albums in spotlight index with bundle ID:%@", &v9, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_indexPlaylistsWithPersistentIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Started to index playlists", buf, 2u);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __85__ML3UpdateSpotlightIndexOperation__indexPlaylistsWithPersistentIDs_completionBlock___block_invoke;
    v9[3] = &unk_2787659B8;
    v9[4] = self;
    v10 = v7;
    [(ML3UpdateSpotlightIndexOperation *)self _enumerateSearchableItemsWithPersistentIDs:v6 entityType:1 completionBlock:v9];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __85__ML3UpdateSpotlightIndexOperation__indexPlaylistsWithPersistentIDs_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) index];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __85__ML3UpdateSpotlightIndexOperation__indexPlaylistsWithPersistentIDs_completionBlock___block_invoke_2;
    v10[3] = &unk_278765990;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    [v6 indexSearchableItems:v7 completionHandler:v10];
  }
}

void __85__ML3UpdateSpotlightIndexOperation__indexPlaylistsWithPersistentIDs_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Failed to index spotlight playlists", &v9, 2u);
    }
  }

  else if (v6)
  {
    v7 = [*(a1 + 32) count];
    v8 = [*(a1 + 40) bundleIdentifier];
    v9 = 134218242;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Updated %lu playlists in spotlight index with bundle ID:%{public}@", &v9, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_indexTracksWithPersistentIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Started to index track items", buf, 2u);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __82__ML3UpdateSpotlightIndexOperation__indexTracksWithPersistentIDs_completionBlock___block_invoke;
    v9[3] = &unk_2787659B8;
    v9[4] = self;
    v10 = v7;
    [(ML3UpdateSpotlightIndexOperation *)self _enumerateSearchableItemsWithPersistentIDs:v6 entityType:0 completionBlock:v9];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __82__ML3UpdateSpotlightIndexOperation__indexTracksWithPersistentIDs_completionBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) index];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__ML3UpdateSpotlightIndexOperation__indexTracksWithPersistentIDs_completionBlock___block_invoke_2;
    v10[3] = &unk_278765990;
    v7 = v5;
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = v7;
    v12 = v8;
    v13 = v9;
    [v6 indexSearchableItems:v7 completionHandler:v10];
  }
}

void __82__ML3UpdateSpotlightIndexOperation__indexTracksWithPersistentIDs_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Failed to index spotlight track items", &v9, 2u);
    }
  }

  else if (v6)
  {
    v7 = [*(a1 + 32) count];
    v8 = [*(a1 + 40) bundleIdentifier];
    v9 = 134218242;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Updated %lu track items in spotlight index with bundle ID:%@", &v9, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_indexTracksWithPersistentIDs:(id)a3 playlistsWithPersistentIDs:(id)a4 albumsWithPersistentIDs:(id)a5 artistsWithPersistentIDs:(id)a6 completionBlock:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __158__ML3UpdateSpotlightIndexOperation__indexTracksWithPersistentIDs_playlistsWithPersistentIDs_albumsWithPersistentIDs_artistsWithPersistentIDs_completionBlock___block_invoke;
  v20[3] = &unk_278765968;
  v23 = v14;
  v24 = v15;
  v20[4] = self;
  v21 = v12;
  v22 = v13;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = v15;
  [(ML3UpdateSpotlightIndexOperation *)self _indexTracksWithPersistentIDs:a3 completionBlock:v20];
}

void __158__ML3UpdateSpotlightIndexOperation__indexTracksWithPersistentIDs_playlistsWithPersistentIDs_albumsWithPersistentIDs_artistsWithPersistentIDs_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 64) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __158__ML3UpdateSpotlightIndexOperation__indexTracksWithPersistentIDs_playlistsWithPersistentIDs_albumsWithPersistentIDs_artistsWithPersistentIDs_completionBlock___block_invoke_2;
    v8[3] = &unk_278765940;
    v6 = *(a1 + 64);
    v7 = *(a1 + 32);
    v11 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    [v4 _indexPlaylistsWithPersistentIDs:v5 completionBlock:v8];
  }
}

void __158__ML3UpdateSpotlightIndexOperation__indexTracksWithPersistentIDs_playlistsWithPersistentIDs_albumsWithPersistentIDs_artistsWithPersistentIDs_completionBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 56) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __158__ML3UpdateSpotlightIndexOperation__indexTracksWithPersistentIDs_playlistsWithPersistentIDs_albumsWithPersistentIDs_artistsWithPersistentIDs_completionBlock___block_invoke_3;
    v8[3] = &unk_278765990;
    v6 = *(a1 + 56);
    v7 = *(a1 + 32);
    v10 = v6;
    v8[4] = v7;
    v9 = *(a1 + 48);
    [v4 _indexAlbumsWithPersistentIDs:v5 completionBlock:v8];
  }
}

void __158__ML3UpdateSpotlightIndexOperation__indexTracksWithPersistentIDs_playlistsWithPersistentIDs_albumsWithPersistentIDs_artistsWithPersistentIDs_completionBlock___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v9 = v2;
    v10 = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __158__ML3UpdateSpotlightIndexOperation__indexTracksWithPersistentIDs_playlistsWithPersistentIDs_albumsWithPersistentIDs_artistsWithPersistentIDs_completionBlock___block_invoke_4;
    v7[3] = &unk_278765878;
    v8 = *(a1 + 48);
    [v5 _indexArtistsWithPersistentIDs:v6 completionBlock:v7];
  }
}

- (void)_batchIndexWithObject:(id)a3 completionBlock:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  ++self->_batchCount;
  v8 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v20 = [(ML3UpdateSpotlightIndexOperation *)self batchCount];
    v21 = 2048;
    v22 = self;
    _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┏ Beginning Core Spotlight index batch %lu for operation %p", buf, 0x16u);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v10 = v9;
  v11 = [(ML3UpdateSpotlightIndexOperation *)self index];
  [v11 beginIndexBatch];

  v12 = [v6 entityStringsToDelete];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__ML3UpdateSpotlightIndexOperation__batchIndexWithObject_completionBlock___block_invoke;
  v15[3] = &unk_278765918;
  v15[4] = self;
  v16 = v6;
  v18 = v10;
  v17 = v7;
  v13 = v7;
  v14 = v6;
  [(ML3UpdateSpotlightIndexOperation *)self _deleteIndexedItemsWithEntityStringIDs:v12 completionBlock:v15];
}

void __74__ML3UpdateSpotlightIndexOperation__batchIndexWithObject_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 48) + 16);

    v3();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) trackPersistentIDsToUpdate];
    v6 = [*(a1 + 40) playlistPersistentIDsToUpdate];
    v7 = [*(a1 + 40) albumPersistentIDsToUpdate];
    v8 = [*(a1 + 40) artistPersistentIDsToUpdate];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__ML3UpdateSpotlightIndexOperation__batchIndexWithObject_completionBlock___block_invoke_2;
    v10[3] = &unk_278765918;
    v9 = *(a1 + 40);
    v10[4] = *(a1 + 32);
    v11 = v9;
    v13 = *(a1 + 56);
    v12 = *(a1 + 48);
    [v4 _indexTracksWithPersistentIDs:v5 playlistsWithPersistentIDs:v6 albumsWithPersistentIDs:v7 artistsWithPersistentIDs:v8 completionBlock:v10];
  }
}

void __74__ML3UpdateSpotlightIndexOperation__batchIndexWithObject_completionBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{_MLDUpdateSpotlightIndexVersionForBundle(objc_msgSend(*(a1 + 32), "bundle"))}];
    v25[0] = @"revision";
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "currentRevision")}];
    v26[0] = v5;
    v25[1] = @"libraryID";
    v6 = [*(a1 + 32) library];
    v7 = [v6 libraryUID];
    v26[1] = v7;
    v26[2] = v4;
    v25[2] = @"version";
    v25[3] = @"targetRevision";
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(*(a1 + 40), "targetRevision")}];
    v26[3] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];

    v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v9 format:200 options:0 error:0];
    v11 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) batchCount];
      *buf = 134218240;
      v22 = v12;
      v23 = 2048;
      v24 = [v10 length];
      _os_log_impl(&dword_22D2FA000, v11, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Updating indexed client state and fininshing index batch %lu with client state data size: %lu", buf, 0x16u);
    }

    v13 = [*(a1 + 32) index];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__ML3UpdateSpotlightIndexOperation__batchIndexWithObject_completionBlock___block_invoke_49;
    v16[3] = &unk_278765918;
    v14 = v9;
    v20 = *(a1 + 56);
    v15 = *(a1 + 32);
    v17 = v14;
    v18 = v15;
    v19 = *(a1 + 48);
    [v13 endIndexBatchWithClientState:v10 completionHandler:v16];
  }
}

void __74__ML3UpdateSpotlightIndexOperation__batchIndexWithObject_completionBlock___block_invoke_49(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  [v3 timeIntervalSinceReferenceDate];
  v6 = v5;
  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v8)
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Failed to update client state", &v19, 2u);
    }

    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v6 - *(a1 + 56);
      v19 = 134217984;
      v20 = v10;
      v11 = "[ML3UpdateSpotlightIndexOperation]  ┗ FAILED Core Spotlight batch operation in %.3f seconds";
      v12 = v9;
      v13 = 12;
LABEL_10:
      _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, v11, &v19, v13);
    }
  }

  else
  {
    if (v8)
    {
      v14 = [*(a1 + 32) objectForKey:@"revision"];
      v15 = [*(a1 + 32) objectForKey:@"targetRevision"];
      v16 = [*(a1 + 32) objectForKey:@"version"];
      v19 = 138543874;
      v20 = *&v14;
      v21 = 2114;
      v22 = v15;
      v23 = 2114;
      v24 = v16;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Client state updated with revision:%{public}@, target revision:%{public}@, version:%{public}@", &v19, 0x20u);
    }

    v9 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v6 - *(a1 + 56);
      v18 = *(a1 + 40);
      v19 = 134218240;
      v20 = v17;
      v21 = 2048;
      v22 = v18;
      v11 = "[ML3UpdateSpotlightIndexOperation]  ┗ Successfully finished Core Spotlight batch operation in %.3f seconds for operation %p";
      v12 = v9;
      v13 = 22;
      goto LABEL_10;
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_batchIndicesWithObjects:(id)a3 completionBlock:(id)a4
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(ML3AsyncDatabaseOperation *)self isCancelled])
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] **The operation was cancelled. Skipping searchable item creation.**", buf, 2u);
    }

    v9 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"The operation was cancelled on searchable items creation";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v11 = [v9 errorWithDomain:@"MLDSpotlightIndexOperationErrorDomain" code:1004 userInfo:v10];

    v7[2](v7, v11);
  }

  else if ([v6 count] && (objc_msgSend(v6, "firstObject"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "removeObjectAtIndex:", 0), v12))
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __77__ML3UpdateSpotlightIndexOperation__batchIndicesWithObjects_completionBlock___block_invoke;
    v13[3] = &unk_278765990;
    v15 = v7;
    v13[4] = self;
    v14 = v6;
    [(ML3UpdateSpotlightIndexOperation *)self _batchIndexWithObject:v12 completionBlock:v13];
  }

  else
  {
    v7[2](v7, 0);
  }
}

uint64_t __77__ML3UpdateSpotlightIndexOperation__batchIndicesWithObjects_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return [*(a1 + 32) _batchIndicesWithObjects:*(a1 + 40) completionBlock:*(a1 + 48)];
  }
}

- (void)_indexItemsFromLibrarySinceRevision:(int64_t)a3 targetRevision:(int64_t)a4 completionBlock:(id)a5
{
  v76 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a3;
    *&buf[12] = 2048;
    *&buf[14] = a4;
    _os_log_impl(&dword_22D2FA000, v9, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Will index items with initial revision %lu target revision %lu", buf, 0x16u);
  }

  v10 = objc_autoreleasePoolPush();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v73 = __Block_byref_object_copy__25535;
  v74 = __Block_byref_object_dispose__25536;
  v75 = [MEMORY[0x277CBEB18] array];
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__25535;
  v68 = __Block_byref_object_dispose__25536;
  v69 = [MEMORY[0x277CBEB18] array];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__25535;
  v62 = __Block_byref_object_dispose__25536;
  v63 = [MEMORY[0x277CBEB18] array];
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__25535;
  v56 = __Block_byref_object_dispose__25536;
  v57 = [MEMORY[0x277CBEB18] array];
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy__25535;
  v50 = __Block_byref_object_dispose__25536;
  v51 = [MEMORY[0x277CBEB18] array];
  v11 = [(ML3DatabaseOperation *)self library];
  v12 = [v11 currentRevision];

  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = v12;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__25535;
  v40 = __Block_byref_object_dispose__25536;
  v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a4 | a3)
  {
    v13 = a4;
  }

  else
  {
    v13 = v12;
  }

  v14 = [(ML3DatabaseOperation *)self library];
  v15 = +[ML3Entity revisionTrackingCode];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __103__ML3UpdateSpotlightIndexOperation__indexItemsFromLibrarySinceRevision_targetRevision_completionBlock___block_invoke;
  v26[3] = &unk_2787658F0;
  v29 = &v64;
  v30 = &v58;
  v28 = buf;
  v26[4] = self;
  v31 = &v52;
  v32 = &v46;
  v35 = v13;
  v33 = &v36;
  v16 = v8;
  v27 = v16;
  v34 = &v42;
  [v14 enumeratePersistentIDsAfterRevision:a3 revisionTrackingCode:v15 maximumRevisionType:1 forMediaTypes:0 inUsersLibrary:1 usingBlock:v26];

  if ([*(*&buf[8] + 40) count] || objc_msgSend(v65[5], "count") || objc_msgSend(v59[5], "count") || objc_msgSend(v53[5], "count") || objc_msgSend(v47[5], "count"))
  {
    v17 = v43[3];
    if (v12 > v17)
    {
      v17 = v12;
    }

    v43[3] = v17;
    v18 = [ML3SpotlightBatchDonationObject alloc];
    v19 = [(ML3SpotlightBatchDonationObject *)v18 initWithCurrentRevision:v43[3] targetRevision:0 trackPersistentIDsToUpdate:*(*&buf[8] + 40) playlistPersistentIDsToUpdate:v65[5] albumPersistentIDsToUpdate:v59[5] artistPersistentIDsToUpdate:v53[5] entityStringsToDelete:v47[5]];
    [v37[5] addObject:v19];
  }

  v20 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v37[5] count];
    *v70 = 134217984;
    v71 = v21;
    _os_log_impl(&dword_22D2FA000, v20, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Finished enumerating PIDs. Starting indexing in batches for %ld batch objects", v70, 0xCu);
  }

  v22 = v37[5];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __103__ML3UpdateSpotlightIndexOperation__indexItemsFromLibrarySinceRevision_targetRevision_completionBlock___block_invoke_44;
  v24[3] = &unk_278765878;
  v23 = v16;
  v25 = v23;
  [(ML3UpdateSpotlightIndexOperation *)self _batchIndicesWithObjects:v22 completionBlock:v24];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);

  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(buf, 8);

  objc_autoreleasePoolPop(v10);
}

void __103__ML3UpdateSpotlightIndexOperation__indexItemsFromLibrarySinceRevision_targetRevision_completionBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, _BYTE *a7)
{
  v39[1] = *MEMORY[0x277D85DE8];
  if (a6 > 7 || ((1 << a6) & 0x93) == 0)
  {
    goto LABEL_28;
  }

  if (!a5)
  {
    if (a6)
    {
      if (a6 == 1)
      {
        v18 = *(a1 + 56);
      }

      else if (a6 == 4)
      {
        if (!_os_feature_enabled_impl())
        {
          goto LABEL_19;
        }

        v18 = *(a1 + 64);
      }

      else
      {
        if (a6 != 7 || !_os_feature_enabled_impl())
        {
          goto LABEL_19;
        }

        v18 = *(a1 + 72);
      }
    }

    else
    {
      v18 = *(a1 + 48);
    }

    v19 = *(*(v18 + 8) + 40);
    v16 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    v17 = v19;
LABEL_18:
    [v17 addObject:v16];

    goto LABEL_19;
  }

  if (*(a1 + 104) >= a3)
  {
    goto LABEL_19;
  }

  v11 = off_27875C3A0;
  if (!a6)
  {
    v11 = off_27875C698;
  }

  if (a6 < 2)
  {
    goto LABEL_8;
  }

  if (a6 == 4)
  {
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      goto LABEL_19;
    }

    v11 = off_27875C2C8;
    goto LABEL_8;
  }

  if (a6 == 7 && _os_feature_enabled_impl())
  {
    v11 = off_27875C2D0;
LABEL_8:
    v12 = *v11;
    v13 = [*(a1 + 32) library];
    v14 = [v13 libraryUID];
    v15 = [(__objc2_class *)v12 URLForEntityWithPersistentID:a2 libraryUID:v14];
    v16 = [v15 absoluteString];

    if (!v16)
    {
      goto LABEL_19;
    }

    v17 = *(*(*(a1 + 80) + 8) + 40);
    goto LABEL_18;
  }

LABEL_19:
  v20 = [*(*(*(a1 + 48) + 8) + 40) count];
  v21 = [*(*(*(a1 + 56) + 8) + 40) count] + v20;
  v22 = [*(*(*(a1 + 64) + 8) + 40) count];
  v23 = v21 + v22 + [*(*(*(a1 + 72) + 8) + 40) count];
  if ((v23 + [*(*(*(a1 + 80) + 8) + 40) count]) >= 0x7D0)
  {
    if ([*(a1 + 32) isCancelled])
    {
      v24 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22D2FA000, v24, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] **The operation was cancelled. Stopping searchable item creation**", buf, 2u);
      }

      v25 = MEMORY[0x277CCA9B8];
      v38 = *MEMORY[0x277CCA450];
      v39[0] = @"The operation was cancelled while batching searchable item creation";
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      v27 = [v25 errorWithDomain:@"MLDSpotlightIndexOperationErrorDomain" code:1004 userInfo:v26];

      (*(*(a1 + 40) + 16))();
      *a7 = 1;
    }

    else
    {
      v28 = objc_autoreleasePoolPush();
      if (*(a1 + 104) <= a3)
      {
        v29 = 0;
      }

      else
      {
        v29 = *(a1 + 104);
      }

      v30 = [ML3SpotlightBatchDonationObject alloc];
      v31 = [*(*(*(a1 + 48) + 8) + 40) copy];
      v32 = [*(*(*(a1 + 56) + 8) + 40) copy];
      v33 = [*(*(*(a1 + 64) + 8) + 40) copy];
      v34 = [*(*(*(a1 + 72) + 8) + 40) copy];
      v35 = [*(*(*(a1 + 80) + 8) + 40) copy];
      v36 = [(ML3SpotlightBatchDonationObject *)v30 initWithCurrentRevision:a3 targetRevision:v29 trackPersistentIDsToUpdate:v31 playlistPersistentIDsToUpdate:v32 albumPersistentIDsToUpdate:v33 artistPersistentIDsToUpdate:v34 entityStringsToDelete:v35];

      [*(*(*(a1 + 88) + 8) + 40) addObject:v36];
      [*(*(*(a1 + 48) + 8) + 40) removeAllObjects];
      [*(*(*(a1 + 56) + 8) + 40) removeAllObjects];
      [*(*(*(a1 + 64) + 8) + 40) removeAllObjects];
      [*(*(*(a1 + 72) + 8) + 40) removeAllObjects];
      [*(*(*(a1 + 80) + 8) + 40) removeAllObjects];

      objc_autoreleasePoolPop(v28);
    }
  }

LABEL_28:
  *(*(*(a1 + 96) + 8) + 24) = a3;
}

void __103__ML3UpdateSpotlightIndexOperation__indexItemsFromLibrarySinceRevision_targetRevision_completionBlock___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22D2FA000, v4, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Finished items index batch", v5, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_updateIndexedItemsWithIdentifiers:(id)a3 completionBlock:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v26 = a4;
  v30 = [MEMORY[0x277CBEB18] array];
  v29 = [MEMORY[0x277CBEB18] array];
  v28 = [MEMORY[0x277CBEB18] array];
  v27 = [MEMORY[0x277CBEB18] array];
  v31 = [MEMORY[0x277CBEB18] array];
  v7 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Checking for updates and deletes for the received identifiers", buf, 2u);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v39;
    do
    {
      v12 = 0;
      do
      {
        if (*v39 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v38 + 1) + 8 * v12);
        v14 = [MEMORY[0x277CBEBC0] URLWithString:v13];
        v15 = [(ML3DatabaseOperation *)self library];
        v16 = [ML3Entity entityFromURL:v14 inLibrary:v15 verifyExistence:1];

        if (!v16)
        {
          [v31 addObject:v13];
          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
          v18 = v30;
LABEL_14:
          [v18 addObject:v17];

          goto LABEL_15;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
          v18 = v29;
          goto LABEL_14;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && _os_feature_enabled_impl())
        {
          v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
          v18 = v28;
          goto LABEL_14;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && _os_feature_enabled_impl())
        {
          v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "persistentID")}];
          v18 = v27;
          goto LABEL_14;
        }

LABEL_15:

        ++v12;
      }

      while (v10 != v12);
      v19 = [v8 countByEnumeratingWithState:&v38 objects:v43 count:16];
      v10 = v19;
    }

    while (v19);
  }

  v20 = v8;

  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __87__ML3UpdateSpotlightIndexOperation__updateIndexedItemsWithIdentifiers_completionBlock___block_invoke;
  v32[3] = &unk_2787658C8;
  v32[4] = self;
  v33 = v30;
  v34 = v29;
  v35 = v28;
  v36 = v27;
  v37 = v26;
  v21 = v26;
  v22 = v27;
  v23 = v28;
  v24 = v29;
  v25 = v30;
  [(ML3UpdateSpotlightIndexOperation *)self _deleteIndexedItemsWithEntityStringIDs:v31 completionBlock:v32];
}

void __87__ML3UpdateSpotlightIndexOperation__updateIndexedItemsWithIdentifiers_completionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 72) + 16);

    v4();
  }

  else
  {
    v12 = v2;
    v13 = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __87__ML3UpdateSpotlightIndexOperation__updateIndexedItemsWithIdentifiers_completionBlock___block_invoke_2;
    v10[3] = &unk_278765878;
    v9 = *(a1 + 64);
    v11 = *(a1 + 72);
    [v5 _indexTracksWithPersistentIDs:v6 playlistsWithPersistentIDs:v7 albumsWithPersistentIDs:v8 artistsWithPersistentIDs:v9 completionBlock:v10];
  }
}

- (void)_deleteIndexedItemsWithEntityStringIDs:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation]  ┃  Started to delete items", buf, 2u);
    }

    v9 = [(ML3UpdateSpotlightIndexOperation *)self index];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __91__ML3UpdateSpotlightIndexOperation__deleteIndexedItemsWithEntityStringIDs_completionBlock___block_invoke;
    v10[3] = &unk_2787658A0;
    v11 = v6;
    v12 = v7;
    [v9 deleteSearchableItemsWithIdentifiers:v11 completionHandler:v10];
  }

  else
  {
    (*(v7 + 2))(v7, 0);
  }
}

void __91__ML3UpdateSpotlightIndexOperation__deleteIndexedItemsWithEntityStringIDs_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v11) = 0;
      v7 = "[ML3UpdateSpotlightIndexOperation]  ┃  Failed to delete spotlight items";
      v8 = v5;
      v9 = 2;
LABEL_6:
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, v7, &v11, v9);
    }
  }

  else if (v6)
  {
    v10 = [*(a1 + 32) count];
    v11 = 134217984;
    v12 = v10;
    v7 = "[ML3UpdateSpotlightIndexOperation]  ┃  Successfully deleted %lu spotlight index items";
    v8 = v5;
    v9 = 12;
    goto LABEL_6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v4);
}

- (void)_deleteAllIndexedItemsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Deleting all indexed items", buf, 2u);
  }

  v6 = [(ML3UpdateSpotlightIndexOperation *)self index];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __78__ML3UpdateSpotlightIndexOperation__deleteAllIndexedItemsWithCompletionBlock___block_invoke;
  v8[3] = &unk_2787658A0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 deleteAllSearchableItemsWithCompletionHandler:v8];
}

void __78__ML3UpdateSpotlightIndexOperation__deleteAllIndexedItemsWithCompletionBlock___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = os_log_create("com.apple.amp.medialibrary", "Default");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Failed to delete spotlight items", &v8, 2u);
    }
  }

  else if (v6)
  {
    v7 = [*(a1 + 32) bundleIdentifier];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_22D2FA000, v5, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Delete all called in spotlight index for bundle ID %{public}@ called", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_deleteAllAndReindexWithCompletionBlock:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76__ML3UpdateSpotlightIndexOperation__deleteAllAndReindexWithCompletionBlock___block_invoke;
  v6[3] = &unk_2787658A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(ML3UpdateSpotlightIndexOperation *)self _deleteAllIndexedItemsWithCompletionBlock:v6];
}

void __76__ML3UpdateSpotlightIndexOperation__deleteAllAndReindexWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __76__ML3UpdateSpotlightIndexOperation__deleteAllAndReindexWithCompletionBlock___block_invoke_2;
    v6[3] = &unk_278765878;
    v5 = *(a1 + 32);
    v7 = *(a1 + 40);
    [v5 _indexItemsFromLibrarySinceRevision:0 targetRevision:0 completionBlock:v6];
  }
}

- (void)execute
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [(ML3DatabaseOperation *)self attributes];
  v4 = [v3 objectForKey:@"MLDatabaseOperationAttributeBundleIDKey"];
  [(ML3UpdateSpotlightIndexOperation *)self setBundleIdentifier:v4];

  v5 = [(ML3UpdateSpotlightIndexOperation *)self bundleIdentifier];
  -[ML3UpdateSpotlightIndexOperation setBundle:](self, "setBundle:", [v5 isEqualToString:@"com.apple.Music"]);

  v6 = objc_alloc(MEMORY[0x277CC34A8]);
  if ([(ML3UpdateSpotlightIndexOperation *)self bundle]== 1)
  {
    v7 = @"Music";
  }

  else
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Trying create an index name with an unknown bundle", buf, 2u);
    }

    v7 = @"Unkown bundle index";
  }

  v9 = *MEMORY[0x277CCA1A0];
  v10 = [(ML3UpdateSpotlightIndexOperation *)self bundleIdentifier];
  v11 = [v6 initWithName:v7 protectionClass:v9 bundleIdentifier:v10];
  [(ML3UpdateSpotlightIndexOperation *)self setIndex:v11];

  v12 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [(ML3UpdateSpotlightIndexOperation *)self bundleIdentifier];
    *buf = 134218242;
    v22 = self;
    v23 = 2114;
    v24 = v13;
    _os_log_impl(&dword_22D2FA000, v12, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Operation 2.0 %p started for bundleID %{public}@", buf, 0x16u);
  }

  v14 = [(ML3DatabaseOperation *)self attributes];
  v15 = [v14 objectForKey:@"MLDatabaseOperationAttributeEntityURLsArrayKey"];

  if ([v15 count])
  {
    v16 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v15 count];
      *buf = 134217984;
      v22 = v17;
      _os_log_impl(&dword_22D2FA000, v16, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Index update operation will process %lu items for content updates and deletes", buf, 0xCu);
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __43__ML3UpdateSpotlightIndexOperation_execute__block_invoke;
    v20[3] = &unk_278765828;
    v20[4] = self;
    [(ML3UpdateSpotlightIndexOperation *)self _updateIndexedItemsWithIdentifiers:v15 completionBlock:v20];
  }

  else
  {
    v18 = [(ML3UpdateSpotlightIndexOperation *)self index];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __43__ML3UpdateSpotlightIndexOperation_execute__block_invoke_2;
    v19[3] = &unk_278765850;
    v19[4] = self;
    [v18 fetchLastClientStateWithCompletionHandler:v19];
  }
}

void __43__ML3UpdateSpotlightIndexOperation_execute__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v7, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Indexed client state fetch failed, failing the operation.", buf, 2u);
    }

    [*(a1 + 32) finishWithError:v6];
    goto LABEL_22;
  }

  if ([*(a1 + 32) isCancelled])
  {
    v8 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22D2FA000, v8, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] **The operation was cancelled before the indexed client state was evaluated**", buf, 2u);
    }

    v9 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41 = @"The operation was cancelled before the indexed client state was evaluated.";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v11 = [v9 errorWithDomain:@"MLDSpotlightIndexOperationErrorDomain" code:1004 userInfo:v10];

    [*(a1 + 32) finishWithError:v11];
    goto LABEL_21;
  }

  if (v5)
  {
    v11 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:0];
    if (_NSIsNSDictionary() && ([v11 objectForKey:@"libraryID"], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "library"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "libraryUID"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v12, "isEqualToString:", v14), v14, v13, v12, v15))
    {
      v16 = _MLDUpdateSpotlightIndexVersionForBundle([*(a1 + 32) bundle]);
      v17 = [v11 objectForKey:@"version"];
      v18 = [v17 longLongValue];

      if (v18 == v16)
      {
        v19 = [v11 objectForKey:@"revision"];
        v20 = [v19 longLongValue];

        v21 = [v11 objectForKey:@"targetRevision"];
        v22 = [v21 longLongValue];

        v23 = [*(a1 + 32) library];
        v24 = [v23 currentRevision];

        if (v20 == v24)
        {
          v25 = _ML3LogCategoryDefault();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v43 = v20;
            _os_log_impl(&dword_22D2FA000, v25, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Indexed database revision and client library revision (%lld) are the same, no index update needed", buf, 0xCu);
          }

          [*(a1 + 32) finish];
          goto LABEL_21;
        }

        v32 = _ML3LogCategoryDefault();
        v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        if (v20 < v24)
        {
          if (v33)
          {
            *buf = 134218240;
            v43 = v20;
            v44 = 2048;
            v45 = v24;
            _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Revisions differ, indexed:%lld current:%lld, updating index with delta changes", buf, 0x16u);
          }

          v34 = *(a1 + 32);
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __43__ML3UpdateSpotlightIndexOperation_execute__block_invoke_18;
          v39[3] = &unk_278765828;
          v39[4] = v34;
          [v34 _indexItemsFromLibrarySinceRevision:v20 targetRevision:v22 completionBlock:v39];
          goto LABEL_21;
        }

        if (v33)
        {
          *buf = 134218240;
          v43 = v20;
          v44 = 2048;
          v45 = v24;
          _os_log_impl(&dword_22D2FA000, v32, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Indexed client state %lld is invalid (current library state is: %lld), wiping the index and re-indexing everything", buf, 0x16u);
        }

        v27 = *(a1 + 32);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __43__ML3UpdateSpotlightIndexOperation_execute__block_invoke_19;
        v38[3] = &unk_278765828;
        v38[4] = v27;
        v28 = v38;
      }

      else
      {
        v31 = _ML3LogCategoryDefault();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v43 = v18;
          v44 = 2048;
          v45 = v16;
          _os_log_impl(&dword_22D2FA000, v31, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Indexed client state has an index version (%lld) that's not the current (%lld), wiping the index and re-indexing everything", buf, 0x16u);
        }

        v27 = *(a1 + 32);
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __43__ML3UpdateSpotlightIndexOperation_execute__block_invoke_20;
        v37[3] = &unk_278765828;
        v37[4] = v27;
        v28 = v37;
      }
    }

    else
    {
      v26 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v43 = v11;
        _os_log_impl(&dword_22D2FA000, v26, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] Indexed client state is invalid or indexed library differs from the current library, wiping the index and re-indexing everything. Fetched client state: %{public}@", buf, 0xCu);
      }

      v27 = *(a1 + 32);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __43__ML3UpdateSpotlightIndexOperation_execute__block_invoke_21;
      v36[3] = &unk_278765828;
      v36[4] = v27;
      v28 = v36;
    }

    [v27 _deleteAllAndReindexWithCompletionBlock:v28];
LABEL_21:

    goto LABEL_22;
  }

  v29 = os_log_create("com.apple.amp.medialibrary", "Default");
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22D2FA000, v29, OS_LOG_TYPE_DEFAULT, "[ML3UpdateSpotlightIndexOperation] No client state indexed, it's a fresh start. Wiping the index and indexing everything", buf, 2u);
  }

  v30 = *(a1 + 32);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __43__ML3UpdateSpotlightIndexOperation_execute__block_invoke_22;
  v35[3] = &unk_278765828;
  v35[4] = v30;
  [v30 _deleteAllAndReindexWithCompletionBlock:v35];
LABEL_22:
}

@end
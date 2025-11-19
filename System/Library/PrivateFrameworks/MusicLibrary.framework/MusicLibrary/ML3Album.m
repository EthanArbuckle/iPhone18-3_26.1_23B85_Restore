@interface ML3Album
+ (BOOL)collectionWithPersistentID:(int64_t)a3 addedToLibrary:(id)a4;
+ (BOOL)deleteFromLibrary:(id)a3 deletionType:(int)a4 persistentIDs:(const int64_t *)a5 count:(unint64_t)a6 usingConnection:(id)a7;
+ (BOOL)libraryContentsChangeForProperty:(id)a3;
+ (id)countingQueryForBaseQuery:(id)a3 countProperty:(id)a4 forIdentifier:(int64_t)a5;
+ (id)foreignPropertyForProperty:(id)a3 entityClass:(Class)a4;
+ (id)joinClausesForProperty:(id)a3;
+ (id)propertiesForGroupingKey;
+ (id)propertiesForGroupingUniqueCollections;
+ (id)protocolItemWithProperties:(id)a3 inLibrary:(id)a4;
+ (void)initialize;
- (id)multiverseIdentifier;
- (id)protocolItem;
- (void)updateTrackValues:(id)a3;
@end

@implementation ML3Album

+ (void)initialize
{
  v22[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v3 = [ML3OrderingTerm orderingTermWithProperty:?];
    v22[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v5 = ML3AlbumDefaultOrderingTerms;
    ML3AlbumDefaultOrderingTerms = v4;

    v20[0] = @"album_artist.album_artist";
    v20[1] = @"album_artist.grouping_key";
    v21[0] = &unk_2840C8288;
    v21[1] = &unk_2840C82A0;
    v20[2] = @"album_item_store.store_playlist_id";
    v20[3] = @"album_item_store.cloud_album_id";
    v21[2] = &unk_2840C82B8;
    v21[3] = &unk_2840C82D0;
    v20[4] = @"album_item_store.tv_season_canonical_id";
    v21[4] = &unk_2840C82E8;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];
    v7 = ML3AlbumJoinsForProperties;
    ML3AlbumJoinsForProperties = v6;

    v19[0] = @"ROWID";
    v19[1] = @"album";
    v19[2] = @"sort_album";
    v19[3] = @"album_artist.album_artist";
    v19[4] = @"album_artist.grouping_key";
    v19[5] = @"album_artist_pid";
    v19[6] = @"representative_item_pid";
    v19[7] = @"user_rating";
    v19[8] = @"all_compilations";
    v19[9] = @"feed_url";
    v19[10] = @"season_number";
    v19[11] = @"album_year";
    v19[12] = @"liked_state";
    v19[13] = @"album_item_store.store_playlist_id";
    v19[14] = @"app_data";
    v19[15] = @"contains_classical_work";
    v19[16] = @"date_played_local";
    v19[17] = @"sync_id";
    v19[18] = @"classical_experience_available";
    v19[19] = @"liked_state_changed_date";
    v19[20] = @"store_id";
    v19[21] = @"cloud_library_id";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:22];
    v9 = ML3AlbumAllProperties;
    ML3AlbumAllProperties = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"liked_state", @"liked_state_changed_date", 0}];
    v11 = ML3AlbumContentsUnchangingProperties;
    ML3AlbumContentsUnchangingProperties = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [a1 predisambiguateProperties:ML3AlbumAllProperties toDictionary:v12];
    v13 = ML3AlbumPredisambiguatedPropertyForProperties;
    ML3AlbumPredisambiguatedPropertyForProperties = v12;
    v14 = v12;

    v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"album_artist.album_artist", @"album_artist.album_artist", @"album.album", @"album", @"ROWID", @"representative_item_pid", @"is_compilation", @"all_compilations", @"item_store.tv_season_canonical_id", @"album_item_store.tv_season_canonical_id", 0}];
    v16 = ML3TrackForeignPropertyForML3AlbumProperties;
    ML3TrackForeignPropertyForML3AlbumProperties = v15;

    v17 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"cloud_status", 0}];
    v18 = ML3AlbumNoAssistantSyncProperties;
    ML3AlbumNoAssistantSyncProperties = v17;
  }
}

- (void)updateTrackValues:(id)a3
{
  v27[6] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = @"ROWID";
  v27[0] = @"ROWID";
  v27[1] = @"album";
  v27[2] = @"sort_album";
  v27[3] = @"season_number";
  v6 = @"representative_item_pid";
  v27[4] = @"representative_item_pid";
  v7 = @"cloud_status";
  v27[5] = @"cloud_status";
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  [(ML3Entity *)self getValues:&v24 forProperties:v27 count:6];
  [v4 setValue:v24 forKey:@"album_pid"];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [ML3Track trackValueAreInTheCloud:v4];
  v10 = [*(&v26 + 1) integerValue];
  v11 = [v4 objectForKey:@"ROWID"];
  v12 = [v26 longLongValue];
  if (v12)
  {
    v13 = v12;
    [v4 setValue:*(&v24 + 1) forKey:@"album.album"];
    [v4 setValue:v25 forKey:@"album.sort_album"];
    [v4 setValue:*(&v25 + 1) forKey:@"item_video.season_number"];
    if (v9)
    {
      if (v10)
      {
        goto LABEL_9;
      }
    }

    else if (v10 != 2)
    {
      goto LABEL_9;
    }

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [v8 setValue:v19 forKey:@"cloud_status"];

LABEL_9:
    [(ML3Collection *)self updateRepresentativeCollectionValues:v8 existingRepresentativePersistentID:v13 forUpdateTrackValues:v4];
    v17 = [v8 objectForKey:@"representative_item_pid"];
    v20 = [v17 longLongValue];
    if (v20)
    {
      v18 = v20;
    }

    else
    {
      v18 = v13;
    }

    goto LABEL_12;
  }

  v14 = [v4 objectForKey:@"album.album"];
  [v8 setValue:v14 forKey:@"album"];

  v15 = [v4 objectForKey:@"album.sort_album"];
  [v8 setValue:v15 forKey:@"sort_album"];

  v16 = [v4 objectForKey:@"item_video.season_number"];
  [v8 setValue:v16 forKey:@"season_number"];

  if (!v9)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  [v8 setValue:v17 forKey:@"cloud_status"];
  v18 = 0;
LABEL_12:

LABEL_13:
  if ([v11 longLongValue] != v18)
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._library);
    v22 = [ML3Track trackWithPersistentID:v18 existsInLibrary:WeakRetained];

    if ((v22 & 1) == 0)
    {
      [v8 setValue:v11 forKey:@"representative_item_pid"];
    }
  }

  [(ML3Entity *)self setValuesForPropertiesWithDictionary:v8];

  for (i = 5; i != -1; --i)
  {
  }
}

+ (BOOL)collectionWithPersistentID:(int64_t)a3 addedToLibrary:(id)a4
{
  v5 = a4;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__ML3Album_collectionWithPersistentID_addedToLibrary___block_invoke;
  v7[3] = &unk_278762B30;
  v7[4] = &v8;
  v7[5] = a3;
  [v5 databaseConnectionAllowingWrites:0 withBlock:v7];
  LOBYTE(a3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return a3;
}

void __54__ML3Album_collectionWithPersistentID_addedToLibrary___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 numberWithLongLong:v4];
  v9[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v8 = [v5 executeQuery:@"SELECT 1 FROM item WHERE in_my_library AND album_pid=? LIMIT 1" withParameters:v7];

  *(*(*(a1 + 32) + 8) + 24) = [v8 hasAtLeastOneRow];
}

+ (BOOL)deleteFromLibrary:(id)a3 deletionType:(int)a4 persistentIDs:(const int64_t *)a5 count:(unint64_t)a6 usingConnection:(id)a7
{
  v9 = *&a4;
  v28[2] = *MEMORY[0x277D85DE8];
  v12 = a7;
  v25.receiver = a1;
  v25.super_class = &OBJC_METACLASS___ML3Album;
  v13 = objc_msgSendSuper2(&v25, sel_deleteFromLibrary_deletionType_persistentIDs_count_usingConnection_, a3, v9, a5, a6, v12);
  if (a6)
  {
    v15 = 0;
    *&v14 = 138543362;
    v23 = v14;
    do
    {
      v16 = v15;
      v17 = *a5++;
      v18 = [MEMORY[0x277CCABB0] numberWithLongLong:{v17, v23}];
      v28[0] = v18;
      v28[1] = &unk_2840C8D08;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      v24 = v15;
      v20 = [v12 executeUpdate:@"DELETE FROM library_pins WHERE entity_pid=? AND entity_type=?" withParameters:v19 error:&v24];
      v15 = v24;

      if ((v20 & 1) == 0)
      {
        v21 = os_log_create("com.apple.amp.medialibrary", "Default");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = v23;
          v27 = v15;
          _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_ERROR, "Failed to delete artist from library_pins with error: %{public}@", buf, 0xCu);
        }
      }

      --a6;
    }

    while (a6);
  }

  else
  {
    v20 = v13;
  }

  return v20;
}

+ (id)propertiesForGroupingUniqueCollections
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"grouping_key";
  v4[1] = @"album_artist_pid";
  v4[2] = @"feed_url";
  v4[3] = @"season_number";
  v4[4] = @"album_year";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

  return v2;
}

+ (id)propertiesForGroupingKey
{
  if (propertiesForGroupingKey_onceToken_6013 != -1)
  {
    dispatch_once(&propertiesForGroupingKey_onceToken_6013, &__block_literal_global_6014);
  }

  v3 = propertiesForGroupingKey_propertiesForGroupingKey_6015;

  return v3;
}

uint64_t __36__ML3Album_propertiesForGroupingKey__block_invoke()
{
  propertiesForGroupingKey_propertiesForGroupingKey_6015 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"album", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)countingQueryForBaseQuery:(id)a3 countProperty:(id)a4 forIdentifier:(int64_t)a5
{
  v19[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 predicateIncludingSystemwidePredicates];

  if (v10)
  {
    v11 = [v8 predicateIncludingSystemwidePredicates];
    v19[0] = v11;
    v12 = [ML3ComparisonPredicate predicateWithProperty:@"album_pid" equalToInt64:a5];
    v19[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v13];
  }

  else
  {
    v14 = [ML3ComparisonPredicate predicateWithProperty:@"album_pid" equalToInt64:a5];
  }

  if (v9 == @"item_pid")
  {
    v16 = [v8 library];
    v15 = +[ML3Entity queryWithLibrary:predicate:options:](ML3Track, "queryWithLibrary:predicate:options:", v16, v14, [v8 options]);
  }

  else
  {
    v18.receiver = a1;
    v18.super_class = &OBJC_METACLASS___ML3Album;
    v15 = objc_msgSendSuper2(&v18, sel_countingQueryForBaseQuery_countProperty_forIdentifier_, v8, v9, a5);
  }

  return v15;
}

+ (id)foreignPropertyForProperty:(id)a3 entityClass:(Class)a4
{
  v6 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___ML3Album;
  v7 = objc_msgSendSuper2(&v9, sel_foreignPropertyForProperty_entityClass_, v6, a4);
  if (!v7)
  {
    if (objc_opt_class() == a4)
    {
      v7 = [ML3TrackForeignPropertyForML3AlbumProperties objectForKey:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (BOOL)libraryContentsChangeForProperty:(id)a3
{
  v3 = a3;
  v4 = [v3 isEqualToString:@"date_played_local"];
  v5 = [v3 isEqualToString:@"liked_state"];
  v6 = [v3 isEqualToString:@"liked_state_changed_date"];
  v7 = [v3 isEqualToString:@"app_data"];

  return ((v4 | v5 | v6 | v7) & 1) == 0;
}

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  v5 = [ML3AlbumJoinsForProperties objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___ML3Album;
    v7 = objc_msgSendSuper2(&v10, sel_joinClausesForProperty_, v4);
  }

  v8 = v7;

  return v8;
}

- (id)protocolItem
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = @"ROWID";
  v8[1] = @"album";
  v8[2] = @"sort_album";
  v8[3] = @"user_rating";
  v8[4] = @"album_artist.album_artist";
  v8[5] = @"album_artist_pid";
  v8[6] = @"liked_state";
  v8[7] = @"liked_state_changed_date";
  v8[8] = @"cloud_library_id";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:9];
  v4 = [(ML3Entity *)self getValuesForProperties:v3];
  WeakRetained = objc_loadWeakRetained(&self->super.super._library);
  v6 = [ML3Album protocolItemWithProperties:v4 inLibrary:WeakRetained];

  return v6;
}

- (id)multiverseIdentifier
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MIPMultiverseIdentifier);
  [(MIPMultiverseIdentifier *)v3 setMediaObjectType:1];
  WeakRetained = objc_loadWeakRetained(&self->super.super._library);
  v5 = [WeakRetained libraryUID];
  v6 = [WeakRetained syncLibraryID];
  v7 = objc_alloc_init(MIPLibraryIdentifier);
  [(MIPLibraryIdentifier *)v7 setLibraryId:self->super.super._persistentID];
  v17 = v5;
  [(MIPLibraryIdentifier *)v7 setLibraryName:v5];
  [(MIPMultiverseIdentifier *)v3 addLibraryIdentifiers:v7];
  v18[0] = @"album";
  v18[1] = @"album_item_store.store_playlist_id";
  v18[2] = @"album_item_store.cloud_album_id";
  v18[3] = @"sync_id";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];
  v9 = [(ML3Entity *)self getValuesForProperties:v8];
  v10 = [v9 objectForKey:@"album"];
  [(MIPMultiverseIdentifier *)v3 setName:v10];

  v11 = [v9 objectForKey:@"album_item_store.store_playlist_id"];
  -[MIPMultiverseIdentifier setStoreId:](v3, "setStoreId:", [v11 longLongValue]);

  v12 = [v9 objectForKey:@"album_item_store.cloud_album_id"];
  [(MIPMultiverseIdentifier *)v3 setCloudUniversalLibraryId:v12];

  v13 = [v9 objectForKey:@"sync_id"];
  v14 = [v13 longLongValue];

  if (v14 >= 1 && [v6 length])
  {
    v15 = objc_alloc_init(MIPLibraryIdentifier);
    [(MIPLibraryIdentifier *)v15 setLibraryId:v14];
    [(MIPLibraryIdentifier *)v15 setLibraryName:v6];
    [(MIPMultiverseIdentifier *)v3 addLibraryIdentifiers:v15];
  }

  return v3;
}

+ (id)protocolItemWithProperties:(id)a3 inLibrary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MIPAlbum);
  v8 = [v5 objectForKey:@"album_artist_pid"];
  v9 = [v8 longLongValue];

  v10 = [v5 objectForKey:@"album_item_store.store_playlist_id"];
  v11 = [v10 longLongValue];

  v24 = v6;
  if (v9)
  {
    v12 = [(ML3Entity *)[ML3AlbumArtist alloc] initWithPersistentID:v9 inLibrary:v6];
    v13 = [(ML3AlbumArtist *)v12 protocolItem];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v5 objectForKey:@"album"];
  v15 = [v5 objectForKey:@"sort_album"];
  v16 = [v5 objectForKey:@"user_rating"];
  v17 = [v16 integerValue];

  v18 = [v5 objectForKey:@"liked_state"];
  v19 = [v18 integerValue];

  v20 = [v5 objectForKey:@"liked_state_changed_date"];
  v21 = [v20 longLongValue];

  v22 = [v5 objectForKey:@"cloud_library_id"];
  if (v11)
  {
    [(MIPAlbum *)v7 setStoreId:v11];
  }

  if (v13)
  {
    [(MIPAlbum *)v7 setArtist:v13];
  }

  if ([v14 length])
  {
    [(MIPAlbum *)v7 setName:v14];
  }

  if ([v15 length])
  {
    [(MIPAlbum *)v7 setSortName:v15];
  }

  if (v17)
  {
    [(MIPAlbum *)v7 setUserRating:v17];
  }

  [(MIPAlbum *)v7 setLikedState:v19];
  [(MIPAlbum *)v7 setLikedStateChangedDate:v21];
  [(MIPAlbum *)v7 setCloudId:v22];

  return v7;
}

@end
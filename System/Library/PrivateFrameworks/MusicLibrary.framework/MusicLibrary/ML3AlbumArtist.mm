@interface ML3AlbumArtist
+ (BOOL)collectionWithPersistentID:(int64_t)a3 addedToLibrary:(id)a4;
+ (BOOL)deleteFromLibrary:(id)a3 deletionType:(int)a4 persistentIDs:(const int64_t *)a5 count:(unint64_t)a6 usingConnection:(id)a7;
+ (BOOL)libraryContentsChangeForProperty:(id)a3;
+ (id)countingQueryForBaseQuery:(id)a3 countProperty:(id)a4 forIdentifier:(int64_t)a5;
+ (id)foreignPropertyForProperty:(id)a3 entityClass:(Class)a4;
+ (id)propertiesForGroupingKey;
+ (id)propertiesForGroupingUniqueCollections;
+ (id)protocolItemWithProperties:(id)a3 inLibrary:(id)a4;
+ (void)initialize;
- (id)multiverseIdentifier;
- (id)protocolItem;
- (void)updateTrackValues:(id)a3;
@end

@implementation ML3AlbumArtist

+ (void)initialize
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v3 = [ML3OrderingTerm orderingTermWithProperty:@"album_artist"];
    v18[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
    v5 = ML3AlbumArtistDefaultOrderingTerms;
    ML3AlbumArtistDefaultOrderingTerms = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    v7 = ML3AlbumArtistSectionPropertyForProperties;
    ML3AlbumArtistSectionPropertyForProperties = v6;

    v17[0] = @"ROWID";
    v17[1] = @"album_artist";
    v17[2] = @"sort_album_artist";
    v17[3] = @"store_id";
    v17[4] = @"cloud_universal_library_id";
    v17[5] = @"classical_experience_available";
    v17[6] = @"liked_state";
    v17[7] = @"liked_state_changed_date";
    v17[8] = @"sync_id";
    v17[9] = @"album_artist_pid";
    v17[10] = @"grouping_key";
    v17[11] = @"sort_order";
    v17[12] = @"sort_order_section";
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:13];
    v9 = ML3AlbumArtistAllProperties;
    ML3AlbumArtistAllProperties = v8;

    v10 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"liked_state", @"liked_state_changed_date", 0}];
    v11 = ML3AlbumArtistContentsUnchangingProperties;
    ML3AlbumArtistContentsUnchangingProperties = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [a1 predisambiguateProperties:ML3AlbumArtistAllProperties toDictionary:v12];
    v13 = ML3AlbumArtistPredisambiguatedPropertyForProperties;
    ML3AlbumArtistPredisambiguatedPropertyForProperties = v12;
    v14 = v12;

    v15 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"album_artist.album_artist", @"album_artist", @"ROWID", @"representative_item_pid", 0}];
    v16 = ML3TrackForeignPropertyForML3AlbumArtistProperties;
    ML3TrackForeignPropertyForML3AlbumArtistProperties = v15;
  }
}

- (void)updateTrackValues:(id)a3
{
  v26[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = @"ROWID";
  v26[0] = @"ROWID";
  v26[1] = @"album_artist";
  v26[2] = @"sort_album_artist";
  v6 = @"representative_item_pid";
  v26[3] = @"representative_item_pid";
  v7 = @"cloud_status";
  v26[4] = @"cloud_status";
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  [(ML3Entity *)self getValues:&v23 forProperties:v26 count:5];
  [v4 setValue:v23 forKey:@"album_artist_pid"];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [ML3Track trackValueAreInTheCloud:v4];
  v10 = [v25 integerValue];
  v11 = [v4 objectForKey:@"ROWID"];
  v12 = [*(&v24 + 1) longLongValue];
  if (v12)
  {
    v13 = v12;
    [v4 setValue:*(&v23 + 1) forKey:@"album_artist.album_artist"];
    [v4 setValue:v24 forKey:@"album_artist.sort_album_artist"];
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

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [v8 setValue:v18 forKey:@"cloud_status"];

LABEL_9:
    [(ML3Collection *)self updateRepresentativeCollectionValues:v8 existingRepresentativePersistentID:v13 forUpdateTrackValues:v4];
    v16 = [v8 objectForKey:@"representative_item_pid"];
    v19 = [v16 longLongValue];
    if (v19)
    {
      v17 = v19;
    }

    else
    {
      v17 = v13;
    }

    goto LABEL_12;
  }

  v14 = [v4 objectForKey:@"album_artist.album_artist"];
  [v8 setValue:v14 forKey:@"album_artist"];

  v15 = [v4 objectForKey:@"album_artist.sort_album_artist"];
  [v8 setValue:v15 forKey:@"sort_album_artist"];

  if (!v9)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  [v8 setValue:v16 forKey:@"cloud_status"];
  v17 = 0;
LABEL_12:

LABEL_13:
  if ([v11 longLongValue] != v17)
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._library);
    v21 = [ML3Track trackWithPersistentID:v17 existsInLibrary:WeakRetained];

    if ((v21 & 1) == 0)
    {
      [v8 setValue:v11 forKey:@"representative_item_pid"];
    }
  }

  [(ML3Entity *)self setValuesForPropertiesWithDictionary:v8];

  for (i = 4; i != -1; --i)
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
  v7[2] = __60__ML3AlbumArtist_collectionWithPersistentID_addedToLibrary___block_invoke;
  v7[3] = &unk_278762B30;
  v7[4] = &v8;
  v7[5] = a3;
  [v5 databaseConnectionAllowingWrites:0 withBlock:v7];
  LOBYTE(a3) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return a3;
}

void __60__ML3AlbumArtist_collectionWithPersistentID_addedToLibrary___block_invoke(uint64_t a1, void *a2)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v3 numberWithLongLong:v4];
  v9[0] = v6;
  v9[1] = &unk_2840C90B0;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v8 = [v5 executeQuery:@"SELECT 1 from album_artist LEFT OUTER JOIN item ON (album_artist.album_artist_pid=item.album_artist_pid) WHERE (album_artist.album_artist_pid=? AND (album_artist.liked_state=? OR in_my_library)) LIMIT 1" withParameters:v7];

  *(*(*(a1 + 32) + 8) + 24) = [v8 hasAtLeastOneRow];
}

+ (BOOL)deleteFromLibrary:(id)a3 deletionType:(int)a4 persistentIDs:(const int64_t *)a5 count:(unint64_t)a6 usingConnection:(id)a7
{
  v10 = *&a4;
  v29[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a7;
  v26.receiver = a1;
  v26.super_class = &OBJC_METACLASS___ML3AlbumArtist;
  v14 = objc_msgSendSuper2(&v26, sel_deleteFromLibrary_deletionType_persistentIDs_count_usingConnection_, v12, v10, a5, a6, v13);
  if (a6)
  {
    v24 = v12;
    v15 = 0;
    v16 = 0;
    do
    {
      while (1)
      {
        v17 = v15;
        v18 = [MEMORY[0x277CCABB0] numberWithLongLong:a5[v16]];
        v29[0] = v18;
        v29[1] = &unk_2840C9098;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
        v25 = v15;
        v20 = [v13 executeUpdate:@"DELETE FROM library_pins WHERE entity_pid=? AND entity_type=?" withParameters:v19 error:&v25];
        v15 = v25;

        if ((v20 & 1) == 0)
        {
          break;
        }

        if (++v16 == a6)
        {

          v12 = v24;
          goto LABEL_12;
        }
      }

      v21 = os_log_create("com.apple.amp.medialibrary", "Default");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v15;
        _os_log_impl(&dword_22D2FA000, v21, OS_LOG_TYPE_ERROR, "Failed to delete artist from library_pins with error: %{public}@", buf, 0xCu);
      }

      ++v16;
    }

    while (v16 != a6);

    v22 = 0;
    v12 = v24;
  }

  else if (v14)
  {
LABEL_12:
    [v12 repairAlbumArtistRelationshipsWithConnection:v13];
    v22 = 1;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)propertiesForGroupingUniqueCollections
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"grouping_key";
  v4[1] = @"store_id";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:2];

  return v2;
}

+ (id)propertiesForGroupingKey
{
  if (propertiesForGroupingKey_onceToken_9620 != -1)
  {
    dispatch_once(&propertiesForGroupingKey_onceToken_9620, &__block_literal_global_9621);
  }

  v3 = propertiesForGroupingKey_propertiesForGroupingKey_9622;

  return v3;
}

uint64_t __42__ML3AlbumArtist_propertiesForGroupingKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"album_artist", 0}];
  v1 = propertiesForGroupingKey_propertiesForGroupingKey_9622;
  propertiesForGroupingKey_propertiesForGroupingKey_9622 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)countingQueryForBaseQuery:(id)a3 countProperty:(id)a4 forIdentifier:(int64_t)a5
{
  v20[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 predicateIncludingSystemwidePredicates];

  if (v10)
  {
    v11 = [v8 predicateIncludingSystemwidePredicates];
    v20[0] = v11;
    v12 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist_pid" equalToInt64:a5];
    v20[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v13];
  }

  else
  {
    v14 = [ML3ComparisonPredicate predicateWithProperty:@"album_artist_pid" equalToInt64:a5];
  }

  if (v9 == @"item_pid")
  {
    v16 = [v8 library];
    v17 = +[ML3Entity queryWithLibrary:predicate:options:](ML3Track, "queryWithLibrary:predicate:options:", v16, v14, [v8 options]);
  }

  else
  {
    if (v9 != @"album_pid")
    {
      v19.receiver = a1;
      v19.super_class = &OBJC_METACLASS___ML3AlbumArtist;
      v15 = objc_msgSendSuper2(&v19, sel_countingQueryForBaseQuery_countProperty_forIdentifier_, v8, v9, a5);
      goto LABEL_10;
    }

    v16 = [v8 library];
    v17 = +[ML3Entity queryWithLibrary:predicate:orderingTerms:propertyToCount:options:](ML3Track, "queryWithLibrary:predicate:orderingTerms:propertyToCount:options:", v16, v14, 0, @"album_pid", [v8 options]);
  }

  v15 = v17;

LABEL_10:

  return v15;
}

+ (id)foreignPropertyForProperty:(id)a3 entityClass:(Class)a4
{
  v6 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___ML3AlbumArtist;
  v7 = objc_msgSendSuper2(&v9, sel_foreignPropertyForProperty_entityClass_, v6, a4);
  if (!v7)
  {
    if (objc_opt_class() == a4)
    {
      v7 = [ML3TrackForeignPropertyForML3AlbumArtistProperties objectForKey:v6];
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
  if ([ML3AlbumArtistContentsUnchangingProperties containsObject:v3])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"app_data"] ^ 1;
  }

  return v4;
}

- (id)protocolItem
{
  v8[9] = *MEMORY[0x277D85DE8];
  v8[0] = @"ROWID";
  v8[1] = @"album_artist";
  v8[2] = @"sort_album_artist";
  v8[3] = @"cloud_universal_library_id";
  v8[4] = @"store_id";
  v8[5] = @"liked_state";
  v8[6] = @"liked_state_changed_date";
  v8[7] = @"sort_order";
  v8[8] = @"sort_order_section";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:9];
  v4 = [(ML3Entity *)self getValuesForProperties:v3];
  WeakRetained = objc_loadWeakRetained(&self->super.super._library);
  v6 = [ML3AlbumArtist protocolItemWithProperties:v4 inLibrary:WeakRetained];

  return v6;
}

- (id)multiverseIdentifier
{
  v18[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MIPMultiverseIdentifier);
  [(MIPMultiverseIdentifier *)v3 setMediaObjectType:8];
  WeakRetained = objc_loadWeakRetained(&self->super.super._library);
  v5 = [WeakRetained libraryUID];
  v6 = [WeakRetained syncLibraryID];
  v7 = objc_alloc_init(MIPLibraryIdentifier);
  [(MIPLibraryIdentifier *)v7 setLibraryId:self->super.super._persistentID];
  [(MIPLibraryIdentifier *)v7 setLibraryName:v5];
  [(MIPMultiverseIdentifier *)v3 addLibraryIdentifiers:v7];
  v18[0] = @"album_artist";
  v18[1] = @"store_id";
  v18[2] = @"sync_id";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v9 = [(ML3Entity *)self getValuesForProperties:v8];
  v10 = [v9 objectForKey:@"album_artist"];
  [(MIPMultiverseIdentifier *)v3 setName:v10];

  v11 = [v9 objectForKey:@"store_id"];
  v12 = [v11 longLongValue];

  if (v12 >= 1)
  {
    v13 = [v9 objectForKey:@"store_id"];
    -[MIPMultiverseIdentifier setStoreId:](v3, "setStoreId:", [v13 longLongValue]);
  }

  v14 = [v9 objectForKey:@"sync_id"];
  v15 = [v14 longLongValue];

  if (v15 >= 1 && [v6 length])
  {
    v16 = objc_alloc_init(MIPLibraryIdentifier);
    [(MIPLibraryIdentifier *)v16 setLibraryId:v15];
    [(MIPLibraryIdentifier *)v16 setLibraryName:v6];
    [(MIPMultiverseIdentifier *)v3 addLibraryIdentifiers:v16];
  }

  return v3;
}

+ (id)protocolItemWithProperties:(id)a3 inLibrary:(id)a4
{
  v4 = a3;
  v5 = objc_alloc_init(MIPArtist);
  v6 = [v4 objectForKey:@"ROWID"];
  v7 = [v6 longLongValue];

  v8 = [v4 objectForKey:@"store_id"];
  v9 = [v8 longLongValue];

  v10 = [v4 objectForKey:@"album_artist"];
  v11 = [v4 objectForKey:@"sort_album_artist"];
  v12 = [v4 objectForKey:@"cloud_universal_library_id"];
  v13 = [v4 objectForKey:@"liked_state"];
  v21 = [v13 integerValue];

  v14 = [v4 objectForKey:@"liked_state_changed_date"];
  v15 = [v14 longLongValue];

  v16 = [v4 objectForKey:@"sort_order"];
  v17 = [v16 longLongValue];

  v18 = [v4 objectForKey:@"sort_order_section"];

  v19 = [v18 longLongValue];
  if (v7)
  {
    [(MIPArtist *)v5 setPersistentId:v7];
  }

  if (v9)
  {
    [(MIPArtist *)v5 setStoreId:v9];
  }

  if ([v10 length])
  {
    [(MIPArtist *)v5 setName:v10];
  }

  if ([v11 length])
  {
    [(MIPArtist *)v5 setSortName:v11];
  }

  if (v17)
  {
    [(MIPArtist *)v5 setSortOrder:v17];
  }

  if (v19)
  {
    [(MIPArtist *)v5 setSortOrderSection:v19];
  }

  [(MIPArtist *)v5 setLikedState:v21];
  [(MIPArtist *)v5 setLikedStateChangedDate:v15];
  [(MIPArtist *)v5 setCloudUniversalLibraryId:v12];

  return v5;
}

@end
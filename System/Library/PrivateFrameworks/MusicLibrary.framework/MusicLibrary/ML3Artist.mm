@interface ML3Artist
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

@implementation ML3Artist

+ (void)initialize
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v3 = ML3ArtistDefaultOrderingTerms;
    ML3ArtistDefaultOrderingTerms = MEMORY[0x277CBEBF8];

    v14 = @"artist_item_store.tv_show_canonical_id";
    v15[0] = &unk_2840C8270;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v5 = ML3ArtistJoinsForProperties;
    ML3ArtistJoinsForProperties = v4;

    v13[0] = @"ROWID";
    v13[1] = @"item_artist";
    v13[2] = @"sort_item_artist";
    v13[3] = @"series_name";
    v13[4] = @"sort_series_name";
    v13[5] = @"representative_item_pid";
    v13[6] = @"classical_experience_available";
    v13[7] = @"sync_id";
    v13[8] = @"item_artist_pid";
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:9];
    v7 = ML3ArtistAllProperties;
    ML3ArtistAllProperties = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [a1 predisambiguateProperties:ML3ArtistAllProperties toDictionary:v8];
    v9 = ML3ArtistPredisambiguatedPropertyForProperties;
    ML3ArtistPredisambiguatedPropertyForProperties = v8;
    v10 = v8;

    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"item_artist.item_artist", @"item_artist", @"ROWID", @"representative_item_pid", @"item_store.tv_show_canonical_id", @"artist_item_store.tv_show_canonical_id", 0}];
    v12 = ML3TrackForeignPropertyForML3ArtistProperties;
    ML3TrackForeignPropertyForML3ArtistProperties = v11;
  }
}

- (void)updateTrackValues:(id)a3
{
  v28[7] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = @"ROWID";
  v28[0] = @"ROWID";
  v28[1] = @"item_artist";
  v28[2] = @"sort_item_artist";
  v28[3] = @"series_name";
  v28[4] = @"sort_series_name";
  v6 = @"representative_item_pid";
  v28[5] = @"representative_item_pid";
  v7 = @"cloud_status";
  v28[6] = @"cloud_status";
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  [(ML3Entity *)self getValues:&v24 forProperties:v28 count:7];
  [v4 setValue:v24 forKey:@"item_artist_pid"];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [ML3Track trackValueAreInTheCloud:v4];
  v10 = [v27 integerValue];
  v11 = [v4 objectForKey:@"ROWID"];
  v12 = [*(&v26 + 1) longLongValue];
  if (v12)
  {
    v13 = v12;
    [v4 setValue:*(&v24 + 1) forKey:@"item_artist.item_artist"];
    [v4 setValue:v25 forKey:@"item_artist.sort_item_artist"];
    [v4 setValue:*(&v25 + 1) forKey:@"item_artist.series_name"];
    [v4 setValue:v26 forKey:@"item_artist.sort_series_name"];
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

  v14 = [v4 objectForKey:@"item_artist.item_artist"];
  [v8 setValue:v14 forKey:@"item_artist"];

  v15 = [v4 objectForKey:@"item_artist.sort_item_artist"];
  [v8 setValue:v15 forKey:@"sort_item_artist"];

  v16 = [v4 objectForKey:@"item_artist.sort_series_name"];
  [v8 setValue:v16 forKey:@"sort_series_name"];

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

  for (i = 6; i != -1; --i)
  {
  }
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
  if (propertiesForGroupingKey_onceToken != -1)
  {
    dispatch_once(&propertiesForGroupingKey_onceToken, &__block_literal_global_5380);
  }

  v3 = propertiesForGroupingKey_propertiesForGroupingKey;

  return v3;
}

uint64_t __37__ML3Artist_propertiesForGroupingKey__block_invoke()
{
  propertiesForGroupingKey_propertiesForGroupingKey = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"series_name", @"item_artist", 0}];

  return MEMORY[0x2821F96F8]();
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
    v12 = [ML3ComparisonPredicate predicateWithProperty:@"item_artist_pid" equalToInt64:a5];
    v20[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v13];
  }

  else
  {
    v14 = [ML3ComparisonPredicate predicateWithProperty:@"item_artist_pid" equalToInt64:a5];
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
      v19.super_class = &OBJC_METACLASS___ML3Artist;
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
  v9.super_class = &OBJC_METACLASS___ML3Artist;
  v7 = objc_msgSendSuper2(&v9, sel_foreignPropertyForProperty_entityClass_, v6, a4);
  if (!v7)
  {
    if (objc_opt_class() == a4)
    {
      v7 = [ML3TrackForeignPropertyForML3ArtistProperties objectForKey:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)joinClausesForProperty:(id)a3
{
  v4 = a3;
  v5 = [ML3ArtistJoinsForProperties objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___ML3Artist;
    v7 = objc_msgSendSuper2(&v10, sel_joinClausesForProperty_, v4);
  }

  v8 = v7;

  return v8;
}

- (id)protocolItem
{
  v8[5] = *MEMORY[0x277D85DE8];
  v8[0] = @"ROWID";
  v8[1] = @"item_artist";
  v8[2] = @"sort_item_artist";
  v8[3] = @"store_id";
  v8[4] = @"sync_id";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:5];
  v4 = [(ML3Entity *)self getValuesForProperties:v3];
  WeakRetained = objc_loadWeakRetained(&self->super.super._library);
  v6 = [ML3Artist protocolItemWithProperties:v4 inLibrary:WeakRetained];

  return v6;
}

- (id)multiverseIdentifier
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MIPMultiverseIdentifier);
  [(MIPMultiverseIdentifier *)v3 setMediaObjectType:2];
  v4 = objc_alloc_init(MIPLibraryIdentifier);
  [(MIPLibraryIdentifier *)v4 setLibraryId:self->super.super._persistentID];
  WeakRetained = objc_loadWeakRetained(&self->super.super._library);
  v6 = [WeakRetained libraryUID];
  [(MIPLibraryIdentifier *)v4 setLibraryName:v6];

  [(MIPMultiverseIdentifier *)v3 addLibraryIdentifiers:v4];
  v14[0] = @"item_artist";
  v14[1] = @"store_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [(ML3Entity *)self getValuesForProperties:v7];
  v9 = [v8 objectForKey:@"item_artist"];
  [(MIPMultiverseIdentifier *)v3 setName:v9];

  v10 = [v8 objectForKey:@"store_id"];
  v11 = [v10 longLongValue];

  if (v11 >= 1)
  {
    v12 = [v8 objectForKey:@"store_id"];
    -[MIPMultiverseIdentifier setStoreId:](v3, "setStoreId:", [v12 longLongValue]);
  }

  return v3;
}

+ (id)protocolItemWithProperties:(id)a3 inLibrary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MIPArtist);
  v8 = [v6 objectForKey:@"ROWID"];
  v9 = [v8 longLongValue];

  v10 = [v6 objectForKey:@"store_id"];
  v11 = [v10 longLongValue];

  v12 = [v6 objectForKey:@"sync_id"];
  v13 = [v12 longLongValue];

  v14 = [v6 objectForKey:@"item_artist"];
  v15 = [v6 objectForKey:@"sort_item_artist"];

  if (v9)
  {
    [(MIPArtist *)v7 setPersistentId:v9];
  }

  if (v11)
  {
    [(MIPArtist *)v7 setStoreId:v11];
  }

  if ([v14 length])
  {
    [(MIPArtist *)v7 setName:v14];
  }

  if ([v15 length])
  {
    [(MIPArtist *)v7 setSortName:v15];
  }

  v16 = [v5 libraryUID];
  v17 = [v5 syncLibraryID];

  v18 = objc_alloc_init(MIPLibraryIdentifier);
  [(MIPLibraryIdentifier *)v18 setLibraryId:v9];
  [(MIPLibraryIdentifier *)v18 setLibraryName:v16];
  v19 = [(MIPArtist *)v7 libraryIdentifiers];
  [v19 addObject:v18];

  if (v13 >= 1 && [v17 length])
  {
    v20 = objc_alloc_init(MIPLibraryIdentifier);
    [(MIPLibraryIdentifier *)v20 setLibraryId:v13];
    [(MIPLibraryIdentifier *)v20 setLibraryName:v17];
    v21 = [(MIPArtist *)v7 libraryIdentifiers];
    [v21 addObject:v20];
  }

  return v7;
}

@end
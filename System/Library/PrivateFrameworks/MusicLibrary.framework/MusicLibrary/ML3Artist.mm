@interface ML3Artist
+ (id)countingQueryForBaseQuery:(id)query countProperty:(id)property forIdentifier:(int64_t)identifier;
+ (id)foreignPropertyForProperty:(id)property entityClass:(Class)class;
+ (id)joinClausesForProperty:(id)property;
+ (id)propertiesForGroupingKey;
+ (id)propertiesForGroupingUniqueCollections;
+ (id)protocolItemWithProperties:(id)properties inLibrary:(id)library;
+ (void)initialize;
- (id)multiverseIdentifier;
- (id)protocolItem;
- (void)updateTrackValues:(id)values;
@end

@implementation ML3Artist

+ (void)initialize
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
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
    [self predisambiguateProperties:ML3ArtistAllProperties toDictionary:v8];
    v9 = ML3ArtistPredisambiguatedPropertyForProperties;
    ML3ArtistPredisambiguatedPropertyForProperties = v8;
    v10 = v8;

    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"item_artist.item_artist", @"item_artist", @"ROWID", @"representative_item_pid", @"item_store.tv_show_canonical_id", @"artist_item_store.tv_show_canonical_id", 0}];
    v12 = ML3TrackForeignPropertyForML3ArtistProperties;
    ML3TrackForeignPropertyForML3ArtistProperties = v11;
  }
}

- (void)updateTrackValues:(id)values
{
  v28[7] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
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
  [valuesCopy setValue:v24 forKey:@"item_artist_pid"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = [ML3Track trackValueAreInTheCloud:valuesCopy];
  integerValue = [v27 integerValue];
  v11 = [valuesCopy objectForKey:@"ROWID"];
  longLongValue = [*(&v26 + 1) longLongValue];
  if (longLongValue)
  {
    v13 = longLongValue;
    [valuesCopy setValue:*(&v24 + 1) forKey:@"item_artist.item_artist"];
    [valuesCopy setValue:v25 forKey:@"item_artist.sort_item_artist"];
    [valuesCopy setValue:*(&v25 + 1) forKey:@"item_artist.series_name"];
    [valuesCopy setValue:v26 forKey:@"item_artist.sort_series_name"];
    if (v9)
    {
      if (integerValue)
      {
        goto LABEL_9;
      }
    }

    else if (integerValue != 2)
    {
      goto LABEL_9;
    }

    v19 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [dictionary setValue:v19 forKey:@"cloud_status"];

LABEL_9:
    [(ML3Collection *)self updateRepresentativeCollectionValues:dictionary existingRepresentativePersistentID:v13 forUpdateTrackValues:valuesCopy];
    v17 = [dictionary objectForKey:@"representative_item_pid"];
    longLongValue2 = [v17 longLongValue];
    if (longLongValue2)
    {
      v18 = longLongValue2;
    }

    else
    {
      v18 = v13;
    }

    goto LABEL_12;
  }

  v14 = [valuesCopy objectForKey:@"item_artist.item_artist"];
  [dictionary setValue:v14 forKey:@"item_artist"];

  v15 = [valuesCopy objectForKey:@"item_artist.sort_item_artist"];
  [dictionary setValue:v15 forKey:@"sort_item_artist"];

  v16 = [valuesCopy objectForKey:@"item_artist.sort_series_name"];
  [dictionary setValue:v16 forKey:@"sort_series_name"];

  if (!v9)
  {
    v18 = 0;
    goto LABEL_13;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  [dictionary setValue:v17 forKey:@"cloud_status"];
  v18 = 0;
LABEL_12:

LABEL_13:
  if ([v11 longLongValue] != v18)
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._library);
    v22 = [ML3Track trackWithPersistentID:v18 existsInLibrary:WeakRetained];

    if ((v22 & 1) == 0)
    {
      [dictionary setValue:v11 forKey:@"representative_item_pid"];
    }
  }

  [(ML3Entity *)self setValuesForPropertiesWithDictionary:dictionary];

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

+ (id)countingQueryForBaseQuery:(id)query countProperty:(id)property forIdentifier:(int64_t)identifier
{
  v20[2] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  propertyCopy = property;
  predicateIncludingSystemwidePredicates = [queryCopy predicateIncludingSystemwidePredicates];

  if (predicateIncludingSystemwidePredicates)
  {
    predicateIncludingSystemwidePredicates2 = [queryCopy predicateIncludingSystemwidePredicates];
    v20[0] = predicateIncludingSystemwidePredicates2;
    v12 = [ML3ComparisonPredicate predicateWithProperty:@"item_artist_pid" equalToInt64:identifier];
    v20[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
    v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v13];
  }

  else
  {
    v14 = [ML3ComparisonPredicate predicateWithProperty:@"item_artist_pid" equalToInt64:identifier];
  }

  if (propertyCopy == @"item_pid")
  {
    library = [queryCopy library];
    v17 = +[ML3Entity queryWithLibrary:predicate:options:](ML3Track, "queryWithLibrary:predicate:options:", library, v14, [queryCopy options]);
  }

  else
  {
    if (propertyCopy != @"album_pid")
    {
      v19.receiver = self;
      v19.super_class = &OBJC_METACLASS___ML3Artist;
      v15 = objc_msgSendSuper2(&v19, sel_countingQueryForBaseQuery_countProperty_forIdentifier_, queryCopy, propertyCopy, identifier);
      goto LABEL_10;
    }

    library = [queryCopy library];
    v17 = +[ML3Entity queryWithLibrary:predicate:orderingTerms:propertyToCount:options:](ML3Track, "queryWithLibrary:predicate:orderingTerms:propertyToCount:options:", library, v14, 0, @"album_pid", [queryCopy options]);
  }

  v15 = v17;

LABEL_10:

  return v15;
}

+ (id)foreignPropertyForProperty:(id)property entityClass:(Class)class
{
  propertyCopy = property;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___ML3Artist;
  v7 = objc_msgSendSuper2(&v9, sel_foreignPropertyForProperty_entityClass_, propertyCopy, class);
  if (!v7)
  {
    if (objc_opt_class() == class)
    {
      v7 = [ML3TrackForeignPropertyForML3ArtistProperties objectForKey:propertyCopy];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)joinClausesForProperty:(id)property
{
  propertyCopy = property;
  v5 = [ML3ArtistJoinsForProperties objectForKey:propertyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___ML3Artist;
    v7 = objc_msgSendSuper2(&v10, sel_joinClausesForProperty_, propertyCopy);
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
  libraryUID = [WeakRetained libraryUID];
  [(MIPLibraryIdentifier *)v4 setLibraryName:libraryUID];

  [(MIPMultiverseIdentifier *)v3 addLibraryIdentifiers:v4];
  v14[0] = @"item_artist";
  v14[1] = @"store_id";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v8 = [(ML3Entity *)self getValuesForProperties:v7];
  v9 = [v8 objectForKey:@"item_artist"];
  [(MIPMultiverseIdentifier *)v3 setName:v9];

  v10 = [v8 objectForKey:@"store_id"];
  longLongValue = [v10 longLongValue];

  if (longLongValue >= 1)
  {
    v12 = [v8 objectForKey:@"store_id"];
    -[MIPMultiverseIdentifier setStoreId:](v3, "setStoreId:", [v12 longLongValue]);
  }

  return v3;
}

+ (id)protocolItemWithProperties:(id)properties inLibrary:(id)library
{
  libraryCopy = library;
  propertiesCopy = properties;
  v7 = objc_alloc_init(MIPArtist);
  v8 = [propertiesCopy objectForKey:@"ROWID"];
  longLongValue = [v8 longLongValue];

  v10 = [propertiesCopy objectForKey:@"store_id"];
  longLongValue2 = [v10 longLongValue];

  v12 = [propertiesCopy objectForKey:@"sync_id"];
  longLongValue3 = [v12 longLongValue];

  v14 = [propertiesCopy objectForKey:@"item_artist"];
  v15 = [propertiesCopy objectForKey:@"sort_item_artist"];

  if (longLongValue)
  {
    [(MIPArtist *)v7 setPersistentId:longLongValue];
  }

  if (longLongValue2)
  {
    [(MIPArtist *)v7 setStoreId:longLongValue2];
  }

  if ([v14 length])
  {
    [(MIPArtist *)v7 setName:v14];
  }

  if ([v15 length])
  {
    [(MIPArtist *)v7 setSortName:v15];
  }

  libraryUID = [libraryCopy libraryUID];
  syncLibraryID = [libraryCopy syncLibraryID];

  v18 = objc_alloc_init(MIPLibraryIdentifier);
  [(MIPLibraryIdentifier *)v18 setLibraryId:longLongValue];
  [(MIPLibraryIdentifier *)v18 setLibraryName:libraryUID];
  libraryIdentifiers = [(MIPArtist *)v7 libraryIdentifiers];
  [libraryIdentifiers addObject:v18];

  if (longLongValue3 >= 1 && [syncLibraryID length])
  {
    v20 = objc_alloc_init(MIPLibraryIdentifier);
    [(MIPLibraryIdentifier *)v20 setLibraryId:longLongValue3];
    [(MIPLibraryIdentifier *)v20 setLibraryName:syncLibraryID];
    libraryIdentifiers2 = [(MIPArtist *)v7 libraryIdentifiers];
    [libraryIdentifiers2 addObject:v20];
  }

  return v7;
}

@end
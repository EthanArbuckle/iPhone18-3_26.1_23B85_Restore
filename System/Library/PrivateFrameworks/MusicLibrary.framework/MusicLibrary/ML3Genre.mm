@interface ML3Genre
+ (id)countingQueryForBaseQuery:(id)a3 countProperty:(id)a4 forIdentifier:(int64_t)a5;
+ (id)foreignPropertyForProperty:(id)a3 entityClass:(Class)a4;
+ (id)joinClausesForProperty:(id)a3;
+ (id)propertiesForGroupingKey;
+ (id)protocolItemWithProperties:(id)a3 inLibrary:(id)a4;
+ (void)initialize;
- (id)multiverseIdentifier;
- (id)protocolItem;
- (void)updateTrackValues:(id)a3;
@end

@implementation ML3Genre

+ (void)initialize
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    v3 = [ML3OrderingTerm orderingTermWithProperty:@"genre"];
    v17[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v5 = ML3GenreDefaultOrderingTerms;
    ML3GenreDefaultOrderingTerms = v4;

    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"ROWID", @"genre", @"representative_item_pid", 0}];
    v7 = ML3GenreAllProperties;
    ML3GenreAllProperties = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [a1 predisambiguateProperties:ML3GenreAllProperties toDictionary:v8];
    v9 = ML3GenrePredisambiguatedPropertyForProperties;
    ML3GenrePredisambiguatedPropertyForProperties = v8;
    v10 = v8;

    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"genre.genre", @"genre", @"ROWID", @"representative_item_pid", 0}];
    v12 = ML3TrackForeignPropertyForML3GenreProperties;
    ML3TrackForeignPropertyForML3GenreProperties = v11;

    v15 = @"genre_item_store.store_genre_id";
    v16 = &unk_2840C8318;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = ML3GenreJoinsForProperties;
    ML3GenreJoinsForProperties = v13;
  }
}

- (void)updateTrackValues:(id)a3
{
  v22[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = @"ROWID";
  v22[0] = @"ROWID";
  v22[1] = @"genre";
  v6 = @"representative_item_pid";
  v22[2] = @"representative_item_pid";
  v7 = @"cloud_status";
  v22[3] = @"cloud_status";
  v20 = 0u;
  v21 = 0u;
  [(ML3Entity *)self getValues:&v20 forProperties:v22 count:4];
  [v4 setValue:v20 forKey:@"genre_id"];
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v9 = [ML3Track trackValueAreInTheCloud:v4];
  v10 = [*(&v21 + 1) integerValue];
  v11 = [v4 objectForKey:@"ROWID"];
  v12 = [v21 longLongValue];
  if (v12)
  {
    v13 = v12;
    [v4 setValue:*(&v20 + 1) forKey:@"genre.genre"];
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

    v15 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [v8 setValue:v15 forKey:@"cloud_status"];

LABEL_9:
    [(ML3Collection *)self updateRepresentativeCollectionValues:v8 existingRepresentativePersistentID:v13 forUpdateTrackValues:v4];
    v14 = [v8 objectForKey:@"representative_item_pid"];
    v16 = [v14 longLongValue];
    if (v16)
    {
      v13 = v16;
    }

    goto LABEL_11;
  }

  if (!v9)
  {
    v13 = 0;
    goto LABEL_12;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  [v8 setValue:v14 forKey:@"cloud_status"];
  v13 = 0;
LABEL_11:

LABEL_12:
  if ([v11 longLongValue] != v13)
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._library);
    v18 = [ML3Track trackWithPersistentID:v13 existsInLibrary:WeakRetained];

    if ((v18 & 1) == 0)
    {
      [v8 setValue:v11 forKey:@"representative_item_pid"];
    }
  }

  [(ML3Entity *)self setValuesForPropertiesWithDictionary:v8];

  for (i = 3; i != -1; --i)
  {
  }
}

+ (id)propertiesForGroupingKey
{
  if (propertiesForGroupingKey_onceToken_7656 != -1)
  {
    dispatch_once(&propertiesForGroupingKey_onceToken_7656, &__block_literal_global_7657);
  }

  v3 = propertiesForGroupingKey_propertiesForGroupingKey_7658;

  return v3;
}

uint64_t __36__ML3Genre_propertiesForGroupingKey__block_invoke()
{
  propertiesForGroupingKey_propertiesForGroupingKey_7658 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"genre", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (id)countingQueryForBaseQuery:(id)a3 countProperty:(id)a4 forIdentifier:(int64_t)a5
{
  v22[2] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 predicateIncludingSystemwidePredicates];

  if (v10)
  {
    v11 = [v8 predicateIncludingSystemwidePredicates];
    v22[0] = v11;
    v12 = [ML3ComparisonPredicate predicateWithProperty:@"genre_id" equalToInt64:a5];
    v22[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v13];
  }

  else
  {
    v14 = [ML3ComparisonPredicate predicateWithProperty:@"genre_id" equalToInt64:a5];
  }

  if (v9 == @"item_pid")
  {
    v16 = [v8 library];
    v17 = +[ML3Entity queryWithLibrary:predicate:options:](ML3Track, "queryWithLibrary:predicate:options:", v16, v14, [v8 options]);
  }

  else
  {
    if (v9 == @"album_pid")
    {
      v16 = [v8 library];
      v18 = [v8 options];
      v19 = @"album_pid";
    }

    else
    {
      if (v9 != @"item_artist_pid")
      {
        v21.receiver = a1;
        v21.super_class = &OBJC_METACLASS___ML3Genre;
        v15 = objc_msgSendSuper2(&v21, sel_countingQueryForBaseQuery_countProperty_forIdentifier_, v8, v9, a5);
        goto LABEL_13;
      }

      v16 = [v8 library];
      v18 = [v8 options];
      v19 = @"item_artist_pid";
    }

    v17 = [(ML3Entity *)ML3Track queryWithLibrary:v16 predicate:v14 orderingTerms:0 propertyToCount:v19 options:v18];
  }

  v15 = v17;

LABEL_13:

  return v15;
}

+ (id)foreignPropertyForProperty:(id)a3 entityClass:(Class)a4
{
  v6 = a3;
  v9.receiver = a1;
  v9.super_class = &OBJC_METACLASS___ML3Genre;
  v7 = objc_msgSendSuper2(&v9, sel_foreignPropertyForProperty_entityClass_, v6, a4);
  if (!v7)
  {
    if (objc_opt_class() == a4)
    {
      v7 = [ML3TrackForeignPropertyForML3GenreProperties objectForKey:v6];
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
  v5 = [ML3GenreJoinsForProperties objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = a1;
    v10.super_class = &OBJC_METACLASS___ML3Genre;
    v7 = objc_msgSendSuper2(&v10, sel_joinClausesForProperty_, v4);
  }

  v8 = v7;

  return v8;
}

- (id)protocolItem
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = @"ROWID";
  v8[1] = @"genre";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v4 = [(ML3Entity *)self getValuesForProperties:v3];
  WeakRetained = objc_loadWeakRetained(&self->super.super._library);
  v6 = [ML3Genre protocolItemWithProperties:v4 inLibrary:WeakRetained];

  return v6;
}

- (id)multiverseIdentifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MIPMultiverseIdentifier);
  [(MIPMultiverseIdentifier *)v3 setMediaObjectType:4];
  v4 = objc_alloc_init(MIPLibraryIdentifier);
  [(MIPLibraryIdentifier *)v4 setLibraryId:self->super.super._persistentID];
  WeakRetained = objc_loadWeakRetained(&self->super.super._library);
  v6 = [WeakRetained libraryUID];
  [(MIPLibraryIdentifier *)v4 setLibraryName:v6];

  [(MIPMultiverseIdentifier *)v3 addLibraryIdentifiers:v4];
  v11[0] = @"genre";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [(ML3Entity *)self getValuesForProperties:v7];
  v9 = [v8 objectForKey:@"genre"];
  [(MIPMultiverseIdentifier *)v3 setName:v9];

  return v3;
}

+ (id)protocolItemWithProperties:(id)a3 inLibrary:(id)a4
{
  v4 = a3;
  v5 = objc_alloc_init(MIPGenre);
  v6 = [v4 objectForKey:@"genre"];

  if ([v6 length])
  {
    [(MIPGenre *)v5 setName:v6];
  }

  return v5;
}

@end
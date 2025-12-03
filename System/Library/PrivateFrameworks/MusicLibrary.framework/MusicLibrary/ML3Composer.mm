@interface ML3Composer
+ (id)countingQueryForBaseQuery:(id)query countProperty:(id)property forIdentifier:(int64_t)identifier;
+ (id)foreignPropertyForProperty:(id)property entityClass:(Class)class;
+ (id)joinClausesForProperty:(id)property;
+ (id)propertiesForGroupingKey;
+ (id)protocolItemWithProperties:(id)properties inLibrary:(id)library;
+ (void)initialize;
- (id)multiverseIdentifier;
- (id)protocolItem;
- (void)updateTrackValues:(id)values;
@end

@implementation ML3Composer

+ (void)initialize
{
  v17[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == self)
  {
    v3 = [ML3OrderingTerm orderingTermWithProperty:@"composer"];
    v17[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
    v5 = ML3ComposerDefaultOrderingTerms;
    ML3ComposerDefaultOrderingTerms = v4;

    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"ROWID", @"composer", @"sort_composer", @"representative_item_pid", 0}];
    v7 = ML3ComposerAllProperties;
    ML3ComposerAllProperties = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [self predisambiguateProperties:ML3ComposerAllProperties toDictionary:v8];
    v9 = ML3ComposerPredisambiguatedPropertyForProperties;
    ML3ComposerPredisambiguatedPropertyForProperties = v8;
    v10 = v8;

    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"composer.composer", @"composer", @"ROWID", @"representative_item_pid", 0}];
    v12 = ML3TrackForeignPropertyForML3ComposerProperties;
    ML3TrackForeignPropertyForML3ComposerProperties = v11;

    v15 = @"composer_item_store.store_composer_id";
    v16 = &unk_2840C8570;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v14 = ML3ComposerJoinsForProperties;
    ML3ComposerJoinsForProperties = v13;
  }
}

- (void)updateTrackValues:(id)values
{
  v26[6] = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v5 = @"ROWID";
  v26[0] = @"ROWID";
  v26[1] = @"composer";
  v26[2] = @"sort_composer";
  v6 = @"representative_item_pid";
  v26[3] = @"representative_item_pid";
  v26[4] = 0;
  v7 = @"cloud_status";
  v26[5] = @"cloud_status";
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  [(ML3Entity *)self getValues:&v23 forProperties:v26 count:6];
  [valuesCopy setValue:v23 forKey:@"composer_pid"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = [ML3Track trackValueAreInTheCloud:valuesCopy];
  integerValue = [*(&v25 + 1) integerValue];
  v11 = [valuesCopy objectForKey:@"ROWID"];
  longLongValue = [*(&v24 + 1) longLongValue];
  if (longLongValue)
  {
    v13 = longLongValue;
    [valuesCopy setValue:*(&v23 + 1) forKey:@"composer.composer"];
    [valuesCopy setValue:v24 forKey:@"composer.sort_composer"];
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

    v18 = [MEMORY[0x277CCABB0] numberWithInteger:1];
    [dictionary setValue:v18 forKey:@"cloud_status"];

LABEL_9:
    [(ML3Collection *)self updateRepresentativeCollectionValues:dictionary existingRepresentativePersistentID:v13 forUpdateTrackValues:valuesCopy];
    v16 = [dictionary objectForKey:@"representative_item_pid"];
    longLongValue2 = [v16 longLongValue];
    if (longLongValue2)
    {
      v17 = longLongValue2;
    }

    else
    {
      v17 = v13;
    }

    goto LABEL_12;
  }

  v14 = [valuesCopy objectForKey:@"composer.composer"];
  [dictionary setValue:v14 forKey:@"composer"];

  v15 = [valuesCopy objectForKey:@"composer.sort_composer"];
  [dictionary setValue:v15 forKey:@"sort_composer"];

  if (!v9)
  {
    v17 = 0;
    goto LABEL_13;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  [dictionary setValue:v16 forKey:@"cloud_status"];
  v17 = 0;
LABEL_12:

LABEL_13:
  if ([v11 longLongValue] != v17)
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super._library);
    v21 = [ML3Track trackWithPersistentID:v17 existsInLibrary:WeakRetained];

    if ((v21 & 1) == 0)
    {
      [dictionary setValue:v11 forKey:@"representative_item_pid"];
    }
  }

  [(ML3Entity *)self setValuesForPropertiesWithDictionary:dictionary];

  for (i = 5; i != -1; --i)
  {
  }
}

+ (id)propertiesForGroupingKey
{
  if (propertiesForGroupingKey_onceToken_9490 != -1)
  {
    dispatch_once(&propertiesForGroupingKey_onceToken_9490, &__block_literal_global_9491);
  }

  v3 = propertiesForGroupingKey_propertiesForGroupingKey_9492;

  return v3;
}

uint64_t __39__ML3Composer_propertiesForGroupingKey__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"composer", 0}];
  v1 = propertiesForGroupingKey_propertiesForGroupingKey_9492;
  propertiesForGroupingKey_propertiesForGroupingKey_9492 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)countingQueryForBaseQuery:(id)query countProperty:(id)property forIdentifier:(int64_t)identifier
{
  v22[2] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  propertyCopy = property;
  predicateIncludingSystemwidePredicates = [queryCopy predicateIncludingSystemwidePredicates];

  if (predicateIncludingSystemwidePredicates)
  {
    predicateIncludingSystemwidePredicates2 = [queryCopy predicateIncludingSystemwidePredicates];
    v22[0] = predicateIncludingSystemwidePredicates2;
    v12 = [ML3ComparisonPredicate predicateWithProperty:@"composer_pid" equalToInt64:identifier];
    v22[1] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v14 = [(ML3CompoundPredicate *)ML3AllCompoundPredicate predicateMatchingPredicates:v13];
  }

  else
  {
    v14 = [ML3ComparisonPredicate predicateWithProperty:@"composer_pid" equalToInt64:identifier];
  }

  if (propertyCopy == @"item_pid")
  {
    library = [queryCopy library];
    v17 = +[ML3Entity queryWithLibrary:predicate:options:](ML3Track, "queryWithLibrary:predicate:options:", library, v14, [queryCopy options]);
  }

  else
  {
    if (propertyCopy == @"album_pid")
    {
      library = [queryCopy library];
      options = [queryCopy options];
      v19 = @"album_pid";
    }

    else
    {
      if (propertyCopy != @"item_artist_pid")
      {
        v21.receiver = self;
        v21.super_class = &OBJC_METACLASS___ML3Composer;
        v15 = objc_msgSendSuper2(&v21, sel_countingQueryForBaseQuery_countProperty_forIdentifier_, queryCopy, propertyCopy, identifier);
        goto LABEL_13;
      }

      library = [queryCopy library];
      options = [queryCopy options];
      v19 = @"item_artist_pid";
    }

    v17 = [(ML3Entity *)ML3Track queryWithLibrary:library predicate:v14 orderingTerms:0 propertyToCount:v19 options:options];
  }

  v15 = v17;

LABEL_13:

  return v15;
}

+ (id)foreignPropertyForProperty:(id)property entityClass:(Class)class
{
  propertyCopy = property;
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___ML3Composer;
  v7 = objc_msgSendSuper2(&v9, sel_foreignPropertyForProperty_entityClass_, propertyCopy, class);
  if (!v7)
  {
    if (objc_opt_class() == class)
    {
      v7 = [ML3TrackForeignPropertyForML3ComposerProperties objectForKey:propertyCopy];
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
  v5 = [ML3ComposerJoinsForProperties objectForKey:propertyCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = &OBJC_METACLASS___ML3Composer;
    v7 = objc_msgSendSuper2(&v10, sel_joinClausesForProperty_, propertyCopy);
  }

  v8 = v7;

  return v8;
}

- (id)protocolItem
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"ROWID";
  v8[1] = @"composer";
  v8[2] = @"sort_composer";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v4 = [(ML3Entity *)self getValuesForProperties:v3];
  WeakRetained = objc_loadWeakRetained(&self->super.super._library);
  v6 = [ML3Composer protocolItemWithProperties:v4 inLibrary:WeakRetained];

  return v6;
}

- (id)multiverseIdentifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MIPMultiverseIdentifier);
  [(MIPMultiverseIdentifier *)v3 setMediaObjectType:3];
  v4 = objc_alloc_init(MIPLibraryIdentifier);
  [(MIPLibraryIdentifier *)v4 setLibraryId:self->super.super._persistentID];
  WeakRetained = objc_loadWeakRetained(&self->super.super._library);
  libraryUID = [WeakRetained libraryUID];
  [(MIPLibraryIdentifier *)v4 setLibraryName:libraryUID];

  [(MIPMultiverseIdentifier *)v3 addLibraryIdentifiers:v4];
  v11[0] = @"composer";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v8 = [(ML3Entity *)self getValuesForProperties:v7];
  v9 = [v8 objectForKey:@"composer"];
  [(MIPMultiverseIdentifier *)v3 setName:v9];

  return v3;
}

+ (id)protocolItemWithProperties:(id)properties inLibrary:(id)library
{
  propertiesCopy = properties;
  v5 = objc_alloc_init(MIPArtist);
  v6 = [propertiesCopy objectForKey:@"composer"];
  v7 = [propertiesCopy objectForKey:@"sort_composer"];

  if ([v6 length])
  {
    [(MIPArtist *)v5 setName:v6];
  }

  if ([v7 length])
  {
    [(MIPArtist *)v5 setSortName:v7];
  }

  return v5;
}

@end
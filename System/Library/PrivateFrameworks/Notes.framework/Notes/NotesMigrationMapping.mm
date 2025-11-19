@interface NotesMigrationMapping
+ (id)customMappingFromSourceModelName:(id)a3 toDestinationModelName:(id)a4;
+ (id)descriptionStringFromSourceStoreNames:(id)a3 destinationStoreName:(id)a4;
+ (id)inferredMappingFromSourceModelNames:(id)a3 toDestinationModelName:(id)a4;
+ (id)mappings;
+ (id)modelForModelName:(id)a3;
- (BOOL)canMigrateStoreMetadata:(id)a3;
- (id)description;
- (id)mappingModelForStoreMetadata:(id)a3;
- (id)sourceModelForStoreMetadata:(id)a3;
@end

@implementation NotesMigrationMapping

+ (id)descriptionStringFromSourceStoreNames:(id)a3 destinationStoreName:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
  if ([v5 count] >= 2)
  {
    [v7 appendString:@"["];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        [v7 appendString:{v13, v19}];
        v14 = [v8 lastObject];
        LODWORD(v13) = [v13 isEqualToString:v14];

        v15 = @"|";
        if (v13)
        {
          v16 = [v8 count];
          v15 = @"]";
          if (v16 < 2)
          {
            continue;
          }
        }

        [v7 appendString:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  [v7 appendString:@" -> "];
  [v7 appendString:v6];

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)modelForModelName:(id)a3
{
  v3 = a3;
  v4 = NoteContextManagedObjectModelPath();
  v5 = MEMORY[0x277CBEBC0];
  v6 = [v4 stringByAppendingPathComponent:v3];

  v7 = [v6 stringByAppendingPathExtension:@"mom"];
  v8 = [v5 fileURLWithPath:v7];

  v9 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v8];

  return v9;
}

+ (id)mappings
{
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = [NotesMigrationMapping inferredMappingFromSourceModelNames:&unk_286E32A50 toDestinationModelName:@"DidChooseToMigrate"];
  [v2 addObject:v3];

  v4 = [NotesMigrationMapping customMappingFromSourceModelName:@"ExternalSequenceNumber" toDestinationModelName:@"Attachments"];
  [v2 addObject:v4];

  v5 = [NotesMigrationMapping inferredMappingFromSourceModelNames:&unk_286E32A68 toDestinationModelName:@"ExternalSequenceNumber"];
  [v2 addObject:v5];

  v6 = [v2 copy];

  return v6;
}

+ (id)inferredMappingFromSourceModelNames:(id)a3 toDestinationModelName:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [a1 modelForModelName:{*(*(&v20 + 1) + 8 * i), v20}];
        [v8 addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v11);
  }

  v15 = objc_alloc_init(objc_opt_class());
  [v15 setSourceModels:v8];
  v16 = [a1 modelForModelName:v7];
  [v15 setDestinationModel:v16];

  [v15 setType:1];
  v17 = [a1 descriptionStringFromSourceStoreNames:v9 destinationStoreName:v7];
  [v15 setDescriptionString:v17];

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)customMappingFromSourceModelName:(id)a3 toDestinationModelName:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(objc_opt_class());
  v9 = [a1 modelForModelName:v7];
  v17[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  [v8 setSourceModels:v10];

  v11 = [a1 modelForModelName:v6];
  [v8 setDestinationModel:v11];

  [v8 setType:0];
  v16 = v7;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];

  v13 = [a1 descriptionStringFromSourceStoreNames:v12 destinationStoreName:v6];

  [v8 setDescriptionString:v13];
  v14 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)sourceModelForStoreMetadata:(id)a3
{
  v4 = MEMORY[0x277CBE450];
  v5 = a3;
  v6 = [(NotesMigrationMapping *)self sourceModels];
  v7 = [v4 modelByMergingModels:v6 forStoreMetadata:v5];

  return v7;
}

- (id)mappingModelForStoreMetadata:(id)a3
{
  v4 = a3;
  if ([(NotesMigrationMapping *)self type]== 1)
  {
    v5 = [(NotesMigrationMapping *)self sourceModelForStoreMetadata:v4];
    v6 = MEMORY[0x277CBE458];
    v7 = [(NotesMigrationMapping *)self destinationModel];
    v15 = 0;
    v8 = [v6 inferredMappingModelForSourceModel:v5 destinationModel:v7 error:&v15];
    v9 = v15;

    if (!v8)
    {
      NSLog(&cfstr_UnexpectedErro.isa, v4, v9);
    }
  }

  else
  {
    v10 = MEMORY[0x277CBE458];
    v11 = [(NotesMigrationMapping *)self sourceModels];
    v12 = [v11 lastObject];
    v13 = [(NotesMigrationMapping *)self destinationModel];
    v8 = [v10 mappingModelFromBundles:0 forSourceModel:v12 destinationModel:v13];
  }

  return v8;
}

- (BOOL)canMigrateStoreMetadata:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x277CBE2F0]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NotesMigrationMapping *)self sourceModels];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) entityVersionHashesByName];
        v10 = [v9 isEqual:v4];

        if (v10)
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NotesMigrationMapping *)self descriptionString];
  v7 = [v3 stringWithFormat:@"<%@: %p  %@>", v5, self, v6];;

  return v7;
}

@end
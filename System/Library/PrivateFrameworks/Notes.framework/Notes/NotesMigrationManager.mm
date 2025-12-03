@interface NotesMigrationManager
- (BOOL)areStoreMetadata:(id)metadata matchingEntityVersionsInModel:(id)model;
- (BOOL)migrateNotesStoreAtURL:(id)l storeType:(id)type managedObjectModel:(id)model options:(id)options error:(id *)error;
- (BOOL)migrateNotesStoreAtURL:(id)l storeType:(id)type options:(id)options sourceModel:(id)model destinationModel:(id)destinationModel mappingModel:(id)mappingModel error:(id *)error;
@end

@implementation NotesMigrationManager

- (BOOL)areStoreMetadata:(id)metadata matchingEntityVersionsInModel:(id)model
{
  metadataCopy = metadata;
  entityVersionHashesByName = [model entityVersionHashesByName];
  v7 = [metadataCopy objectForKey:*MEMORY[0x277CBE2F0]];

  LOBYTE(metadataCopy) = [entityVersionHashesByName isEqual:v7];
  return metadataCopy;
}

- (BOOL)migrateNotesStoreAtURL:(id)l storeType:(id)type managedObjectModel:(id)model options:(id)options error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  lCopy = l;
  typeCopy = type;
  modelCopy = model;
  optionsCopy = options;
  v45 = lCopy;
  v16 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:typeCopy URL:lCopy error:error];
  if (!v16)
  {
    v17 = 0;
    goto LABEL_31;
  }

  if (![(NotesMigrationManager *)self areStoreMetadata:v16 matchingEntityVersionsInModel:modelCopy])
  {
    selfCopy = self;
    v39 = modelCopy;
    v18 = +[NotesMigrationMapping mappings];
    array = [MEMORY[0x277CBEB18] array];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v51;
LABEL_7:
      v24 = 0;
      while (1)
      {
        if (*v51 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v50 + 1) + 8 * v24);
        [array insertObject:v25 atIndex:0];
        if ([v25 canMigrateStoreMetadata:v16])
        {
          break;
        }

        if (v22 == ++v24)
        {
          v22 = [v20 countByEnumeratingWithState:&v50 objects:v57 count:16];
          if (v22)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }

    if ([array count] && (objc_msgSend(array, "objectAtIndex:", 0), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "canMigrateStoreMetadata:", v16), v26, (v27 & 1) != 0))
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      obj = array;
      v42 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v42)
      {
        v43 = optionsCopy;
        v41 = *v47;
        while (2)
        {
          v28 = 0;
          v29 = v16;
          do
          {
            if (*v47 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v46 + 1) + 8 * v28);
            v31 = [v30 sourceModelForStoreMetadata:v29];
            destinationModel = [v30 destinationModel];
            v33 = [v30 mappingModelForStoreMetadata:v29];
            if (![(NotesMigrationManager *)selfCopy migrateNotesStoreAtURL:v45 storeType:typeCopy options:v43 sourceModel:v31 destinationModel:destinationModel mappingModel:v33 error:error])
            {

              v16 = v29;
              optionsCopy = v43;
              goto LABEL_27;
            }

            v16 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:typeCopy URL:v45 error:error];

            if (!v16)
            {
              v17 = 0;
              goto LABEL_35;
            }

            ++v28;
            v29 = v16;
          }

          while (v42 != v28);
          v17 = 1;
          v42 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }

LABEL_35:
        optionsCopy = v43;
      }

      else
      {
        v17 = 1;
      }
    }

    else
    {
      if (!error)
      {
        v17 = 0;
        goto LABEL_30;
      }

      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"No mapping claim to be able to migrate storeMetadata: %@", v16];
      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277D36168];
      v55 = *MEMORY[0x277D36170];
      v56 = v34;
      obj = v34;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      *error = [v35 errorWithDomain:v36 code:101 userInfo:v31];
LABEL_27:

      v17 = 0;
    }

LABEL_30:
    modelCopy = v39;
    goto LABEL_31;
  }

  v17 = 1;
LABEL_31:

  v37 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)migrateNotesStoreAtURL:(id)l storeType:(id)type options:(id)options sourceModel:(id)model destinationModel:(id)destinationModel mappingModel:(id)mappingModel error:(id *)error
{
  v46[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  typeCopy = type;
  optionsCopy = options;
  modelCopy = model;
  destinationModelCopy = destinationModel;
  mappingModelCopy = mappingModel;
  if (mappingModelCopy)
  {
    v41 = typeCopy;
    v20 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v21 = [v20 URLForDirectory:99 inDomain:1 appropriateForURL:lCopy create:1 error:error];
    if (v21)
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __114__NotesMigrationManager_migrateNotesStoreAtURL_storeType_options_sourceModel_destinationModel_mappingModel_error___block_invoke;
      v42[3] = &unk_2799AC940;
      v38 = v20;
      v43 = v38;
      v22 = mappingModelCopy;
      v23 = v21;
      v44 = v23;
      v24 = MEMORY[0x25F88B080](v42);
      [v23 URLByAppendingPathComponent:@"tmpDB.sqlite" isDirectory:0];
      v26 = v25 = modelCopy;
      v40 = v25;
      v27 = [objc_alloc(MEMORY[0x277CBE468]) initWithSourceModel:v25 destinationModel:destinationModelCopy];
      v39 = v22;
      if ([v27 migrateStoreFromURL:lCopy type:v41 options:optionsCopy withMappingModel:v22 toDestinationURL:v26 destinationType:v41 destinationOptions:optionsCopy error:error] && objc_msgSend(v38, "removeItemAtURL:error:", lCopy, error))
      {
        v28 = [v38 moveItemAtURL:v26 toURL:lCopy error:error];
      }

      else
      {
        v28 = 0;
      }

      v24[2](v24);

      modelCopy = v40;
      mappingModelCopy = v39;
    }

    else
    {
      v28 = 0;
    }

    typeCopy = v41;
  }

  else
  {
    if (!error)
    {
      v28 = 0;
      goto LABEL_13;
    }

    v29 = MEMORY[0x277CCA9B8];
    v30 = lCopy;
    v31 = optionsCopy;
    v32 = destinationModelCopy;
    v33 = *MEMORY[0x277D36168];
    v45 = *MEMORY[0x277D36170];
    v46[0] = @"No mapping model specified";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v34 = v29;
    mappingModelCopy = 0;
    v35 = v33;
    destinationModelCopy = v32;
    optionsCopy = v31;
    lCopy = v30;
    [v34 errorWithDomain:v35 code:101 userInfo:v20];
    *error = v28 = 0;
  }

LABEL_13:
  v36 = *MEMORY[0x277D85DE8];
  return v28;
}

void __114__NotesMigrationManager_migrateNotesStoreAtURL_storeType_options_sourceModel_destinationModel_mappingModel_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) path];
  LODWORD(v2) = [v2 fileExistsAtPath:v3];

  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) path];
    v7 = 0;
    LOBYTE(v4) = [v4 removeItemAtPath:v5 error:&v7];
    v6 = v7;

    if ((v4 & 1) == 0)
    {
      NSLog(&cfstr_ErrorRemovingT.isa, v6);
    }
  }
}

@end
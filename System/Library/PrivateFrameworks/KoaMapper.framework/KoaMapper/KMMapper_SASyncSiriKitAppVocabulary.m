@interface KMMapper_SASyncSiriKitAppVocabulary
- (KMMapper_SASyncSiriKitAppVocabulary)init;
- (id)itemsFromExternalObject:(id)a3 additionalFields:(id)a4 error:(id *)a5;
@end

@implementation KMMapper_SASyncSiriKitAppVocabulary

- (id)itemsFromExternalObject:(id)a3 additionalFields:(id)a4 error:(id *)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v6 propertyForKey:*MEMORY[0x277D48AA0]];
  v9 = [v8 _sa_mappedDictionaryWithBlock:&__block_literal_global];

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v10 = [v9 allKeys];
  v44 = [v10 countByEnumeratingWithState:&v60 objects:v65 count:16];
  if (!v44)
  {
    goto LABEL_24;
  }

  v11 = 0;
  v12 = *v61;
  v41 = v9;
  v42 = v6;
  v39 = *v61;
  v40 = v10;
  do
  {
    v13 = 0;
    do
    {
      if (*v61 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v45 = v13;
      v14 = *(*(&v60 + 1) + 8 * v13);
      v15 = self;
      v16 = [(NSDictionary *)self->_ontologyNodeToFieldTypeMap objectForKey:v14];
      v17 = KVFieldTypeFromNumber();

      v49 = v17;
      if (!v17)
      {
        self = v15;
        goto LABEL_22;
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = [v9 objectForKey:v14];
      v47 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
      if (!v47)
      {
        self = v15;
        goto LABEL_21;
      }

      v18 = 0;
      v48 = *v57;
      self = v15;
      while (2)
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v57 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v56 + 1) + 8 * i);
          v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u#%u", v49, v11];
          builder = self->_builder;
          v55 = v18;
          v23 = [(KVItemBuilder *)builder setItemType:1 itemId:v21 error:&v55];
          v24 = v55;

          if (!v23)
          {
            v18 = v24;
            v6 = v42;
LABEL_30:
            KMMapperSetBuilderError(a5, v18);

            v36 = 0;
            v9 = v41;
            goto LABEL_31;
          }

          v51 = v21;
          v25 = self;
          v26 = self->_builder;
          v27 = [v20 intentSlotValue];
          v54 = v24;
          v28 = [(KVItemBuilder *)v26 addFieldWithType:v49 value:v27 error:&v54];
          v18 = v54;

          if (!v28)
          {

LABEL_27:
            v6 = v42;
            goto LABEL_29;
          }

          v50 = v11;
          v29 = v7;
          v30 = v25->_builder;
          v31 = [v20 vocabularyIdentifier];
          v53 = v18;
          v32 = [(KVItemBuilder *)v30 addFieldWithType:20 value:v31 error:&v53];
          v33 = v53;

          if (!v32)
          {
            v18 = v33;
            v6 = v42;
            v7 = v29;
LABEL_29:
            v21 = v51;
            goto LABEL_30;
          }

          v34 = v25->_builder;
          v52 = v33;
          v35 = [(KVItemBuilder *)v34 buildItemWithError:&v52];
          v18 = v52;

          v7 = v29;
          if (!v35)
          {
            goto LABEL_27;
          }

          self = v25;
          [v29 addObject:v35];

          v11 = (v50 + 1);
        }

        v47 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
        if (v47)
        {
          continue;
        }

        break;
      }

      v9 = v41;
      v6 = v42;
      v12 = v39;
      v10 = v40;
LABEL_21:

LABEL_22:
      v13 = v45 + 1;
    }

    while (v45 + 1 != v44);
    v44 = [v10 countByEnumeratingWithState:&v60 objects:v65 count:16];
  }

  while (v44);
LABEL_24:

  v36 = v7;
LABEL_31:

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (KMMapper_SASyncSiriKitAppVocabulary)init
{
  v29[18] = *MEMORY[0x277D85DE8];
  v27.receiver = self;
  v27.super_class = KMMapper_SASyncSiriKitAppVocabulary;
  v2 = [(KMMapper_SASyncSiriKitAppVocabulary *)&v27 init];
  if (v2)
  {
    v28[0] = @"personFullName";
    v26 = KVFieldTypeToNumber();
    v29[0] = v26;
    v28[1] = @"smsGroupName";
    v25 = KVFieldTypeToNumber();
    v29[1] = v25;
    v28[2] = @"photoTags";
    v24 = KVFieldTypeToNumber();
    v29[2] = v24;
    v28[3] = @"photoAlbumName";
    v23 = KVFieldTypeToNumber();
    v29[3] = v23;
    v28[4] = @"healthActivity";
    v22 = KVFieldTypeToNumber();
    v29[4] = v22;
    v28[5] = @"carProfileName";
    v21 = KVFieldTypeToNumber();
    v29[5] = v21;
    v28[6] = @"carName";
    v20 = KVFieldTypeToNumber();
    v29[6] = v20;
    v28[7] = @"paymentsOrganizationName";
    v19 = KVFieldTypeToNumber();
    v29[7] = v19;
    v28[8] = @"paymentsAccountName";
    v18 = KVFieldTypeToNumber();
    v29[8] = v18;
    v28[9] = @"notebookTitle";
    v3 = KVFieldTypeToNumber();
    v29[9] = v3;
    v28[10] = @"notebookFolderTitle";
    v4 = KVFieldTypeToNumber();
    v29[10] = v4;
    v28[11] = @"appPlaylistTitle";
    v5 = KVFieldTypeToNumber();
    v29[11] = v5;
    v28[12] = @"appMusicArtistName";
    v6 = KVFieldTypeToNumber();
    v29[12] = v6;
    v28[13] = @"appAudiobookTitle";
    v7 = KVFieldTypeToNumber();
    v29[13] = v7;
    v28[14] = @"appAudiobookAuthor";
    v8 = KVFieldTypeToNumber();
    v29[14] = v8;
    v28[15] = @"appShowTitle";
    v9 = KVFieldTypeToNumber();
    v29[15] = v9;
    v28[16] = @"voiceCommandName";
    v10 = KVFieldTypeToNumber();
    v29[16] = v10;
    v28[17] = @"photoMemoryName";
    v11 = KVFieldTypeToNumber();
    v29[17] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:18];
    ontologyNodeToFieldTypeMap = v2->_ontologyNodeToFieldTypeMap;
    v2->_ontologyNodeToFieldTypeMap = v12;

    v14 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

@end
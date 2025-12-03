@interface KMMapper_SAAppInfo
- (KMMapper_SAAppInfo)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_SAAppInfo

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  fieldsCopy = fields;
  v10 = objectCopy;
  appIdentifyingInfo = [v10 appIdentifyingInfo];
  bundleId = [appIdentifyingInfo bundleId];

  builder = self->_builder;
  v51 = 0;
  v14 = [(KVItemBuilder *)builder setItemType:3 itemId:bundleId error:&v51];
  v15 = v51;
  v16 = v15;
  if (!v14)
  {
    v19 = v15;
LABEL_20:
    KMMapperSetBuilderError(error, v19);
    v36 = 0;
    goto LABEL_21;
  }

  v17 = self->_builder;
  v50 = v16;
  v18 = [(KVItemBuilder *)v17 addFieldWithType:100 value:bundleId error:&v50];
  v19 = v50;

  if (!v18)
  {

    goto LABEL_20;
  }

  v42 = bundleId;
  v20 = self->_builder;
  displayAppName = [v10 displayAppName];
  v49 = v19;
  v22 = [(KVItemBuilder *)v20 addFieldWithType:102 value:displayAppName error:&v49];
  v23 = v49;

  if (!v22)
  {
    v19 = v23;
    bundleId = v42;
    goto LABEL_20;
  }

  errorCopy = error;
  v40 = v10;
  v41 = fieldsCopy;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  appNameSynonyms = [v10 appNameSynonyms];
  v25 = [appNameSynonyms countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v46;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v46 != v27)
        {
          objc_enumerationMutation(appNameSynonyms);
        }

        v29 = *(*(&v45 + 1) + 8 * i);
        phrase = [v29 phrase];
        if ([phrase length])
        {
          v31 = self->_builder;
          phrase2 = [v29 phrase];
          v44 = v23;
          v33 = [(KVItemBuilder *)v31 addFieldWithType:104 value:phrase2 error:&v44];
          v19 = v44;

          if (!v33)
          {
            KMMapperSetBuilderError(errorCopy, v19);

            v36 = 0;
            v10 = v40;
            fieldsCopy = v41;
            bundleId = v42;
            goto LABEL_21;
          }

          v23 = v19;
        }

        else
        {
        }
      }

      v26 = [appNameSynonyms countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v34 = self->_builder;
  v43 = v23;
  v35 = [(KVItemBuilder *)v34 buildItemWithError:&v43];
  v19 = v43;

  if (v35)
  {
    v52 = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
  }

  else
  {
    KMMapperSetBuilderError(errorCopy, v19);
    v36 = 0;
  }

  v10 = v40;
  fieldsCopy = v41;
  bundleId = v42;

LABEL_21:
  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (KMMapper_SAAppInfo)init
{
  v6.receiver = self;
  v6.super_class = KMMapper_SAAppInfo;
  v2 = [(KMMapper_SAAppInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end
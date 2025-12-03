@interface KMMapper_RTLocationOfInterest
- (KMMapper_RTLocationOfInterest)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_RTLocationOfInterest

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  identifier = [objectCopy identifier];
  uUIDString = [identifier UUIDString];

  builder = self->_builder;
  v50 = 0;
  v11 = [(KVItemBuilder *)builder setItemType:12 itemId:uUIDString error:&v50];
  v12 = v50;
  preferredName = [objectCopy preferredName];
  if (preferredName)
  {
    v14 = self->_builder;
    v49 = v12;
    v15 = [(KVItemBuilder *)v14 addFieldWithType:551 value:preferredName error:&v49];
    v16 = v49;

    if (!v15)
    {
      KMMapperSetBuilderError(error, v16);
      v34 = 0;
      goto LABEL_25;
    }

    v12 = v16;
  }

  mapItem = [objectCopy mapItem];
  name = [mapItem name];
  if (!name)
  {
    goto LABEL_7;
  }

  v19 = self->_builder;
  v48 = v12;
  v20 = [(KVItemBuilder *)v19 addFieldWithType:551 value:name error:&v48];
  v16 = v48;

  if (v20)
  {
    v12 = v16;
LABEL_7:
    v41 = name;
    address = [mapItem address];
    v22 = address;
    if (address)
    {
      v38 = mapItem;
      errorCopy = error;
      v40 = uUIDString;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v37 = address;
      siriVocabularySpatialNames = [address siriVocabularySpatialNames];
      v24 = [siriVocabularySpatialNames countByEnumeratingWithState:&v44 objects:v52 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v45;
        while (2)
        {
          v27 = 0;
          v28 = v12;
          do
          {
            if (*v45 != v26)
            {
              objc_enumerationMutation(siriVocabularySpatialNames);
            }

            v29 = *(*(&v44 + 1) + 8 * v27);
            v30 = self->_builder;
            v43 = v28;
            v31 = [(KVItemBuilder *)v30 addFieldWithType:552 value:v29 error:&v43];
            v12 = v43;

            if (!v31)
            {
              KMMapperSetBuilderError(errorCopy, v12);
              v34 = 0;
              uUIDString = v40;
              v22 = v37;
              mapItem = v38;
              goto LABEL_23;
            }

            ++v27;
            v28 = v12;
          }

          while (v25 != v27);
          v25 = [siriVocabularySpatialNames countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      error = errorCopy;
      uUIDString = v40;
      v22 = v37;
      mapItem = v38;
    }

    v32 = v12;
    v33 = self->_builder;
    v42 = v12;
    siriVocabularySpatialNames = [(KVItemBuilder *)v33 buildItemWithError:&v42];
    v12 = v42;

    if (siriVocabularySpatialNames)
    {
      v51 = siriVocabularySpatialNames;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    }

    else
    {
      KMMapperSetBuilderError(error, v12);
      v34 = 0;
    }

LABEL_23:

    v16 = v12;
    name = v41;
    goto LABEL_24;
  }

  KMMapperSetBuilderError(error, v16);
  v34 = 0;
LABEL_24:

LABEL_25:
  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (KMMapper_RTLocationOfInterest)init
{
  v6.receiver = self;
  v6.super_class = KMMapper_RTLocationOfInterest;
  v2 = [(KMMapper_RTLocationOfInterest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;
  }

  return v2;
}

@end
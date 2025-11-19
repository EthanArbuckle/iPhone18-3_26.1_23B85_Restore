@interface KMMapper_RTLocationOfInterest
- (KMMapper_RTLocationOfInterest)init;
- (id)itemsFromExternalObject:(id)a3 additionalFields:(id)a4 error:(id *)a5;
@end

@implementation KMMapper_RTLocationOfInterest

- (id)itemsFromExternalObject:(id)a3 additionalFields:(id)a4 error:(id *)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 identifier];
  v9 = [v8 UUIDString];

  builder = self->_builder;
  v50 = 0;
  v11 = [(KVItemBuilder *)builder setItemType:12 itemId:v9 error:&v50];
  v12 = v50;
  v13 = [v7 preferredName];
  if (v13)
  {
    v14 = self->_builder;
    v49 = v12;
    v15 = [(KVItemBuilder *)v14 addFieldWithType:551 value:v13 error:&v49];
    v16 = v49;

    if (!v15)
    {
      KMMapperSetBuilderError(a5, v16);
      v34 = 0;
      goto LABEL_25;
    }

    v12 = v16;
  }

  v17 = [v7 mapItem];
  v18 = [v17 name];
  if (!v18)
  {
    goto LABEL_7;
  }

  v19 = self->_builder;
  v48 = v12;
  v20 = [(KVItemBuilder *)v19 addFieldWithType:551 value:v18 error:&v48];
  v16 = v48;

  if (v20)
  {
    v12 = v16;
LABEL_7:
    v41 = v18;
    v21 = [v17 address];
    v22 = v21;
    if (v21)
    {
      v38 = v17;
      v39 = a5;
      v40 = v9;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v37 = v21;
      v23 = [v21 siriVocabularySpatialNames];
      v24 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
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
              objc_enumerationMutation(v23);
            }

            v29 = *(*(&v44 + 1) + 8 * v27);
            v30 = self->_builder;
            v43 = v28;
            v31 = [(KVItemBuilder *)v30 addFieldWithType:552 value:v29 error:&v43];
            v12 = v43;

            if (!v31)
            {
              KMMapperSetBuilderError(v39, v12);
              v34 = 0;
              v9 = v40;
              v22 = v37;
              v17 = v38;
              goto LABEL_23;
            }

            ++v27;
            v28 = v12;
          }

          while (v25 != v27);
          v25 = [v23 countByEnumeratingWithState:&v44 objects:v52 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      a5 = v39;
      v9 = v40;
      v22 = v37;
      v17 = v38;
    }

    v32 = v12;
    v33 = self->_builder;
    v42 = v12;
    v23 = [(KVItemBuilder *)v33 buildItemWithError:&v42];
    v12 = v42;

    if (v23)
    {
      v51 = v23;
      v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    }

    else
    {
      KMMapperSetBuilderError(a5, v12);
      v34 = 0;
    }

LABEL_23:

    v16 = v12;
    v18 = v41;
    goto LABEL_24;
  }

  KMMapperSetBuilderError(a5, v16);
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
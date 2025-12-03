@interface KMMapper_LSApplicationRecord
- (BOOL)addAlternativeNamesFor:(id)for forLanguage:(id)language error:(id *)error;
- (KMMapper_LSApplicationRecord)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_LSApplicationRecord

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v47[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v9 = [fields objectForKey:self->_languageCodeKey];
  v10 = v9;
  if (v9)
  {
    v45 = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    4294967291 = [objectCopy localizedNameWithPreferredLocalizations:v11];

    builder = self->_builder;
    bundleIdentifier = [objectCopy bundleIdentifier];
    v43 = 0;
    v15 = [(KVItemBuilder *)builder setItemType:3 itemId:bundleIdentifier error:&v43];
    v16 = v43;
    if (v15)
    {
      errorCopy = error;
      v17 = self->_builder;
      [objectCopy bundleIdentifier];
      v38 = v42[2] = v16;
      v18 = [KVItemBuilder addFieldWithType:v17 value:"addFieldWithType:value:error:" error:100];
      v19 = v16;

      v39 = 4294967291;
      if (v18)
      {
        v20 = self->_builder;
        [objectCopy bundleVersion];
        v36 = v42[1] = v19;
        v21 = [KVItemBuilder addFieldWithType:v20 value:"addFieldWithType:value:error:" error:103];
        v22 = v19;

        if (v21)
        {
          v23 = self->_builder;
          v42[0] = v22;
          v24 = [(KVItemBuilder *)v23 addFieldWithType:102 value:4294967291 error:v42];
          v35 = v42[0];

          v25 = v24 == 0;
          v22 = v35;
        }

        else
        {
          v25 = 1;
        }

        v19 = v22;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        v41 = v19;
        v31 = [(KMMapper_LSApplicationRecord *)self addAlternativeNamesFor:objectCopy forLanguage:v10 error:&v41];
        v32 = v41;

        if (v31)
        {
          v33 = self->_builder;
          v40 = v32;
          v34 = [(KVItemBuilder *)v33 buildItemWithError:&v40];
          v16 = v40;

          4294967291 = v39;
          if (v34)
          {
            v44 = v34;
            v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
          }

          else
          {
            KMMapperSetBuilderError(errorCopy, v16);
            v28 = 0;
          }
        }

        else
        {
          KMMapperSetBuilderError(errorCopy, v32);
          v28 = 0;
          v16 = v32;
          4294967291 = v39;
        }

        goto LABEL_15;
      }

      v16 = v19;
      4294967291 = v39;
      error = errorCopy;
    }

    else
    {
    }

    KMMapperSetBuilderError(error, v16);
  }

  else
  {
    v26 = MEMORY[0x277CCA9B8];
    v46 = *MEMORY[0x277CCA068];
    4294967291 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected additional field with type: %i", 4294967291];
    v47[0] = 4294967291;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v27 = [v26 errorWithDomain:@"com.apple.siri.koa.mapper" code:7 userInfo:v16];
    KVSetError();
  }

  v28 = 0;
LABEL_15:

  v29 = *MEMORY[0x277D85DE8];

  return v28;
}

- (BOOL)addAlternativeNamesFor:(id)for forLanguage:(id)language error:(id *)error
{
  forCopy = for;
  languageCopy = language;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__1917;
  v29[4] = __Block_byref_object_dispose__1918;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1917;
  v27 = __Block_byref_object_dispose__1918;
  v28 = 0;
  infoDictionary = [forCopy infoDictionary];
  v11 = [infoDictionary objectForKey:@"INAlternativeAppNames" ofClass:objc_opt_class()];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__KMMapper_LSApplicationRecord_addAlternativeNamesFor_forLanguage_error___block_invoke;
  v17[3] = &unk_279805CD0;
  v21 = v29;
  v12 = forCopy;
  v18 = v12;
  v13 = languageCopy;
  v19 = v13;
  selfCopy = self;
  v22 = &v23;
  [v11 enumerateObjectsUsingBlock:v17];
  v14 = v24[5];
  if (error && v14)
  {
    v14 = v14;
    *error = v14;
  }

  v15 = v14 == 0;

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(v29, 8);

  return v15;
}

- (KMMapper_LSApplicationRecord)init
{
  v8.receiver = self;
  v8.super_class = KMMapper_LSApplicationRecord;
  v2 = [(KMMapper_LSApplicationRecord *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;

    v5 = KVAdditionalFieldTypeToNumber();
    languageCodeKey = v2->_languageCodeKey;
    v2->_languageCodeKey = v5;
  }

  return v2;
}

@end
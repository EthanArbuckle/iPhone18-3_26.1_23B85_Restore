@interface KMMapper_INVocabularyItem
+ (id)_fieldTypeNumberForIntentSlotName:(id)name;
+ (int64_t)fieldTypeForIntentSlotName:(id)name;
- (KMMapper_INVocabularyItem)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_INVocabularyItem

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v49[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v9 = [fields objectForKey:self->_intentSlotNameKey];
  if (!v9)
  {
    v32 = MEMORY[0x277CCA9B8];
    v48 = *MEMORY[0x277CCA068];
    4294967294 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected additional field with type: %i", 4294967294];
    v49[0] = 4294967294;
    string = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v16 = [v32 errorWithDomain:@"com.apple.siri.koa.mapper" code:7 userInfo:string];
    KVSetError();
    v31 = 0;
    goto LABEL_20;
  }

  4294967294 = [objc_opt_class() _fieldTypeNumberForIntentSlotName:v9];
  if (4294967294)
  {
    errorCopy = error;
    v11 = KVFieldTypeFromNumber();
    string = [objectCopy string];
    vocabularyIdentifier = [objectCopy vocabularyIdentifier];

    v41 = 4294967294;
    if (vocabularyIdentifier)
    {
      vocabularyIdentifier2 = [objectCopy vocabularyIdentifier];
      v15 = [string stringByAppendingString:vocabularyIdentifier2];

      string = v15;
    }

    v16 = KVHash64String();
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u#%llx", v11, objc_msgSend(v16, "longLongValue")];
    builder = self->_builder;
    v44[1] = 0;
    v40 = v17;
    v19 = [KVItemBuilder setItemType:"setItemType:itemId:error:" itemId:1 error:?];
    v20 = 0;
    v21 = v20;
    if (v19)
    {
      v22 = self->_builder;
      string2 = [objectCopy string];
      v44[0] = v21;
      v24 = [(KVItemBuilder *)v22 addFieldWithType:v11 value:string2 error:v44];
      v25 = v44[0];

      if (v24)
      {
        v26 = self->_builder;
        [objectCopy vocabularyIdentifier];
        v27 = v37 = string2;
        v43 = v25;
        v28 = [(KVItemBuilder *)v26 addFieldWithType:20 value:v27 error:&v43];
        v38 = v43;

        if (v28)
        {
          v29 = self->_builder;
          v42 = v38;
          v30 = [(KVItemBuilder *)v29 buildItemWithError:&v42];
          v25 = v42;

          4294967294 = v41;
          if (v30)
          {
            v45 = v30;
            v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
          }

          else
          {
            KMMapperSetBuilderError(errorCopy, v25);
            v31 = 0;
          }

          goto LABEL_18;
        }

        v25 = v38;
      }

      else
      {
      }
    }

    else
    {
      v25 = v20;
    }

    4294967294 = v41;
    KMMapperSetBuilderError(errorCopy, v25);
    v31 = 0;
LABEL_18:
    v34 = v40;

    goto LABEL_19;
  }

  v33 = MEMORY[0x277CCA9B8];
  v46 = *MEMORY[0x277CCA068];
  string = [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized additional field with type: %i value: %@", 4294967294, v9];
  v47 = string;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v34 = [v33 errorWithDomain:@"com.apple.siri.koa.mapper" code:8 userInfo:v16];
  KVSetError();
  v31 = 0;
LABEL_19:

LABEL_20:
  v35 = *MEMORY[0x277D85DE8];

  return v31;
}

- (KMMapper_INVocabularyItem)init
{
  v8.receiver = self;
  v8.super_class = KMMapper_INVocabularyItem;
  v2 = [(KMMapper_INVocabularyItem *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;

    v5 = KVAdditionalFieldTypeToNumber();
    intentSlotNameKey = v2->_intentSlotNameKey;
    v2->_intentSlotNameKey = v5;
  }

  return v2;
}

+ (int64_t)fieldTypeForIntentSlotName:(id)name
{
  nameCopy = name;
  v4 = [objc_opt_class() _fieldTypeNumberForIntentSlotName:nameCopy];

  v5 = KVFieldTypeFromNumber();
  return v5;
}

+ (id)_fieldTypeNumberForIntentSlotName:(id)name
{
  v3 = _fieldTypeNumberForIntentSlotName__once;
  nameCopy = name;
  if (v3 != -1)
  {
    dispatch_once(&_fieldTypeNumberForIntentSlotName__once, &__block_literal_global_306);
  }

  v5 = [_fieldTypeNumberForIntentSlotName__intentSlotToFieldTypeMap objectForKey:nameCopy];

  return v5;
}

@end
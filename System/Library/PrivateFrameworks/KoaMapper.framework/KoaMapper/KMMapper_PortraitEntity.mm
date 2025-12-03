@interface KMMapper_PortraitEntity
- (KMMapper_PortraitEntity)init;
- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error;
@end

@implementation KMMapper_PortraitEntity

- (id)itemsFromExternalObject:(id)object additionalFields:(id)fields error:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  alternativeItemIdKey = self->_alternativeItemIdKey;
  objectCopy = object;
  v10 = [fields objectForKey:alternativeItemIdKey];
  builder = self->_builder;
  v26 = 0;
  v12 = [(KVItemBuilder *)builder setItemType:13 itemId:v10 error:&v26];
  v13 = v26;
  item = [objectCopy item];

  name = [item name];

  if (![name length])
  {
LABEL_4:
    v19 = self->_builder;
    v24 = v13;
    v20 = [(KVItemBuilder *)v19 buildItemWithError:&v24];
    v18 = v24;

    if (v20)
    {
      v27[0] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
    }

    else
    {
      KMMapperSetBuilderError(error, v18);
      v21 = 0;
    }

    goto LABEL_9;
  }

  v16 = self->_builder;
  v25 = v13;
  v17 = [(KVItemBuilder *)v16 addFieldWithType:553 value:name error:&v25];
  v18 = v25;

  if (v17)
  {
    v13 = v18;
    goto LABEL_4;
  }

  KMMapperSetBuilderError(error, v18);
  v21 = 0;
LABEL_9:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (KMMapper_PortraitEntity)init
{
  v8.receiver = self;
  v8.super_class = KMMapper_PortraitEntity;
  v2 = [(KMMapper_PortraitEntity *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D22D28]);
    builder = v2->_builder;
    v2->_builder = v3;

    v5 = KVAdditionalFieldTypeToNumber();
    alternativeItemIdKey = v2->_alternativeItemIdKey;
    v2->_alternativeItemIdKey = v5;
  }

  return v2;
}

@end
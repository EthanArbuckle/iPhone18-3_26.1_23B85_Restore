@interface NPNameComponentsData
- (BOOL)collectionForEntry:(unint64_t)entry contains:(id)contains;
- (NPNameComponentsData)init;
- (id)_keyForDataEntry:(unint64_t)entry;
- (id)objectValueForEntry:(unint64_t)entry;
@end

@implementation NPNameComponentsData

- (NPNameComponentsData)init
{
  v12.receiver = self;
  v12.super_class = NPNameComponentsData;
  v2 = [(NPNameComponentsData *)&v12 init];
  if (v2)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 pathForResource:@"name_components_data" ofType:@"plist"];

    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:1 error:0];
    if (!v6)
    {

      objc_autoreleasePoolPop(v3);
      v10 = 0;
      goto LABEL_6;
    }

    v7 = v6;
    v8 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:0];
    nameComponents = v2->_nameComponents;
    v2->_nameComponents = v8;

    objc_autoreleasePoolPop(v3);
  }

  v10 = v2;
LABEL_6:

  return v10;
}

- (id)_keyForDataEntry:(unint64_t)entry
{
  if (entry > 8)
  {
    return 0;
  }

  else
  {
    return off_278E97FD0[entry];
  }
}

- (id)objectValueForEntry:(unint64_t)entry
{
  v4 = [(NPNameComponentsData *)self _keyForDataEntry:entry];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_nameComponents objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)collectionForEntry:(unint64_t)entry contains:(id)contains
{
  containsCopy = contains;
  if (containsCopy)
  {
    v7 = [(NPNameComponentsData *)self objectValueForEntry:entry];
    objc_opt_class();
    v8 = (objc_opt_isKindOfClass() & 1) != 0 && [v7 indexOfObject:containsCopy inSortedRange:0 options:objc_msgSend(v7 usingComparator:{"count"), 256, &__block_literal_global}] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
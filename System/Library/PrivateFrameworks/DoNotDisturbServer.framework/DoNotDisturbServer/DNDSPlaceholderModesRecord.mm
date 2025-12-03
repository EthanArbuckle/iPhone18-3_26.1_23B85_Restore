@interface DNDSPlaceholderModesRecord
+ (id)backingStoreWithFileURL:(id)l;
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (id)_initWithModePlaceholders:(id)placeholders;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
@end

@implementation DNDSPlaceholderModesRecord

+ (id)backingStoreWithFileURL:(id)l
{
  lCopy = l;
  v5 = [[DNDSJSONBackingStore alloc] initWithRecordClass:self fileURL:lCopy versionNumber:1];

  return v5;
}

- (id)_initWithRecord:(id)record
{
  placeholderModes = [record placeholderModes];
  v5 = [(DNDSPlaceholderModesRecord *)self _initWithModePlaceholders:placeholderModes];

  return v5;
}

- (id)_initWithModePlaceholders:(id)placeholders
{
  placeholdersCopy = placeholders;
  v9.receiver = self;
  v9.super_class = DNDSPlaceholderModesRecord;
  v6 = [(DNDSPlaceholderModesRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placeholderModes, placeholders);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      placeholderModes = [(DNDSPlaceholderModesRecord *)self placeholderModes];
      placeholderModes2 = [(DNDSPlaceholderModesRecord *)v5 placeholderModes];
      if (placeholderModes == placeholderModes2)
      {
        v12 = 1;
      }

      else
      {
        placeholderModes3 = [(DNDSPlaceholderModesRecord *)self placeholderModes];
        if (placeholderModes3)
        {
          placeholderModes4 = [(DNDSPlaceholderModesRecord *)v5 placeholderModes];
          if (placeholderModes4)
          {
            placeholderModes5 = [(DNDSPlaceholderModesRecord *)self placeholderModes];
            placeholderModes6 = [(DNDSPlaceholderModesRecord *)v5 placeholderModes];
            v12 = [placeholderModes5 isEqual:placeholderModes6];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v20 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_placeholderModes;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentationWithContext:{contextCopy, v15}];
        [array addObject:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  [dictionary setObject:array forKeyedSubscript:@"placeholderModes"];

  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  contextCopy = context;
  v8 = [representationCopy bs_safeObjectForKey:@"placeholderModes" ofType:objc_opt_class()];
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      v14 = 0;
      do
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [DNDSModeRecord newWithDictionaryRepresentation:*(*(&v19 + 1) + 8 * v14) context:contextCopy, v19];
        [array addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [[self alloc] _initWithModePlaceholders:array];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end
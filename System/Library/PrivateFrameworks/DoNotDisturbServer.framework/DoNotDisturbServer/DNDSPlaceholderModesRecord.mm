@interface DNDSPlaceholderModesRecord
+ (id)backingStoreWithFileURL:(id)a3;
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_initWithModePlaceholders:(id)a3;
- (id)_initWithRecord:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
@end

@implementation DNDSPlaceholderModesRecord

+ (id)backingStoreWithFileURL:(id)a3
{
  v4 = a3;
  v5 = [[DNDSJSONBackingStore alloc] initWithRecordClass:a1 fileURL:v4 versionNumber:1];

  return v5;
}

- (id)_initWithRecord:(id)a3
{
  v4 = [a3 placeholderModes];
  v5 = [(DNDSPlaceholderModesRecord *)self _initWithModePlaceholders:v4];

  return v5;
}

- (id)_initWithModePlaceholders:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DNDSPlaceholderModesRecord;
  v6 = [(DNDSPlaceholderModesRecord *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_placeholderModes, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(DNDSPlaceholderModesRecord *)self placeholderModes];
      v7 = [(DNDSPlaceholderModesRecord *)v5 placeholderModes];
      if (v6 == v7)
      {
        v12 = 1;
      }

      else
      {
        v8 = [(DNDSPlaceholderModesRecord *)self placeholderModes];
        if (v8)
        {
          v9 = [(DNDSPlaceholderModesRecord *)v5 placeholderModes];
          if (v9)
          {
            v10 = [(DNDSPlaceholderModesRecord *)self placeholderModes];
            v11 = [(DNDSPlaceholderModesRecord *)v5 placeholderModes];
            v12 = [v10 isEqual:v11];
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

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
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

        v11 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentationWithContext:{v4, v15}];
        [v5 addObject:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [MEMORY[0x277CBEB38] dictionary];
  [v12 setObject:v5 forKeyedSubscript:@"placeholderModes"];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 bs_safeObjectForKey:@"placeholderModes" ofType:objc_opt_class()];
  v9 = [MEMORY[0x277CBEB18] array];
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

        v15 = [DNDSModeRecord newWithDictionaryRepresentation:*(*(&v19 + 1) + 8 * v14) context:v7, v19];
        [v9 addObject:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  v16 = [[a1 alloc] _initWithModePlaceholders:v9];
  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

@end
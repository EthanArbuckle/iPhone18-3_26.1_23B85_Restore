@interface NSDictionary(SGStructuredEventDissector)
- (id)sg_deepCopyWithoutEmptySchemaObjects;
- (uint64_t)sg_isEmptySchemaObject;
@end

@implementation NSDictionary(SGStructuredEventDissector)

- (uint64_t)sg_isEmptySchemaObject
{
  v15 = *MEMORY[0x277D85DE8];
  [self sg_deepCopyWithoutEmptySchemaObjects];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = v13 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v6 hasPrefix:{@"@", v10}])
        {
          v7 = 0;
          goto LABEL_13;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v7 = 1;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_13:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)sg_deepCopyWithoutEmptySchemaObjects
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [self mutableCopy];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [selfCopy objectForKeyedSubscript:{v8, v13}];
        if ((objc_opt_respondsToSelector() & 1) != 0 && [v9 sg_isEmptySchemaObject])
        {
          [v2 setObject:0 forKeyedSubscript:v8];
        }

        else if (objc_opt_respondsToSelector())
        {
          sg_deepCopyWithoutEmptySchemaObjects = [v9 sg_deepCopyWithoutEmptySchemaObjects];
          [v2 setObject:sg_deepCopyWithoutEmptySchemaObjects forKeyedSubscript:v8];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
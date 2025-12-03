@interface ML3ImportPersistentIDGenerator
- (ML3ImportPersistentIDGenerator)initWithDatabaseConnection:(id)connection tableName:(id)name;
- (int64_t)nextPersistentIDForImportItem:(shared_ptr<ML3ImportItem>)item;
- (void)addIdMapping:(id)mapping forProperty:(unsigned int)property;
- (void)removePersistentIDFromIdMapping:(int64_t)mapping;
@end

@implementation ML3ImportPersistentIDGenerator

- (void)removePersistentIDFromIdMapping:(int64_t)mapping
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [(NSMutableDictionary *)self->_pregeneratedIdMappings allKeys];
  v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [(NSMutableDictionary *)self->_pregeneratedIdMappings objectForKey:*(*(&v20 + 1) + 8 * v6)];
        v8 = [MEMORY[0x277CCABB0] numberWithLongLong:mapping];
        v9 = [v7 allKeysForObject:v8];

        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v10 = v9;
        v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          v12 = *v17;
          do
          {
            v13 = 0;
            do
            {
              if (*v17 != v12)
              {
                objc_enumerationMutation(v10);
              }

              [v7 removeObjectForKey:*(*(&v16 + 1) + 8 * v13++)];
            }

            while (v11 != v13);
            v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v11);
        }

        ++v6;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v4);
  }
}

- (int64_t)nextPersistentIDForImportItem:(shared_ptr<ML3ImportItem>)item
{
  var0 = item.var0;
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(NSMutableDictionary *)self->_pregeneratedIdMappings allKeys:item.var0];
  v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (!v5)
  {

LABEL_13:
    v21 = sel_nextPersistentID;
    do
    {
      v28.receiver = self;
      v28.super_class = ML3ImportPersistentIDGenerator;
      longLongValue = objc_msgSendSuper2(&v28, v21, v21);
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      obja = [(NSMutableDictionary *)self->_pregeneratedIdMappings allKeys];
      v12 = [obja countByEnumeratingWithState:&v24 objects:v33 count:16];
      if (v12)
      {
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(obja);
            }

            v15 = [(NSMutableDictionary *)self->_pregeneratedIdMappings objectForKey:*(*(&v24 + 1) + 8 * i)];
            v16 = [MEMORY[0x277CCABB0] numberWithLongLong:longLongValue];
            v17 = [v15 allKeysForObject:v16];
            v18 = [v17 count] == 0;

            if (!v18)
            {
              longLongValue = 0;
            }
          }

          v12 = [obja countByEnumeratingWithState:&v24 objects:v33 count:16];
        }

        while (v12);
      }
    }

    while (!longLongValue);
    return longLongValue;
  }

  longLongValue = 0;
  v20 = *v30;
  do
  {
    for (j = 0; j != v5; ++j)
    {
      if (*v30 != v20)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v29 + 1) + 8 * j);
      v9 = [(NSMutableDictionary *)self->_pregeneratedIdMappings objectForKey:v8, v20];
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{(*(**var0 + 32))(*var0, objc_msgSend(v8, "longLongValue"))}];
      v11 = [v9 objectForKey:v10];

      if (v11)
      {
        longLongValue = [v11 longLongValue];
      }
    }

    v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  }

  while (v5);

  if (!longLongValue)
  {
    goto LABEL_13;
  }

  return longLongValue;
}

- (void)addIdMapping:(id)mapping forProperty:(unsigned int)property
{
  v4 = *&property;
  pregeneratedIdMappings = self->_pregeneratedIdMappings;
  v7 = [mapping mutableCopy];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [(NSMutableDictionary *)pregeneratedIdMappings setObject:v7 forKey:v6];
}

- (ML3ImportPersistentIDGenerator)initWithDatabaseConnection:(id)connection tableName:(id)name
{
  connectionCopy = connection;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = ML3ImportPersistentIDGenerator;
  v8 = [(ML3PersistentIDGenerator *)&v12 initWithDatabaseConnection:connectionCopy tableName:nameCopy];
  if (v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pregeneratedIdMappings = v8->_pregeneratedIdMappings;
    v8->_pregeneratedIdMappings = dictionary;
  }

  return v8;
}

@end
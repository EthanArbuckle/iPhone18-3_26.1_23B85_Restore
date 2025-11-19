@interface NWStatsEntityMapperStaticAssignment
- (NWStatsEntityMapperStaticAssignment)init;
- (id)identifierForUUID:(id)a3 derivation:(int *)a4;
@end

@implementation NWStatsEntityMapperStaticAssignment

- (id)identifierForUUID:(id)a3 derivation:(int *)a4
{
  result = [(NSMutableDictionary *)self->_staticUUIDToBundleIDMap objectForKeyedSubscript:a3];
  if (a4)
  {
    *a4 = 3;
  }

  return result;
}

- (NWStatsEntityMapperStaticAssignment)init
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = NWStatsEntityMapperStaticAssignment;
  v2 = [(NWStatsEntityMapperStaticAssignment *)&v20 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    staticUUIDToBundleIDMap = v2->_staticUUIDToBundleIDMap;
    v2->_staticUUIDToBundleIDMap = v3;

    if (v2->_staticUUIDToBundleIDMap)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v5 = [&unk_286D3E5D0 allKeys];
      v6 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v17;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v17 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v16 + 1) + 8 * i);
            v11 = objc_alloc(MEMORY[0x277CCAD78]);
            v12 = [&unk_286D3E5D0 objectForKeyedSubscript:v10];
            v13 = [v11 initWithUUIDString:v12];

            [(NSMutableDictionary *)v2->_staticUUIDToBundleIDMap setObject:v10 forKeyedSubscript:v13];
          }

          v7 = [v5 countByEnumeratingWithState:&v16 objects:v21 count:16];
        }

        while (v7);
      }
    }

    else
    {
      v5 = v2;
      v2 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v2;
}

@end
@interface MKPerformanceData
- (MKPerformanceData)initWithDictionary:(id)dictionary;
@end

@implementation MKPerformanceData

- (MKPerformanceData)initWithDictionary:(id)dictionary
{
  v26 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = MKPerformanceData;
  v5 = [(MKPerformanceData *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"data_classes"];
    if (v6)
    {
      v7 = v6;
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v9 = v7;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          v13 = 0;
          do
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * v13);
            v15 = [MKDataClassMetrics alloc];
            v16 = [(MKDataClassMetrics *)v15 initWithDictionary:v14, v20];
            [v8 addObject:v16];

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v20 objects:v25 count:16];
        }

        while (v11);
      }

      v17 = [v8 sortedArrayUsingComparator:&__block_literal_global];
      [(MKPerformanceData *)v5 setDataClasses:v17];
    }

    else
    {
      v9 = +[MKLog log];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(MKPerformanceData *)v5 initWithDictionary:v9];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t __40__MKPerformanceData_initWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

@end
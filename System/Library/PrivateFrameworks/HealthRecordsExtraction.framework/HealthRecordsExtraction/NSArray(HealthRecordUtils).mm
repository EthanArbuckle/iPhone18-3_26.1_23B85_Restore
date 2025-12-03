@interface NSArray(HealthRecordUtils)
- (id)hd_stringArrayValue;
@end

@implementation NSArray(HealthRecordUtils)

- (id)hd_stringArrayValue
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(self, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        hd_stringValue = [*(*(&v12 + 1) + 8 * i) hd_stringValue];
        if (hd_stringValue)
        {
          [v2 addObject:hd_stringValue];
        }
      }

      v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end
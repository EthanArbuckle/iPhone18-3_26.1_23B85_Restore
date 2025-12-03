@interface NSArray(MGRemoteQueryCoding)
- (id)rq_coded;
@end

@implementation NSArray(MGRemoteQueryCoding)

- (id)rq_coded
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(self, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        rq_coded = [*(*(&v11 + 1) + 8 * i) rq_coded];
        [v2 addObject:rq_coded];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

@end
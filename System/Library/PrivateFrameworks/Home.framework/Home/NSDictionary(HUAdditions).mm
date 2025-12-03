@interface NSDictionary(HUAdditions)
- (uint64_t)computeHashFromContents;
@end

@implementation NSDictionary(HUAdditions)

- (uint64_t)computeHashFromContents
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [self hash];
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
        v9 = HFComputeHashFromContents(v8) ^ v2;
        v10 = [selfCopy objectForKeyedSubscript:{v8, v13}];
        v2 = v9 ^ HFComputeHashFromContents(v10);
      }

      v5 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v2;
}

@end
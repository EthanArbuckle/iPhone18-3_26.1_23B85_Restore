@interface NSSet(HUAdditions)
- (uint64_t)computeHashFromContents;
@end

@implementation NSSet(HUAdditions)

- (uint64_t)computeHashFromContents
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [self hash];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v2 ^= HFComputeHashFromContents(*(*(&v10 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

@end
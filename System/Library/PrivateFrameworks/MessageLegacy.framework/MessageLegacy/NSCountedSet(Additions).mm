@interface NSCountedSet(Additions)
- (uint64_t)mf_debugDescription;
@end

@implementation NSCountedSet(Additions)

- (uint64_t)mf_debugDescription
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [self countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(self);
        }

        [v2 ef_insertObject:objc_msgSend(MEMORY[0x277CCACA8] usingComparator:"stringWithFormat:" allowDuplicates:{@"\t%@ : %lu", *(*(&v9 + 1) + 8 * v6), objc_msgSend(self, "countForObject:", *(*(&v9 + 1) + 8 * v6))), &__block_literal_global_18, 1}];
        ++v6;
      }

      while (v4 != v6);
      v4 = [self countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = [MEMORY[0x277CCACA8] stringWithFormat:@"{\n%@\n}", objc_msgSend(v2, "componentsJoinedByString:", @", \n")];
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

@end
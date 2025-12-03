@interface NSMapTable(Indexing)
- (uint64_t)setObject:()Indexing forKeyedSubscript:;
- (void)enumerateObjects:()Indexing;
@end

@implementation NSMapTable(Indexing)

- (void)enumerateObjects:()Indexing
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(selfCopy);
        }

        v10 = [selfCopy objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v9), v12}];
        v4[2](v4, v10);

        ++v9;
      }

      while (v7 != v9);
      v7 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (uint64_t)setObject:()Indexing forKeyedSubscript:
{
  if (a3)
  {
    return [self setObject:? forKey:?];
  }

  else
  {
    return [self removeObjectForKey:a4];
  }
}

@end
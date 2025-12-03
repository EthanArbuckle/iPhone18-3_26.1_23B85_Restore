@interface NSArray(HMFoundation)
+ (NSString)shortDescription;
- (id)hmf_objectWithOptions:()HMFoundation passingTest:;
- (id)hmf_objectsWithOptions:()HMFoundation passingTest:;
- (id)privateDescription;
- (id)shortDescription;
- (uint64_t)hmf_objectsAreKindOfClass:()HMFoundation;
- (void)hmf_enumerateWithAutoreleasePoolUsingBlock:()HMFoundation;
@end

@implementation NSArray(HMFoundation)

- (id)shortDescription
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        if (v10)
        {
          [v8 shortDescription];
        }

        else
        {
          [v8 description];
        }
        v11 = ;

        [v2 addObject:v11];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [v2 description];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (NSString)shortDescription
{
  v0 = objc_opt_class();

  return NSStringFromClass(v0);
}

- (id)privateDescription
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(selfCopy);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }

        v10 = v9;

        if (v10)
        {
          [v8 privateDescription];
        }

        else
        {
          [v8 description];
        }
        v11 = ;

        [v2 addObject:v11];
      }

      v5 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = [v2 description];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (uint64_t)hmf_objectsAreKindOfClass:()HMFoundation
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  selfCopy = self;
  v2 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    while (2)
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(selfCopy);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)hmf_objectWithOptions:()HMFoundation passingTest:
{
  v6 = a4;
  if (v6 && (v7 = [self indexOfObjectWithOptions:a3 passingTest:v6], v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = [self objectAtIndex:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)hmf_objectsWithOptions:()HMFoundation passingTest:
{
  v6 = a4;
  if (v6)
  {
    v7 = [self indexesOfObjectsWithOptions:a3 passingTest:v6];
    if ([v7 count])
    {
      v8 = [self objectsAtIndexes:v7];
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  return v8;
}

- (void)hmf_enumerateWithAutoreleasePoolUsingBlock:()HMFoundation
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__NSArray_HMFoundation__hmf_enumerateWithAutoreleasePoolUsingBlock___block_invoke;
  v6[3] = &unk_2786E8088;
  v7 = v4;
  v5 = v4;
  [self enumerateObjectsUsingBlock:v6];
}

@end
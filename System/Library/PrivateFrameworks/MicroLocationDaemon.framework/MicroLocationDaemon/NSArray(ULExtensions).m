@interface NSArray(ULExtensions)
+ (id)fromFloatVector:()ULExtensions;
+ (id)fromStringVector:()ULExtensions;
+ (void)toFloatVector:()ULExtensions;
- (id)getFilteredArrayByDistinctProperty:()ULExtensions;
@end

@implementation NSArray(ULExtensions)

+ (id)fromFloatVector:()ULExtensions
{
  v4 = [MEMORY[0x277CBEB18] array];
  v6 = *a3;
  v7 = *(a3 + 8);
  if (*a3 != v7)
  {
    do
    {
      LODWORD(v5) = *v6;
      v8 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
      [v4 addObject:v8];

      ++v6;
    }

    while (v6 != v7);
  }

  v9 = [v4 copy];

  return v9;
}

+ (void)toFloatVector:()ULExtensions
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        [v8 floatValue];
        v11 = a2[1];
        v10 = a2[2];
        if (v11 >= v10)
        {
          v13 = *a2;
          v14 = v11 - *a2;
          v15 = v14 >> 2;
          v16 = (v14 >> 2) + 1;
          if (v16 >> 62)
          {
            std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
          }

          v17 = v10 - v13;
          if (v17 >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<CLMicroLocationProto::ConfidenceReason>>(a2, v18);
          }

          *(4 * v15) = v9;
          v12 = 4 * v15 + 4;
          memcpy(0, v13, v14);
          v19 = *a2;
          *a2 = 0;
          a2[1] = v12;
          a2[2] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v11 = v9;
          v12 = (v11 + 4);
        }

        a2[1] = v12;
      }

      v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];
}

+ (id)fromStringVector:()ULExtensions
{
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    do
    {
      v7 = v5;
      if (*(v5 + 23) < 0)
      {
        v7 = *v5;
      }

      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
      [v4 addObject:v8];

      v5 += 3;
    }

    while (v5 != v6);
  }

  v9 = [v4 copy];

  return v9;
}

- (id)getFilteredArrayByDistinctProperty:()ULExtensions
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = a1;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 valueForKey:{v4, v18}];
        v13 = [v5 containsObject:v12];

        if ((v13 & 1) == 0)
        {
          v14 = [v11 valueForKey:v4];
          [v5 addObject:v14];

          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v6 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end
@interface NSDictionary(IntentsFoundation)
+ (id)if_dictionaryWithObjects:()IntentsFoundation forKeys:count:uniquingKeysWith:;
+ (id)if_dictionaryWithObjects:()IntentsFoundation forKeys:uniquingKeysWith:;
- (__CFString)if_JSONStringRepresentation;
- (id)if_compactMap:()IntentsFoundation;
- (id)if_dictionaryByAddingEntriesFromDictionary:()IntentsFoundation;
- (id)if_dictionaryWithNonEmptyValues;
@end

@implementation NSDictionary(IntentsFoundation)

- (id)if_compactMap:()IntentsFoundation
{
  v5 = [self count];
  if (!v5)
  {
    return self;
  }

  v6 = v5;
  v7 = malloc_type_calloc(v5, 8uLL, 0x80040B8603338uLL);
  v8 = malloc_type_calloc(v6, 8uLL, 0x80040B8603338uLL);
  [self getObjects:v8 andKeys:v7 count:v6];
  v9 = 0;
  v10 = 0;
  do
  {
    if (v9 == v10)
    {
      v11 = v8[v9];
    }

    else
    {
      v7[v10] = v7[v9];
      v11 = v8[v9];
      v8[v10] = v11;
    }

    (*(a3 + 16))(a3, v7[v9], v11, &v7[v10], &v8[v10]);
    if (v7[v10] && v8[v10])
    {
      ++v10;
    }

    ++v9;
  }

  while (v6 != v9);
  v12 = objc_opt_class();
  v13 = [v12 isSubclassOfClass:objc_opt_class()];
  v14 = 0x277CBEAC0;
  if (v13)
  {
    v14 = 0x277CBEB38;
  }

  v15 = [objc_alloc(*v14) initWithObjects:v8 forKeys:v7 count:v10];
  free(v7);
  free(v8);

  return v15;
}

- (id)if_dictionaryByAddingEntriesFromDictionary:()IntentsFoundation
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 addEntriesFromDictionary:v4];

  v6 = [v5 copy];

  return v6;
}

- (id)if_dictionaryWithNonEmptyValues
{
  v2 = [self keysOfEntriesPassingTest:&__block_literal_global_41];
  allObjects = [v2 allObjects];
  v4 = [self dictionaryWithValuesForKeys:allObjects];

  return v4;
}

- (__CFString)if_JSONStringRepresentation
{
  v1 = [MEMORY[0x277CCAAA0] dataWithJSONObject:self options:2 error:0];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v1 encoding:4];
  }

  else
  {
    v2 = @"{}";
  }

  return v2;
}

+ (id)if_dictionaryWithObjects:()IntentsFoundation forKeys:count:uniquingKeysWith:
{
  v9 = a6;
  for (i = objc_alloc_init(MEMORY[0x277CBEB38]); a5; --a5)
  {
    v11 = *a4;
    v12 = *a3;
    v13 = [i objectForKeyedSubscript:v11];
    if (v13)
    {
      v14 = v9[2](v9, v13, v12);
      [i setObject:v14 forKey:v11];
    }

    else
    {
      [i setObject:v12 forKey:v11];
    }

    ++a3;
    ++a4;
  }

  v15 = [self dictionaryWithDictionary:i];

  return v15;
}

+ (id)if_dictionaryWithObjects:()IntentsFoundation forKeys:uniquingKeysWith:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 count];
  v12 = malloc_type_calloc([v10 count], 8uLL, 0x80040B8603338uLL);
  v13 = malloc_type_calloc([v10 count], 8uLL, 0x80040B8603338uLL);
  [v10 getObjects:v12 range:{0, v11}];
  [v9 getObjects:v13 range:{0, v11}];

  v14 = [v10 count];
  v15 = [self if_dictionaryWithObjects:v12 forKeys:v13 count:v14 uniquingKeysWith:v8];

  free(v12);
  free(v13);

  return v15;
}

@end
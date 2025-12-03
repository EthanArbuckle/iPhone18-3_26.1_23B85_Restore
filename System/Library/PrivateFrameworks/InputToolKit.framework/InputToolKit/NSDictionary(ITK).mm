@interface NSDictionary(ITK)
- (id)itk_dictionaryByAddingEntriesFromNonNilDictionary:()ITK;
- (id)itk_md5;
- (id)itk_objectForNonNilKey:()ITK;
- (id)itk_prettyDescriptionWithTabLevel:()ITK;
@end

@implementation NSDictionary(ITK)

- (id)itk_dictionaryByAddingEntriesFromNonNilDictionary:()ITK
{
  selfCopy = self;
  if (a3)
  {
    v5 = a3;
    v6 = [selfCopy mutableCopy];
    [v6 addEntriesFromDictionary:v5];
    v7 = [v5 copy];

    selfCopy = v7;
  }

  return selfCopy;
}

- (id)itk_prettyDescriptionWithTabLevel:()ITK
{
  v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v5 appendString:@"{\n"];
  if (a3)
  {
    v6 = &stru_28670F9B0;
    v7 = a3;
    do
    {
      v8 = [(__CFString *)v6 stringByAppendingString:@"\t"];

      v6 = v8;
      --v7;
    }

    while (v7);
  }

  else
  {
    v8 = &stru_28670F9B0;
  }

  v9 = [(__CFString *)v8 stringByAppendingString:@"\t"];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __55__NSDictionary_ITK__itk_prettyDescriptionWithTabLevel___block_invoke;
  v18 = &unk_2797AF1F0;
  v10 = v5;
  v19 = v10;
  v20 = v9;
  v21 = a3;
  v11 = v9;
  [self enumerateKeysAndObjectsUsingBlock:&v15];
  [v10 appendFormat:@"%@}", v8, v15, v16, v17, v18];
  v12 = v20;
  v13 = v10;

  return v10;
}

- (id)itk_objectForNonNilKey:()ITK
{
  if (a3)
  {
    v4 = [self objectForKeyedSubscript:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)itk_md5
{
  v1 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:0 error:0];
  itk_md5 = [v1 itk_md5];

  return itk_md5;
}

@end
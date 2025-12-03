@interface NSArray(NPK)
- (id)npkComprehension:()NPK;
- (id)npkFindFirstObjectMatchingCondition:()NPK;
- (id)npkSafeObjectAtIndex:()NPK;
@end

@implementation NSArray(NPK)

- (id)npkFindFirstObjectMatchingCondition:()NPK
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__26;
  v15 = __Block_byref_object_dispose__26;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__NSArray_NPK__npkFindFirstObjectMatchingCondition___block_invoke;
  v8[3] = &unk_27994B570;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)npkSafeObjectAtIndex:()NPK
{
  v17 = *MEMORY[0x277D85DE8];
  if ([self count] <= a3)
  {
    v6 = pk_General_log();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

    if (v7)
    {
      v8 = pk_General_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v11 = 134218498;
        v12 = a3;
        v13 = 2112;
        selfCopy = self;
        v15 = 2048;
        v16 = [self count];
        _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_ERROR, "Error: Tried to access invalid object at index %lu in array %@ with %lu elements", &v11, 0x20u);
      }
    }

    v5 = 0;
  }

  else
  {
    v5 = [self objectAtIndex:a3];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)npkComprehension:()NPK
{
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __33__NSArray_NPK__npkComprehension___block_invoke;
  v13 = &unk_27994B598;
  v14 = array;
  v15 = v4;
  v6 = array;
  v7 = v4;
  [self enumerateObjectsUsingBlock:&v10];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:{v6, v10, v11, v12, v13}];

  return v8;
}

@end
@interface NSDictionary(EmailFoundationAdditions)
- (id)ef_filter:()EmailFoundationAdditions;
- (id)ef_mapValues:()EmailFoundationAdditions;
- (id)ef_objectOfClass:()EmailFoundationAdditions forKey:;
- (uint64_t)ef_all:()EmailFoundationAdditions;
- (uint64_t)ef_any:()EmailFoundationAdditions;
@end

@implementation NSDictionary(EmailFoundationAdditions)

- (id)ef_objectOfClass:()EmailFoundationAdditions forKey:
{
  v4 = [a1 objectForKey:a4];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)ef_all:()EmailFoundationAdditions
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__NSDictionary_EmailFoundationAdditions__ef_all___block_invoke;
  v8[3] = &unk_1E8248FA0;
  v9 = v4;
  v10 = &v11;
  v5 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (uint64_t)ef_any:()EmailFoundationAdditions
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__NSDictionary_EmailFoundationAdditions__ef_any___block_invoke;
  v8[3] = &unk_1E8248FA0;
  v9 = v4;
  v10 = &v11;
  v5 = v4;
  [a1 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (id)ef_filter:()EmailFoundationAdditions
{
  v4 = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __52__NSDictionary_EmailFoundationAdditions__ef_filter___block_invoke;
  v14[3] = &unk_1E8248FC8;
  v5 = v4;
  v15 = v5;
  v6 = [a1 keysOfEntriesPassingTest:v14];
  v7 = [v6 allObjects];

  v8 = [v7 count];
  if (v8 == [a1 count])
  {
    v9 = a1;
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = [MEMORY[0x1E695DFB0] null];
    v12 = [a1 objectsForKeys:v7 notFoundMarker:v11];
    v9 = [v10 initWithObjects:v12 forKeys:v7];
  }

  return v9;
}

- (id)ef_mapValues:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__NSDictionary_EmailFoundationAdditions__ef_mapValues___block_invoke;
  v11[3] = &unk_1E8248FF0;
  v6 = v4;
  v13 = v6;
  v7 = v5;
  v12 = v7;
  [a1 enumerateKeysAndObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v7;

  return v7;
}

@end
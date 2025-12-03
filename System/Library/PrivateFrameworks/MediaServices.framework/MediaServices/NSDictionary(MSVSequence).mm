@interface NSDictionary(MSVSequence)
- (double)msv_reduceIntoCGFloat:()MSVSequence by:;
- (double)msv_reduceIntoDouble:()MSVSequence by:;
- (float)msv_reduceIntoFloat:()MSVSequence by:;
- (id)msv_compactMap:()MSVSequence;
- (id)msv_compactMapKeysAndValues:()MSVSequence;
- (id)msv_compactMapValues:()MSVSequence;
- (id)msv_filter:()MSVSequence;
- (id)msv_firstWhere:()MSVSequence;
- (id)msv_flatMap:()MSVSequence;
- (id)msv_map:()MSVSequence;
- (id)msv_mapKeysAndValues:()MSVSequence;
- (id)msv_mapValues:()MSVSequence;
- (id)msv_reduceIntoObject:()MSVSequence by:;
- (uint64_t)msv_reduceIntoBool:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt32:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt64:()MSVSequence by:;
- (uint64_t)msv_reduceIntoInt:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt32:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt64:()MSVSequence by:;
- (uint64_t)msv_reduceIntoUInt:()MSVSequence by:;
@end

@implementation NSDictionary(MSVSequence)

- (id)msv_reduceIntoObject:()MSVSequence by:
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2002;
  v19 = __Block_byref_object_dispose__2003;
  v8 = v6;
  v20 = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__NSDictionary_MSVSequence__msv_reduceIntoObject_by___block_invoke;
  v12[3] = &unk_1E7981D58;
  v14 = &v15;
  v9 = v7;
  v13 = v9;
  [self enumerateKeysAndObjectsUsingBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (uint64_t)msv_reduceIntoUInt64:()MSVSequence by:
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__NSDictionary_MSVSequence__msv_reduceIntoUInt64_by___block_invoke;
  v10[3] = &unk_1E7981D58;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [self enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (uint64_t)msv_reduceIntoUInt32:()MSVSequence by:
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__NSDictionary_MSVSequence__msv_reduceIntoUInt32_by___block_invoke;
  v10[3] = &unk_1E7981D58;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [self enumerateKeysAndObjectsUsingBlock:v10];
  v8 = *(v14 + 6);

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (uint64_t)msv_reduceIntoUInt:()MSVSequence by:
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__NSDictionary_MSVSequence__msv_reduceIntoUInt_by___block_invoke;
  v10[3] = &unk_1E7981D58;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [self enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (uint64_t)msv_reduceIntoInt64:()MSVSequence by:
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__NSDictionary_MSVSequence__msv_reduceIntoInt64_by___block_invoke;
  v10[3] = &unk_1E7981D58;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [self enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (uint64_t)msv_reduceIntoInt32:()MSVSequence by:
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__NSDictionary_MSVSequence__msv_reduceIntoInt32_by___block_invoke;
  v10[3] = &unk_1E7981D58;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [self enumerateKeysAndObjectsUsingBlock:v10];
  v8 = *(v14 + 6);

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (uint64_t)msv_reduceIntoInt:()MSVSequence by:
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__NSDictionary_MSVSequence__msv_reduceIntoInt_by___block_invoke;
  v10[3] = &unk_1E7981D58;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [self enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (double)msv_reduceIntoDouble:()MSVSequence by:
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__NSDictionary_MSVSequence__msv_reduceIntoDouble_by___block_invoke;
  v10[3] = &unk_1E7981D58;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [self enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (double)msv_reduceIntoCGFloat:()MSVSequence by:
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__NSDictionary_MSVSequence__msv_reduceIntoCGFloat_by___block_invoke;
  v10[3] = &unk_1E7981D58;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [self enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (float)msv_reduceIntoFloat:()MSVSequence by:
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__NSDictionary_MSVSequence__msv_reduceIntoFloat_by___block_invoke;
  v10[3] = &unk_1E7981D58;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [self enumerateKeysAndObjectsUsingBlock:v10];
  v8 = v14[6];

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (uint64_t)msv_reduceIntoBool:()MSVSequence by:
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__NSDictionary_MSVSequence__msv_reduceIntoBool_by___block_invoke;
  v10[3] = &unk_1E7981D58;
  v12 = &v13;
  v7 = v6;
  v11 = v7;
  [self enumerateKeysAndObjectsUsingBlock:v10];
  v8 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v8;
}

- (id)msv_flatMap:()MSVSequence
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __41__NSDictionary_MSVSequence__msv_flatMap___block_invoke;
  v13 = &unk_1E7981D30;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)msv_firstWhere:()MSVSequence
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2002;
  v15 = __Block_byref_object_dispose__2003;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__NSDictionary_MSVSequence__msv_firstWhere___block_invoke;
  v8[3] = &unk_1E7981D58;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [self enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)msv_filter:()MSVSequence
{
  v4 = a3;
  v5 = [self mutableCopy];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __40__NSDictionary_MSVSequence__msv_filter___block_invoke;
  v13 = &unk_1E7981D30;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)msv_compactMapValues:()MSVSequence
{
  v4 = a3;
  v5 = [self mutableCopy];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __50__NSDictionary_MSVSequence__msv_compactMapValues___block_invoke;
  v13 = &unk_1E7981D30;
  v14 = v5;
  v15 = v4;
  v6 = v4;
  v7 = v5;
  [self enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v7 copy];

  return v8;
}

- (id)msv_compactMapKeysAndValues:()MSVSequence
{
  v4 = a3;
  v5 = [self mutableCopy];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __57__NSDictionary_MSVSequence__msv_compactMapKeysAndValues___block_invoke;
  v13 = &unk_1E7981D30;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)msv_compactMap:()MSVSequence
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __44__NSDictionary_MSVSequence__msv_compactMap___block_invoke;
  v13 = &unk_1E7981D30;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)msv_mapValues:()MSVSequence
{
  v4 = a3;
  v5 = [self mutableCopy];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __43__NSDictionary_MSVSequence__msv_mapValues___block_invoke;
  v13 = &unk_1E7981D30;
  v14 = v5;
  v15 = v4;
  v6 = v4;
  v7 = v5;
  [self enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v7 copy];

  return v8;
}

- (id)msv_mapKeysAndValues:()MSVSequence
{
  v4 = a3;
  v5 = [self mutableCopy];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __50__NSDictionary_MSVSequence__msv_mapKeysAndValues___block_invoke;
  v13 = &unk_1E7981D30;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [self enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v6 copy];

  return v8;
}

- (id)msv_map:()MSVSequence
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __37__NSDictionary_MSVSequence__msv_map___block_invoke;
  v13 = &unk_1E7981D30;
  v14 = v5;
  v15 = v4;
  v6 = v4;
  v7 = v5;
  [self enumerateKeysAndObjectsUsingBlock:&v10];
  v8 = [v7 copy];

  return v8;
}

@end
@interface NSArray(FIAdditions)
+ (id)fi_arrayByEnumeratingRange:()FIAdditions usingBlock:;
- (id)fi_filteredArrayUsingBlock:()FIAdditions;
- (id)fi_flatMapUsingBlock:()FIAdditions;
- (id)fi_mapUsingBlock:()FIAdditions;
- (id)fi_reduceWithReduction:()FIAdditions block:;
@end

@implementation NSArray(FIAdditions)

- (id)fi_mapUsingBlock:()FIAdditions
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __41__NSArray_FIAdditions__fi_mapUsingBlock___block_invoke;
  v8[3] = &unk_279004E50;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [a1 enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)fi_flatMapUsingBlock:()FIAdditions
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__NSArray_FIAdditions__fi_flatMapUsingBlock___block_invoke;
  v8[3] = &unk_279004E78;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [a1 enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)fi_filteredArrayUsingBlock:()FIAdditions
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__NSArray_FIAdditions__fi_filteredArrayUsingBlock___block_invoke;
  v8[3] = &unk_279004E78;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [a1 enumerateObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)fi_reduceWithReduction:()FIAdditions block:
{
  v6 = a3;
  v7 = a4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__3;
  v19 = __Block_byref_object_dispose__3;
  v8 = v6;
  v20 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__NSArray_FIAdditions__fi_reduceWithReduction_block___block_invoke;
  v12[3] = &unk_279004E50;
  v14 = &v15;
  v9 = v7;
  v13 = v9;
  [a1 enumerateObjectsUsingBlock:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

+ (id)fi_arrayByEnumeratingRange:()FIAdditions usingBlock:
{
  v7 = a5;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:a4];
  if (a3 < a3 + a4)
  {
    do
    {
      v9 = v7[2](v7, a3);
      [v8 addObject:v9];

      ++a3;
      --a4;
    }

    while (a4);
  }

  return v8;
}

@end
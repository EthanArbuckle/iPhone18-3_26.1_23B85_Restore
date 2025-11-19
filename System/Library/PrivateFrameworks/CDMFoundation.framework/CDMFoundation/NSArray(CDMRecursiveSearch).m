@interface NSArray(CDMRecursiveSearch)
- (uint64_t)_cdm_hasKey:()CDMRecursiveSearch withValue:;
@end

@implementation NSArray(CDMRecursiveSearch)

- (uint64_t)_cdm_hasKey:()CDMRecursiveSearch withValue:
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__NSArray_CDMRecursiveSearch___cdm_hasKey_withValue___block_invoke;
  v12[3] = &unk_1E862FBB0;
  v15 = &v16;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  [a1 enumerateObjectsUsingBlock:v12];
  v10 = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return v10;
}

@end
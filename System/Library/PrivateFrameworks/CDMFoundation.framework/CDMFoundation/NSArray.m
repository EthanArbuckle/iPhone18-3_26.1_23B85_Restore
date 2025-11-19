@interface NSArray
@end

@implementation NSArray

void __66__NSArray_TaskLoop__enumerateTaskParallelly_blockCompleteAllTask___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66__NSArray_TaskLoop__enumerateTaskParallelly_blockCompleteAllTask___block_invoke_2;
  aBlock[3] = &unk_1E862F518;
  v6 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v14 = a3;
  v7 = v5;
  v8 = _Block_copy(aBlock);
  v9 = *(a1 + 32);
  v10 = _Block_copy(v8);
  [v9 addObject:v10];
}

uint64_t __66__NSArray_TaskLoop__enumerateTaskParallelly_blockCompleteAllTask___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(*(*(*(a1 + 56) + 8) + 40));
  [v2 addObject:v3];

  v4 = [*(a1 + 32) count];
  result = [*(a1 + 40) count];
  if (v4 == result)
  {
    result = *(a1 + 48);
    if (result)
    {
      v6 = *(result + 16);

      return v6();
    }
  }

  return result;
}

void __53__NSArray_CDMRecursiveSearch___cdm_hasKey_withValue___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    *(*(a1[6] + 8) + 24) = [v6 _cdm_hasKey:a1[4] withValue:a1[5]];
  }

  *a4 = *(*(a1[6] + 8) + 24);
}

@end
@interface NSArray
@end

@implementation NSArray

void __49__NSArray_BLTNSNullRemoval__objectWithNoNSNulls___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = 0;
  v5 = [a2 objectWithNoNSNulls:&v13];
  v6 = v13;
  if (!v5)
  {
    v12 = *(a1 + 40);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v9 = [v8 stringValue];
    v11 = MEMORY[0x277CBEC38];
    v10 = v12;
    goto LABEL_5;
  }

  [*(a1 + 32) addObject:v5];
  if ([v6 count])
  {
    v7 = *(a1 + 40);
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v9 = [v8 stringValue];
    v10 = v7;
    v11 = v6;
LABEL_5:
    [v10 setObject:v11 forKeyedSubscript:v9];
  }
}

uint64_t __47__NSArray_BLTNSNullRemoval__objectWithNSNulls___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 integerValue];
  if (v6 <= [v5 integerValue])
  {
    v8 = [v4 integerValue];
    if (v8 >= [v5 integerValue])
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __32__NSArray_BLTSizeOf__blt_sizeof__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 blt_sizeof];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

@end
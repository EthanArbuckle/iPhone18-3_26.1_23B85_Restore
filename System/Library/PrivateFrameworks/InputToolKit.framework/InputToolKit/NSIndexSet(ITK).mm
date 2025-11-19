@interface NSIndexSet(ITK)
+ (id)itk_indexSetWithNSNumberIndex:()ITK;
- (__CFString)itk_indexString;
- (id)itk_rangeArray;
@end

@implementation NSIndexSet(ITK)

+ (id)itk_indexSetWithNSNumberIndex:()ITK
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_alloc(objc_opt_class()) initWithIndex:{objc_msgSend(v3, "unsignedIntValue")}];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CCAA78]);
  }

  v5 = v4;

  return v5;
}

- (id)itk_rangeArray
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __33__NSIndexSet_ITK__itk_rangeArray__block_invoke;
  v6[3] = &unk_2797AF1A0;
  v7 = v2;
  v3 = v2;
  [a1 enumerateRangesUsingBlock:v6];
  v4 = [v3 copy];

  return v4;
}

- (__CFString)itk_indexString
{
  v2 = [a1 count];
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = [a1 firstIndex];
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%ld]", v3];
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x277CCAB68]);
      [v5 appendString:@"["];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __34__NSIndexSet_ITK__itk_indexString__block_invoke;
      v9[3] = &unk_2797AF1C8;
      v10 = v5;
      v6 = v5;
      [a1 enumerateIndexesUsingBlock:v9];
      v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@", "}];
      v4 = [v6 stringByTrimmingCharactersInSet:v7];
    }
  }

  else
  {
    v4 = @"[]";
  }

  return v4;
}

@end
@interface NSArray
@end

@implementation NSArray

uint64_t __50__NSArray_IC__ic_containsObjectMatchingPredicate___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) evaluateWithObject:a2];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t __37__NSArray_IC__ic_firstObjectOfClass___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    *a4 = 1;
  }

  return isKindOfClass & 1;
}

uint64_t __50__NSArray_IC__ic_firstObjectConformingToProtocol___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 conformsToProtocol:*(a1 + 32)];
  if (result)
  {
    *a4 = 1;
  }

  return result;
}

void __29__NSArray_IC__ic_compactMap___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) ic_addNonNilObject:v2];
}

void __22__NSArray_IC__ic_map___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 40) + 16))();
  [*(a1 + 32) addObject:v2];
}

void __26__NSArray_IC__ic_flatMap___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = (*(*(a1 + 40) + 16))();

  v6 = ICCheckedDynamicCast(v4, v5);

  [*(a1 + 32) addObjectsFromArray:v6];
}

uint64_t __53__NSArray_IC__ic_reduceStartingWithState_usingBlock___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

  return MEMORY[0x1EEE66BB8]();
}

@end
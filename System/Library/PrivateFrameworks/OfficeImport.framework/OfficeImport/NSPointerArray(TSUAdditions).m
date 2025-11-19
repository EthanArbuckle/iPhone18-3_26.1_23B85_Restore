@interface NSPointerArray(TSUAdditions)
- (uint64_t)tsu_enumerateNonNullPointersUsingBlock:()TSUAdditions;
- (uint64_t)tsu_indexOfPointer:()TSUAdditions;
- (uint64_t)tsu_insertRange:()TSUAdditions;
@end

@implementation NSPointerArray(TSUAdditions)

- (uint64_t)tsu_enumerateNonNullPointersUsingBlock:()TSUAdditions
{
  v8 = 0;
  result = [a1 count];
  if (result)
  {
    v6 = result;
    v7 = 1;
    do
    {
      result = [a1 pointerAtIndex:v7 - 1];
      if (result)
      {
        result = (*(a3 + 16))(a3, result, v7 - 1, &v8);
      }

      if (v7 >= v6)
      {
        break;
      }

      ++v7;
    }

    while ((v8 & 1) == 0);
  }

  return result;
}

- (uint64_t)tsu_insertRange:()TSUAdditions
{
  result = [a1 count];
  v8 = result - a3;
  if (a4 >= result - a3)
  {
    v9 = result;
    if (result == a3)
    {
      v10 = [a1 count] + a4;

      return [a1 setCount:v10];
    }

    else
    {
      v11 = [MEMORY[0x277CCAC18] pointerArrayWithPointerFunctions:{objc_msgSend(a1, "pointerFunctions")}];
      [v11 setCount:v8];
      v12 = 0;
      do
      {
        v13 = [a1 pointerAtIndex:a3];
        if (v13)
        {
          [v11 replacePointerAtIndex:v12 withPointer:v13];
          [a1 replacePointerAtIndex:a3 withPointer:0];
        }

        ++v12;
        ++a3;
      }

      while (v9 != a3);
      [a1 setCount:{objc_msgSend(a1, "count") + a4}];
      v14 = 0;
      v15 = [a1 count] - v8;
      do
      {
        result = [v11 pointerAtIndex:v14];
        if (result)
        {
          [a1 replacePointerAtIndex:v15 + v14 withPointer:result];
          result = [v11 replacePointerAtIndex:v14 withPointer:0];
        }

        ++v14;
      }

      while (v8 != v14);
    }
  }

  else
  {
    for (; a4; --a4)
    {
      result = [a1 insertPointer:0 atIndex:a3];
    }
  }

  return result;
}

- (uint64_t)tsu_indexOfPointer:()TSUAdditions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__NSPointerArray_TSUAdditions__tsu_indexOfPointer___block_invoke;
  v5[3] = &unk_2799C6700;
  v5[4] = &v6;
  v5[5] = a3;
  [a1 tsu_enumerateNonNullPointersUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end
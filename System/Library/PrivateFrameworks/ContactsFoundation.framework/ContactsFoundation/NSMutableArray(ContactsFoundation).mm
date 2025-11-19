@interface NSMutableArray(ContactsFoundation)
- (uint64_t)_cn_addObject:()ContactsFoundation orPlaceholder:;
- (void)_cn_addNonNilObject:()ContactsFoundation;
- (void)_cn_addNonNilObjectIfNotPresent:()ContactsFoundation;
- (void)_cn_addObject:()ContactsFoundation count:;
- (void)_cn_insertNonNilObject:()ContactsFoundation atIndex:;
- (void)_cn_removeObjectsPassingTest:()ContactsFoundation;
- (void)_cn_reverseObjectsInRange:()ContactsFoundation;
- (void)_cn_rotateRange:()ContactsFoundation by:;
- (void)_cn_sortUsingAuxiliarySortOrder:()ContactsFoundation transform:;
@end

@implementation NSMutableArray(ContactsFoundation)

- (void)_cn_addNonNilObject:()ContactsFoundation
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (void)_cn_addNonNilObjectIfNotPresent:()ContactsFoundation
{
  v4 = a3;
  if (([a1 containsObject:?] & 1) == 0)
  {
    [a1 _cn_addNonNilObject:v4];
  }
}

- (uint64_t)_cn_addObject:()ContactsFoundation orPlaceholder:
{
  if (!a3)
  {
    a3 = a4;
  }

  return [a1 addObject:a3];
}

- (void)_cn_addObject:()ContactsFoundation count:
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__NSMutableArray_ContactsFoundation___cn_addObject_count___block_invoke;
  v9[3] = &unk_1E6ED5168;
  v9[4] = a1;
  v10 = v6;
  v8 = v6;
  [v7 _cn_times:v9];
}

- (void)_cn_insertNonNilObject:()ContactsFoundation atIndex:
{
  if (a3)
  {
    return [a1 insertObject:? atIndex:?];
  }

  return a1;
}

- (void)_cn_removeObjectsPassingTest:()ContactsFoundation
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__NSMutableArray_ContactsFoundation___cn_removeObjectsPassingTest___block_invoke;
  v7[3] = &unk_1E6ED5510;
  v8 = v4;
  v5 = v4;
  v6 = [a1 indexesOfObjectsPassingTest:v7];
  [a1 removeObjectsAtIndexes:v6];
}

- (void)_cn_reverseObjectsInRange:()ContactsFoundation
{
  if (a4 >= 2)
  {
    v8 = [a1 subarrayWithRange:?];
    v9 = [v8 _cn_reversed];

    [a1 replaceObjectsInRange:a3 withObjectsFromArray:{a4, v9}];
  }
}

- (void)_cn_rotateRange:()ContactsFoundation by:
{
  if (a4 >= 2)
  {
    v6 = (a4 & ((a5 % a4) >> 63)) + a5 % a4;
    if (v6)
    {
      v9 = [a1 count];
      v20.location = 0;
      v20.length = v9;
      v23.location = a3;
      v23.length = a4;
      v10 = NSIntersectionRange(v20, v23);
      if (a3 != v10.location || a4 != v10.length)
      {
        v13 = MEMORY[0x1E696AEC0];
        v21.location = a3;
        v21.length = a4;
        v14 = NSStringFromRange(v21);
        v22.location = 0;
        v22.length = v9;
        v15 = NSStringFromRange(v22);
        v16 = [v13 stringWithFormat:@"rotation range (%@) out of bounds (%@)", v14, v15];

        v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:v16 userInfo:0];
        objc_exception_throw(v17);
      }

      v11 = a3 + a4 - v6;
      v18 = [a1 subarrayWithRange:{v11, v6}];
      [a1 removeObjectsInRange:{v11, v6}];
      v12 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{a3, v6}];
      [a1 insertObjects:v18 atIndexes:v12];
    }
  }
}

- (void)_cn_sortUsingAuxiliarySortOrder:()ContactsFoundation transform:
{
  v2 = [_CNSortsByPositionInAuxiliaryArray comparatorForSortingAccordingToAuxiliaryValues:"comparatorForSortingAccordingToAuxiliaryValues:transform:" transform:?];
  [a1 sortUsingComparator:v2];
}

@end
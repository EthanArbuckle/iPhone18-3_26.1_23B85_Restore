@interface NSIndexSet(CKUtilities)
- (id)__ck_indexPathItemsInSection:()CKUtilities;
- (id)__ck_indexPathRowsInSection:()CKUtilities;
- (id)__ck_indexSetShiftedForInsertedIndexes:()CKUtilities removedIndexes:;
- (void)__ck_enumerateIndexesByProximityToIndex:()CKUtilities usingBlock:;
@end

@implementation NSIndexSet(CKUtilities)

- (id)__ck_indexPathRowsInSection:()CKUtilities
{
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__NSIndexSet_CKUtilities____ck_indexPathRowsInSection___block_invoke;
  v8[3] = &unk_1E72EEFE8;
  v6 = v5;
  v9 = v6;
  v10 = a3;
  [a1 enumerateIndexesUsingBlock:v8];

  return v6;
}

- (id)__ck_indexPathItemsInSection:()CKUtilities
{
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__NSIndexSet_CKUtilities____ck_indexPathItemsInSection___block_invoke;
  v8[3] = &unk_1E72EEFE8;
  v6 = v5;
  v9 = v6;
  v10 = a3;
  [a1 enumerateIndexesUsingBlock:v8];

  return v6;
}

- (void)__ck_enumerateIndexesByProximityToIndex:()CKUtilities usingBlock:
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 count];
  v8 = &v16 - ((8 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v8, 8 * v7);
  [a1 getIndexes:v8 maxCount:v7 inIndexRange:0];
  v9 = 0;
  if (!v7)
  {
LABEL_6:
    v11 = v9 - 1;
    HIBYTE(v16) = 0;
    while (1)
    {
LABEL_7:
      if (v9 >= v7 && v11 < 0)
      {
        goto LABEL_24;
      }

      if (v9 >= v7 || v11 < 0)
      {
        if (v9 >= v7)
        {
          v14 = *&v8[8 * v11];
LABEL_22:
          v6[2](v6, v14, &v16 + 7);
          --v11;
          goto LABEL_23;
        }

        v12 = *&v8[8 * v9];
      }

      else
      {
        v12 = *&v8[8 * v9];
        if ((v12 - a3) >= 0)
        {
          v13 = v12 - a3;
        }

        else
        {
          v13 = a3 - v12;
        }

        v14 = *&v8[8 * v11];
        v15 = v14 - a3;
        if ((v14 - a3) < 0)
        {
          v15 = a3 - v14;
        }

        if (v13 > v15)
        {
          goto LABEL_22;
        }
      }

      v6[2](v6, v12, &v16 + 7);
      ++v9;
LABEL_23:
      if (HIBYTE(v16) == 1)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v10 = *&v8[8 * v9];
    if (v10 == a3)
    {
      break;
    }

    if (v10 > a3)
    {
      goto LABEL_6;
    }

    if (v7 == ++v9)
    {
      v9 = v7;
      goto LABEL_6;
    }
  }

  HIBYTE(v16) = 0;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = 0x7FFFFFFFFFFFFFFELL;
    v9 = 0x8000000000000000;
    goto LABEL_7;
  }

  v6[2](v6, a3, &v16 + 7);
  if ((v16 & 0x100000000000000) == 0)
  {
    v11 = v9++ - 1;
    goto LABEL_7;
  }

LABEL_24:
}

- (id)__ck_indexSetShiftedForInsertedIndexes:()CKUtilities removedIndexes:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 mutableCopy];
  if ([v7 count])
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v10 = [v7 firstIndex];
    v11 = [v8 firstIndex];
    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = v11;
      v13 = 0;
      do
      {
        for (; v10 < v12; v10 = [v7 indexGreaterThanIndex:v10])
        {
          ++v13;
        }

        if (v10 != v12)
        {
          [v9 addIndex:v12 - v13];
        }

        v12 = [v8 indexGreaterThanIndex:v12];
      }

      while (v12 != 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v9 = v8;
  }

  if ([v6 count])
  {
    v14 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v15 = [v6 firstIndex];
    v16 = [v9 firstIndex];
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v16;
      v18 = 0;
      do
      {
        while (v17 + v18 >= v15)
        {
          ++v18;
          v15 = [v6 indexGreaterThanIndex:v15];
        }

        [v14 addIndex:?];
        v17 = [v9 indexGreaterThanIndex:v17];
      }

      while (v17 != 0x7FFFFFFFFFFFFFFFLL);
      [v6 indexGreaterThanIndex:v15];
    }
  }

  else
  {
    v14 = v9;
  }

  return v14;
}

@end
@interface NSAttributedString(ICTableAdditions)
- (id)ic_nextTableStringFromIndex:()ICTableAdditions tableRange:;
- (id)ic_textTablesInRange:()ICTableAdditions;
- (uint64_t)ic_numRowsForTextTable:()ICTableAdditions outNumColumns:;
- (uint64_t)ic_numberOfTables;
- (uint64_t)ic_rangeofNextTableFromIndex:()ICTableAdditions;
- (uint64_t)ic_tableSizeForTextTable:()ICTableAdditions inRange:;
@end

@implementation NSAttributedString(ICTableAdditions)

- (uint64_t)ic_tableSizeForTextTable:()ICTableAdditions inRange:
{
  v8 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3010000000;
  v25 = 0;
  v26 = 0;
  v24 = &unk_1D449C2A9;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3010000000;
  v20[4] = 0;
  v20[5] = 0;
  v20[3] = &unk_1D449C2A9;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 1;
  v9 = *MEMORY[0x1E69DB688];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__NSAttributedString_ICTableAdditions__ic_tableSizeForTextTable_inRange___block_invoke;
  v13[3] = &unk_1E846E4B0;
  v10 = v8;
  v14 = v10;
  v15 = v18;
  v16 = &v21;
  v17 = v20;
  [a1 enumerateAttribute:v9 inRange:a4 options:a5 usingBlock:{0, v13}];
  v11 = v22[5];

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v21, 8);

  return v11;
}

- (uint64_t)ic_numRowsForTextTable:()ICTableAdditions outNumColumns:
{
  v25 = a4;
  v38 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v27 = [a1 length];
  if (v27)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v26 = *MEMORY[0x1E69DB688];
    do
    {
      v35 = 0;
      v36 = 0;
      v9 = [a1 attribute:v26 atIndex:v8 effectiveRange:{&v35, v25}];
      v10 = [v9 textBlocks];
      if ([v10 count])
      {
        v29 = v10;
        v30 = v9;
        v11 = [v10 objectAtIndex:0];
        v12 = [v11 table];

        v28 = v12;
        v13 = [a1 rangeOfTextTable:v12 atIndex:v35];
        v15 = v14;
        v16 = [a1 ic_textTablesInRange:{v13, v14}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v32;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v32 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v31 + 1) + 8 * i);
              if (!v5 || v21 == v5)
              {
                v22 = [a1 ic_tableSizeForTextTable:v21 inRange:{v13, v15}];
                if (v6 <= v22)
                {
                  v6 = v22;
                }

                v7 += v23;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v31 objects:v37 count:16];
          }

          while (v18);
        }

        v8 = v13 + v15;

        v10 = v29;
        v9 = v30;
      }

      else
      {
        v8 = v36 + v35;
        if (v6 <= 1)
        {
          v6 = 1;
        }

        ++v7;
      }
    }

    while (v8 < v27);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v25)
  {
    *v25 = v6;
  }

  return v7;
}

- (id)ic_nextTableStringFromIndex:()ICTableAdditions tableRange:
{
  v6 = [a1 length];
  v7 = *MEMORY[0x1E69DB688];
  while (a3 < v6)
  {
    v8 = [a1 attribute:v7 atIndex:? effectiveRange:?];
    v9 = [v8 textBlocks];
    if ([v9 count])
    {
      v10 = [v9 objectAtIndex:0];
      v11 = [v10 table];

      v12 = [a1 rangeOfTextTable:v11 atIndex:a3];
      v14 = v13;
      v15 = [a1 attributedSubstringFromRange:{v12, v13}];
      v16 = v15;
      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = 3;
      }

      else
      {
        if (a4)
        {
          *a4 = v12;
          a4[1] = v14;
        }

        v22 = v15;
        v17 = 1;
      }
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {
      if (v17 != 3)
      {
        v18 = v22;
        goto LABEL_18;
      }

      break;
    }
  }

  v18 = 0;
  if (a4)
  {
    v19 = v6 - a3;
    if (v6 < a3)
    {
      v19 = 0;
    }

    *a4 = a3;
    a4[1] = v19;
  }

LABEL_18:

  return v18;
}

- (uint64_t)ic_rangeofNextTableFromIndex:()ICTableAdditions
{
  v3 = a3;
  v14 = a3;
  v15 = 0;
  v5 = [a1 length];
  if (v5 <= v3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v6 = v5;
  v7 = *MEMORY[0x1E69DB688];
  while (1)
  {
    v8 = [a1 attribute:v7 atIndex:v3 effectiveRange:&v14];
    v9 = [v8 textBlocks];
    if ([v9 count])
    {
      break;
    }

    v3 = v15 + v14;
    if (v15 + v14 >= v6)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v11 = [v9 objectAtIndex:0];
  v12 = [v11 table];

  v10 = [a1 rangeOfTextTable:v12 atIndex:v14];
  return v10;
}

- (uint64_t)ic_numberOfTables
{
  if (![a1 length])
  {
    return 0;
  }

  v2 = [a1 length];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  v5 = 0;
  do
  {
    v8 = 0;
    v9 = 0;
    v6 = [a1 ic_nextTableStringFromIndex:v5 tableRange:&v8];
    if (v6)
    {
      ++v4;
    }

    v5 = v9 + v8;
  }

  while (v5 < v3);
  return v4;
}

- (id)ic_textTablesInRange:()ICTableAdditions
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__78;
  v17 = __Block_byref_object_dispose__78;
  v18 = [MEMORY[0x1E695DF70] array];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__78;
  v11[4] = __Block_byref_object_dispose__78;
  v12 = [MEMORY[0x1E695DFA8] set];
  v7 = *MEMORY[0x1E69DB688];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__NSAttributedString_ICTableAdditions__ic_textTablesInRange___block_invoke;
  v10[3] = &unk_1E846E4D8;
  v10[4] = v11;
  v10[5] = &v13;
  [a1 enumerateAttribute:v7 inRange:a3 options:a4 usingBlock:{0, v10}];
  v8 = v14[5];
  _Block_object_dispose(v11, 8);

  _Block_object_dispose(&v13, 8);

  return v8;
}

@end
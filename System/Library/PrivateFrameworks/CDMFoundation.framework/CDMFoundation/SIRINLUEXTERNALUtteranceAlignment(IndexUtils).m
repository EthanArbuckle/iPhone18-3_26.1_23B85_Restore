@interface SIRINLUEXTERNALUtteranceAlignment(IndexUtils)
+ (uint64_t)subset:()IndexUtils of:;
- (BOOL)equalIndexes:()IndexUtils;
- (BOOL)overlaps:()IndexUtils;
- (BOOL)subsumedBy:()IndexUtils;
- (uint64_t)compareStartAndSize:()IndexUtils;
- (uint64_t)getEndIndex;
- (uint64_t)getStartIndex;
@end

@implementation SIRINLUEXTERNALUtteranceAlignment(IndexUtils)

- (uint64_t)compareStartAndSize:()IndexUtils
{
  v4 = a3;
  v5 = [a1 spans];
  if ([v5 count])
  {
  }

  else
  {
    v6 = [v4 spans];
    v7 = [v6 count];

    if (!v7)
    {
      v16 = 0;
      goto LABEL_13;
    }
  }

  v8 = [a1 spans];
  v9 = [v8 count];

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [v4 spans];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [a1 getStartIndex];
    v13 = [a1 getEndIndex];
    v14 = [v4 getStartIndex];
    v15 = [v4 getEndIndex];
    if (v12 >= v14)
    {
      if (v12 <= v14)
      {
        if (v13 <= v15)
        {
          v16 = v13 < v15;
          goto LABEL_13;
        }

        goto LABEL_7;
      }

LABEL_9:
      v16 = 1;
      goto LABEL_13;
    }
  }

LABEL_7:
  v16 = -1;
LABEL_13:

  return v16;
}

- (BOOL)equalIndexes:()IndexUtils
{
  v4 = a3;
  v5 = [v4 spans];
  if (![v5 count])
  {

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v6 = [a1 spans];
  v7 = [v6 count];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [v4 getStartIndex];
  if (v8 != [a1 getStartIndex])
  {
    goto LABEL_6;
  }

  v9 = [v4 getEndIndex];
  v10 = v9 == [a1 getEndIndex];
LABEL_7:

  return v10;
}

- (BOOL)overlaps:()IndexUtils
{
  v4 = a3;
  v5 = [v4 spans];
  if (![v5 count])
  {

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v6 = [a1 spans];
  v7 = [v6 count];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [a1 getStartIndex];
  if (v8 >= [v4 getEndIndex])
  {
    goto LABEL_6;
  }

  v9 = [a1 getEndIndex];
  v10 = v9 > [v4 getStartIndex];
LABEL_7:

  return v10;
}

- (BOOL)subsumedBy:()IndexUtils
{
  v4 = a3;
  v5 = [v4 spans];
  if (![v5 count])
  {

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v6 = [a1 spans];
  v7 = [v6 count];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [v4 getStartIndex];
  if (v8 > [a1 getStartIndex])
  {
    goto LABEL_6;
  }

  v9 = [v4 getEndIndex];
  v10 = v9 >= [a1 getEndIndex];
LABEL_7:

  return v10;
}

- (uint64_t)getEndIndex
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [a1 spans];
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    LODWORD(v4) = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [*(*(&v10 + 1) + 8 * i) endIndex];
        if (v4 <= v7)
        {
          v4 = v7;
        }

        else
        {
          v4 = v4;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

- (uint64_t)getStartIndex
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [a1 spans];
  v3 = [v2 count];

  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [a1 spans];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      LODWORD(v8) = -1;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) startIndex];
          if (v8 >= v10)
          {
            v8 = v10;
          }

          else
          {
            v8 = v8;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }
  }

  else
  {
    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v8;
}

+ (uint64_t)subset:()IndexUtils of:
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    if ([v5 count])
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      obj = v6;
      v7 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
      if (v7)
      {
        v8 = v7;
        v27 = v6;
        v9 = *v42;
        v28 = *v42;
        v29 = v5;
        while (2)
        {
          v10 = 0;
          v30 = v8;
          do
          {
            if (*v42 != v9)
            {
              objc_enumerationMutation(obj);
            }

            v11 = *(*(&v41 + 1) + 8 * v10);
            v12 = [v5 count];
            if (v12 <= [v11 count])
            {
              v32 = v10;
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v13 = v5;
              v14 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
              if (!v14)
              {
LABEL_31:

                v24 = 1;
                v5 = v29;
                goto LABEL_32;
              }

              v15 = v14;
              v16 = *v38;
              while (1)
              {
                v17 = 0;
LABEL_12:
                if (*v38 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v37 + 1) + 8 * v17);
                v33 = 0u;
                v34 = 0u;
                v35 = 0u;
                v36 = 0u;
                v19 = v11;
                v20 = [v19 countByEnumeratingWithState:&v33 objects:v45 count:16];
                if (!v20)
                {
                  break;
                }

                v21 = v20;
                v22 = *v34;
LABEL_16:
                v23 = 0;
                while (1)
                {
                  if (*v34 != v22)
                  {
                    objc_enumerationMutation(v19);
                  }

                  if (*(*(&v33 + 1) + 8 * v23) == v18)
                  {
                    break;
                  }

                  if (v21 == ++v23)
                  {
                    v21 = [v19 countByEnumeratingWithState:&v33 objects:v45 count:16];
                    if (v21)
                    {
                      goto LABEL_16;
                    }

                    goto LABEL_26;
                  }
                }

                if (++v17 != v15)
                {
                  goto LABEL_12;
                }

                v15 = [v13 countByEnumeratingWithState:&v37 objects:v46 count:16];
                if (!v15)
                {
                  goto LABEL_31;
                }
              }

LABEL_26:

              v9 = v28;
              v5 = v29;
              v8 = v30;
              v10 = v32;
            }

            ++v10;
          }

          while (v10 != v8);
          v8 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
          if (v8)
          {
            continue;
          }

          break;
        }

        v24 = 0;
LABEL_32:
        v6 = v27;
      }

      else
      {
        v24 = 0;
      }
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

@end
@interface NSSet(_DASAdditions)
+ (id)setWithObjectsFrom:()_DASAdditions;
- (uint64_t)enumerateObjectsInChunksOfSize:()_DASAdditions block:;
@end

@implementation NSSet(_DASAdditions)

+ (id)setWithObjectsFrom:()_DASAdditions
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = [v10 count];
  v12 = [MEMORY[0x1E695DFA8] setWithObject:v10];
  v40 = &a10;
  v13 = a9;
  if (v13)
  {
    v14 = v13;
    while ([v14 conformsToProtocol:&unk_1F2EDE9E0])
    {
      v11 += [v14 count];
      [v12 addObject:v14];
      v15 = v40++;
      v16 = *v15;

      v14 = v16;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v17 = 0;
  }

  else
  {
LABEL_5:
    if (v11 > 1)
    {
      v31 = v10;
      v17 = [MEMORY[0x1E695DFA8] setWithCapacity:1 << (log2((v11 - 1)) + 1)];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v18 = v12;
      v19 = [v18 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v37;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v37 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v36 + 1) + 8 * i);
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            v24 = v23;
            v25 = [v24 countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v33;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v33 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  [v17 addObject:*(*(&v32 + 1) + 8 * j)];
                }

                v26 = [v24 countByEnumeratingWithState:&v32 objects:v41 count:16];
              }

              while (v26);
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v20);
      }

      v10 = v31;
    }

    else
    {
      v17 = [MEMORY[0x1E695DFA8] setWithCapacity:1];
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v17;
}

- (uint64_t)enumerateObjectsInChunksOfSize:()_DASAdditions block:
{
  v6 = a4;
  [a1 allObjects];
  v21 = v20 = a1;
  v7 = vcvtpd_u64_f64([a1 count] / a3);
  v22 = 0;
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v7 - 1;
    v12 = a3;
    do
    {
      v13 = [v20 count];
      if (v13 >= v12)
      {
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }

      v15 = [v21 subarrayWithRange:{v9, v14 + v8}];
      v6[2](v6, v15, v10, &v22);
      v16 = v22;

      if (v16)
      {
        break;
      }

      v9 += a3;
      v8 -= a3;
      v12 += a3;
    }

    while (v11 != v10++);
    v18 = v22 ^ 1;
  }

  else
  {
    v18 = 1;
  }

  return v18 & 1;
}

@end
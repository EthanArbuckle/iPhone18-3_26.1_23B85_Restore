@interface CDPSimpleModel
@end

@implementation CDPSimpleModel

void __29___CDPSimpleModel_loadModel___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 peopleIdentifiers];
  if ([v3 count] && objc_msgSend(v3, "count") <= 0x14)
  {
    while (1)
    {
      v4 = *(a1 + 32);
      if (v4[2] < v4[3])
      {
        break;
      }

      [v4 _reallocModel];
    }

    *(*(*(a1 + 32) + 48) + *(*(a1 + 32) + 16)) = [v7 userIsSender];
    *(*(*(a1 + 32) + 56) + *(*(a1 + 32) + 16)) = [v7 userIsThreadInitiator];
    v5 = [v7 timestamp];
    [v5 timeIntervalSince1970];
    *(*(*(a1 + 32) + 40) + 8 * *(*(a1 + 32) + 16)) = v6;

    ++*(*(a1 + 32) + 16);
    [*(a1 + 40) addObject:v3];
  }
}

void __29___CDPSimpleModel_loadModel___block_invoke_2(uint64_t a1)
{
  v52[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 16);
  if (v2)
  {
    if (v2 < 0x9C5)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v3 = MEMORY[0x1E696ABC0];
    v49 = *MEMORY[0x1E696A578];
    v50 = @"Too many interactions as input.";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    v5 = v3;
    v6 = 1;
  }

  else
  {
    v7 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v52[0] = @"No past interactions with the specified seed";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v5 = v7;
    v6 = 0;
  }

  v8 = [v5 errorWithDomain:@"com.apple.coreduet.people" code:v6 userInfo:v4];

LABEL_7:
  v9 = *(*(a1 + 32) + 16);
  if (v9 && (v9 <= 0x9C4 ? (v10 = v8 == 0) : (v10 = 0), v10))
  {
    *(*(a1 + 32) + 64) = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
    *(*(a1 + 32) + 72) = malloc_type_calloc(*(*(a1 + 32) + 16), 8uLL, 0x100004000313F17uLL);
    *(*(a1 + 32) + 80) = malloc_type_calloc(*(*(a1 + 32) + 16), 4uLL, 0x100004052888210uLL);
    v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:256];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = *(a1 + 40);
    v13 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v44;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v44 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v11 addObjectsFromArray:*(*(&v43 + 1) + 8 * i)];
        }

        v14 = [v12 countByEnumeratingWithState:&v43 objects:v48 count:16];
      }

      while (v14);
    }

    v17 = [v11 allObjects];
    v18 = [v17 sortedArrayUsingSelector:sel_compare_];
    v19 = *(a1 + 32);
    v20 = *(v19 + 104);
    *(v19 + 104) = v18;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = *(a1 + 40);
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v40;
      do
      {
        v26 = 0;
        v27 = 8 * v24;
        v24 += v23;
        do
        {
          if (*v40 != v25)
          {
            objc_enumerationMutation(v21);
          }

          *(*(*(a1 + 32) + 64) + v27) = [*(a1 + 32) _newIdsForPeople:*(*(&v39 + 1) + 8 * v26++) length:{*(*(a1 + 32) + 72) + v27, v39}];
          v27 += 8;
        }

        while (v23 != v26);
        v23 = [v21 countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v23);
    }

    *(*(a1 + 32) + 32) = [v11 count];
    *(*(a1 + 32) + 88) = malloc_type_calloc(*(*(a1 + 32) + 32), 8uLL, 0x10040436913F5uLL);
    *(*(a1 + 32) + 96) = malloc_type_calloc(*(*(a1 + 32) + 32), 8uLL, 0x100004000313F17uLL);
    v28 = *(a1 + 32);
    if (*(v28 + 32))
    {
      v29 = 0;
      v30 = 1;
      do
      {
        *(*(*(a1 + 32) + 88) + 8 * v29) = malloc_type_calloc(4uLL, 4uLL, 0x100004052888210uLL);
        *(*(*(a1 + 32) + 96) + 8 * v29) = 0;
        v29 = v30;
        v28 = *(a1 + 32);
        v37 = *(v28 + 32) > v30++;
      }

      while (v37);
    }

    if (*(v28 + 16))
    {
      v31 = 0;
      v32 = 0;
      do
      {
        if (*(*(v28 + 72) + 8 * v31))
        {
          v33 = 0;
          do
          {
            v34 = *(*(*(v28 + 64) + 8 * v31) + 4 * v33);
            v35 = *(*(v28 + 96) + 8 * v34);
            v36 = vcnt_s8(v35);
            v36.i16[0] = vaddlv_u8(v36);
            v37 = *&v35 < 4uLL || v36.u32[0] > 1uLL;
            if (!v37)
            {
              *(*(*(a1 + 32) + 88) + 8 * v34) = malloc_type_realloc(*(*(v28 + 88) + 8 * v34), 8 * *&v35, 0x100004052888210uLL);
              v28 = *(a1 + 32);
            }

            *(*(*(v28 + 88) + 8 * v34) + 4 * *&v35) = v32;
            ++*(*(*(a1 + 32) + 96) + 8 * v34);
            ++v33;
            v28 = *(a1 + 32);
          }

          while (*(*(v28 + 72) + 8 * v31) > v33);
        }

        v31 = ++v32;
      }

      while (*(v28 + 16) > v32);
    }

    *(v28 + 9) = 1;
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v38 = *MEMORY[0x1E69E9840];
}

@end
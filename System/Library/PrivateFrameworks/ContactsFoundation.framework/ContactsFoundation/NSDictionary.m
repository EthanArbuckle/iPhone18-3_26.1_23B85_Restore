@interface NSDictionary
@end

@implementation NSDictionary

void __47__NSDictionary_ContactsFoundation___cn_filter___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ((*(*(a1 + 40) + 16))())
  {
    [*(a1 + 32) setObject:v5 forKey:v6];
  }
}

void __44__NSDictionary_ContactsFoundation___cn_map___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v19 = a2;
  v5 = a3;
  v6 = (*(*(a1 + 40) + 16))();
  v7 = [v6 allKeys];
  v8 = [v7 firstObject];

  if (!v8)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    v24 = @"originalKey";
    v25[0] = v19;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v16 = @"nil key during transform";
    goto LABEL_10;
  }

  v9 = [MEMORY[0x1E695DFB0] null];

  if (v8 == v9)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    v22 = @"originalKey";
    v23 = v19;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v16 = @"null key during transform";
    goto LABEL_10;
  }

  v10 = [*(a1 + 32) objectForKeyedSubscript:v8];

  if (v10)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    v20[0] = @"originalKey";
    v20[1] = @"transformedKey";
    v21[0] = v19;
    v21[1] = v8;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
    v16 = @"duplicated key during transform";
LABEL_10:
    v17 = [v13 exceptionWithName:v14 reason:v16 userInfo:{v15, v19}];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v11 = [v6 objectForKeyedSubscript:v8];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v8];

  v12 = *MEMORY[0x1E69E9840];
}

void __48__NSDictionary_ContactsFoundation___cn_mapKeys___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v22 = a2;
  v5 = a3;
  v6 = (*(*(a1 + 40) + 16))();
  if (!v6)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v27 = @"originalKey";
    v28[0] = v22;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v14 = @"nil key during transform";
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [MEMORY[0x1E695DFB0] null];

  if (v7 == v8)
  {
    v11 = MEMORY[0x1E695DF30];
    v12 = *MEMORY[0x1E695D930];
    v25 = @"originalKey";
    v26 = v22;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v14 = @"null key during transform";
LABEL_9:
    v15 = [v11 exceptionWithName:v12 reason:v14 userInfo:{v13, v22}];
    v16 = v15;

    objc_exception_throw(v15);
  }

  v9 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (v9)
  {
    v17 = MEMORY[0x1E695DF30];
    v18 = *MEMORY[0x1E695D930];
    v23[0] = @"originalKey";
    v23[1] = @"transformedKey";
    v24[0] = v22;
    v24[1] = v7;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v20 = [v17 exceptionWithName:v18 reason:@"duplicated key during transform" userInfo:v19];
    v21 = v20;

    objc_exception_throw(v20);
  }

  [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];

  v10 = *MEMORY[0x1E69E9840];
}

void __50__NSDictionary_ContactsFoundation___cn_mapValues___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = a2;
  v9 = v6(v5, a3);
  v8 = off_1EF4401A8(&__block_literal_global_2_2, v9);
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

@end
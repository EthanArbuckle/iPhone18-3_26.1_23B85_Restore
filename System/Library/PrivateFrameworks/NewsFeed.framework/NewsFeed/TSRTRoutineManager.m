@interface TSRTRoutineManager
+ (id)parseLocation:(id)a3;
+ (void)fetchMostFrequentLocationWithCompletion:(id)a3;
@end

@implementation TSRTRoutineManager

+ (id)parseLocation:(id)a3
{
  if (a3)
  {
    v4 = MEMORY[0x1E6985C40];
    v5 = a3;
    v6 = [v4 alloc];
    [v5 latitude];
    v8 = v7;
    [v5 longitude];
    v10 = v9;

    v11 = [v6 initWithLatitude:v8 longitude:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)fetchMostFrequentLocationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E6999090] defaultManager];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__TSRTRoutineManager_fetchMostFrequentLocationWithCompletion___block_invoke;
  v7[3] = &unk_1E84CD170;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  [v5 fetchLocationsOfInterestOfType:0 withHandler:v7];
}

void __62__TSRTRoutineManager_fetchMostFrequentLocationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x1E69B50D8];
    if (os_log_type_enabled(*MEMORY[0x1E69B50D8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v6 localizedDescription];
      *buf = 138412290;
      v23 = v9;
      _os_log_impl(&dword_1D5B42000, v8, OS_LOG_TYPE_DEFAULT, "Error when trying to fetch home locations: %@", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else if ([v5 count])
  {
    v10 = [v5 sortedArrayUsingComparator:&__block_literal_global_0];

    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = [v10 firstObject];
    v14 = [v12 parseLocation:v13];
    (*(v11 + 16))(v11, v14);

    v5 = v10;
  }

  else
  {
    v15 = [MEMORY[0x1E6999090] defaultManager];
    v16 = [MEMORY[0x1E695DF00] distantPast];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __62__TSRTRoutineManager_fetchMostFrequentLocationWithCompletion___block_invoke_2;
    v19[3] = &unk_1E84CD170;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v20 = v17;
    v21 = v18;
    [v15 fetchLocationsOfInterestVisitedSinceDate:v16 withHandler:v19];
  }
}

uint64_t __62__TSRTRoutineManager_fetchMostFrequentLocationWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  v6 = [a3 visits];
  v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  v8 = MEMORY[0x1E696AD98];
  v9 = [v5 visits];

  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  v11 = [v7 compare:v10];

  return v11;
}

void __62__TSRTRoutineManager_fetchMostFrequentLocationWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x1E69B50D8];
    if (os_log_type_enabled(*MEMORY[0x1E69B50D8], OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = [v6 localizedDescription];
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_1D5B42000, v8, OS_LOG_TYPE_DEFAULT, "Error when trying to fetch frequent locations: %@", &v16, 0xCu);
    }
  }

  else
  {
    if ([v5 count])
    {
      v10 = [v5 sortedArrayUsingComparator:&__block_literal_global_7];

      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = [v10 firstObject];
      v14 = [v12 parseLocation:v13];
      (*(v11 + 16))(v11, v14);

      v5 = v10;
      goto LABEL_7;
    }

    v15 = *MEMORY[0x1E69B50D8];
    if (os_log_type_enabled(*MEMORY[0x1E69B50D8], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_1D5B42000, v15, OS_LOG_TYPE_DEFAULT, "No frequent locations found", &v16, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
LABEL_7:
}

uint64_t __62__TSRTRoutineManager_fetchMostFrequentLocationWithCompletion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a2;
  v6 = [a3 visits];
  v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
  v8 = MEMORY[0x1E696AD98];
  v9 = [v5 visits];

  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "count")}];
  v11 = [v7 compare:v10];

  return v11;
}

@end
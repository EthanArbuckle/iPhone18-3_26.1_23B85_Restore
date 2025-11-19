@interface CalGeocoder
+ (void)geocodeLocationString:(id)a3 withCompletionBlock:(id)a4;
- (CalGeocoder)initWithLocationString:(id)a3 andCompletionBlock:(id)a4;
- (void)_callCompletionBlockWithResult:(id)a3 error:(id)a4;
- (void)cancel;
- (void)dealloc;
- (void)startGeocoding;
@end

@implementation CalGeocoder

- (CalGeocoder)initWithLocationString:(id)a3 andCompletionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CalGeocoder;
  v8 = [(CalGeocoder *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CalGeocoder *)v8 setLocationString:v6];
    [(CalGeocoder *)v9 setCompletionBlock:v7];
  }

  return v9;
}

- (void)dealloc
{
  [(CalGeocoder *)self cancel];
  v3.receiver = self;
  v3.super_class = CalGeocoder;
  [(CalGeocoder *)&v3 dealloc];
}

- (void)startGeocoding
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "nil or empty location string given: [%@].  Will not geocode.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __29__CalGeocoder_startGeocoding__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 domain];
    v9 = EKWeakLinkStringConstant("MKErrorDomain", 0xFuLL);
    if ([v8 isEqualToString:v9])
    {
      v10 = [v7 code];

      if (v10 == 4)
      {

        v11 = 0;
        v7 = 0;
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  v12 = [v5 mapItems];
  v13 = [v12 count];
  if (v13 == 1)
  {
    v11 = [v12 firstObject];
    v14 = +[CalFoundationLogSubsystem defaultCategory];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __29__CalGeocoder_startGeocoding__block_invoke_cold_1(a1, v11, v14);
    }
  }

  else
  {
    if (v13)
    {
      v14 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __29__CalGeocoder_startGeocoding__block_invoke_cold_3(v12, v14);
      }
    }

    else
    {
      v14 = +[CalFoundationLogSubsystem defaultCategory];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __29__CalGeocoder_startGeocoding__block_invoke_cold_2(a1, v14);
      }
    }

    v11 = 0;
  }

LABEL_16:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _callCompletionBlockWithResult:v11 error:v7];
}

- (void)cancel
{
  v3 = [(CalGeocoder *)self search];
  [v3 cancel];

  [(CalGeocoder *)self setSearch:0];
}

+ (void)geocodeLocationString:(id)a3 withCompletionBlock:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x1E695DF70];
  v7 = a3;
  v8 = objc_alloc_init(v6);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __57__CalGeocoder_geocodeLocationString_withCompletionBlock___block_invoke;
  v17 = &unk_1E7EC7150;
  v18 = v8;
  v19 = v5;
  v9 = v8;
  v10 = v5;
  v11 = _Block_copy(&v14);
  v12 = objc_alloc(objc_opt_class());
  v13 = [v12 initWithLocationString:v7 andCompletionBlock:{v11, v14, v15, v16, v17}];

  [v9 addObject:v13];
  [v13 startGeocoding];
}

uint64_t __57__CalGeocoder_geocodeLocationString_withCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 removeAllObjects];
}

- (void)_callCompletionBlockWithResult:(id)a3 error:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(CalGeocoder *)self completionBlock];

  if (v7)
  {
    v8 = [(CalGeocoder *)self completionBlock];
    (v8)[2](v8, v9, v6);

    [(CalGeocoder *)self setCompletionBlock:0];
  }
}

void __29__CalGeocoder_startGeocoding__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_1B990D000, log, OS_LOG_TYPE_DEBUG, "Found one result for location string: [%@].  Result: [%@]", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void __29__CalGeocoder_startGeocoding__block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_debug_impl(&dword_1B990D000, a2, OS_LOG_TYPE_DEBUG, "No geocoding results found for location string: [%@]", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __29__CalGeocoder_startGeocoding__block_invoke_cold_3(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 134218242;
  v6 = [a1 count];
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Expected 0 or 1 geocoding results.  Got %lu.  Map items: [%@]", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end
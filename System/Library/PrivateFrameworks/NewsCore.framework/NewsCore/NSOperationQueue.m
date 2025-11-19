@interface NSOperationQueue
@end

@implementation NSOperationQueue

uint64_t __57__NSOperationQueue_FCAdditions__fc_sharedConcurrentQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = _MergedGlobals_213;
  _MergedGlobals_213 = v0;

  v2 = _MergedGlobals_213;

  return [v2 setName:@"com.apple.newscore.concurrentQ"];
}

uint64_t __53__NSOperationQueue_FCAdditions__fc_sharedSerialQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = qword_1EDB27A00;
  qword_1EDB27A00 = v0;

  [qword_1EDB27A00 setQualityOfService:9];
  [qword_1EDB27A00 setMaxConcurrentOperationCount:1];
  v2 = qword_1EDB27A00;

  return [v2 setName:@"com.apple.newscore.serialQ"];
}

uint64_t __48__NSOperationQueue_FCAdditions__fc_prewarmQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = qword_1EDB27A10;
  qword_1EDB27A10 = v0;

  [qword_1EDB27A10 setMaxConcurrentOperationCount:1];
  v2 = qword_1EDB27A10;

  return [v2 setName:@"com.apple.newscore.prewarmQ"];
}

uint64_t __68__NSOperationQueue_FCAdditions__fc_throttledCKRequestOperationQueue__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v1 = qword_1EDB27A20;
  qword_1EDB27A20 = v0;

  [qword_1EDB27A20 setMaxConcurrentOperationCount:4];
  v2 = qword_1EDB27A20;

  return [v2 setName:@"com.apple.news.throttledCKRequestQueue"];
}

void __68__NSOperationQueue_FCAdditions__fc_addMainThreadOperationWithBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__NSOperationQueue_FCAdditions__fc_addMainThreadOperationWithBlock___block_invoke_2;
  v5[3] = &unk_1E7C39090;
  v6 = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __68__NSOperationQueue_FCAdditions__fc_addMainThreadOperationWithBlock___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

@end
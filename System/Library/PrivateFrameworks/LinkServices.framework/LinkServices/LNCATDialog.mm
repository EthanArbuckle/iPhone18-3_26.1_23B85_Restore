@interface LNCATDialog
@end

@implementation LNCATDialog

void __58__LNCATDialog_CATSupport__getResultWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = a2;
  v7 = [v5 templateDirectoryURL];
  [v7 stopAccessingSecurityScopedResource];

  (*(*(a1 + 40) + 16))();
}

void __58__LNCATDialog_CATSupport__getResultWithCompletionHandler___block_invoke(int a1, id a2, void *a3, void *a4, void *a5)
{
  *a4 = a2;
  v7 = a3;
  v10 = [v7 valueType];
  v8 = [v10 cat_value:v7];

  v9 = v8;
  *a5 = v8;
}

@end
@interface NSDictionary
@end

@implementation NSDictionary

void __77__NSDictionary_NURenderPipelineFunction__nu_evaluateWithPipelineState_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 48) + 8);
  obj = 0;
  v10 = [a3 nu_evaluateWithPipelineState:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  if (v10)
  {
    [*(a1 + 40) setObject:v10 forKey:v7];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 0;
  }
}

@end
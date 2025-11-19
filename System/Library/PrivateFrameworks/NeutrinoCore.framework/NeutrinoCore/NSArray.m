@interface NSArray
@end

@implementation NSArray

void __72__NSArray_NURenderPipelineFunction__nu_evaluateWithPipelineState_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 48) + 8);
  obj = 0;
  v8 = [a2 nu_evaluateWithPipelineState:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    [*(a1 + 40) addObject:v8];
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    *a4 = 0;
  }
}

@end
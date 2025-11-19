@interface CNSamplingObservable
@end

@implementation CNSamplingObservable

uint64_t __35___CNSamplingObservable_subscribe___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) cancel];
  [*(a1 + 40) sendSampleToObserver:*(a1 + 48)];
  v2 = *(a1 + 48);

  return [v2 observerDidComplete];
}

void __35___CNSamplingObservable_subscribe___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 cancel];
  [*(a1 + 40) observerDidFailWithError:v4];
}

uint64_t __35___CNSamplingObservable_subscribe___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 40);

  return [v2 cancel];
}

@end
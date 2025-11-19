@interface EFSamplingObservable
@end

@implementation EFSamplingObservable

void __35___EFSamplingObservable_subscribe___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [*(a1 + 32) lock];
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  [*(a1 + 32) unlock];
}

void __35___EFSamplingObservable_subscribe___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) lock];
  v4 = *(*(*(a1 + 48) + 8) + 40);
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  [*(a1 + 32) unlock];
  if (v4)
  {
    [*(a1 + 40) observerDidReceiveResult:v4];
  }
}

uint64_t __35___EFSamplingObservable_subscribe___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) lock];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 unlock];
}

uint64_t __35___EFSamplingObservable_subscribe___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) cancel];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) observerDidComplete];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

void __35___EFSamplingObservable_subscribe___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) cancel];
  [*(a1 + 40) observerDidFailWithError:v3];
  (*(*(a1 + 48) + 16))();
}

uint64_t __35___EFSamplingObservable_subscribe___block_invoke_8(uint64_t a1)
{
  [*(a1 + 32) cancel];
  [*(a1 + 40) cancel];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

@end
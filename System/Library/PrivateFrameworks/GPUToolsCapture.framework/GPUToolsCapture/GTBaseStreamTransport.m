@interface GTBaseStreamTransport
@end

@implementation GTBaseStreamTransport

void __43__GTBaseStreamTransport__relayBuffer_size___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _relayBufferInner:*(a1 + 48) size:*(a1 + 56)];
  objc_autoreleasePoolPop(v2);
  if (*(a1 + 64) == 1)
  {
    v3 = *(*(a1 + 32) + 24);

    dispatch_resume(v3);
  }
}

size_t __48__GTBaseStreamTransport__relayBufferInner_size___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 224);
  if (*(v2 + 32) >= *(a1 + 40))
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = *(v2 + 32);
  }

  memcpy((*(v2 + 40) + v2), *(a1 + 48), v3);
  *(*(*(a1 + 32) + 224) + 40) += v3;
  *(*(*(a1 + 32) + 224) + 32) -= v3;
  return v3;
}

@end
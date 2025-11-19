@interface MRRequestPlaybackQueue
@end

@implementation MRRequestPlaybackQueue

void ___MRRequestPlaybackQueue_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    v6 = [*(a1 + 32) subscriptionController];
    [v6 subscribeToPlaybackQueue:v7 forRequest:*(a1 + 40)];
  }

  (*(*(a1 + 48) + 16))();
}

@end
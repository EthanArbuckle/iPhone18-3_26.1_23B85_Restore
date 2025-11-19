@interface MRCreatePlaybackQueueForOffset
@end

@implementation MRCreatePlaybackQueueForOffset

void ___onQueue_MRCreatePlaybackQueueForOffset_block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) block];
  v2 = v6[2](v6, *(a1 + 48));
  if (v2)
  {
    v3 = _onClientQueue_MRCreatePlaybackQueueForOffset(*(a1 + 56), *(a1 + 64), v6);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

@end
@interface MRCreatePlaybackQueueForRequest
@end

@implementation MRCreatePlaybackQueueForRequest

void ___onQueue_MRCreatePlaybackQueueForRequest_block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) block];
  v2 = v6[2](v6, *(a1 + 40));
  v3 = [v2 copy];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

@end
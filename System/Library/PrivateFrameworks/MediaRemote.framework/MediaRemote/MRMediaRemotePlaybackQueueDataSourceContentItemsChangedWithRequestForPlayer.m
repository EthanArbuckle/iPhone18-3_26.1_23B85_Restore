@interface MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer
@end

@implementation MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer

void ___onQueue_MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 contentItems];
  if (v3)
  {
    v5 = v3;
    v4 = [*(a1 + 32) playerPath];
    _onQueue_MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer(v5, v4);

    v3 = v5;
  }
}

@end
@interface MPMusicPlayerStoreQueueDescriptor
@end

@implementation MPMusicPlayerStoreQueueDescriptor

void __80__MPMusicPlayerStoreQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __80__MPMusicPlayerStoreQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke_2;
  v3[3] = &unk_1E8238988;
  v4 = *(a1 + 32);
  [a2 setUniversalStoreIdentifiersWithBlock:v3];
}

void __80__MPMusicPlayerStoreQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setAdamID:{objc_msgSend(v2, "longLongValue")}];
}

@end
@interface MPMusicPlayerMediaItemQueueDescriptor
@end

@implementation MPMusicPlayerMediaItemQueueDescriptor

uint64_t __84__MPMusicPlayerMediaItemQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __84__MPMusicPlayerMediaItemQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke_2;
  v4[3] = &__block_descriptor_40_e44_v16__0___MPMutableLocalLibraryIdentifiers__8l;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [a2 setLibraryIdentifiersWithDatabaseID:v2 block:v4];
}

@end
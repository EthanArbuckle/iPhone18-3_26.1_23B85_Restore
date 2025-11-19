@interface MPMusicPlayerRadioStationQueueDescriptor
@end

@implementation MPMusicPlayerRadioStationQueueDescriptor

uint64_t __87__MPMusicPlayerRadioStationQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __87__MPMusicPlayerRadioStationQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke_2;
  v3[3] = &unk_1E8237EE8;
  v3[4] = *(a1 + 32);
  return [a2 setRadioIdentifiersWithBlock:v3];
}

void __87__MPMusicPlayerRadioStationQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 radioStation];
  v4 = [v5 localizedName];
  [v3 setName:v4];
}

void __87__MPMusicPlayerRadioStationQueueDescriptor_MPCModelPlaybackAdditions__playbackContexts__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v2 radioStation];
  v4 = [v5 stationStringID];
  [v3 setStationStringID:v4];
}

@end
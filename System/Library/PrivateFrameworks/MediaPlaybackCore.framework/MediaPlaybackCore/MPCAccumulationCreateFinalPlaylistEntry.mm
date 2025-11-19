@interface MPCAccumulationCreateFinalPlaylistEntry
@end

@implementation MPCAccumulationCreateFinalPlaylistEntry

void ___MPCAccumulationCreateFinalPlaylistEntry_block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [MEMORY[0x1E6970670] genericObjectWithModelObject:*(a1 + 32)];
  v4 = [v3 type];
  switch(v4)
  {
    case 9:
      v5 = [v3 movie];
      [v7 setMovie:v5];
      break;
    case 6:
      v5 = [v3 tvEpisode];
      [v7 setTvEpisode:v5];
      break;
    case 1:
      v5 = [v3 song];
      [v7 setSong:v5];
      break;
    default:
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MPModelGenericObject * _Nullable _MPCAccumulationCreateFinalPlaylistEntry(MPModelGenericObject * _Nullable __strong, MPModelGenericObject * _Nullable __strong, MPModelGenericObject * _Nullable __strong)_block_invoke_2"}];
      [v5 handleFailureInFunction:v6 file:@"MPCModelStorePlaybackItemsRequestAccumulation.m" lineNumber:249 description:{@"finalInnerObject resolved to unexpected type: %@", *(a1 + 32)}];

      break;
  }
}

@end
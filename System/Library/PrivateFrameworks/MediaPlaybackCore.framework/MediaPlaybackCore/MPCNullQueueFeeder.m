@interface MPCNullQueueFeeder
@end

@implementation MPCNullQueueFeeder

__CFString *__48___MPCNullQueueFeeder_reloadSection_completion___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"_MPCNullPlaybackContext.m" lineNumber:143 description:@"No item lookups allowed for _MPCNullQueueFeeder."];

  return &stru_1F454A698;
}

@end
@interface MRResolveAndRequestPlaybackQueue
@end

@implementation MRResolveAndRequestPlaybackQueue

void ___MRResolveAndRequestPlaybackQueue_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isResolved])
  {
    v7 = +[MRNowPlayingOriginClientManager sharedManager];
    Error = [v7 playerClientRequestsForPlayerPath:v5];

    v9 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = ___MRResolveAndRequestPlaybackQueue_block_invoke_2;
    v10[3] = &unk_1E769FD50;
    v11 = v5;
    v12 = *(a1 + 40);
    _MRRequestPlaybackQueue(v9, Error, v10);
  }

  else
  {
    if (v6)
    {
      Error = 0;
    }

    else
    {
      Error = MRMediaRemoteNowPlayingPlayerPathCreateError(v5);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void ___MRResolveAndRequestPlaybackQueue_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v7 setResolvedPlayerPath:v5];
  (*(*(a1 + 40) + 16))();
}

@end
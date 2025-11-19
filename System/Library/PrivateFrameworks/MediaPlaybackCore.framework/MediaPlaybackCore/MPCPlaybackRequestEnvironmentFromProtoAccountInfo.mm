@interface MPCPlaybackRequestEnvironmentFromProtoAccountInfo
@end

@implementation MPCPlaybackRequestEnvironmentFromProtoAccountInfo

void ____MPCPlaybackRequestEnvironmentFromProtoAccountInfo_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (*(a1 + 64))
    {
      v6 = MEMORY[0x1E695E118];
    }

    else
    {
      v7 = *(a1 + 32);
      if (v7 && (*(v7 + 124) & 8) != 0)
      {
        v6 = [MEMORY[0x1E696AD98] numberWithBool:*(v7 + 120)];
      }

      else
      {
        v6 = 0;
      }
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      if (!*(a1 + 40) || (v8 = [MPCPlaybackRequestEnvironment alloc], [*(a1 + 40) userIdentity], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[MPCPlaybackRequestEnvironment initWithUserIdentity:](v8, "initWithUserIdentity:", v9), v11 = *(*(a1 + 56) + 8), v12 = *(v11 + 40), *(v11 + 40) = v10, v12, v9, !*(*(*(a1 + 56) + 8) + 40)))
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __MPCPlaybackRequestEnvironmentFromProtoAccountInfo(_MPCProtoDelegateInfo *__strong, MPRemotePlaybackQueuePlaybackContextOptions, void (^__strong)(MPCPlaybackRequestEnvironment * _Nullable __strong, NSNumber * _Nullable __strong, NSError * _Nullable __strong))_block_invoke"}];
        [v13 handleFailureInFunction:v14 file:@"MPRemotePlaybackQueue+MPCAdditions.m" lineNumber:349 description:{@"Failed to produce playback request environment for accountInfo: %@, desiredAccount: %@", *(a1 + 32), *(a1 + 40)}];
      }
    }

    (*(*(a1 + 48) + 16))();
  }
}

@end
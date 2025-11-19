@interface MPRemotePlaybackQueue
@end

@implementation MPRemotePlaybackQueue

void __87__MPRemotePlaybackQueue_MPCAdditions__getRemoteRepresentationForPlayerPath_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (v8)
  {
    [v8 getRemotePlaybackQueueRepresentationWithCompletion:*(a1 + 40)];
  }

  else if (v6)
  {
    if (*(a1 + 32))
    {
      (*(v6 + 16))(*(a1 + 40), 0);
    }

    else
    {
      v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"MPCError" code:0 userInfo:0];
      (*(v6 + 16))(v6, 0, v7);
    }
  }
}

@end
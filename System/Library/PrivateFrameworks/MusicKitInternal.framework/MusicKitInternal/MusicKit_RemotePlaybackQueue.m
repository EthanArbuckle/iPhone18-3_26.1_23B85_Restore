@interface MusicKit_RemotePlaybackQueue
+ (id)extractDialogFromCommandResult:(id)a3 error:(id *)a4;
- (MusicKit_RemotePlaybackQueue)initWithReplaceQueueIntent:(int64_t)a3;
- (id)mrPlayerPathFromPlaybackPath:(id)a3 error:(id *)a4;
- (int)mrReplaceIntentFromMusicKitReplaceQueueIntent:(int64_t)a3;
@end

@implementation MusicKit_RemotePlaybackQueue

- (MusicKit_RemotePlaybackQueue)initWithReplaceQueueIntent:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = MusicKit_RemotePlaybackQueue;
  result = [(MusicKit_RemotePlaybackQueue *)&v5 init];
  if (result)
  {
    result->_replaceQueueIntent = a3;
  }

  return result;
}

- (int)mrReplaceIntentFromMusicKitReplaceQueueIntent:(int64_t)a3
{
  if ((a3 - 1) < 3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (id)mrPlayerPathFromPlaybackPath:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 route];
  v7 = [objc_msgSend(v6 "endpoint")];

  if (v7)
  {
    v8 = MEMORY[0x1E69775E0];
    v9 = [v5 representedBundleID];
    v10 = [v5 playerID];
    v11 = [v8 playerPathWithCustomOrigin:v7 bundleID:v9 playerID:v10];

    v12 = [v11 musicKit_playerPath_mrPlayerPath];
  }

  else if (a4)
  {
    [MEMORY[0x1E696ABC0] musicKit_remotePlaybackEndpointDoesNotExist];
    *a4 = v12 = 0;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)extractDialogFromCommandResult:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 resultStatuses];
  v7 = [v6 msv_firstWhere:&__block_literal_global_4];

  if (v7)
  {
    v8 = [v7 dialog];
  }

  else
  {
    v9 = [v5 resultStatuses];
    v10 = [v9 msv_firstWhere:&__block_literal_global_10];

    if (a4 && v10)
    {
      *a4 = [v10 commandError];
    }

    v8 = 0;
  }

  return v8;
}

@end
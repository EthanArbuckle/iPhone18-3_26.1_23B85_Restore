@interface MusicKit_RemotePlaybackQueue
+ (id)extractDialogFromCommandResult:(id)result error:(id *)error;
- (MusicKit_RemotePlaybackQueue)initWithReplaceQueueIntent:(int64_t)intent;
- (id)mrPlayerPathFromPlaybackPath:(id)path error:(id *)error;
- (int)mrReplaceIntentFromMusicKitReplaceQueueIntent:(int64_t)intent;
@end

@implementation MusicKit_RemotePlaybackQueue

- (MusicKit_RemotePlaybackQueue)initWithReplaceQueueIntent:(int64_t)intent
{
  v5.receiver = self;
  v5.super_class = MusicKit_RemotePlaybackQueue;
  result = [(MusicKit_RemotePlaybackQueue *)&v5 init];
  if (result)
  {
    result->_replaceQueueIntent = intent;
  }

  return result;
}

- (int)mrReplaceIntentFromMusicKitReplaceQueueIntent:(int64_t)intent
{
  if ((intent - 1) < 3)
  {
    return intent;
  }

  else
  {
    return 0;
  }
}

- (id)mrPlayerPathFromPlaybackPath:(id)path error:(id *)error
{
  pathCopy = path;
  route = [pathCopy route];
  v7 = [objc_msgSend(route "endpoint")];

  if (v7)
  {
    v8 = MEMORY[0x1E69775E0];
    representedBundleID = [pathCopy representedBundleID];
    playerID = [pathCopy playerID];
    v11 = [v8 playerPathWithCustomOrigin:v7 bundleID:representedBundleID playerID:playerID];

    musicKit_playerPath_mrPlayerPath = [v11 musicKit_playerPath_mrPlayerPath];
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] musicKit_remotePlaybackEndpointDoesNotExist];
    *error = musicKit_playerPath_mrPlayerPath = 0;
  }

  else
  {
    musicKit_playerPath_mrPlayerPath = 0;
  }

  return musicKit_playerPath_mrPlayerPath;
}

+ (id)extractDialogFromCommandResult:(id)result error:(id *)error
{
  resultCopy = result;
  resultStatuses = [resultCopy resultStatuses];
  v7 = [resultStatuses msv_firstWhere:&__block_literal_global_4];

  if (v7)
  {
    dialog = [v7 dialog];
  }

  else
  {
    resultStatuses2 = [resultCopy resultStatuses];
    v10 = [resultStatuses2 msv_firstWhere:&__block_literal_global_10];

    if (error && v10)
    {
      *error = [v10 commandError];
    }

    dialog = 0;
  }

  return dialog;
}

@end
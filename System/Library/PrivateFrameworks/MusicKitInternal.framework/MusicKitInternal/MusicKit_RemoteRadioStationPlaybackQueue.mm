@interface MusicKit_RemoteRadioStationPlaybackQueue
- (MusicKit_RemoteRadioStationPlaybackQueue)initWithItem:(id)item replaceQueueIntent:(int64_t)intent;
- (void)setQueueWithPath:(id)path sessionID:(id)d completionHandler:(id)handler;
@end

@implementation MusicKit_RemoteRadioStationPlaybackQueue

- (MusicKit_RemoteRadioStationPlaybackQueue)initWithItem:(id)item replaceQueueIntent:(int64_t)intent
{
  itemCopy = item;
  v11.receiver = self;
  v11.super_class = MusicKit_RemoteRadioStationPlaybackQueue;
  v7 = [(MusicKit_RemotePlaybackQueue *)&v11 initWithReplaceQueueIntent:intent];
  if (v7)
  {
    _underlyingModelObject = [itemCopy _underlyingModelObject];
    underlyingStation = v7->_underlyingStation;
    v7->_underlyingStation = _underlyingModelObject;
  }

  return v7;
}

- (void)setQueueWithPath:(id)path sessionID:(id)d completionHandler:(id)handler
{
  v37[3] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  handlerCopy = handler;
  identifiers = [(MPModelRadioStation *)self->_underlyingStation identifiers];
  radio = [identifiers radio];
  stationStringID = [radio stationStringID];

  v13 = *MEMORY[0x1E695E480];
  v14 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetRadioStationIDType();
  MRSystemAppPlaybackQueueSetRadioStationStringIdentifier();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v15 = getMPRemotePlaybackQueueClass_softClass;
  v35 = getMPRemotePlaybackQueueClass_softClass;
  if (!getMPRemotePlaybackQueueClass_softClass)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __getMPRemotePlaybackQueueClass_block_invoke;
    v31[3] = &unk_1E84C3838;
    v31[4] = &v32;
    __getMPRemotePlaybackQueueClass_block_invoke(v31);
    v15 = v33[3];
  }

  v16 = v15;
  _Block_object_dispose(&v32, 8);
  v17 = [v15 queueWithMediaRemotePlaybackQueue:v14];
  v18 = v17;
  [v17 _mediaRemotePlaybackQueue];
  [(MusicKit_RemotePlaybackQueue *)self mrReplaceIntentFromMusicKitReplaceQueueIntent:[(MusicKit_RemotePlaybackQueue *)self replaceQueueIntent]];
  MRSystemAppPlaybackQueueSetReplaceIntent();
  MRSystemAppPlaybackQueueSetIsRequestingImmediatePlayback();
  v19 = dCopy;
  v20 = v19;
  if (!v19)
  {
    v21 = +[MusicKit_PlayerPathSessionManager sharedSessionManager];
    v20 = [v21 sessionIDForPlayerPath:pathCopy];
  }

  ExternalRepresentation = MRSystemAppPlaybackQueueCreateExternalRepresentation();
  v23 = *MEMORY[0x1E69B10E8];
  v36[0] = *MEMORY[0x1E69B1268];
  v36[1] = v23;
  v37[0] = ExternalRepresentation;
  v37[1] = v20;
  v36[2] = *MEMORY[0x1E69B1090];
  v37[2] = MEMORY[0x1E695E118];
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:3];
  v30 = 0;
  v25 = [(MusicKit_RemotePlaybackQueue *)self mrPlayerPathFromPlaybackPath:pathCopy error:&v30];
  v26 = v30;
  if (v26)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0, v26);
    }
  }

  else
  {
    v29 = handlerCopy;
    MRMediaRemoteSendCommandToPlayerWithResult();
  }

  v27 = *MEMORY[0x1E69E9840];
}

@end
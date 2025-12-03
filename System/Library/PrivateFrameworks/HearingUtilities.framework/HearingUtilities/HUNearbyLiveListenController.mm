@interface HUNearbyLiveListenController
+ (HUNearbyLiveListenController)sharedInstance;
- (HUNearbyLiveListenController)init;
- (NSString)transcription;
- (void)registerUpdateBlock:(id)block withListener:(id)listener;
- (void)removeListener:(id)listener;
- (void)setTranscription:(id)transcription;
- (void)startLiveListen;
- (void)startLiveListenRewind;
- (void)stopLiveListen;
- (void)stopLiveListenRewind;
@end

@implementation HUNearbyLiveListenController

- (NSString)transcription
{
  [(NSLock *)self->_transcriptionLock lock];
  v3 = [(NSString *)self->_transcription copy];
  [(NSLock *)self->_transcriptionLock unlock];

  return v3;
}

+ (HUNearbyLiveListenController)sharedInstance
{
  if (sharedInstance_onceToken_6 != -1)
  {
    +[HUNearbyLiveListenController sharedInstance];
  }

  v3 = sharedInstance_obj;

  return v3;
}

void __46__HUNearbyLiveListenController_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_obj;
  sharedInstance_obj = v0;

  v2 = [HUNearbyLiveListenControlleriOS alloc];
  v3 = [(HUNearbyLiveListenControlleriOS *)v2 initWithController:sharedInstance_obj];
  [sharedInstance_obj setDeviceImplementation:v3];
}

- (HUNearbyLiveListenController)init
{
  v11.receiver = self;
  v11.super_class = HUNearbyLiveListenController;
  v2 = [(HUNearbyLiveListenController *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_state = 0;
    array = [MEMORY[0x1E695DF70] array];
    updateBlocks = v3->_updateBlocks;
    v3->_updateBlocks = array;

    v6 = objc_opt_new();
    updateLock = v3->_updateLock;
    v3->_updateLock = v6;

    v8 = objc_opt_new();
    transcriptionLock = v3->_transcriptionLock;
    v3->_transcriptionLock = v8;
  }

  return v3;
}

- (void)setTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  [(NSLock *)self->_transcriptionLock lock];
  transcription = self->_transcription;
  self->_transcription = transcriptionCopy;
  v6 = transcriptionCopy;

  [(NSLock *)self->_transcriptionLock unlock];
}

- (void)registerUpdateBlock:(id)block withListener:(id)listener
{
  aBlock = block;
  listenerCopy = listener;
  if (aBlock)
  {
    v7 = [HUIdentifierAndBlockPair alloc];
    v8 = _Block_copy(aBlock);
    v9 = [(HUIdentifierAndBlockPair *)v7 initWithIdentifier:listenerCopy andBlock:v8];

    updateLock = [(HUNearbyLiveListenController *)self updateLock];
    [updateLock lock];

    updateBlocks = [(HUNearbyLiveListenController *)self updateBlocks];
    v12 = [updateBlocks count];

    updateBlocks2 = [(HUNearbyLiveListenController *)self updateBlocks];
    [updateBlocks2 addObject:v9];

    updateLock2 = [(HUNearbyLiveListenController *)self updateLock];
    [updateLock2 unlock];

    v15 = [HUListenerHelper listenerHelperWithListener:listenerCopy andDelegate:self];
    if (!v12)
    {
      deviceImplementation = [(HUNearbyLiveListenController *)self deviceImplementation];
      [deviceImplementation startObserving];
    }

    state = [(HUNearbyLiveListenController *)self state];
    [(HUNearbyLiveListenController *)self audioLevel];
    v19 = v18;
    isPlayingBack = [(HUNearbyLiveListenController *)self isPlayingBack];
    transcription = [(HUNearbyLiveListenController *)self transcription];
    (*(aBlock + 2))(aBlock, state, isPlayingBack, transcription, v19);
  }

  else
  {
    [(HUNearbyLiveListenController *)self removeListener:listenerCopy];
  }
}

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  updateLock = [(HUNearbyLiveListenController *)self updateLock];
  [updateLock lock];

  updateBlocks = [(HUNearbyLiveListenController *)self updateBlocks];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__HUNearbyLiveListenController_removeListener___block_invoke;
  v14[3] = &unk_1E85CC0C8;
  v15 = listenerCopy;
  v7 = listenerCopy;
  v8 = [updateBlocks indexesOfObjectsPassingTest:v14];

  if (![v8 count])
  {
    updateLock2 = [(HUNearbyLiveListenController *)self updateLock];
    [updateLock2 unlock];
    goto LABEL_5;
  }

  updateBlocks2 = [(HUNearbyLiveListenController *)self updateBlocks];
  [updateBlocks2 removeObjectsAtIndexes:v8];

  updateBlocks3 = [(HUNearbyLiveListenController *)self updateBlocks];
  v11 = [updateBlocks3 count];

  updateLock3 = [(HUNearbyLiveListenController *)self updateLock];
  [updateLock3 unlock];

  if (!v11)
  {
    updateLock2 = [(HUNearbyLiveListenController *)self deviceImplementation];
    [updateLock2 stopObserving];
LABEL_5:
  }
}

BOOL __47__HUNearbyLiveListenController_removeListener___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)startLiveListen
{
  deviceImplementation = [(HUNearbyLiveListenController *)self deviceImplementation];
  [deviceImplementation startLiveListen];
}

- (void)stopLiveListen
{
  deviceImplementation = [(HUNearbyLiveListenController *)self deviceImplementation];
  [deviceImplementation stopLiveListen];
}

- (void)startLiveListenRewind
{
  if (![(HUNearbyLiveListenController *)self isPlayingBack])
  {
    deviceImplementation = [(HUNearbyLiveListenController *)self deviceImplementation];
    [deviceImplementation startLiveListenRewind];
  }
}

- (void)stopLiveListenRewind
{
  if ([(HUNearbyLiveListenController *)self isPlayingBack])
  {
    deviceImplementation = [(HUNearbyLiveListenController *)self deviceImplementation];
    [deviceImplementation stopLiveListenRewind];
  }
}

@end
@interface HUNearbyLiveListenController
+ (HUNearbyLiveListenController)sharedInstance;
- (HUNearbyLiveListenController)init;
- (NSString)transcription;
- (void)registerUpdateBlock:(id)a3 withListener:(id)a4;
- (void)removeListener:(id)a3;
- (void)setTranscription:(id)a3;
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
    v4 = [MEMORY[0x1E695DF70] array];
    updateBlocks = v3->_updateBlocks;
    v3->_updateBlocks = v4;

    v6 = objc_opt_new();
    updateLock = v3->_updateLock;
    v3->_updateLock = v6;

    v8 = objc_opt_new();
    transcriptionLock = v3->_transcriptionLock;
    v3->_transcriptionLock = v8;
  }

  return v3;
}

- (void)setTranscription:(id)a3
{
  v4 = a3;
  [(NSLock *)self->_transcriptionLock lock];
  transcription = self->_transcription;
  self->_transcription = v4;
  v6 = v4;

  [(NSLock *)self->_transcriptionLock unlock];
}

- (void)registerUpdateBlock:(id)a3 withListener:(id)a4
{
  aBlock = a3;
  v6 = a4;
  if (aBlock)
  {
    v7 = [HUIdentifierAndBlockPair alloc];
    v8 = _Block_copy(aBlock);
    v9 = [(HUIdentifierAndBlockPair *)v7 initWithIdentifier:v6 andBlock:v8];

    v10 = [(HUNearbyLiveListenController *)self updateLock];
    [v10 lock];

    v11 = [(HUNearbyLiveListenController *)self updateBlocks];
    v12 = [v11 count];

    v13 = [(HUNearbyLiveListenController *)self updateBlocks];
    [v13 addObject:v9];

    v14 = [(HUNearbyLiveListenController *)self updateLock];
    [v14 unlock];

    v15 = [HUListenerHelper listenerHelperWithListener:v6 andDelegate:self];
    if (!v12)
    {
      v16 = [(HUNearbyLiveListenController *)self deviceImplementation];
      [v16 startObserving];
    }

    v17 = [(HUNearbyLiveListenController *)self state];
    [(HUNearbyLiveListenController *)self audioLevel];
    v19 = v18;
    v20 = [(HUNearbyLiveListenController *)self isPlayingBack];
    v21 = [(HUNearbyLiveListenController *)self transcription];
    (*(aBlock + 2))(aBlock, v17, v20, v21, v19);
  }

  else
  {
    [(HUNearbyLiveListenController *)self removeListener:v6];
  }
}

- (void)removeListener:(id)a3
{
  v4 = a3;
  v5 = [(HUNearbyLiveListenController *)self updateLock];
  [v5 lock];

  v6 = [(HUNearbyLiveListenController *)self updateBlocks];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __47__HUNearbyLiveListenController_removeListener___block_invoke;
  v14[3] = &unk_1E85CC0C8;
  v15 = v4;
  v7 = v4;
  v8 = [v6 indexesOfObjectsPassingTest:v14];

  if (![v8 count])
  {
    v13 = [(HUNearbyLiveListenController *)self updateLock];
    [v13 unlock];
    goto LABEL_5;
  }

  v9 = [(HUNearbyLiveListenController *)self updateBlocks];
  [v9 removeObjectsAtIndexes:v8];

  v10 = [(HUNearbyLiveListenController *)self updateBlocks];
  v11 = [v10 count];

  v12 = [(HUNearbyLiveListenController *)self updateLock];
  [v12 unlock];

  if (!v11)
  {
    v13 = [(HUNearbyLiveListenController *)self deviceImplementation];
    [v13 stopObserving];
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
  v2 = [(HUNearbyLiveListenController *)self deviceImplementation];
  [v2 startLiveListen];
}

- (void)stopLiveListen
{
  v2 = [(HUNearbyLiveListenController *)self deviceImplementation];
  [v2 stopLiveListen];
}

- (void)startLiveListenRewind
{
  if (![(HUNearbyLiveListenController *)self isPlayingBack])
  {
    v3 = [(HUNearbyLiveListenController *)self deviceImplementation];
    [v3 startLiveListenRewind];
  }
}

- (void)stopLiveListenRewind
{
  if ([(HUNearbyLiveListenController *)self isPlayingBack])
  {
    v3 = [(HUNearbyLiveListenController *)self deviceImplementation];
    [v3 stopLiveListenRewind];
  }
}

@end
@interface MRMigrationDevice
+ (id)proactiveDevice;
- (BOOL)isPrepared;
- (BOOL)preparedForAirPlay;
- (MRAVEndpoint)endpoint;
- (MRMigrationDevice)initWithUID:(id)d;
- (MRMigrationDeviceDelegate)delegate;
- (MRNowPlayingPlayerResponse)playerState;
- (NSString)description;
- (NSString)uid;
- (id)dictionaryRepresentation;
- (unint64_t)deviceState;
- (void)_checkIfAirPlayPossible;
- (void)_notifyDelegateOfPlayerStateChange;
- (void)_notifyDelegateOfStateChange;
- (void)controller:(id)controller didFailWithError:(id)error;
- (void)controller:(id)controller didLoadResponse:(id)response;
- (void)controllerWillReloadForInvalidation:(id)invalidation;
- (void)dealloc;
- (void)prepare;
- (void)setDeviceState:(unint64_t)state;
@end

@implementation MRMigrationDevice

+ (id)proactiveDevice
{
  v2 = [[MRMigrationDevice alloc] initWithUID:@"proactiveEndpoint"];

  return v2;
}

- (void)prepare
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(MRMigrationDevice *)selfCopy deviceState])
  {
    [(MRMigrationDevice *)selfCopy setDeviceState:1];
    controller = [(MRMigrationDevice *)selfCopy controller];
    [controller beginLoadingUpdates];

    v4 = dispatch_time(0, 2000000000);
    queue = [(MRMigrationDevice *)selfCopy queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __28__MRMigrationDevice_prepare__block_invoke;
    block[3] = &unk_1E769A228;
    block[4] = selfCopy;
    dispatch_after(v4, queue, block);
  }

  objc_sync_exit(selfCopy);
}

- (unint64_t)deviceState
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceState = selfCopy->_deviceState;
  objc_sync_exit(selfCopy);

  return deviceState;
}

- (MRMigrationDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)isPrepared
{
  if ([(MRMigrationDevice *)self deviceState]== 2)
  {
    return 1;
  }

  return [(MRMigrationDevice *)self preparedForAirPlay];
}

- (BOOL)preparedForAirPlay
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  preparedForAirPlay = selfCopy->_preparedForAirPlay;
  objc_sync_exit(selfCopy);

  return preparedForAirPlay;
}

- (void)_notifyDelegateOfStateChange
{
  delegate = [(MRMigrationDevice *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    queue = [(MRMigrationDevice *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__MRMigrationDevice__notifyDelegateOfStateChange__block_invoke;
    block[3] = &unk_1E769A228;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __49__MRMigrationDevice__notifyDelegateOfStateChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 device:*(a1 + 32) stateDidChange:{objc_msgSend(*(a1 + 32), "deviceState")}];
}

- (NSString)uid
{
  controller = [(MRMigrationDevice *)self controller];
  v3 = [controller uid];

  return v3;
}

- (MRAVEndpoint)endpoint
{
  controller = [(MRMigrationDevice *)self controller];
  endpoint = [controller endpoint];

  return endpoint;
}

- (MRNowPlayingPlayerResponse)playerState
{
  controller = [(MRMigrationDevice *)self controller];
  response = [controller response];

  return response;
}

- (MRMigrationDevice)initWithUID:(id)d
{
  dCopy = d;
  v14.receiver = self;
  v14.super_class = MRMigrationDevice;
  v5 = [(MRMigrationDevice *)&v14 init];
  if (v5)
  {
    v6 = [[MRQHONowPlayingController alloc] initWithUID:dCopy];
    controller = v5->_controller;
    v5->_controller = v6;

    [(MRQHONowPlayingController *)v5->_controller setDelegate:v5];
    v5->_preparedForAirPlay = 0;
    v5->_deviceState = 0;
    dCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.MediaRemote.MRMigrationDevice:%@|queue", dCopy];
    uTF8String = [dCopy UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(uTF8String, v10);
    queue = v5->_queue;
    v5->_queue = v11;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MRMigrationDevice *)self uid];
  [v3 setObject:v4 forKeyedSubscript:@"uid"];

  endpoint = [(MRMigrationDevice *)self endpoint];
  [v3 setObject:endpoint forKeyedSubscript:@"endpoint"];

  playerState = [(MRMigrationDevice *)self playerState];
  v7 = MRMediaRemoteCopyPlaybackStateDescription([playerState playbackState]);
  [v3 setObject:v7 forKeyedSubscript:@"playbackState"];

  playerState2 = [(MRMigrationDevice *)self playerState];
  if ([playerState2 playerHasPlayedRecently])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 setObject:v9 forKeyedSubscript:@"playerHasPlayedRecently"];

  v10 = [(MRMigrationDevice *)self deviceState]- 1;
  if (v10 > 2)
  {
    v11 = @"NotPrepared";
  }

  else
  {
    v11 = off_1E769E128[v10];
  }

  [v3 setObject:v11 forKeyedSubscript:@"deviceState"];
  if ([(MRMigrationDevice *)self preparedForAirPlay])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v3 setObject:v12 forKeyedSubscript:@"preparedForAirPlay"];
  prepareError = [(MRMigrationDevice *)self prepareError];
  [v3 setObject:prepareError forKeyedSubscript:@"prepareError"];

  return v3;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRMigrationDevice *)self uid];
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRMigrationDevice] [MRMigrationDevice]<%{public}@> Deallocating.", buf, 0xCu);
  }

  v6.receiver = self;
  v6.super_class = MRMigrationDevice;
  [(MRMigrationDevice *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  dictionaryRepresentation = [(MRMigrationDevice *)self dictionaryRepresentation];
  v6 = [v3 initWithFormat:@"<%@: %p> %@", v4, self, dictionaryRepresentation];

  return v6;
}

- (void)setDeviceState:(unint64_t)state
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = _MRLogForCategory(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MRMigrationDevice *)self uid];
    v7 = v6;
    v8 = self->_deviceState - 1;
    if (v8 > 2)
    {
      v9 = @"NotPrepared";
    }

    else
    {
      v9 = off_1E769E128[v8];
    }

    if (state - 1 > 2)
    {
      v10 = @"NotPrepared";
    }

    else
    {
      v10 = off_1E769E128[state - 1];
    }

    v12 = 138543874;
    v13 = v6;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = v10;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRMigrationDevice] <%{public}@> changing state from %@ to %@.", &v12, 0x20u);
  }

  self->_deviceState = state;
  v11 = *MEMORY[0x1E69E9840];
}

void __28__MRMigrationDevice_prepare__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) controller];
  v3 = [v2 endpoint];

  if (!v3)
  {
    v4 = *(a1 + 32);

    [v4 _checkIfAirPlayPossible];
  }
}

- (void)_checkIfAirPlayPossible
{
  if (![(MRMigrationDevice *)self isPrepared])
  {
    v3 = [(MRMigrationDevice *)self uid];
    v4 = [v3 isEqualToString:@"proactiveEndpoint"];

    if ((v4 & 1) == 0)
    {
      v5 = objc_alloc_init(MRAVLightweightReconnaissanceSession);
      v6 = [(MRMigrationDevice *)self uid];
      queue = [(MRMigrationDevice *)self queue];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __44__MRMigrationDevice__checkIfAirPlayPossible__block_invoke;
      v9[3] = &unk_1E769E108;
      v10 = v5;
      selfCopy = self;
      v8 = v5;
      [(MRAVLightweightReconnaissanceSession *)v8 searchForOutputDeviceUID:v6 timeout:@"MRProximityProvider AVOD fallback" reason:queue queue:v9 completion:7.0];
    }
  }
}

void __44__MRMigrationDevice__checkIfAirPlayPossible__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  objc_sync_enter(v7);
  v8 = *(a1 + 40);
  if (v9)
  {
    [v8 setPreparedForAirPlay:1];
    [*(a1 + 40) setDeviceState:2];
  }

  else
  {
    [v8 setPreparedForAirPlay:0];
    [*(a1 + 40) setDeviceState:3];
  }

  objc_sync_exit(v7);

  [*(a1 + 40) _notifyDelegateOfStateChange];
}

- (void)controller:(id)controller didLoadResponse:(id)response
{
  controllerCopy = controller;
  responseCopy = response;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(MRMigrationDevice *)selfCopy setDeviceState:2];
  [(MRMigrationDevice *)selfCopy setPrepareError:0];
  objc_sync_exit(selfCopy);

  [(MRMigrationDevice *)selfCopy _notifyDelegateOfStateChange];
  [(MRMigrationDevice *)selfCopy _notifyDelegateOfPlayerStateChange];
}

- (void)controller:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([errorCopy code] == 42)
  {
    [(MRMigrationDevice *)selfCopy setDeviceState:2];
  }

  else if (![(MRMigrationDevice *)selfCopy preparedForAirPlay])
  {
    [(MRMigrationDevice *)selfCopy _checkIfAirPlayPossible];
  }

  [(MRMigrationDevice *)selfCopy setPrepareError:errorCopy];
  objc_sync_exit(selfCopy);

  [(MRMigrationDevice *)selfCopy _notifyDelegateOfStateChange];
}

- (void)controllerWillReloadForInvalidation:(id)invalidation
{
  invalidationCopy = invalidation;
  if (![(MRMigrationDevice *)self preparedForAirPlay])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(MRMigrationDevice *)selfCopy setDeviceState:1];
    objc_sync_exit(selfCopy);

    [(MRMigrationDevice *)selfCopy _notifyDelegateOfStateChange];
  }
}

- (void)_notifyDelegateOfPlayerStateChange
{
  delegate = [(MRMigrationDevice *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    queue = [(MRMigrationDevice *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__MRMigrationDevice__notifyDelegateOfPlayerStateChange__block_invoke;
    block[3] = &unk_1E769A228;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

void __55__MRMigrationDevice__notifyDelegateOfPlayerStateChange__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 playerState];
  [v4 device:v2 playerStateDidChange:v3];
}

@end
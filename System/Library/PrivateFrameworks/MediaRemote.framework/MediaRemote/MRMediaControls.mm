@interface MRMediaControls
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MRMediaControls)init;
- (MRMediaControls)initWithConfiguration:(id)configuration shouldObserveRoutingContextUIDChanges:(BOOL)changes;
- (MRMediaControls)initWithRouteSharingPolicy:(unint64_t)policy routingContextUID:(id)d;
- (MRMediaControlsConfiguration)configuration;
- (NSXPCListener)listener;
- (id)_dismissalReasonString:(unint64_t)string;
- (int64_t)_mediaControlsStyleForRouteSharingPolicy:(unint64_t)policy;
- (unint64_t)_MPRouteSharingPolicyToAVRouteSharingPolicy:(unint64_t)policy;
- (void)_audioSessionRoutingContextDidChangeNotification;
- (void)_reset;
- (void)_updateAudioSessionRoutingContext;
- (void)addCustomRowWithType:(id)type titleOverride:(id)override identifier:(id)identifier;
- (void)dealloc;
- (void)dismiss;
- (void)openConnection;
- (void)present;
- (void)setDismissalReason:(unint64_t)reason;
- (void)setPreferredWidth:(double)width;
- (void)setRouteUID:(id)d;
- (void)setTappedCustomRowIdentifier:(id)identifier;
- (void)startPrewarming;
- (void)stopPrewarming;
@end

@implementation MRMediaControls

- (MRMediaControls)init
{
  v3 = objc_alloc_init(MRMediaControlsConfiguration);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(MRMediaControlsConfiguration *)v3 setPresentingAppBundleID:bundleIdentifier];

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  -[MRMediaControlsConfiguration setPresentingAppProcessIdentifier:](v3, "setPresentingAppProcessIdentifier:", [processInfo processIdentifier]);

  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  routingContextUID = [mEMORY[0x1E6958460] routingContextUID];
  [(MRMediaControlsConfiguration *)v3 setRoutingContextUID:routingContextUID];

  -[MRMediaControlsConfiguration setStyle:](v3, "setStyle:", -[MRMediaControls _mediaControlsStyleForRouteSharingPolicy:](self, "_mediaControlsStyleForRouteSharingPolicy:", [mEMORY[0x1E6958460] routeSharingPolicy]));
  v9 = [(MRMediaControls *)self initWithConfiguration:v3 shouldObserveRoutingContextUIDChanges:1];

  return v9;
}

- (MRMediaControls)initWithRouteSharingPolicy:(unint64_t)policy routingContextUID:(id)d
{
  dCopy = d;
  v7 = [(MRMediaControls *)self _MPRouteSharingPolicyToAVRouteSharingPolicy:policy];
  v8 = objc_alloc_init(MRMediaControlsConfiguration);
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  [(MRMediaControlsConfiguration *)v8 setPresentingAppBundleID:bundleIdentifier];

  [(MRMediaControlsConfiguration *)v8 setRoutingContextUID:dCopy];
  [(MRMediaControlsConfiguration *)v8 setStyle:[(MRMediaControls *)self _mediaControlsStyleForRouteSharingPolicy:v7]];
  v11 = [(MRMediaControls *)self initWithConfiguration:v8 shouldObserveRoutingContextUIDChanges:0];

  return v11;
}

- (MRMediaControls)initWithConfiguration:(id)configuration shouldObserveRoutingContextUIDChanges:(BOOL)changes
{
  v24 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = MRMediaControls;
  v7 = [(MRMediaControls *)&v21 init];
  if (v7)
  {
    v8 = [configurationCopy copy];
    configuration = v7->_configuration;
    v7->_configuration = v8;

    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    if ([bundleIdentifier isEqualToString:@"com.apple.springboard"])
    {
    }

    else
    {
      mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
      bundleIdentifier2 = [mainBundle2 bundleIdentifier];
      v14 = [bundleIdentifier2 isEqualToString:@"com.apple.MediaRemoteUI"];

      if ((v14 & 1) == 0)
      {
        v7->_shouldObserveRoutingContextUIDChanges = changes;
      }
    }

    if (v7->_shouldObserveRoutingContextUIDChanges)
    {
      v15 = _MRLogForCategory(2uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        configuration = [(MRMediaControls *)v7 configuration];
        presentingAppBundleID = [configuration presentingAppBundleID];
        *buf = 138543362;
        v23 = presentingAppBundleID;
        _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_INFO, "Started observing routing context UID changes for app bundle: %{public}@", buf, 0xCu);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v7 selector:sel__audioSessionRoutingContextDidChangeNotification name:*MEMORY[0x1E6958240] object:0];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = MRMediaControls;
  [(MRMediaControls *)&v3 dealloc];
}

- (MRMediaControlsConfiguration)configuration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(MRMediaControlsConfiguration *)selfCopy->_configuration copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setRouteUID:(id)d
{
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_routeUID, d);
  [(MRMediaControlsConfiguration *)selfCopy->_configuration setRouteUID:dCopy];
  objc_sync_exit(selfCopy);
}

- (void)setPreferredWidth:(double)width
{
  obj = self;
  objc_sync_enter(obj);
  obj->_preferredWidth = width;
  [(MRMediaControlsConfiguration *)obj->_configuration setPreferredWidth:width];
  objc_sync_exit(obj);
}

- (void)addCustomRowWithType:(id)type titleOverride:(id)override identifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  overrideCopy = override;
  identifierCopy = identifier;
  v11 = _MRLogForCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412802;
    v21 = typeCopy;
    v22 = 2112;
    v23 = overrideCopy;
    v24 = 2112;
    v25 = identifierCopy;
    _os_log_impl(&dword_1A2860000, v11, OS_LOG_TYPE_DEFAULT, "MediaControls - Adding Custom Row with type:%@, titleOverride: %@, identifier: %@", &v20, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  customRows = [(MRMediaControlsConfiguration *)selfCopy->_configuration customRows];
  v14 = customRows == 0;

  if (v14)
  {
    configuration = selfCopy->_configuration;
    array = [MEMORY[0x1E695DF70] array];
    [(MRMediaControlsConfiguration *)configuration setCustomRows:array];
  }

  v17 = [MRMediaControlsCustomRow rowWithType:typeCopy titleOverride:overrideCopy identifier:identifierCopy];
  customRows2 = [(MRMediaControlsConfiguration *)selfCopy->_configuration customRows];
  [customRows2 addObject:v17];

  objc_sync_exit(selfCopy);
  v19 = *MEMORY[0x1E69E9840];
}

- (void)startPrewarming
{
  v13 = *MEMORY[0x1E69E9840];
  if (self->_shouldObserveRoutingContextUIDChanges)
  {
    [(MRMediaControls *)self _updateAudioSessionRoutingContext];
  }

  configuration = [(MRMediaControls *)self configuration];
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:configuration requiringSecureCoding:1 error:0];
  style = [configuration style];
  v6 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = 138543362;
    v12 = configuration;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_INFO, "Start prewarming remote view controller. Configuration : %{public}@", &v11, 0xCu);
  }

  listener = [(MRMediaControls *)self listener];
  endpoint = [listener endpoint];
  _endpoint = [endpoint _endpoint];
  MRMediaRemotePrewarmMediaControlsCommand(v4, style, _endpoint);

  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopPrewarming
{
  v2 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_INFO, "Stop prewarming remote view controller.", v3, 2u);
  }

  MRMediaRemoteDismissMediaControlsCommand();
}

- (void)present
{
  v3 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_INFO, "Present remote view controller.", buf, 2u);
  }

  [(MRMediaControls *)self startPrewarming];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __26__MRMediaControls_present__block_invoke;
  v4[3] = &unk_1E769C758;
  v4[4] = self;
  MRMediaRemotePresentMediaControlsCommand(MEMORY[0x1E69E96A0], v4);
}

uint64_t __26__MRMediaControls_present__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    v4 = _MRLogForCategory(2uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __26__MRMediaControls_present__block_invoke_cold_1(a2, v4);
    }

    return [*(v3 + 32) _reset];
  }

  return result;
}

- (void)dismiss
{
  v2 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_INFO, "Dismissing remote view controller at app's request.", v3, 2u);
  }

  MRMediaRemoteDismissMediaControlsCommand();
}

- (NSXPCListener)listener
{
  listener = self->_listener;
  if (!listener)
  {
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    v5 = self->_listener;
    self->_listener = anonymousListener;

    [(NSXPCListener *)self->_listener setDelegate:self];
    [(NSXPCListener *)self->_listener activate];
    listener = self->_listener;
  }

  return listener;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_INFO, "Received request to accept new connection.", buf, 2u);
  }

  objc_storeStrong(&self->_connection, connection);
  v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F15C40B0];
  [connectionCopy setRemoteObjectInterface:v9];

  v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F159ED98];
  [connectionCopy setExportedInterface:v10];

  [connectionCopy setExportedObject:self];
  objc_initWeak(buf, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__MRMediaControls_listener_shouldAcceptNewConnection___block_invoke;
  v12[3] = &unk_1E769B178;
  objc_copyWeak(&v13, buf);
  [connectionCopy setInvalidationHandler:v12];
  [connectionCopy resume];
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);

  return 1;
}

void __54__MRMediaControls_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_INFO, "Connection to remote view controller invalidated.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reset];
}

- (void)openConnection
{
  v2 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A2860000, v2, OS_LOG_TYPE_INFO, "Connection established to remote view controller.", v3, 2u);
  }
}

- (void)setDismissalReason:(unint64_t)reason
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(MRMediaControls *)self _dismissalReasonString:reason];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_INFO, "MediaControls dismissed with reason : %@", &v8, 0xCu);
  }

  self->_dismissalReason = reason;
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setTappedCustomRowIdentifier:(id)identifier
{
  v10 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = identifierCopy;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_INFO, "MediaControls dismissed with tapped custom row identifier : %@", &v8, 0xCu);
  }

  tappedCustomRowIdentifier = self->_tappedCustomRowIdentifier;
  self->_tappedCustomRowIdentifier = identifierCopy;

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_reset
{
  v11 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E6958240] object:0];

  if (self->_dismissHandler)
  {
    dispatch_async(MEMORY[0x1E69E96A0], self->_dismissHandler);
  }

  if (self->_dismissHandlerWithReason)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __25__MRMediaControls__reset__block_invoke;
    block[3] = &unk_1E769A228;
    block[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  if (self->_customRowDidTapHandler && self->_tappedCustomRowIdentifier)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      tappedCustomRowIdentifier = self->_tappedCustomRowIdentifier;
      *buf = 138412290;
      v10 = tappedCustomRowIdentifier;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "MediaControls custom row did tap, rowIdentifier: %@", buf, 0xCu);
    }

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __25__MRMediaControls__reset__block_invoke_70;
    v7[3] = &unk_1E769A228;
    v7[4] = self;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __25__MRMediaControls__reset__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  return (*(*(v1 + 40) + 16))();
}

uint64_t __25__MRMediaControls__reset__block_invoke_70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  return (*(*(v1 + 56) + 16))();
}

- (void)_updateAudioSessionRoutingContext
{
  mEMORY[0x1E6958460] = [MEMORY[0x1E6958460] sharedInstance];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  routingContextUID = [mEMORY[0x1E6958460] routingContextUID];
  [(MRMediaControlsConfiguration *)selfCopy->_configuration setRoutingContextUID:routingContextUID];

  -[MRMediaControlsConfiguration setStyle:](selfCopy->_configuration, "setStyle:", -[MRMediaControls _mediaControlsStyleForRouteSharingPolicy:](selfCopy, "_mediaControlsStyleForRouteSharingPolicy:", [mEMORY[0x1E6958460] routeSharingPolicy]));
  objc_sync_exit(selfCopy);
}

- (void)_audioSessionRoutingContextDidChangeNotification
{
  v9 = *MEMORY[0x1E69E9840];
  [(MRMediaControls *)self _updateAudioSessionRoutingContext];
  v3 = _MRLogForCategory(2uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    routingContextUID = [(MRMediaControlsConfiguration *)self->_configuration routingContextUID];
    v7 = 138543362;
    v8 = routingContextUID;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_INFO, "Updating remote view controller routing context UID : %{public}@", &v7, 0xCu);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_connection remoteObjectProxy];
  [remoteObjectProxy updateMediaControlsWithConfiguration:self->_configuration];

  v6 = *MEMORY[0x1E69E9840];
}

- (int64_t)_mediaControlsStyleForRouteSharingPolicy:(unint64_t)policy
{
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v7 = [infoDictionary objectForKeyedSubscript:@"SupportsSharedQueue"];
  bOOLValue = [v7 BOOLValue];

  if ([(MRMediaControls *)self _shouldUpdateStyleForCurrentConfigurationStyle:[(MRMediaControlsConfiguration *)self->_configuration style]])
  {
    v9 = 2;
    if (bOOLValue)
    {
      v9 = 3;
    }

    if ((policy & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      return v9;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    configuration = self->_configuration;

    return [(MRMediaControlsConfiguration *)configuration style];
  }
}

- (unint64_t)_MPRouteSharingPolicyToAVRouteSharingPolicy:(unint64_t)policy
{
  if (policy == 2)
  {
    return 2;
  }

  else
  {
    return policy == 1;
  }
}

- (id)_dismissalReasonString:(unint64_t)string
{
  if (string)
  {
    return @"MRMediaControlsDismissalReasonUserCancelled";
  }

  else
  {
    return @"MRMediaControlsDismissalReasonUnknown";
  }
}

void __26__MRMediaControls_present__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1A2860000, a2, OS_LOG_TYPE_ERROR, "Error occurred while attempting to present remote view controller. %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
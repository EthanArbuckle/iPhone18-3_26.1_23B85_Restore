@interface MRDNowPlayingStateMonitor
- (MRDNowPlayingStateMonitor)initWithDelegate:(id)delegate;
- (MRDNowPlayingStateMonitorDelegate)delegate;
- (NSString)nowPlayingApp;
- (unsigned)onQueue_lastPlaybackStateForEndpoint:(id)endpoint;
- (void)_configureNowPlayingController:(id)controller;
- (void)controller:(id)controller didFailWithError:(id)error;
- (void)controller:(id)controller didLoadResponse:(id)response;
- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to;
- (void)onQueue_controller:(id)queue_controller didLoadResponse:(id)response retry:(BOOL)retry;
- (void)setup;
@end

@implementation MRDNowPlayingStateMonitor

- (MRDNowPlayingStateMonitor)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v14.receiver = self;
  v14.super_class = MRDNowPlayingStateMonitor;
  v5 = [(MRDNowPlayingStateMonitor *)&v14 init];
  if (v5)
  {
    v6 = +[MRNowPlayingController userSelectedEndpointController];
    [(MRDNowPlayingStateMonitor *)v5 setAseNowPlayingController:v6];

    v7 = +[MRNowPlayingController localRouteController];
    [(MRDNowPlayingStateMonitor *)v5 setLocalNowPlayingController:v7];

    [(MRDNowPlayingStateMonitor *)v5 setDelegate:delegateCopy];
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.mediaremote.NowPlayingStateMonitor", v8);
    [(MRDNowPlayingStateMonitor *)v5 setQueue:v9];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.mediaremote.NowPlayingStateMonitor.delegateQueue", v10);
    [(MRDNowPlayingStateMonitor *)v5 setDelegateQueue:v11];

    v12 = objc_alloc_init(NSMutableDictionary);
    [(MRDNowPlayingStateMonitor *)v5 setLastPlaybackStates:v12];

    [(MRDNowPlayingStateMonitor *)v5 setup];
  }

  return v5;
}

- (void)setup
{
  aseNowPlayingController = [(MRDNowPlayingStateMonitor *)self aseNowPlayingController];
  [(MRDNowPlayingStateMonitor *)self _configureNowPlayingController:aseNowPlayingController];

  localNowPlayingController = [(MRDNowPlayingStateMonitor *)self localNowPlayingController];
  [(MRDNowPlayingStateMonitor *)self _configureNowPlayingController:localNowPlayingController];
}

- (void)_configureNowPlayingController:(id)controller
{
  controllerCopy = controller;
  configuration = [controllerCopy configuration];
  [configuration setRequestPlaybackState:1];

  configuration2 = [controllerCopy configuration];
  [configuration2 setRequestClientProperties:1];

  configuration3 = [controllerCopy configuration];
  [configuration3 setRequestPlaybackQueue:0];

  configuration4 = [controllerCopy configuration];
  [configuration4 setRequestSupportedCommands:0];

  configuration5 = [controllerCopy configuration];
  [configuration5 setRequestLastPlayingDate:0];

  [controllerCopy setDelegate:self];
  [controllerCopy beginLoadingUpdates];
}

- (unsigned)onQueue_lastPlaybackStateForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  queue = [(MRDNowPlayingStateMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  uniqueIdentifier = [endpointCopy uniqueIdentifier];
  if (uniqueIdentifier)
  {
    lastPlaybackStates = [(MRDNowPlayingStateMonitor *)self lastPlaybackStates];
    uniqueIdentifier2 = [endpointCopy uniqueIdentifier];
    v9 = [lastPlaybackStates objectForKeyedSubscript:uniqueIdentifier2];
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    unsignedIntValue = [v9 unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  return unsignedIntValue;
}

- (void)controller:(id)controller didFailWithError:(id)error
{
  controllerCopy = controller;
  errorCopy = error;
  v7 = _MRLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = controllerCopy;
    v10 = 2112;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM controller: %@ didFailWithError: %@", &v8, 0x16u);
  }
}

- (void)controller:(id)controller didLoadResponse:(id)response
{
  controllerCopy = controller;
  responseCopy = response;
  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = controllerCopy;
    v17 = 2112;
    v18 = responseCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM controller: %@ didLoadResponse: %@", buf, 0x16u);
  }

  queue = [(MRDNowPlayingStateMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019B2AC;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v13 = controllerCopy;
  v14 = responseCopy;
  v10 = responseCopy;
  v11 = controllerCopy;
  dispatch_async(queue, block);
}

- (void)onQueue_controller:(id)queue_controller didLoadResponse:(id)response retry:(BOOL)retry
{
  retryCopy = retry;
  queue_controllerCopy = queue_controller;
  responseCopy = response;
  queue = [(MRDNowPlayingStateMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  destination = [responseCopy destination];
  endpoint = [destination endpoint];
  if (endpoint)
  {
    endpoint2 = endpoint;

LABEL_4:
    v15 = [(MRDNowPlayingStateMonitor *)self onQueue_lastPlaybackStateForEndpoint:endpoint2];
    playbackState = [responseCopy playbackState];
    destination2 = [queue_controllerCopy destination];
    client = [destination2 client];
    representedBundleID = [client representedBundleID];

    if (v15 != playbackState)
    {
      v20 = _MRLogForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = MRMediaRemoteCopyPlaybackStateDescription();
        v22 = MRMediaRemoteCopyPlaybackStateDescription();
        *buf = 138412802;
        selfCopy2 = endpoint2;
        v33 = 2112;
        v34 = v21;
        v35 = 2112;
        v36 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM updating stored playback state for %@ from %@ to %@", buf, 0x20u);
      }

      [(MRDNowPlayingStateMonitor *)self onQueue_setLastPlaybackState:playbackState bundleIdentifier:representedBundleID forEndpoint:endpoint2];
    }

LABEL_9:
    goto LABEL_10;
  }

  destination3 = [queue_controllerCopy destination];
  endpoint2 = [destination3 endpoint];

  if (endpoint2)
  {
    goto LABEL_4;
  }

  endpoint2 = _MRLogForCategory();
  v23 = os_log_type_enabled(endpoint2, OS_LOG_TYPE_DEFAULT);
  if (!retryCopy)
  {
    if (v23)
    {
      destination4 = [queue_controllerCopy destination];
      *buf = 138413058;
      selfCopy2 = self;
      v33 = 2112;
      v34 = queue_controllerCopy;
      v35 = 2112;
      v36 = destination4;
      v37 = 2112;
      v38 = responseCopy;
      _os_log_impl(&_mh_execute_header, endpoint2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM %@ - endpoint is nil, ignoring - %@ (%@), response: %@", buf, 0x2Au);
    }

    goto LABEL_9;
  }

  if (v23)
  {
    destination5 = [queue_controllerCopy destination];
    *buf = 138413058;
    selfCopy2 = self;
    v33 = 2112;
    v34 = queue_controllerCopy;
    v35 = 2112;
    v36 = destination5;
    v37 = 2112;
    v38 = responseCopy;
    _os_log_impl(&_mh_execute_header, endpoint2, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM %@ - endpoint is nil, will retry in 3 seconds - %@ (%@), response: %@", buf, 0x2Au);
  }

  v25 = dispatch_time(0, 3000000000);
  queue2 = [(MRDNowPlayingStateMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019B64C;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v29 = queue_controllerCopy;
  v30 = responseCopy;
  dispatch_after(v25, queue2, block);

LABEL_10:
}

- (void)controller:(id)controller playbackStateDidChangeFrom:(unsigned int)from to:(unsigned int)to
{
  controllerCopy = controller;
  v9 = _MRLogForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    v17 = controllerCopy;
    v18 = 2112;
    v19 = controllerCopy;
    v20 = 1024;
    fromCopy = from;
    v22 = 1024;
    toCopy = to;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[MRDRRC].NPM controller: %p %@ playbackStateDidChangeFrom: %d to: %d", buf, 0x22u);
  }

  queue = [(MRDNowPlayingStateMonitor *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10019B8B4;
  block[3] = &unk_1004B87F8;
  v13 = controllerCopy;
  selfCopy = self;
  toCopy2 = to;
  v11 = controllerCopy;
  dispatch_async(queue, block);
}

- (NSString)nowPlayingApp
{
  aseNowPlayingController = [(MRDNowPlayingStateMonitor *)self aseNowPlayingController];
  response = [aseNowPlayingController response];
  playerPath = [response playerPath];
  client = [playerPath client];
  representedBundleID = [client representedBundleID];

  return representedBundleID;
}

- (MRDNowPlayingStateMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
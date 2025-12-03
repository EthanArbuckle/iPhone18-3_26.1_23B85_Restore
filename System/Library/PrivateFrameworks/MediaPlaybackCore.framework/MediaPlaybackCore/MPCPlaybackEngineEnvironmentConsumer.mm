@interface MPCPlaybackEngineEnvironmentConsumer
- (MPCPlaybackEngine)playbackEngine;
- (MPCPlaybackEngineEnvironmentConsumer)initWithPlaybackEngine:(id)engine;
- (void)_addEventForAccountIdentifier:(id)identifier cursor:(id)cursor event:(id)event nudge:(int)nudge;
- (void)_allowsExplicitContentDidChange:(id)change;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillEnterForeground:(id)foreground;
- (void)_applicationWillTerminate:(id)terminate;
- (void)_devicePrivateListeningDidChange:(id)change;
- (void)_emitNetworkEventType:(id)type tag:(id)tag payload:(id)payload;
- (void)_handleURLRequestDidStartNotif:(id)notif;
- (void)_handleURLRequestTaskDidCompleteNotif:(id)notif;
- (void)_handleURLRequestTaskDidReceiveResponseNotif:(id)notif;
- (void)_handleURLRequestTaskDidResumeNotif:(id)notif;
- (void)_snapshotAccount:(id)account eventType:(id)type atTime:(id *)time;
- (void)_snapshotAccount:(id)account eventType:(id)type event:(id)event nudge:(int)nudge;
- (void)_snapshotDeviceAtTime:(id *)time;
- (void)_snapshotDeviceWithEvent:(id)event nudge:(int)nudge;
- (void)_snapshotNetworkReachabilityAtTime:(id *)time force:(BOOL)force;
- (void)_snapshotNetworkReachabilityWithEvent:(id)event nudge:(int)nudge;
- (void)_snapshotNetworkTypeAtTime:(id *)time;
- (void)_snapshotNetworkTypeWithEvent:(id)event nudge:(int)nudge;
- (void)_startMonitoringNetworkTasks;
- (void)_stopMonitoringNetworkTasks;
- (void)_updateNetworkInfo;
- (void)accountManager:(id)manager didChangeAccounts:(id)accounts;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)environmentMonitorDidChangeNetworkType:(id)type;
- (void)subscribeToEventStream:(id)stream;
- (void)unsubscribeFromEventStream:(id)stream;
@end

@implementation MPCPlaybackEngineEnvironmentConsumer

- (void)_updateNetworkInfo
{
  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
  signalStrength = [mEMORY[0x1E69E4428] signalStrength];
  signalInfo = [mEMORY[0x1E69E4428] signalInfo];
  networkType = [mEMORY[0x1E69E4428] networkType];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(mEMORY[0x1E69E4428], "isNetworkConstrained")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(mEMORY[0x1E69E4428], "isCurrentNetworkLinkExpensive")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(mEMORY[0x1E69E4428], "isCurrentNetworkLinkHighQuality")}];
  os_unfair_lock_lock(&self->_lock);
  signalInfo = self->_signalInfo;
  self->_signalInfo = signalInfo;
  v10 = signalInfo;

  signalStrength = self->_signalStrength;
  self->_signalStrength = signalStrength;
  v12 = signalStrength;

  isNetworkConstrained = self->_isNetworkConstrained;
  self->_networkType = networkType;
  self->_isNetworkConstrained = v6;
  v14 = v6;

  isCurrentNetworkLinkExpensive = self->_isCurrentNetworkLinkExpensive;
  self->_isCurrentNetworkLinkExpensive = v7;
  v16 = v7;

  isCurrentNetworkLinkHighQuality = self->_isCurrentNetworkLinkHighQuality;
  self->_isCurrentNetworkLinkHighQuality = v8;

  os_unfair_lock_unlock(&self->_lock);
}

- (MPCPlaybackEngine)playbackEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackEngine);

  return WeakRetained;
}

- (void)_startMonitoringNetworkTasks
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleURLRequestDidStartNotif_ name:*MEMORY[0x1E69E4360] object:0];
  [defaultCenter addObserver:self selector:sel__handleURLRequestTaskDidResumeNotif_ name:*MEMORY[0x1E69E4378] object:0];
  [defaultCenter addObserver:self selector:sel__handleURLRequestTaskDidReceiveResponseNotif_ name:*MEMORY[0x1E69E4370] object:0];
  [defaultCenter addObserver:self selector:sel__handleURLRequestTaskDidCompleteNotif_ name:*MEMORY[0x1E69E4368] object:0];
}

- (void)_emitNetworkEventType:(id)type tag:(id)tag payload:(id)payload
{
  typeCopy = type;
  tagCopy = tag;
  payloadCopy = payload;
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];

  if (eventStream)
  {
    v12 = payloadCopy;
    contextInfo = [tagCopy contextInfo];
    v14 = [contextInfo count];

    if (v14)
    {
      v15 = [v12 mutableCopy];
      contextInfo2 = [tagCopy contextInfo];
      [v15 setObject:contextInfo2 forKeyedSubscript:@"network-request-context-info"];

      v17 = [v15 copy];
      v12 = v17;
    }

    [eventStream emitEventType:typeCopy payload:v12];
  }
}

- (void)_handleURLRequestTaskDidCompleteNotif:(id)notif
{
  v20[3] = *MEMORY[0x1E69E9840];
  notifCopy = notif;
  object = [notifCopy object];
  requestContext = [object requestContext];
  mpc_tag = [requestContext mpc_tag];

  playbackEngineID = [mpc_tag playbackEngineID];
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v11 = [playbackEngineID isEqual:engineID];

  if (v11)
  {
    userInfo = [notifCopy userInfo];
    v13 = [userInfo objectForKeyedSubscript:@"error"];

    v19[0] = @"network-request-id";
    mpc_requestID = [object mpc_requestID];
    v20[0] = mpc_requestID;
    v19[1] = @"network-metrics";
    aggregatedPerformanceMetrics = [object aggregatedPerformanceMetrics];
    null = aggregatedPerformanceMetrics;
    if (!aggregatedPerformanceMetrics)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v20[1] = null;
    v19[2] = @"network-task-error";
    null2 = v13;
    if (!v13)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v20[2] = null2;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [(MPCPlaybackEngineEnvironmentConsumer *)self _emitNetworkEventType:@"network-task-end" tag:mpc_tag payload:v18];

    if (v13)
    {
      if (aggregatedPerformanceMetrics)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {

      if (aggregatedPerformanceMetrics)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)_handleURLRequestTaskDidReceiveResponseNotif:(id)notif
{
  v22[3] = *MEMORY[0x1E69E9840];
  notifCopy = notif;
  object = [notifCopy object];
  requestContext = [object requestContext];
  mpc_tag = [requestContext mpc_tag];

  playbackEngineID = [mpc_tag playbackEngineID];
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v11 = [playbackEngineID isEqual:engineID];

  if (v11)
  {
    userInfo = [notifCopy userInfo];
    v13 = [userInfo objectForKeyedSubscript:@"responseHeaders"];
    v14 = [v13 msv_filter:&__block_literal_global_4467];

    v21[0] = @"network-request-id";
    mpc_requestID = [object mpc_requestID];
    v22[0] = mpc_requestID;
    v21[1] = @"network-response-status-code";
    userInfo2 = [notifCopy userInfo];
    v16 = [userInfo2 objectForKeyedSubscript:@"statusCode"];
    null = v16;
    if (!v16)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v22[1] = null;
    v21[2] = @"network-response-headers";
    null2 = v14;
    if (!v14)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v22[2] = null2;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    [(MPCPlaybackEngineEnvironmentConsumer *)self _emitNetworkEventType:@"network-task-response" tag:mpc_tag payload:v19];

    if (v14)
    {
      if (v16)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {

      if (v16)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

LABEL_9:
}

uint64_t __85__MPCPlaybackEngineEnvironmentConsumer__handleURLRequestTaskDidReceiveResponseNotif___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [&unk_1F4599820 containsObject:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_handleURLRequestTaskDidResumeNotif:(id)notif
{
  v18[2] = *MEMORY[0x1E69E9840];
  notifCopy = notif;
  object = [notifCopy object];
  requestContext = [object requestContext];
  mpc_tag = [requestContext mpc_tag];

  playbackEngineID = [mpc_tag playbackEngineID];
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v11 = [playbackEngineID isEqual:engineID];

  if (v11)
  {
    v17[0] = @"network-request-id";
    mpc_requestID = [object mpc_requestID];
    v17[1] = @"network-task-id";
    v18[0] = mpc_requestID;
    userInfo = [notifCopy userInfo];
    v14 = [userInfo objectForKeyedSubscript:@"networkTaskID"];
    null = v14;
    if (!v14)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v18[1] = null;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [(MPCPlaybackEngineEnvironmentConsumer *)self _emitNetworkEventType:@"network-task-resume" tag:mpc_tag payload:v16];

    if (!v14)
    {
    }
  }
}

- (void)_handleURLRequestDidStartNotif:(id)notif
{
  v20[3] = *MEMORY[0x1E69E9840];
  notifCopy = notif;
  object = [notifCopy object];
  requestContext = [object requestContext];
  mpc_tag = [requestContext mpc_tag];

  playbackEngineID = [mpc_tag playbackEngineID];
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  engineID = [playbackEngine engineID];
  v11 = [playbackEngineID isEqual:engineID];

  if (v11)
  {
    v19[0] = @"network-request-id";
    mpc_requestID = [object mpc_requestID];
    v20[0] = mpc_requestID;
    v19[1] = @"network-request-url";
    userInfo = [notifCopy userInfo];
    v13 = [userInfo objectForKeyedSubscript:@"requestURL"];
    v20[1] = v13;
    v19[2] = @"network-request-name";
    userInfo2 = [notifCopy userInfo];
    v15 = [userInfo2 objectForKeyedSubscript:@"requestName"];
    null = v15;
    if (!v15)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v20[2] = null;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [(MPCPlaybackEngineEnvironmentConsumer *)self _emitNetworkEventType:@"network-task-begin" tag:mpc_tag payload:v17];

    if (!v15)
    {
    }
  }
}

- (void)_stopMonitoringNetworkTasks
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4360] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4378] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4370] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69E4368] object:0];
}

- (void)_snapshotNetworkTypeAtTime:(id *)time
{
  v28[6] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_signalStrength;
  v6 = self->_signalInfo;
  networkType = self->_networkType;
  v8 = self->_isNetworkConstrained;
  v9 = self->_isCurrentNetworkLinkExpensive;
  v10 = self->_isCurrentNetworkLinkHighQuality;
  os_unfair_lock_unlock(&self->_lock);
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v27[0] = @"network-signal-info";
  null = v6;
  v24 = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v28[0] = null;
  v27[1] = @"network-signal-strength";
  null2 = v5;
  if (!v5)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = null2;
  v28[1] = null2;
  v27[2] = @"network-type";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:networkType];
  v28[2] = v13;
  v27[3] = @"network-constrained";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = null3;
  v27[4] = @"network-expensive";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v5;
  v28[4] = null4;
  v27[5] = @"network-high-quality";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = null5;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:6];
  v19 = *&time->var2;
  v25[0] = *&time->var0;
  v25[1] = v19;
  var4 = time->var4;
  [eventStream emitEventType:@"network-type-changed" payload:v18 atTime:v25];

  if (!v10)
  {
  }

  if (v9)
  {
    if (v8)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (v8)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  if (!v16)
  {

    if (v24)
    {
      goto LABEL_17;
    }

LABEL_21:

    goto LABEL_17;
  }

  if (!v24)
  {
    goto LABEL_21;
  }

LABEL_17:
}

- (void)_snapshotNetworkTypeWithEvent:(id)event nudge:(int)nudge
{
  if (event)
  {
    [event monotonicTime];
    v6 = v10;
    v7 = v11;
    v8 = v12;
    v9 = v13;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v7 = 0uLL;
    v9 = 0.0;
  }

  v14 = v6;
  v15 = vaddq_s64(v7, vdupq_n_s64(nudge));
  v16 = v8;
  v17 = nudge / 1000000000.0 + v9;
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotNetworkTypeAtTime:&v14];
}

- (void)_snapshotNetworkReachabilityAtTime:(id *)time force:(BOOL)force
{
  forceCopy = force;
  v22[3] = *MEMORY[0x1E69E9840];
  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
  if ([mEMORY[0x1E69E4428] isRemoteServerReachable])
  {
    isRemoteServerLikelyReachable = 2;
  }

  else
  {
    isRemoteServerLikelyReachable = [mEMORY[0x1E69E4428] isRemoteServerLikelyReachable];
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = self->_reachability != isRemoteServerLikelyReachable || forceCopy;
  if (v9 == 1)
  {
    self->_reachability = isRemoteServerLikelyReachable;
  }

  v10 = self->_signalStrength;
  v11 = self->_signalInfo;
  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
    eventStream = [playbackEngine eventStream];
    v21[0] = @"network-signal-info";
    null = v11;
    if (!v11)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v22[0] = null;
    v21[1] = @"network-signal-strength";
    null2 = v10;
    if (!v10)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v22[1] = null2;
    v21[2] = @"network-reachability";
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:isRemoteServerLikelyReachable];
    v22[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v18 = *&time->var2;
    v19[0] = *&time->var0;
    v19[1] = v18;
    var4 = time->var4;
    [eventStream emitEventType:@"network-reachability-changed" payload:v17 atTime:v19];

    if (v10)
    {
      if (v11)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {

      if (v11)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_16;
  }

LABEL_17:
}

- (void)_snapshotNetworkReachabilityWithEvent:(id)event nudge:(int)nudge
{
  if (event)
  {
    [event monotonicTime];
    v6 = v10;
    v7 = v11;
    v8 = v12;
    v9 = v13;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v7 = 0uLL;
    v9 = 0.0;
  }

  v14 = v6;
  v15 = vaddq_s64(v7, vdupq_n_s64(nudge));
  v16 = v8;
  v17 = nudge / 1000000000.0 + v9;
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotNetworkReachabilityAtTime:&v14 force:1];
}

- (void)_snapshotDeviceAtTime:(id *)time
{
  v66[1] = *MEMORY[0x1E69E9840];
  v4 = MGCopyAnswer();
  currentDeviceInfo = [MEMORY[0x1E69E4420] currentDeviceInfo];
  defaultInfo = [MEMORY[0x1E69E43B0] defaultInfo];
  standardUserDefaults = [MEMORY[0x1E69708A8] standardUserDefaults];
  isDevicePrivateListeningEnabled = [standardUserDefaults isDevicePrivateListeningEnabled];
  bOOLValue = [isDevicePrivateListeningEnabled BOOLValue];

  standardUserDefaults2 = [MEMORY[0x1E69708A8] standardUserDefaults];
  isFocusModePrivateListeningEnabled = [standardUserDefaults2 isFocusModePrivateListeningEnabled];

  v11 = objc_alloc(MEMORY[0x1E69E4618]);
  activeAccount = [MEMORY[0x1E69E4680] activeAccount];
  v13 = [v11 initWithIdentity:activeAccount];
  userAgent = [v13 userAgent];

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v60 = [infoDictionary objectForKeyedSubscript:@"CFBundleVersion"];

  v17 = MSVProcessCopyUUID();
  uUIDString = [v17 UUIDString];

  v18 = MSVProcessCopyMediaFrameworksDescriptions();
  IsInternalCarry = MSVDeviceIsInternalCarry();
  if (isFocusModePrivateListeningEnabled)
  {
    if ([isFocusModePrivateListeningEnabled BOOLValue])
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }
  }

  else
  {
    v19 = 0;
  }

  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v65 = @"device-metadata";
  v63[0] = @"device-name";
  deviceName = [currentDeviceInfo deviceName];
  v64[0] = deviceName;
  v63[1] = @"device-model";
  deviceModel = [currentDeviceInfo deviceModel];
  v64[1] = deviceModel;
  v63[2] = @"device-software-variant";
  null = v4;
  if (!v4)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null;
  v64[2] = null;
  v63[3] = @"application-name";
  processName = [defaultInfo processName];
  v49 = processName;
  if (!processName)
  {
    processName = [MEMORY[0x1E695DFB0] null];
  }

  v40 = processName;
  v64[3] = processName;
  v63[4] = @"application-bundle-id";
  bundleIdentifier = [defaultInfo bundleIdentifier];
  v48 = bundleIdentifier;
  if (!bundleIdentifier)
  {
    bundleIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v39 = bundleIdentifier;
  v64[4] = bundleIdentifier;
  v63[5] = @"application-version";
  clientVersion = [defaultInfo clientVersion];
  v47 = clientVersion;
  if (!clientVersion)
  {
    clientVersion = [MEMORY[0x1E695DFB0] null];
  }

  v38 = clientVersion;
  v64[5] = clientVersion;
  v63[6] = @"system-name";
  productPlatform = [currentDeviceInfo productPlatform];
  v64[6] = productPlatform;
  v63[7] = @"system-version";
  productVersion = [currentDeviceInfo productVersion];
  v25 = productVersion;
  if (!productVersion)
  {
    productVersion = [MEMORY[0x1E695DFB0] null];
  }

  v37 = productVersion;
  v64[7] = productVersion;
  v63[8] = @"system-build";
  buildVersion = [currentDeviceInfo buildVersion];
  v64[8] = buildVersion;
  v63[9] = @"private-listening-enabled";
  v43 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
  v64[9] = v43;
  v63[10] = @"focus-mode-private-listening-enabled";
  v56 = isFocusModePrivateListeningEnabled;
  if (isFocusModePrivateListeningEnabled)
  {
    [MEMORY[0x1E696AD98] numberWithInteger:v19];
  }

  else
  {
    [MEMORY[0x1E695DFB0] null];
  }

  v42 = v58 = v4;
  v64[10] = v42;
  v63[11] = @"user-agent";
  null2 = userAgent;
  if (!userAgent)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null2;
  v64[11] = null2;
  v63[12] = @"media-frameworks";
  null3 = v18;
  if (!v18)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = v18;
  v64[12] = null3;
  v63[13] = @"application-source-version";
  null4 = v60;
  if (!v60)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = userAgent;
  v30 = defaultInfo;
  v64[13] = null4;
  v63[14] = @"application-uuid";
  null5 = uUIDString;
  if (!uUIDString)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v64[14] = null5;
  v63[15] = @"internal-carry";
  v32 = [MEMORY[0x1E696AD98] numberWithBool:IsInternalCarry];
  v64[15] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:16];
  v66[0] = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
  v35 = *&time->var2;
  v61[0] = *&time->var0;
  v61[1] = v35;
  var4 = time->var4;
  [eventStream emitEventType:@"device-changed" payload:v34 atTime:v61];

  if (!uUIDString)
  {
  }

  if (!v60)
  {
  }

  if (v54)
  {
    if (v29)
    {
      goto LABEL_33;
    }
  }

  else
  {

    if (v29)
    {
      goto LABEL_33;
    }
  }

LABEL_33:
  if (!v25)
  {
  }

  if (!v47)
  {
  }

  if (!v48)
  {
  }

  if (!v49)
  {
  }

  if (!v58)
  {
  }
}

- (void)_snapshotDeviceWithEvent:(id)event nudge:(int)nudge
{
  if (event)
  {
    [event monotonicTime];
    v6 = v10;
    v7 = v11;
    v8 = v12;
    v9 = v13;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v7 = 0uLL;
    v9 = 0.0;
  }

  v14 = v6;
  v15 = vaddq_s64(v7, vdupq_n_s64(nudge));
  v16 = v8;
  v17 = nudge / 1000000000.0 + v9;
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotDeviceAtTime:&v14];
}

- (void)_snapshotAccount:(id)account eventType:(id)type atTime:(id *)time
{
  v47[2] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  typeCopy = type;
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v11 = +[MPCPlaybackAccountManager sharedManager];
  v12 = [v11 accountForHashedDSID:accountCopy];

  if (v12)
  {
    timeCopy = time;
    defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
    userIdentity = [v12 userIdentity];
    v15 = [defaultIdentityStore DSIDForUserIdentity:userIdentity outError:0];

    mEMORY[0x1E69E44A0] = [MEMORY[0x1E69E44A0] sharedController];
    lastKnownHouseholdID = [mEMORY[0x1E69E44A0] lastKnownHouseholdID];

    mEMORY[0x1E6970920] = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
    allowsExplicitContent = [mEMORY[0x1E6970920] allowsExplicitContent];

    eventStream = [playbackEngine eventStream];
    v46[1] = @"account-metadata";
    v47[0] = accountCopy;
    v46[0] = @"account-id";
    v44[0] = @"store-front-id";
    storeFrontIdentifier = [v12 storeFrontIdentifier];
    v19 = storeFrontIdentifier;
    if (!storeFrontIdentifier)
    {
      storeFrontIdentifier = [MEMORY[0x1E695DFB0] null];
    }

    v40 = accountCopy;
    v33 = storeFrontIdentifier;
    v45[0] = storeFrontIdentifier;
    v44[1] = @"store-account-id";
    null = v15;
    if (!v15)
    {
      null = [MEMORY[0x1E695DFB0] null];
    }

    v32 = null;
    v45[1] = null;
    v44[2] = @"active";
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isActiveAccount")}];
    v45[2] = v36;
    v44[3] = @"delegated";
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isDelegated")}];
    v45[3] = v34;
    v44[4] = @"subscription-status";
    subscriptionStatus = [v12 subscriptionStatus];
    v22 = subscriptionStatus;
    if (!subscriptionStatus)
    {
      subscriptionStatus = [MEMORY[0x1E695DFB0] null];
    }

    v39 = playbackEngine;
    v23 = typeCopy;
    v30 = subscriptionStatus;
    v45[4] = subscriptionStatus;
    v44[5] = @"household-id";
    null2 = lastKnownHouseholdID;
    if (!lastKnownHouseholdID)
    {
      null2 = [MEMORY[0x1E695DFB0] null];
    }

    v45[5] = null2;
    v44[6] = @"private-listening-enabled";
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isPrivateListeningEnabled", v30)}];
    v45[6] = v25;
    v44[7] = @"explicit-allowed";
    v26 = [MEMORY[0x1E696AD98] numberWithBool:allowsExplicitContent];
    v45[7] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:8];
    v47[1] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
    v29 = *&timeCopy->var2;
    v42[0] = *&timeCopy->var0;
    v42[1] = v29;
    var4 = timeCopy->var4;
    [eventStream emitEventType:v23 payload:v28 atTime:v42];

    if (!lastKnownHouseholdID)
    {
    }

    playbackEngine = v39;
    if (!v22)
    {
    }

    typeCopy = v23;
    if (!v15)
    {
    }

    accountCopy = v40;
    if (!v19)
    {
    }
  }
}

- (void)_snapshotAccount:(id)account eventType:(id)type event:(id)event nudge:(int)nudge
{
  accountCopy = account;
  typeCopy = type;
  if (event)
  {
    [event monotonicTime];
    v12 = v16;
    v13 = v17;
    v14 = v18;
    v15 = v19;
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v13 = 0uLL;
    v15 = 0.0;
  }

  v20 = v12;
  v21 = vaddq_s64(v13, vdupq_n_s64(nudge));
  v22 = v14;
  v23 = nudge / 1000000000.0 + v15;
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotAccount:accountCopy eventType:typeCopy atTime:&v20];
}

- (void)_addEventForAccountIdentifier:(id)identifier cursor:(id)cursor event:(id)event nudge:(int)nudge
{
  v21[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  eventCopy = event;
  v21[0] = @"session-begin";
  v21[1] = @"session-restore-begin";
  v12 = MEMORY[0x1E695DEC8];
  cursorCopy = cursor;
  v14 = [v12 arrayWithObjects:v21 count:2];
  v15 = [cursorCopy findPreviousEventWithTypes:v14 matchingPayload:0];

  v16 = [cursorCopy cursorUntilEvent:v15];

  v19 = @"account-id";
  v20 = identifierCopy;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v18 = [v16 findPreviousEventWithType:@"account-begin" matchingPayload:v17];

  if (!v18)
  {
    [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotAccount:identifierCopy eventType:@"account-begin" event:eventCopy nudge:-nudge];
  }
}

- (void)_allowsExplicitContentDidChange:(id)change
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[MPCPlaybackAccountManager sharedManager];
  accounts = [v4 accounts];

  v6 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(accounts);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 isDelegated] & 1) == 0)
        {
          hashedDSID = [v10 hashedDSID];
          MPCPlaybackEngineEventGetMonotonicTime(v12);
          [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotAccount:hashedDSID eventType:@"account-update" atTime:v12];
        }
      }

      v7 = [accounts countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_devicePrivateListeningDidChange:(id)change
{
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v6 = [eventStream eventDeliveryDeferralAssertionOfType:0 forReason:@"Updating Device"];

  MPCPlaybackEngineEventGetMonotonicTime(v7);
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotDeviceAtTime:v7];
  [v6 invalidate];
}

- (void)_applicationWillTerminate:(id)terminate
{
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  [eventStream emitEventType:@"application-termination" payload:0];

  eventStream2 = [playbackEngine eventStream];
  [eventStream2 flushEvents];
}

- (void)_applicationDidEnterBackground:(id)background
{
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  [eventStream emitEventType:@"application-background" payload:0];
}

- (void)_applicationWillEnterForeground:(id)foreground
{
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  [eventStream emitEventType:@"application-foreground" payload:0];
}

- (void)environmentMonitorDidChangeNetworkType:(id)type
{
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v6 = [eventStream eventDeliveryDeferralAssertionOfType:0 forReason:@"Updating NetworkType"];

  [(MPCPlaybackEngineEnvironmentConsumer *)self _updateNetworkInfo];
  MPCPlaybackEngineEventGetMonotonicTime(v7);
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotNetworkTypeAtTime:v7];
  [v6 invalidate];
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v6 = [eventStream eventDeliveryDeferralAssertionOfType:0 forReason:@"Updating NetworkReachability"];

  [(MPCPlaybackEngineEnvironmentConsumer *)self _updateNetworkInfo];
  MPCPlaybackEngineEventGetMonotonicTime(v7);
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotNetworkReachabilityAtTime:v7 force:0];
  [v6 invalidate];
}

- (void)unsubscribeFromEventStream:(id)stream
{
  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
  [mEMORY[0x1E69E4428] unregisterObserver:self];

  v5 = +[MPCPlaybackAccountManager sharedManager];
  [v5 unregisterObserver:self];

  subscription = self->_subscription;
  self->_subscription = 0;

  [(MPCPlaybackEngineEnvironmentConsumer *)self _stopMonitoringNetworkTasks];
}

- (void)subscribeToEventStream:(id)stream
{
  objc_storeStrong(&self->_subscription, stream);
  streamCopy = stream;
  mEMORY[0x1E69E4428] = [MEMORY[0x1E69E4428] sharedMonitor];
  [mEMORY[0x1E69E4428] registerObserver:self];

  v7 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MPCPlaybackEngineEnvironmentConsumer_subscribeToEventStream___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(v7, block);

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *MEMORY[0x1E6970370];
  [defaultCenter addObserver:self selector:sel__devicePrivateListeningDidChange_ name:*MEMORY[0x1E6970370] object:0];

  defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter2 addObserver:self selector:sel__devicePrivateListeningDidChange_ name:v9 object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 addObserver:self selector:sel__allowsExplicitContentDidChange_ name:*MEMORY[0x1E69703A0] object:0];

  defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter4 addObserver:self selector:sel__applicationWillTerminate_ name:*MEMORY[0x1E69DDBD0] object:0];

  defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter5 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

  defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter6 addObserver:self selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

  v15 = +[MPCPlaybackAccountManager sharedManager];
  [v15 registerObserver:self];

  subscription = self->_subscription;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__MPCPlaybackEngineEnvironmentConsumer_subscribeToEventStream___block_invoke_2;
  v19[3] = &unk_1E8232330;
  v19[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)subscription subscribeToEventType:@"session-begin" options:257 handler:v19];
  v17 = self->_subscription;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__MPCPlaybackEngineEnvironmentConsumer_subscribeToEventStream___block_invoke_3;
  v18[3] = &unk_1E8232330;
  v18[4] = self;
  [(MPCPlaybackEngineEventStreamSubscription *)v17 subscribeToEventType:@"queue-add" options:257 handler:v18];
  [(MPCPlaybackEngineEnvironmentConsumer *)self _startMonitoringNetworkTasks];
}

uint64_t __63__MPCPlaybackEngineEnvironmentConsumer_subscribeToEventStream___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateNetworkInfo];
  v2 = *(a1 + 32);
  MPCPlaybackEngineEventGetMonotonicTime(v4);
  return [v2 _snapshotNetworkTypeAtTime:v4];
}

uint64_t __63__MPCPlaybackEngineEnvironmentConsumer_subscribeToEventStream___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _snapshotDeviceWithEvent:v4 nudge:1];
  [*(a1 + 32) _snapshotNetworkReachabilityWithEvent:v4 nudge:2];
  [*(a1 + 32) _snapshotNetworkTypeWithEvent:v4 nudge:3];

  return 1;
}

uint64_t __63__MPCPlaybackEngineEnvironmentConsumer_subscribeToEventStream___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 payload];
  v8 = [v7 objectForKeyedSubscript:@"account-id"];

  if (v8)
  {
    v9 = [v5 payload];
    v10 = [v9 objectForKeyedSubscript:@"queue-delegated-account-id"];

    if (v10)
    {
      [*(a1 + 32) _addEventForAccountIdentifier:v10 cursor:v6 event:v5 nudge:1];
    }

    [*(a1 + 32) _addEventForAccountIdentifier:v8 cursor:v6 event:v5 nudge:2];
  }

  return 1;
}

- (void)accountManager:(id)manager didChangeAccounts:(id)accounts
{
  v21 = *MEMORY[0x1E69E9840];
  accountsCopy = accounts;
  playbackEngine = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  eventStream = [playbackEngine eventStream];
  v8 = [eventStream eventDeliveryDeferralAssertionOfType:0 forReason:@"Updating Accounts"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = accountsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        hashedDSID = [*(*(&v16 + 1) + 8 * v13) hashedDSID];
        MPCPlaybackEngineEventGetMonotonicTime(v15);
        [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotAccount:hashedDSID eventType:@"account-update" atTime:v15];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [v8 invalidate];
}

- (void)dealloc
{
  v3 = +[MPCPlaybackAccountManager sharedManager];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = MPCPlaybackEngineEnvironmentConsumer;
  [(MPCPlaybackEngineEnvironmentConsumer *)&v4 dealloc];
}

- (MPCPlaybackEngineEnvironmentConsumer)initWithPlaybackEngine:(id)engine
{
  engineCopy = engine;
  v8.receiver = self;
  v8.super_class = MPCPlaybackEngineEnvironmentConsumer;
  v5 = [(MPCPlaybackEngineEnvironmentConsumer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, engineCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

@end
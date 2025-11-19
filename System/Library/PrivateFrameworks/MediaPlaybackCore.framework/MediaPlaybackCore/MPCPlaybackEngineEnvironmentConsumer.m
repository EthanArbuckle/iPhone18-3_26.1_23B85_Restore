@interface MPCPlaybackEngineEnvironmentConsumer
- (MPCPlaybackEngine)playbackEngine;
- (MPCPlaybackEngineEnvironmentConsumer)initWithPlaybackEngine:(id)a3;
- (void)_addEventForAccountIdentifier:(id)a3 cursor:(id)a4 event:(id)a5 nudge:(int)a6;
- (void)_allowsExplicitContentDidChange:(id)a3;
- (void)_applicationDidEnterBackground:(id)a3;
- (void)_applicationWillEnterForeground:(id)a3;
- (void)_applicationWillTerminate:(id)a3;
- (void)_devicePrivateListeningDidChange:(id)a3;
- (void)_emitNetworkEventType:(id)a3 tag:(id)a4 payload:(id)a5;
- (void)_handleURLRequestDidStartNotif:(id)a3;
- (void)_handleURLRequestTaskDidCompleteNotif:(id)a3;
- (void)_handleURLRequestTaskDidReceiveResponseNotif:(id)a3;
- (void)_handleURLRequestTaskDidResumeNotif:(id)a3;
- (void)_snapshotAccount:(id)a3 eventType:(id)a4 atTime:(id *)a5;
- (void)_snapshotAccount:(id)a3 eventType:(id)a4 event:(id)a5 nudge:(int)a6;
- (void)_snapshotDeviceAtTime:(id *)a3;
- (void)_snapshotDeviceWithEvent:(id)a3 nudge:(int)a4;
- (void)_snapshotNetworkReachabilityAtTime:(id *)a3 force:(BOOL)a4;
- (void)_snapshotNetworkReachabilityWithEvent:(id)a3 nudge:(int)a4;
- (void)_snapshotNetworkTypeAtTime:(id *)a3;
- (void)_snapshotNetworkTypeWithEvent:(id)a3 nudge:(int)a4;
- (void)_startMonitoringNetworkTasks;
- (void)_stopMonitoringNetworkTasks;
- (void)_updateNetworkInfo;
- (void)accountManager:(id)a3 didChangeAccounts:(id)a4;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
- (void)environmentMonitorDidChangeNetworkType:(id)a3;
- (void)subscribeToEventStream:(id)a3;
- (void)unsubscribeFromEventStream:(id)a3;
@end

@implementation MPCPlaybackEngineEnvironmentConsumer

- (void)_updateNetworkInfo
{
  v18 = [MEMORY[0x1E69E4428] sharedMonitor];
  v3 = [v18 signalStrength];
  v4 = [v18 signalInfo];
  v5 = [v18 networkType];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v18, "isNetworkConstrained")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v18, "isCurrentNetworkLinkExpensive")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v18, "isCurrentNetworkLinkHighQuality")}];
  os_unfair_lock_lock(&self->_lock);
  signalInfo = self->_signalInfo;
  self->_signalInfo = v4;
  v10 = v4;

  signalStrength = self->_signalStrength;
  self->_signalStrength = v3;
  v12 = v3;

  isNetworkConstrained = self->_isNetworkConstrained;
  self->_networkType = v5;
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
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:self selector:sel__handleURLRequestDidStartNotif_ name:*MEMORY[0x1E69E4360] object:0];
  [v3 addObserver:self selector:sel__handleURLRequestTaskDidResumeNotif_ name:*MEMORY[0x1E69E4378] object:0];
  [v3 addObserver:self selector:sel__handleURLRequestTaskDidReceiveResponseNotif_ name:*MEMORY[0x1E69E4370] object:0];
  [v3 addObserver:self selector:sel__handleURLRequestTaskDidCompleteNotif_ name:*MEMORY[0x1E69E4368] object:0];
}

- (void)_emitNetworkEventType:(id)a3 tag:(id)a4 payload:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v11 = [v10 eventStream];

  if (v11)
  {
    v12 = v9;
    v13 = [v8 contextInfo];
    v14 = [v13 count];

    if (v14)
    {
      v15 = [v12 mutableCopy];
      v16 = [v8 contextInfo];
      [v15 setObject:v16 forKeyedSubscript:@"network-request-context-info"];

      v17 = [v15 copy];
      v12 = v17;
    }

    [v11 emitEventType:v18 payload:v12];
  }
}

- (void)_handleURLRequestTaskDidCompleteNotif:(id)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 requestContext];
  v7 = [v6 mpc_tag];

  v8 = [v7 playbackEngineID];
  v9 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v10 = [v9 engineID];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v12 = [v4 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"error"];

    v19[0] = @"network-request-id";
    v14 = [v5 mpc_requestID];
    v20[0] = v14;
    v19[1] = @"network-metrics";
    v15 = [v5 aggregatedPerformanceMetrics];
    v16 = v15;
    if (!v15)
    {
      v16 = [MEMORY[0x1E695DFB0] null];
    }

    v20[1] = v16;
    v19[2] = @"network-task-error";
    v17 = v13;
    if (!v13)
    {
      v17 = [MEMORY[0x1E695DFB0] null];
    }

    v20[2] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [(MPCPlaybackEngineEnvironmentConsumer *)self _emitNetworkEventType:@"network-task-end" tag:v7 payload:v18];

    if (v13)
    {
      if (v15)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)_handleURLRequestTaskDidReceiveResponseNotif:(id)a3
{
  v22[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 requestContext];
  v7 = [v6 mpc_tag];

  v8 = [v7 playbackEngineID];
  v9 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v10 = [v9 engineID];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v12 = [v4 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"responseHeaders"];
    v14 = [v13 msv_filter:&__block_literal_global_4467];

    v21[0] = @"network-request-id";
    v20 = [v5 mpc_requestID];
    v22[0] = v20;
    v21[1] = @"network-response-status-code";
    v15 = [v4 userInfo];
    v16 = [v15 objectForKeyedSubscript:@"statusCode"];
    v17 = v16;
    if (!v16)
    {
      v17 = [MEMORY[0x1E695DFB0] null];
    }

    v22[1] = v17;
    v21[2] = @"network-response-headers";
    v18 = v14;
    if (!v14)
    {
      v18 = [MEMORY[0x1E695DFB0] null];
    }

    v22[2] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    [(MPCPlaybackEngineEnvironmentConsumer *)self _emitNetworkEventType:@"network-task-response" tag:v7 payload:v19];

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

- (void)_handleURLRequestTaskDidResumeNotif:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 requestContext];
  v7 = [v6 mpc_tag];

  v8 = [v7 playbackEngineID];
  v9 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v10 = [v9 engineID];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v17[0] = @"network-request-id";
    v12 = [v5 mpc_requestID];
    v17[1] = @"network-task-id";
    v18[0] = v12;
    v13 = [v4 userInfo];
    v14 = [v13 objectForKeyedSubscript:@"networkTaskID"];
    v15 = v14;
    if (!v14)
    {
      v15 = [MEMORY[0x1E695DFB0] null];
    }

    v18[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
    [(MPCPlaybackEngineEnvironmentConsumer *)self _emitNetworkEventType:@"network-task-resume" tag:v7 payload:v16];

    if (!v14)
    {
    }
  }
}

- (void)_handleURLRequestDidStartNotif:(id)a3
{
  v20[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 object];
  v6 = [v5 requestContext];
  v7 = [v6 mpc_tag];

  v8 = [v7 playbackEngineID];
  v9 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v10 = [v9 engineID];
  v11 = [v8 isEqual:v10];

  if (v11)
  {
    v19[0] = @"network-request-id";
    v18 = [v5 mpc_requestID];
    v20[0] = v18;
    v19[1] = @"network-request-url";
    v12 = [v4 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"requestURL"];
    v20[1] = v13;
    v19[2] = @"network-request-name";
    v14 = [v4 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"requestName"];
    v16 = v15;
    if (!v15)
    {
      v16 = [MEMORY[0x1E695DFB0] null];
    }

    v20[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    [(MPCPlaybackEngineEnvironmentConsumer *)self _emitNetworkEventType:@"network-task-begin" tag:v7 payload:v17];

    if (!v15)
    {
    }
  }
}

- (void)_stopMonitoringNetworkTasks
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69E4360] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69E4378] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69E4370] object:0];
  [v3 removeObserver:self name:*MEMORY[0x1E69E4368] object:0];
}

- (void)_snapshotNetworkTypeAtTime:(id *)a3
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
  v23 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v22 = [v23 eventStream];
  v27[0] = @"network-signal-info";
  v11 = v6;
  v24 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v11;
  v28[0] = v11;
  v27[1] = @"network-signal-strength";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v12;
  v28[1] = v12;
  v27[2] = @"network-type";
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:networkType];
  v28[2] = v13;
  v27[3] = @"network-constrained";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v28[3] = v14;
  v27[4] = @"network-expensive";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v5;
  v28[4] = v15;
  v27[5] = @"network-high-quality";
  v17 = v10;
  if (!v10)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v28[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:6];
  v19 = *&a3->var2;
  v25[0] = *&a3->var0;
  v25[1] = v19;
  var4 = a3->var4;
  [v22 emitEventType:@"network-type-changed" payload:v18 atTime:v25];

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

- (void)_snapshotNetworkTypeWithEvent:(id)a3 nudge:(int)a4
{
  if (a3)
  {
    [a3 monotonicTime];
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
  v15 = vaddq_s64(v7, vdupq_n_s64(a4));
  v16 = v8;
  v17 = a4 / 1000000000.0 + v9;
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotNetworkTypeAtTime:&v14];
}

- (void)_snapshotNetworkReachabilityAtTime:(id *)a3 force:(BOOL)a4
{
  v4 = a4;
  v22[3] = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E69E4428] sharedMonitor];
  if ([v7 isRemoteServerReachable])
  {
    v8 = 2;
  }

  else
  {
    v8 = [v7 isRemoteServerLikelyReachable];
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = self->_reachability != v8 || v4;
  if (v9 == 1)
  {
    self->_reachability = v8;
  }

  v10 = self->_signalStrength;
  v11 = self->_signalInfo;
  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    v12 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
    v13 = [v12 eventStream];
    v21[0] = @"network-signal-info";
    v14 = v11;
    if (!v11)
    {
      v14 = [MEMORY[0x1E695DFB0] null];
    }

    v22[0] = v14;
    v21[1] = @"network-signal-strength";
    v15 = v10;
    if (!v10)
    {
      v15 = [MEMORY[0x1E695DFB0] null];
    }

    v22[1] = v15;
    v21[2] = @"network-reachability";
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    v22[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v18 = *&a3->var2;
    v19[0] = *&a3->var0;
    v19[1] = v18;
    var4 = a3->var4;
    [v13 emitEventType:@"network-reachability-changed" payload:v17 atTime:v19];

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

- (void)_snapshotNetworkReachabilityWithEvent:(id)a3 nudge:(int)a4
{
  if (a3)
  {
    [a3 monotonicTime];
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
  v15 = vaddq_s64(v7, vdupq_n_s64(a4));
  v16 = v8;
  v17 = a4 / 1000000000.0 + v9;
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotNetworkReachabilityAtTime:&v14 force:1];
}

- (void)_snapshotDeviceAtTime:(id *)a3
{
  v66[1] = *MEMORY[0x1E69E9840];
  v4 = MGCopyAnswer();
  v5 = [MEMORY[0x1E69E4420] currentDeviceInfo];
  v6 = [MEMORY[0x1E69E43B0] defaultInfo];
  v7 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v8 = [v7 isDevicePrivateListeningEnabled];
  v57 = [v8 BOOLValue];

  v9 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v10 = [v9 isFocusModePrivateListeningEnabled];

  v11 = objc_alloc(MEMORY[0x1E69E4618]);
  v12 = [MEMORY[0x1E69E4680] activeAccount];
  v13 = [v11 initWithIdentity:v12];
  v14 = [v13 userAgent];

  v15 = [MEMORY[0x1E696AAE8] mainBundle];
  v16 = [v15 infoDictionary];
  v60 = [v16 objectForKeyedSubscript:@"CFBundleVersion"];

  v17 = MSVProcessCopyUUID();
  v55 = [v17 UUIDString];

  v18 = MSVProcessCopyMediaFrameworksDescriptions();
  IsInternalCarry = MSVDeviceIsInternalCarry();
  if (v10)
  {
    if ([v10 BOOLValue])
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

  v52 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v59 = [v52 eventStream];
  v65 = @"device-metadata";
  v63[0] = @"device-name";
  v51 = [v5 deviceName];
  v64[0] = v51;
  v63[1] = @"device-model";
  v50 = [v5 deviceModel];
  v64[1] = v50;
  v63[2] = @"device-software-variant";
  v20 = v4;
  if (!v4)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = v20;
  v64[2] = v20;
  v63[3] = @"application-name";
  v21 = [v6 processName];
  v49 = v21;
  if (!v21)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v21;
  v64[3] = v21;
  v63[4] = @"application-bundle-id";
  v22 = [v6 bundleIdentifier];
  v48 = v22;
  if (!v22)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v22;
  v64[4] = v22;
  v63[5] = @"application-version";
  v23 = [v6 clientVersion];
  v47 = v23;
  if (!v23)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v23;
  v64[5] = v23;
  v63[6] = @"system-name";
  v45 = [v5 productPlatform];
  v64[6] = v45;
  v63[7] = @"system-version";
  v24 = [v5 productVersion];
  v25 = v24;
  if (!v24)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v24;
  v64[7] = v24;
  v63[8] = @"system-build";
  v44 = [v5 buildVersion];
  v64[8] = v44;
  v63[9] = @"private-listening-enabled";
  v43 = [MEMORY[0x1E696AD98] numberWithBool:v57];
  v64[9] = v43;
  v63[10] = @"focus-mode-private-listening-enabled";
  v56 = v10;
  if (v10)
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
  v26 = v14;
  if (!v14)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v26;
  v64[11] = v26;
  v63[12] = @"media-frameworks";
  v27 = v18;
  if (!v18)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = v18;
  v64[12] = v27;
  v63[13] = @"application-source-version";
  v28 = v60;
  if (!v60)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v14;
  v30 = v6;
  v64[13] = v28;
  v63[14] = @"application-uuid";
  v31 = v55;
  if (!v55)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v64[14] = v31;
  v63[15] = @"internal-carry";
  v32 = [MEMORY[0x1E696AD98] numberWithBool:IsInternalCarry];
  v64[15] = v32;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:16];
  v66[0] = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
  v35 = *&a3->var2;
  v61[0] = *&a3->var0;
  v61[1] = v35;
  var4 = a3->var4;
  [v59 emitEventType:@"device-changed" payload:v34 atTime:v61];

  if (!v55)
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

- (void)_snapshotDeviceWithEvent:(id)a3 nudge:(int)a4
{
  if (a3)
  {
    [a3 monotonicTime];
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
  v15 = vaddq_s64(v7, vdupq_n_s64(a4));
  v16 = v8;
  v17 = a4 / 1000000000.0 + v9;
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotDeviceAtTime:&v14];
}

- (void)_snapshotAccount:(id)a3 eventType:(id)a4 atTime:(id *)a5
{
  v47[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v11 = +[MPCPlaybackAccountManager sharedManager];
  v12 = [v11 accountForHashedDSID:v8];

  if (v12)
  {
    v38 = a5;
    v13 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v14 = [v12 userIdentity];
    v15 = [v13 DSIDForUserIdentity:v14 outError:0];

    v16 = [MEMORY[0x1E69E44A0] sharedController];
    v37 = [v16 lastKnownHouseholdID];

    v17 = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
    v35 = [v17 allowsExplicitContent];

    v41 = [v10 eventStream];
    v46[1] = @"account-metadata";
    v47[0] = v8;
    v46[0] = @"account-id";
    v44[0] = @"store-front-id";
    v18 = [v12 storeFrontIdentifier];
    v19 = v18;
    if (!v18)
    {
      v18 = [MEMORY[0x1E695DFB0] null];
    }

    v40 = v8;
    v33 = v18;
    v45[0] = v18;
    v44[1] = @"store-account-id";
    v20 = v15;
    if (!v15)
    {
      v20 = [MEMORY[0x1E695DFB0] null];
    }

    v32 = v20;
    v45[1] = v20;
    v44[2] = @"active";
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isActiveAccount")}];
    v45[2] = v36;
    v44[3] = @"delegated";
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isDelegated")}];
    v45[3] = v34;
    v44[4] = @"subscription-status";
    v21 = [v12 subscriptionStatus];
    v22 = v21;
    if (!v21)
    {
      v21 = [MEMORY[0x1E695DFB0] null];
    }

    v39 = v10;
    v23 = v9;
    v30 = v21;
    v45[4] = v21;
    v44[5] = @"household-id";
    v24 = v37;
    if (!v37)
    {
      v24 = [MEMORY[0x1E695DFB0] null];
    }

    v45[5] = v24;
    v44[6] = @"private-listening-enabled";
    v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v12, "isPrivateListeningEnabled", v30)}];
    v45[6] = v25;
    v44[7] = @"explicit-allowed";
    v26 = [MEMORY[0x1E696AD98] numberWithBool:v35];
    v45[7] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:8];
    v47[1] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
    v29 = *&v38->var2;
    v42[0] = *&v38->var0;
    v42[1] = v29;
    var4 = v38->var4;
    [v41 emitEventType:v23 payload:v28 atTime:v42];

    if (!v37)
    {
    }

    v10 = v39;
    if (!v22)
    {
    }

    v9 = v23;
    if (!v15)
    {
    }

    v8 = v40;
    if (!v19)
    {
    }
  }
}

- (void)_snapshotAccount:(id)a3 eventType:(id)a4 event:(id)a5 nudge:(int)a6
{
  v10 = a3;
  v11 = a4;
  if (a5)
  {
    [a5 monotonicTime];
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
  v21 = vaddq_s64(v13, vdupq_n_s64(a6));
  v22 = v14;
  v23 = a6 / 1000000000.0 + v15;
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotAccount:v10 eventType:v11 atTime:&v20];
}

- (void)_addEventForAccountIdentifier:(id)a3 cursor:(id)a4 event:(id)a5 nudge:(int)a6
{
  v21[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a5;
  v21[0] = @"session-begin";
  v21[1] = @"session-restore-begin";
  v12 = MEMORY[0x1E695DEC8];
  v13 = a4;
  v14 = [v12 arrayWithObjects:v21 count:2];
  v15 = [v13 findPreviousEventWithTypes:v14 matchingPayload:0];

  v16 = [v13 cursorUntilEvent:v15];

  v19 = @"account-id";
  v20 = v10;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v18 = [v16 findPreviousEventWithType:@"account-begin" matchingPayload:v17];

  if (!v18)
  {
    [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotAccount:v10 eventType:@"account-begin" event:v11 nudge:-a6];
  }
}

- (void)_allowsExplicitContentDidChange:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[MPCPlaybackAccountManager sharedManager];
  v5 = [v4 accounts];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (([v10 isDelegated] & 1) == 0)
        {
          v11 = [v10 hashedDSID];
          MPCPlaybackEngineEventGetMonotonicTime(v12);
          [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotAccount:v11 eventType:@"account-update" atTime:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)_devicePrivateListeningDidChange:(id)a3
{
  v4 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v5 = [v4 eventStream];
  v6 = [v5 eventDeliveryDeferralAssertionOfType:0 forReason:@"Updating Device"];

  MPCPlaybackEngineEventGetMonotonicTime(v7);
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotDeviceAtTime:v7];
  [v6 invalidate];
}

- (void)_applicationWillTerminate:(id)a3
{
  v5 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v3 = [v5 eventStream];
  [v3 emitEventType:@"application-termination" payload:0];

  v4 = [v5 eventStream];
  [v4 flushEvents];
}

- (void)_applicationDidEnterBackground:(id)a3
{
  v4 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v3 = [v4 eventStream];
  [v3 emitEventType:@"application-background" payload:0];
}

- (void)_applicationWillEnterForeground:(id)a3
{
  v4 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v3 = [v4 eventStream];
  [v3 emitEventType:@"application-foreground" payload:0];
}

- (void)environmentMonitorDidChangeNetworkType:(id)a3
{
  v4 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v5 = [v4 eventStream];
  v6 = [v5 eventDeliveryDeferralAssertionOfType:0 forReason:@"Updating NetworkType"];

  [(MPCPlaybackEngineEnvironmentConsumer *)self _updateNetworkInfo];
  MPCPlaybackEngineEventGetMonotonicTime(v7);
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotNetworkTypeAtTime:v7];
  [v6 invalidate];
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  v4 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v5 = [v4 eventStream];
  v6 = [v5 eventDeliveryDeferralAssertionOfType:0 forReason:@"Updating NetworkReachability"];

  [(MPCPlaybackEngineEnvironmentConsumer *)self _updateNetworkInfo];
  MPCPlaybackEngineEventGetMonotonicTime(v7);
  [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotNetworkReachabilityAtTime:v7 force:0];
  [v6 invalidate];
}

- (void)unsubscribeFromEventStream:(id)a3
{
  v4 = [MEMORY[0x1E69E4428] sharedMonitor];
  [v4 unregisterObserver:self];

  v5 = +[MPCPlaybackAccountManager sharedManager];
  [v5 unregisterObserver:self];

  subscription = self->_subscription;
  self->_subscription = 0;

  [(MPCPlaybackEngineEnvironmentConsumer *)self _stopMonitoringNetworkTasks];
}

- (void)subscribeToEventStream:(id)a3
{
  objc_storeStrong(&self->_subscription, a3);
  v5 = a3;
  v6 = [MEMORY[0x1E69E4428] sharedMonitor];
  [v6 registerObserver:self];

  v7 = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__MPCPlaybackEngineEnvironmentConsumer_subscribeToEventStream___block_invoke;
  block[3] = &unk_1E8239298;
  block[4] = self;
  dispatch_async(v7, block);

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  v9 = *MEMORY[0x1E6970370];
  [v8 addObserver:self selector:sel__devicePrivateListeningDidChange_ name:*MEMORY[0x1E6970370] object:0];

  v10 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v10 addObserver:self selector:sel__devicePrivateListeningDidChange_ name:v9 object:0];

  v11 = [MEMORY[0x1E696AD88] defaultCenter];
  [v11 addObserver:self selector:sel__allowsExplicitContentDidChange_ name:*MEMORY[0x1E69703A0] object:0];

  v12 = [MEMORY[0x1E696AD88] defaultCenter];
  [v12 addObserver:self selector:sel__applicationWillTerminate_ name:*MEMORY[0x1E69DDBD0] object:0];

  v13 = [MEMORY[0x1E696AD88] defaultCenter];
  [v13 addObserver:self selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];

  v14 = [MEMORY[0x1E696AD88] defaultCenter];
  [v14 addObserver:self selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

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

- (void)accountManager:(id)a3 didChangeAccounts:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [(MPCPlaybackEngineEnvironmentConsumer *)self playbackEngine];
  v7 = [v6 eventStream];
  v8 = [v7 eventDeliveryDeferralAssertionOfType:0 forReason:@"Updating Accounts"];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v5;
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

        v14 = [*(*(&v16 + 1) + 8 * v13) hashedDSID];
        MPCPlaybackEngineEventGetMonotonicTime(v15);
        [(MPCPlaybackEngineEnvironmentConsumer *)self _snapshotAccount:v14 eventType:@"account-update" atTime:v15];

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

- (MPCPlaybackEngineEnvironmentConsumer)initWithPlaybackEngine:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MPCPlaybackEngineEnvironmentConsumer;
  v5 = [(MPCPlaybackEngineEnvironmentConsumer *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_playbackEngine, v4);
    v6->_lock._os_unfair_lock_opaque = 0;
  }

  return v6;
}

@end
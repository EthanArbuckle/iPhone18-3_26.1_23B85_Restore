@interface MRNotificationClient
+ (id)nowPlayingNotifications;
- (BOOL)_postNotification:(id)notification userInfo:(id)info object:(id)object withHandler:(id)handler;
- (BOOL)_processAlwaysNeedsNowPlayingNotifications;
- (BOOL)isRegisteredForNowPlayingNotifications;
- (MRNotificationClient)init;
- (OS_dispatch_queue)notificationQueue;
- (id)debugDescription;
- (void)_syncWakingPlayerPathsWithReplyQueue:(id)queue completion:(id)completion;
- (void)dispatchNotification:(id)notification userInfo:(id)info object:(id)object;
- (void)registerForNowPlayingNotificationsWithQueue:(id)queue force:(BOOL)force;
- (void)registerForWakingNowPlayingNotificationsForPlayerPath:(id)path replyQueue:(id)queue completion:(id)completion;
- (void)restoreNowPlayingClientState;
- (void)unregisterForNowPlayingNotifications;
- (void)unregisterForWakingNowPlayingNotificationsForPlayerPath:(id)path replyQueue:(id)queue completion:(id)completion;
@end

@implementation MRNotificationClient

- (MRNotificationClient)init
{
  v43[58] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = MRNotificationClient;
  v2 = [(MRNotificationClient *)&v35 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MediaRemote.MRNotificationClient.serialQueue", v3);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MediaRemote.MRNotificationClient.notificationQueue", v6);
    notificationQueue = v2->_notificationQueue;
    v2->_notificationQueue = v7;

    v43[0] = @"kMRMediaRemoteNowPlayingInfoDidChangeNotification";
    v43[1] = @"kMRMediaRemoteOriginNowPlayingInfoDidChangeNotification";
    v43[2] = @"kMRMediaRemotePlayerNowPlayingInfoDidChangeNotification";
    v43[3] = @"kMRMediaRemoteNowPlayingApplicationDidChangeNotification";
    v43[4] = @"kMRMediaRemoteOriginNowPlayingApplicationDidChangeNotification";
    v43[5] = @"kMRMediaRemoteNowPlayingApplicationIsPlayingDidChangeNotification";
    v43[6] = @"kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification";
    v43[7] = @"kMRMediaRemotePlayerIsPlayingDidChangeNotification";
    v43[8] = @"kMRMediaRemoteNowPlayingApplicationPlaybackStateDidChangeNotification";
    v43[9] = @"kMRMediaRemoteOriginNowPlayingApplicationPlaybackStateDidChangeNotification";
    v43[10] = @"_kMRMediaRemotePlayerPlaybackStateDidChangeNotification";
    v43[11] = @"kMRMediaRemoteNowPlayingApplicationDisplayNameDidChangeNotification";
    v43[12] = @"kMRMediaRemoteOriginNowPlayingApplicationDisplayNameDidChangeNotification";
    v43[13] = @"kMRMediaRemoteApplicationDisplayNameDidChangeNotification";
    v43[14] = @"kMRMediaRemoteNowPlayingPlayerDidChange";
    v43[15] = @"kMRMediaRemoteOriginNowPlayingPlayerDidChange";
    v43[16] = @"kMRMediaRemoteActivePlayerDidChange";
    v43[17] = @"kMRMediaRemotePlayerPictureInPictureDidChange";
    v43[18] = @"kMRMediaRemoteActivePlayerPathsDidChange";
    v43[19] = @"kMRMediaRemoteAudioFormatContentInfoDidChange";
    v43[20] = @"kMRMediaRemoteNowPlayingApplicationDidRegister";
    v43[21] = @"kMRMediaRemoteNowPlayingApplicationDidUnregister";
    v43[22] = @"kMRMediaRemoteNowPlayingApplicationClientStateDidChange";
    v43[23] = @"kMRMediaRemoteOriginNowPlayingApplicationClientStateDidChange";
    v43[24] = @"kMRMediaRemoteApplicationClientStateDidChange";
    v43[25] = @"kMRMediaRemoteNowPlayingPlayerStateDidChange";
    v43[26] = @"kMRMediaRemoteOriginNowPlayingPlayerStateDidChange";
    v43[27] = @"kMRMediaRemotePlayerStateDidChange";
    v43[28] = @"kMRMediaRemoteNowPlayingPlayerDidRegister";
    v43[29] = @"kMRMediaRemoteNowPlayingPlayerDidUnregister";
    v43[30] = @"kMRMediaRemoteNowPlayingApplicationDidRegisterCanBeNowPlaying";
    v43[31] = @"kMRMediaRemoteNowPlayingApplicationDidUnregisterCanBeNowPlaying";
    v43[32] = @"kMRMediaRemoteNowPlayingExternalTouchBarInvocationNotification";
    v43[33] = @"com.apple.MediaRemote.nowPlayingApplicationIsPlayingDidChange";
    v43[34] = @"com.apple.MediaRemote.nowPlayingActivePlayersIsPlayingDidChange";
    v43[35] = @"kMRNowPlayingPlaybackQueueChangedNotification";
    v43[36] = @"kMROriginNowPlayingPlaybackQueueChangedNotification";
    v43[37] = @"kMRPlayerPlaybackQueueChangedNotification";
    v43[38] = @"kMRPlaybackQueueContentItemsChangedNotification";
    v43[39] = @"kMROriginPlaybackQueueContentItemsChangedNotification";
    v43[40] = @"kMRPlayerPlaybackQueueContentItemsChangedNotification";
    v43[41] = @"kMRPlaybackQueueContentItemArtworkChangedNotification";
    v43[42] = @"kMROriginPlaybackQueueContentItemArtworkChangedNotification";
    v43[43] = @"kMRPlayerPlaybackQueueContentItemArtworkChangedNotification";
    v43[44] = @"kMRMediaRemoteApplicationDidForeground";
    v43[45] = @"kMRMediaRemoteOriginNowPlayingApplicationDidForegroundNotification";
    v43[46] = @"kMRMediaRemoteNowPlayingApplicationDidForegroundNotification";
    v43[47] = @"kMRMediaRemoteElectedPlayerDidChangeNotification";
    v43[48] = @"kMRMediaRemoteLockScreenControlsPlayerPathDidChangeNotification";
    v43[49] = @"kMRMediaRemoteLockScreenControlsDidActivateNotification";
    v43[50] = @"kMRMediaRemoteLockScreenControlsDidDeactivateNotification";
    v43[51] = @"kMRMediaRemoteLockScreenControlsDidAppearNotification";
    v43[52] = @"kMRMediaRemoteLockScreenControlsDidDisappearNotification";
    v43[53] = @"kMRMediaRemoteNowPlayingPlayerDidRegisterCanBeNowPlaying";
    v43[54] = @"kMRMediaRemoteNowPlayingPlayerDidUnregisterCanBeNowPlaying";
    v43[55] = @"MRNowPlayingPlaybackQueueNowPlayingItemChangedNotification";
    v43[56] = @"MROriginNowPlayingPlaybackQueueNowPlayingItemChangedNotification";
    v43[57] = @"MRPlayerPlaybackQueueNowPlayingItemChangedNotification";
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:58];
    v10 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v9];
    nowPlayingNotifications = v2->_nowPlayingNotifications;
    v2->_nowPlayingNotifications = v10;

    v42[0] = @"kMRMediaRemoteWillPresentRouteAuthenticationPromptNotification";
    v42[1] = @"kMRMediaRemotePickableRoutesDidChangeNotification";
    v42[2] = @"kMRMediaRemotePairingHandlerNotification";
    v42[3] = @"_MRMediaRemoteDeviceAvailableForMediaSuggestionsNotification";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
    v13 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v12];
    routesChangedNotifications = v2->_routesChangedNotifications;
    v2->_routesChangedNotifications = v13;

    v41 = @"kMRMediaRemotePickedRouteVolumeControlAvailabilityDidChangeNotification";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    v16 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v15];
    volumeControlNotifications = v2->_volumeControlNotifications;
    v2->_volumeControlNotifications = v16;

    v40 = @"kMRMediaRemoteExternalScreenTypeDidChangeNotification";
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
    v19 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v18];
    externalScreenNotifications = v2->_externalScreenNotifications;
    v2->_externalScreenNotifications = v19;

    v39[0] = @"kMRMediaRemoteActiveOriginDidChangeNotification";
    v39[1] = @"kMRMediaRemoteAvailableOriginsDidChangeNotification";
    v39[2] = @"kMRMediaRemoteOriginDidRegisterNotification";
    v39[3] = @"kMRMediaRemoteOriginDidUnregisterNotification";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:4];
    v22 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v21];
    originNotifications = v2->_originNotifications;
    v2->_originNotifications = v22;

    v38[0] = @"kMRMediaRemoteSupportedCommandsDidChangeNotification";
    v38[1] = @"kMRMediaRemoteOriginSupportedCommandsDidChangeNotification";
    v38[2] = @"kMRMediaRemotePlayerSupportedCommandsDidChangeNotification";
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:3];
    v25 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v24];
    supportedCommandsNotifications = v2->_supportedCommandsNotifications;
    v2->_supportedCommandsNotifications = v25;

    v37 = @"kMRVirtualVoiceInputRecordingStateDidChangeNotification";
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
    v28 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v27];
    voiceInputNotifications = v2->_voiceInputNotifications;
    v2->_voiceInputNotifications = v28;

    v36 = @"kMRMediaRemoteApplicationDidReportPlaybackErrorNotification";
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
    v31 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithArray:v30];
    errorNotifications = v2->_errorNotifications;
    v2->_errorNotifications = v31;
  }

  v33 = *MEMORY[0x1E69E9840];
  return v2;
}

- (OS_dispatch_queue)notificationQueue
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__26;
  v10 = __Block_byref_object_dispose__26;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__MRNotificationClient_notificationQueue__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __41__MRNotificationClient_notificationQueue__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v2 = *(v1 + 32);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v2);
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@:%p { \n", objc_opt_class(), self];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__MRNotificationClient_debugDescription__block_invoke;
  block[3] = &unk_1E769A4A0;
  v5 = v3;
  v9 = v5;
  selfCopy = self;
  dispatch_sync(serialQueue, block);
  v6 = v5;

  return v5;
}

uint64_t __40__MRNotificationClient_debugDescription__block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendFormat:@"    nowPlayingObservers = %lu\n", *(*(a1 + 40) + 8)];
  v2 = *(a1 + 40);
  if (*(v2 + 113) == 1)
  {
    [*(a1 + 32) appendFormat:@"    supportedCommandNotifications = %@\n", @"YES"];
    v2 = *(a1 + 40);
  }

  if (*(v2 + 115) == 1)
  {
    [*(a1 + 32) appendFormat:@"    volumeControlNotifications = %@\n", @"YES"];
    v2 = *(a1 + 40);
  }

  if (*(v2 + 116) == 1)
  {
    [*(a1 + 32) appendFormat:@"    originNotifications = %@\n", @"YES"];
    v2 = *(a1 + 40);
  }

  v3 = *(v2 + 16);
  if (v3)
  {
    [*(a1 + 32) appendFormat:@"    customNotificationQueue = %s\n", dispatch_queue_get_label(v3)];
    v2 = *(a1 + 40);
  }

  v4 = *(v2 + 104);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = MRCreateIndentedDebugDescriptionFromArray(v4);
    [v5 appendFormat:@"    subscribedWakingPlayerPaths = %@\n", v6];
  }

  v7 = *(a1 + 32);

  return [v7 appendString:@"}\n"];
}

- (void)registerForNowPlayingNotificationsWithQueue:(id)queue force:(BOOL)force
{
  queueCopy = queue;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__MRNotificationClient_registerForNowPlayingNotificationsWithQueue_force___block_invoke;
  block[3] = &unk_1E769BFC8;
  forceCopy = force;
  block[4] = self;
  v10 = queueCopy;
  v8 = queueCopy;
  dispatch_sync(serialQueue, block);
}

void __74__MRNotificationClient_registerForNowPlayingNotificationsWithQueue_force___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 48) & 1) != 0 || !*(*(a1 + 32) + 16))
  {
    v2 = *(a1 + 40);
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    if (v2)
    {
      v4 = dispatch_queue_create_with_target_V2("com.apple.MediaRemote.MRNotificationClient/nowPlayingNotifications", v3, v2);
    }

    else
    {
      v4 = dispatch_queue_create("com.apple.MediaRemote.MRNotificationClient/nowPlayingNotifications", v3);
    }

    v5 = v4;
    objc_storeStrong((*(a1 + 32) + 16), v4);
  }

  ++*(*(a1 + 32) + 8);
  v6 = _MRLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1 + 32) + 8);
    v9 = 134217984;
    v10 = v7;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "%lu clients have now registered for Now Playing Notifications", &v9, 0xCu);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)unregisterForNowPlayingNotifications
{
  v5[0] = 0;
  v5[1] = v5;
  v5[2] = 0x2020000000;
  v6 = 0;
  serialQueue = self->_serialQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__MRNotificationClient_unregisterForNowPlayingNotifications__block_invoke;
  v4[3] = &unk_1E769A4C8;
  v4[4] = self;
  v4[5] = v5;
  dispatch_sync(serialQueue, v4);
  [(MRNotificationClient *)self dispatchNotification:@"MRMediaRemoteUnregisterForNowPlayingNotifications" userInfo:0 object:0];
  _Block_object_dispose(v5, 8);
}

void __60__MRNotificationClient_unregisterForNowPlayingNotifications__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = v3 != 0;
  v5 = v3 - 1;
  if (!v4)
  {
    v5 = 0;
  }

  *(v2 + 8) = v5;
  v6 = *(a1 + 32);
  if (!*(v6 + 8))
  {
    v7 = *(v6 + 16);
    *(v6 + 16) = 0;

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v8 = _MRLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*(a1 + 32) + 8);
    v11 = 134217984;
    v12 = v9;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "%lu clients have now registered for Now Playing Notifications", &v11, 0xCu);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRegisteredForNowPlayingNotifications
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__MRNotificationClient_isRegisteredForNowPlayingNotifications__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __62__MRNotificationClient_isRegisteredForNowPlayingNotifications__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    result = 1;
  }

  else
  {
    result = [v2 _processAlwaysNeedsNowPlayingNotifications];
  }

  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_processAlwaysNeedsNowPlayingNotifications
{
  if (_processAlwaysNeedsNowPlayingNotifications_onceToken != -1)
  {
    [MRNotificationClient _processAlwaysNeedsNowPlayingNotifications];
  }

  return _processAlwaysNeedsNowPlayingNotifications_allowed;
}

void __66__MRNotificationClient__processAlwaysNeedsNowPlayingNotifications__block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v2 = [v0 processName];

  v1 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F1577548];
  _processAlwaysNeedsNowPlayingNotifications_allowed = [v1 containsObject:v2];
}

- (void)registerForWakingNowPlayingNotificationsForPlayerPath:(id)path replyQueue:(id)queue completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  queueCopy = queue;
  completionCopy = completion;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v13 = [MEMORY[0x1E695DF00] now];
  v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"registerForWakingNowPlayingNotificationsForPlayerPath", uUIDString];
  v15 = v14;
  if (pathCopy)
  {
    [v14 appendFormat:@" for %@", pathCopy];
  }

  v16 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = v15;
    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __100__MRNotificationClient_registerForWakingNowPlayingNotificationsForPlayerPath_replyQueue_completion___block_invoke;
  v32[3] = &unk_1E769FBE0;
  v17 = pathCopy;
  v33 = v17;
  v34 = @"registerForWakingNowPlayingNotificationsForPlayerPath";
  v35 = uUIDString;
  v36 = v13;
  v38 = completionCopy;
  v18 = queueCopy;
  v37 = v18;
  v19 = completionCopy;
  v20 = v13;
  v21 = uUIDString;
  v22 = MEMORY[0x1A58E3570](v32);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__MRNotificationClient_registerForWakingNowPlayingNotificationsForPlayerPath_replyQueue_completion___block_invoke_2;
  block[3] = &unk_1E769D118;
  block[4] = self;
  v29 = v17;
  v30 = v18;
  v31 = v22;
  v24 = v22;
  v25 = v18;
  v26 = v17;
  dispatch_sync(serialQueue, block);

  v27 = *MEMORY[0x1E69E9840];
}

void __100__MRNotificationClient_registerForWakingNowPlayingNotificationsForPlayerPath_replyQueue_completion___block_invoke(void *a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v15 = a1[5];
      v14 = a1[6];
      v16 = a1[4];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:a1[7]];
      *buf = 138544130;
      v30 = v15;
      v31 = 2114;
      v32 = v14;
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      v36 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = a1[5];
      v22 = a1[6];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:a1[7]];
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      v33 = 2048;
      v34 = v23;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = a1[5];
    v8 = a1[6];
    v10 = a1[4];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:a1[7]];
    *buf = 138544386;
    v30 = v9;
    v31 = 2114;
    v32 = v8;
    v33 = 2114;
    v34 = v3;
    v35 = 2114;
    v36 = v10;
    v37 = 2048;
    v38 = v12;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __103__MRNowPlayingRequest_AudioFade__triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue_completion___block_invoke_14_cold_1(a1);
  }

LABEL_14:

  v24 = a1[9];
  if (v24)
  {
    v25 = a1[8];
    v28 = v24;
    v27 = v3;
    msv_dispatch_async_on_queue();
  }

  v26 = *MEMORY[0x1E69E9840];
}

uint64_t __100__MRNotificationClient_registerForWakingNowPlayingNotificationsForPlayerPath_replyQueue_completion___block_invoke_2(void *a1)
{
  v2 = *(a1[4] + 104);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v4 = a1[4];
    v5 = *(v4 + 104);
    *(v4 + 104) = v3;

    v2 = *(a1[4] + 104);
  }

  v6 = [v2 containsObject:a1[5]];
  [*(a1[4] + 104) addObject:a1[5]];
  if (v6)
  {
    v7 = *(a1[7] + 16);

    return v7();
  }

  else
  {
    v9 = a1[4];
    v10 = a1[6];
    v11 = a1[7];

    return [v9 _syncWakingPlayerPathsWithReplyQueue:v10 completion:v11];
  }
}

- (void)unregisterForWakingNowPlayingNotificationsForPlayerPath:(id)path replyQueue:(id)queue completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  queueCopy = queue;
  completionCopy = completion;
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v13 = [MEMORY[0x1E695DF00] now];
  v14 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"unregisterForWakingNowPlayingNotificationsForPlayerPath", uUIDString];
  v15 = v14;
  if (pathCopy)
  {
    [v14 appendFormat:@" for %@", pathCopy];
  }

  v16 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v40 = v15;
    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __102__MRNotificationClient_unregisterForWakingNowPlayingNotificationsForPlayerPath_replyQueue_completion___block_invoke;
  v32[3] = &unk_1E769FBE0;
  v17 = pathCopy;
  v33 = v17;
  v34 = @"unregisterForWakingNowPlayingNotificationsForPlayerPath";
  v35 = uUIDString;
  v36 = v13;
  v38 = completionCopy;
  v18 = queueCopy;
  v37 = v18;
  v19 = completionCopy;
  v20 = v13;
  v21 = uUIDString;
  v22 = MEMORY[0x1A58E3570](v32);
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__MRNotificationClient_unregisterForWakingNowPlayingNotificationsForPlayerPath_replyQueue_completion___block_invoke_2;
  block[3] = &unk_1E769D118;
  block[4] = self;
  v29 = v17;
  v30 = v18;
  v31 = v22;
  v24 = v22;
  v25 = v18;
  v26 = v17;
  dispatch_sync(serialQueue, block);

  v27 = *MEMORY[0x1E69E9840];
}

void __102__MRNotificationClient_unregisterForWakingNowPlayingNotificationsForPlayerPath_replyQueue_completion___block_invoke(void *a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  v5 = _MRLogForCategory(0xAuLL);
  v6 = v5;
  if (!v3)
  {
    v13 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v15 = a1[5];
      v14 = a1[6];
      v16 = a1[4];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:a1[7]];
      *buf = 138544130;
      v30 = v15;
      v31 = 2114;
      v32 = v14;
      v33 = 2114;
      v34 = v16;
      v35 = 2048;
      v36 = v17;
      v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v19 = v6;
      v20 = 42;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_14;
      }

      v21 = a1[5];
      v22 = a1[6];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:a1[7]];
      *buf = 138543874;
      v30 = v21;
      v31 = 2114;
      v32 = v22;
      v33 = 2048;
      v34 = v23;
      v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v19 = v6;
      v20 = 32;
    }

    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_13;
  }

  v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (!v7)
    {
      goto LABEL_14;
    }

    v9 = a1[5];
    v8 = a1[6];
    v10 = a1[4];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:a1[7]];
    *buf = 138544386;
    v30 = v9;
    v31 = 2114;
    v32 = v8;
    v33 = 2114;
    v34 = v3;
    v35 = 2114;
    v36 = v10;
    v37 = 2048;
    v38 = v12;
    _os_log_error_impl(&dword_1A2860000, v6, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_13:

    goto LABEL_14;
  }

  if (v7)
  {
    __103__MRNowPlayingRequest_AudioFade__triggerAudioFadeOutForNowPlayingApplicationWithReplyQueue_completion___block_invoke_14_cold_1(a1);
  }

LABEL_14:

  v24 = a1[9];
  if (v24)
  {
    v25 = a1[8];
    v28 = v24;
    v27 = v3;
    msv_dispatch_async_on_queue();
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __102__MRNotificationClient_unregisterForWakingNowPlayingNotificationsForPlayerPath_replyQueue_completion___block_invoke_2(void *a1)
{
  v2 = [*(a1[4] + 104) indexOfObject:a1[5]];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:2 format:@"Client was not previously registered for waking now playing notifications for specificed playerPath"];
    (*(a1[7] + 16))();
  }

  else
  {
    [*(a1[4] + 104) removeObjectAtIndex:v2];
    v3 = a1[4];
    v4 = a1[6];
    v5 = a1[7];

    [v3 _syncWakingPlayerPathsWithReplyQueue:v4 completion:v5];
  }
}

- (void)_syncWakingPlayerPathsWithReplyQueue:(id)queue completion:(id)completion
{
  completionCopy = completion;
  queueCopy = queue;
  v9 = +[MRMediaRemoteServiceClient sharedServiceClient];
  service = [v9 service];
  MRMediaRemoteServiceSetWakingPlayerPaths(service, self->_subscribedWakingPlayerPaths, queueCopy, completionCopy);
}

- (void)restoreNowPlayingClientState
{
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__MRNotificationClient_restoreNowPlayingClientState__block_invoke;
  block[3] = &unk_1E769A228;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

uint64_t __52__MRNotificationClient_restoreNowPlayingClientState__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 104) count];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 _syncWakingPlayerPathsWithReplyQueue:0 completion:0];
  }

  return result;
}

- (void)dispatchNotification:(id)notification userInfo:(id)info object:(id)object
{
  notificationCopy = notification;
  infoCopy = info;
  objectCopy = object;
  notificationQueue = [(MRNotificationClient *)self notificationQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__MRNotificationClient_dispatchNotification_userInfo_object___block_invoke;
  v16[3] = &unk_1E769FC08;
  v16[4] = self;
  v17 = notificationCopy;
  v18 = infoCopy;
  v19 = objectCopy;
  v12 = objectCopy;
  v13 = infoCopy;
  v14 = notificationCopy;
  v15 = MRCreateDonatedQosBlock(v16);
  dispatch_async(notificationQueue, v15);
}

void __57__MRNotificationClient_postNotification_userInfo_object___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = a3;
  v9 = _MRLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __57__MRNotificationClient_postNotification_userInfo_object___block_invoke_cold_1(v6, v9, v10, v11, v12, v13, v14, v15);
  }

  v16 = [MEMORY[0x1E696AD88] defaultCenter];
  [v16 postNotificationName:v6 object:v7 userInfo:v8];
}

- (BOOL)_postNotification:(id)notification userInfo:(id)info object:(id)object withHandler:(id)handler
{
  notificationCopy = notification;
  infoCopy = info;
  objectCopy = object;
  handlerCopy = handler;
  kdebug_trace();
  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(infoCopy, "count")}];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __70__MRNotificationClient__postNotification_userInfo_object_withHandler___block_invoke;
  v30[3] = &unk_1E769EC90;
  v15 = v14;
  v31 = v15;
  [infoCopy enumerateKeysAndObjectsUsingBlock:v30];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 1;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__MRNotificationClient__postNotification_userInfo_object_withHandler___block_invoke_2;
  block[3] = &unk_1E769FC50;
  v17 = notificationCopy;
  v22 = v17;
  v18 = v15;
  v23 = v18;
  selfCopy = self;
  v25 = &v26;
  dispatch_sync(serialQueue, block);
  if (*(v27 + 24) == 1)
  {
    handlerCopy[2](handlerCopy, v17, v18, objectCopy);
    v19 = *(v27 + 24);
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(&v26, 8);
  return v19 & 1;
}

void __70__MRNotificationClient__postNotification_userInfo_object_withHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v5 conformsToProtocol:&unk_1F1578E70];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v5 copy];

    v5 = v8;
  }

  [v7 setObject:v5 forKey:v9];
}

uint64_t __70__MRNotificationClient__postNotification_userInfo_object_withHandler___block_invoke_2(void *a1)
{
  v2 = _MRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __70__MRNotificationClient__postNotification_userInfo_object_withHandler___block_invoke_2_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
  }

  v9 = _MRLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __70__MRNotificationClient__postNotification_userInfo_object_withHandler___block_invoke_2_cold_2(a1, v9, v10, v11, v12, v13, v14, v15);
  }

  result = MRProcessIsMediaRemoteDaemon();
  if ((result & 1) == 0)
  {
    result = [*(a1[6] + 40) containsObject:a1[4]];
    v17 = a1[6];
    if (result)
    {
      v18 = *(v17 + 8) != 0;
LABEL_20:
      v25 = a1[7];
LABEL_21:
      *(*(v25 + 8) + 24) = v18;
      return result;
    }

    result = [*(v17 + 48) containsObject:a1[4]];
    v19 = a1[6];
    if (result)
    {
      v18 = *(v19 + 114);
      goto LABEL_20;
    }

    result = [*(v19 + 56) containsObject:a1[4]];
    v20 = a1[6];
    if (result)
    {
      v18 = *(v20 + 115);
      goto LABEL_20;
    }

    result = [*(v20 + 64) containsObject:a1[4]];
    v21 = a1[6];
    if (result)
    {
      v18 = *(v21 + 112);
      goto LABEL_20;
    }

    result = [*(v21 + 72) containsObject:a1[4]];
    v22 = a1[6];
    if (result)
    {
      v18 = *(v22 + 116);
      goto LABEL_20;
    }

    result = [*(v22 + 80) containsObject:a1[4]];
    v23 = a1[6];
    if (result)
    {
      v18 = *(v23 + 113);
      goto LABEL_20;
    }

    result = [*(v23 + 96) containsObject:a1[4]];
    v24 = a1[6];
    if (result)
    {
      v18 = *(v24 + 117);
      goto LABEL_20;
    }

    result = [*(v24 + 88) containsObject:a1[4]];
    if (result)
    {
      v25 = a1[7];
      v18 = *(a1[6] + 118);
      goto LABEL_21;
    }
  }

  return result;
}

+ (id)nowPlayingNotifications
{
  if (nowPlayingNotifications___once != -1)
  {
    +[MRNotificationClient nowPlayingNotifications];
  }

  v3 = nowPlayingNotifications_nowPlayingNotifications;

  return v3;
}

void __47__MRNotificationClient_nowPlayingNotifications__block_invoke()
{
  v8 = objc_alloc_init(MRNotificationClient);
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = nowPlayingNotifications_nowPlayingNotifications;
  nowPlayingNotifications_nowPlayingNotifications = v0;

  v2 = nowPlayingNotifications_nowPlayingNotifications;
  v3 = [(NSOrderedSet *)v8->_nowPlayingNotifications array];
  [v2 addObjectsFromArray:v3];

  v4 = nowPlayingNotifications_nowPlayingNotifications;
  v5 = [(NSOrderedSet *)v8->_supportedCommandsNotifications array];
  [v4 addObjectsFromArray:v5];

  v6 = nowPlayingNotifications_nowPlayingNotifications;
  v7 = [(NSOrderedSet *)v8->_originNotifications array];
  [v6 addObjectsFromArray:v7];
}

void __57__MRNotificationClient_postNotification_userInfo_object___block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_9(&dword_1A2860000, a2, a3, "Posting Notification %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __70__MRNotificationClient__postNotification_userInfo_object_withHandler___block_invoke_2_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 32));
  OUTLINED_FUNCTION_9(&dword_1A2860000, a2, a3, "Receieved Notification %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __70__MRNotificationClient__postNotification_userInfo_object_withHandler___block_invoke_2_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(a1 + 40));
  OUTLINED_FUNCTION_9(&dword_1A2860000, a2, a3, "UserInfo %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end
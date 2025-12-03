@interface MRNowPlayingAudioFormatController
- (MRNowPlayingAudioFormatController)init;
- (MRNowPlayingAudioFormatControllerDelegate)delegate;
- (NSString)bundleID;
- (NSString)displayName;
- (id)contentInfoForBundleID:(id)d contentInfos:(id)infos;
- (id)displayNameForBundleID:(id)d;
- (id)faceTimeBundleSet;
- (id)firstContentInfoMatchingSet:(id)set contentInfos:(id)infos;
- (id)firstEligibleContentInfoFor:(id)for;
- (void)dealloc;
- (void)setActiveClient:(id)client;
- (void)setContentInfos:(id)infos;
- (void)setForegroundBundleID:(id)d;
- (void)updateActiveClient;
- (void)updateAudioFormatContentInfo;
- (void)updateDeprecatedApplication;
- (void)updateDeprecatedContentInfo;
- (void)updateForegroundBundleID;
- (void)updateSelectedContentInfo;
@end

@implementation MRNowPlayingAudioFormatController

void __41__MRNowPlayingAudioFormatController_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateForegroundBundleID];
}

void __41__MRNowPlayingAudioFormatController_init__block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MRNowPlayingAudioFormatController_init__block_invoke_2;
  block[3] = &unk_1E769B178;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v2);
}

void __61__MRNowPlayingAudioFormatController_updateForegroundBundleID__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 isUIApplicationElement])
        {
          v10 = v6 == 0;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          v6 = [v9 bundleIdentifier];
        }

        v11 = [v9 identifier];
        v12 = [v11 isEqualToString:@"com.apple.pineboard.now-playing"];

        v5 |= v12;
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);

    if (v5)
    {
      v13 = 0;
    }

    else
    {
      v13 = v6;
    }
  }

  else
  {

    v6 = 0;
    v13 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setForegroundBundleID:v13];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateForegroundBundleID
{
  objc_initWeak(&location, self);
  currentLayout = [(FBSDisplayLayoutMonitor *)self->_layoutMonitor currentLayout];
  elements = [currentLayout elements];

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__MRNowPlayingAudioFormatController_updateForegroundBundleID__block_invoke;
  block[3] = &unk_1E769F950;
  v8 = elements;
  v6 = elements;
  objc_copyWeak(&v9, &location);
  dispatch_async(queue, block);
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);
}

- (void)updateSelectedContentInfo
{
  v63[2] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  contentInfos = self->_contentInfos;
  v4 = MEMORY[0x1E696AEB0];
  v5 = NSStringFromSelector(sel_isEligibleForSpatialization);
  v6 = [v4 sortDescriptorWithKey:v5 ascending:0];
  v63[0] = v6;
  v7 = MEMORY[0x1E696AEB0];
  v8 = NSStringFromSelector(sel_channelCount);
  v9 = [v7 sortDescriptorWithKey:v8 ascending:0];
  v63[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  v11 = [(NSArray *)contentInfos sortedArrayUsingDescriptors:v10];

  v12 = self->_activeClient;
  v13 = self->_foregroundBundleID;
  faceTimeBundleSet = [(MRNowPlayingAudioFormatController *)self faceTimeBundleSet];
  LODWORD(v8) = [faceTimeBundleSet containsObject:v13];

  if (!v8 || ([(MRNowPlayingAudioFormatController *)self faceTimeBundleSet], v15 = objc_claimAutoreleasedReturnValue(), [(MRNowPlayingAudioFormatController *)self firstContentInfoMatchingSet:v15 contentInfos:v11], v16 = objc_claimAutoreleasedReturnValue(), v15, !v16))
  {
    v17 = [(MRNowPlayingAudioFormatController *)self contentInfoForBundleID:v13 contentInfos:v11];
    if (v17)
    {
LABEL_4:
      v16 = v17;
      goto LABEL_6;
    }

    bundleIdentifier = [(MRClient *)v12 bundleIdentifier];
    v16 = [(MRNowPlayingAudioFormatController *)self contentInfoForBundleID:bundleIdentifier contentInfos:v11];

    if (!v16)
    {
      v17 = [(MRNowPlayingAudioFormatController *)self firstEligibleContentInfoFor:v11];
      if (v17)
      {
        goto LABEL_4;
      }

      faceTimeBundleSet2 = [(MRNowPlayingAudioFormatController *)self faceTimeBundleSet];
      v16 = [(MRNowPlayingAudioFormatController *)self firstContentInfoMatchingSet:faceTimeBundleSet2 contentInfos:v11];
    }
  }

LABEL_6:
  bundleIdentifier2 = [(MRClient *)v12 bundleIdentifier];
  bundleID = [(MRNowPlayingAudioFormatContentInfo *)v16 bundleID];
  v21 = [bundleIdentifier2 isEqualToString:bundleID];

  if (v21)
  {
    representedBundleID = [(MRClient *)v12 representedBundleID];
    v23 = representedBundleID;
    if (representedBundleID)
    {
      bundleID2 = representedBundleID;
    }

    else
    {
      bundleID2 = [(MRNowPlayingAudioFormatContentInfo *)v16 bundleID];
    }

    bundleID3 = bundleID2;

    displayName = [(MRClient *)v12 displayName];
  }

  else
  {
    bundleID3 = [(MRNowPlayingAudioFormatContentInfo *)v16 bundleID];
    faceTimeBundleSet3 = [(MRNowPlayingAudioFormatController *)self faceTimeBundleSet];
    v27 = [faceTimeBundleSet3 containsObject:bundleID3];

    if (v27)
    {

      bundleID3 = @"com.apple.facetime";
      [(MRNowPlayingAudioFormatContentInfo *)v16 setBundleID:@"com.apple.facetime"];
    }

    displayName = [(MRNowPlayingAudioFormatController *)self displayNameForBundleID:bundleID3];
  }

  v29 = displayName;
  v51 = v11;
  if (-[__CFString length](bundleID3, "length") && [v29 length])
  {
    v30 = [[MRNowPlayingAudioFormatApplication alloc] initWithBundleID:bundleID3 displayName:v29];
  }

  else
  {
    v30 = 0;
  }

  v31 = self->_audioFormatApplication;
  audioFormatApplication = v31;
  v33 = v31 != v30;
  v50 = v12;
  if (v31 != v30)
  {
    v34 = [(MRNowPlayingAudioFormatApplication *)v31 isEqual:v30];

    if (v34)
    {
      v35 = v13;
      v33 = 0;
      goto LABEL_25;
    }

    v36 = _MRLogForCategory(0);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v60 = objc_opt_class();
      v61 = 2114;
      v62 = v30;
      _os_log_impl(&dword_1A2860000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ updating audio format application: %{public}@", buf, 0x16u);
    }

    v37 = v30;
    audioFormatApplication = self->_audioFormatApplication;
    self->_audioFormatApplication = v37;
  }

  v35 = v13;

LABEL_25:
  v38 = self->_audioFormatContentInfo;
  audioFormatContentInfo = v38;
  v40 = v38 != v16;
  if (v38 == v16)
  {
LABEL_31:

    goto LABEL_32;
  }

  v41 = [(MRNowPlayingAudioFormatContentInfo *)v38 isEqual:v16];

  if (!v41)
  {
    v42 = _MRLogForCategory(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = objc_opt_class();
      *buf = 138543618;
      v60 = v43;
      v61 = 2114;
      v62 = v16;
      _os_log_impl(&dword_1A2860000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ updating audio format content info: %{public}@", buf, 0x16u);
    }

    v44 = v16;
    audioFormatContentInfo = self->_audioFormatContentInfo;
    self->_audioFormatContentInfo = v44;
    goto LABEL_31;
  }

  v40 = 0;
LABEL_32:
  delegate = [(MRNowPlayingAudioFormatController *)self delegate];
  objc_initWeak(buf, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__MRNowPlayingAudioFormatController_updateSelectedContentInfo__block_invoke;
  block[3] = &unk_1E769F978;
  v57 = v33;
  v53 = delegate;
  v46 = delegate;
  objc_copyWeak(&v56, buf);
  v58 = v40;
  v54 = v30;
  selfCopy = self;
  v47 = v30;
  dispatch_sync(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v56);
  objc_destroyWeak(buf);

  v48 = *MEMORY[0x1E69E9840];
}

- (id)faceTimeBundleSet
{
  if (faceTimeBundleSet_onceToken != -1)
  {
    [MRNowPlayingAudioFormatController faceTimeBundleSet];
  }

  v3 = faceTimeBundleSet___set;

  return v3;
}

- (MRNowPlayingAudioFormatControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __62__MRNowPlayingAudioFormatController_updateSelectedContentInfo__block_invoke(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      v3 = *(a1 + 32);
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      [v3 nowPlayingAudioFormatController:WeakRetained didChangeAudioFormatApplication:*(a1 + 40)];
    }

    v5 = objc_loadWeakRetained((a1 + 56));
    [v5 updateDeprecatedApplication];
  }

  if (*(a1 + 65) == 1)
  {
    v6 = *(a1 + 32);
    if (objc_opt_respondsToSelector())
    {
      v7 = *(a1 + 32);
      v8 = objc_loadWeakRetained((a1 + 56));
      [v7 nowPlayingAudioFormatController:v8 didChangeAudioFormatContentInfo:*(*(a1 + 48) + 24)];
    }

    v9 = objc_loadWeakRetained((a1 + 56));
    [v9 updateDeprecatedContentInfo];
  }
}

- (void)updateDeprecatedApplication
{
  delegate = [(MRNowPlayingAudioFormatController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    bundleID = [(MRNowPlayingAudioFormatController *)self bundleID];
    displayName = [(MRNowPlayingAudioFormatController *)self displayName];
    [delegate nowPlayingAudioFormatController:self didChangeBundleID:bundleID displayName:displayName];
  }
}

- (void)updateDeprecatedContentInfo
{
  delegate = [(MRNowPlayingAudioFormatController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    audioFormatDescription = [(MRNowPlayingAudioFormatController *)self audioFormatDescription];
    [delegate nowPlayingAudioFormatController:self didChangeAudioFormatDescription:audioFormatDescription];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate nowPlayingAudioFormatController:self didChangeMultichannel:{-[MRNowPlayingAudioFormatController isMultichannel](self, "isMultichannel")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate nowPlayingAudioFormatController:self didChangeBestAvailableAudioFormat:-[MRNowPlayingAudioFormatController bestAvailableAudioFormat](self, "bestAvailableAudioFormat")];
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate nowPlayingAudioFormatController:self didChangeIsEligibleForSpatialization:{-[MRNowPlayingAudioFormatController isEligibleForSpatialization](self, "isEligibleForSpatialization")}];
  }
}

- (void)updateAudioFormatContentInfo
{
  objc_initWeak(&location, self);
  v3 = MRGetSharedService();
  v4 = +[MROrigin localOrigin];
  queue = self->_queue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__MRNowPlayingAudioFormatController_updateAudioFormatContentInfo__block_invoke;
  v6[3] = &unk_1E769E828;
  objc_copyWeak(&v7, &location);
  MRMediaRemoteServiceGetAudioFormatContentInfoForOrigin(v3, v4, queue, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __65__MRNowPlayingAudioFormatController_updateAudioFormatContentInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v11 = 138543874;
    v12 = objc_opt_class();
    v13 = 2114;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ audio format content changed: %{public}@ %{public}@", &v11, 0x20u);
  }

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 setContentInfos:v5];

  v10 = *MEMORY[0x1E69E9840];
}

- (MRNowPlayingAudioFormatController)init
{
  v20.receiver = self;
  v20.super_class = MRNowPlayingAudioFormatController;
  v2 = [(MRNowPlayingAudioFormatController *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_DEFAULT, 0);
    v5 = dispatch_queue_create("com.apple.mediaremote.MRNowPlayingAudioFormatController", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_contentInfoDidChange_ name:@"kMRMediaRemoteAudioFormatContentInfoDidChange" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_activeClientDidChange_ name:@"kMRMediaRemoteActivePlayerPathsDidChange" object:0];

    objc_initWeak(&location, v2);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v9 = getFBSDisplayLayoutMonitorConfigurationClass_softClass;
    v29 = getFBSDisplayLayoutMonitorConfigurationClass_softClass;
    if (!getFBSDisplayLayoutMonitorConfigurationClass_softClass)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke;
      v24 = &unk_1E769ADA8;
      v25 = &v26;
      __getFBSDisplayLayoutMonitorConfigurationClass_block_invoke(&v21);
      v9 = v27[3];
    }

    v10 = v9;
    _Block_object_dispose(&v26, 8);
    configurationForDefaultMainDisplayMonitor = [v9 configurationForDefaultMainDisplayMonitor];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __41__MRNowPlayingAudioFormatController_init__block_invoke;
    v17[3] = &unk_1E769F900;
    objc_copyWeak(&v18, &location);
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:v17];
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v12 = getFBSDisplayLayoutMonitorClass_softClass;
    v29 = getFBSDisplayLayoutMonitorClass_softClass;
    if (!getFBSDisplayLayoutMonitorClass_softClass)
    {
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getFBSDisplayLayoutMonitorClass_block_invoke;
      v24 = &unk_1E769ADA8;
      v25 = &v26;
      __getFBSDisplayLayoutMonitorClass_block_invoke(&v21);
      v12 = v27[3];
    }

    v13 = v12;
    _Block_object_dispose(&v26, 8);
    v14 = [v12 monitorWithConfiguration:configurationForDefaultMainDisplayMonitor];
    layoutMonitor = v2->_layoutMonitor;
    v2->_layoutMonitor = v14;

    [(MRNowPlayingAudioFormatController *)v2 updateActiveClient];
    [(MRNowPlayingAudioFormatController *)v2 updateAudioFormatContentInfo];
    [(MRNowPlayingAudioFormatController *)v2 updateForegroundBundleID];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  v3.receiver = self;
  v3.super_class = MRNowPlayingAudioFormatController;
  [(MRNowPlayingAudioFormatController *)&v3 dealloc];
}

- (void)setActiveClient:(id)client
{
  clientCopy = client;
  if (![(MRClient *)self->_activeClient isEqual:?])
  {
    objc_storeStrong(&self->_activeClient, client);
    [(MRNowPlayingAudioFormatController *)self updateSelectedContentInfo];
  }
}

- (void)setContentInfos:(id)infos
{
  infosCopy = infos;
  if (![(NSArray *)self->_contentInfos isEqualToArray:?])
  {
    objc_storeStrong(&self->_contentInfos, infos);
    [(MRNowPlayingAudioFormatController *)self updateSelectedContentInfo];
  }
}

- (void)setForegroundBundleID:(id)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (([(NSString *)self->_foregroundBundleID isEqual:dCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_foregroundBundleID, d);
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = dCopy;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ foreground bundle id changed: %{public}@", &v8, 0x16u);
    }

    [(MRNowPlayingAudioFormatController *)self updateSelectedContentInfo];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateActiveClient
{
  objc_initWeak(&location, self);
  v3 = +[MROrigin localOrigin];
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MRNowPlayingAudioFormatController_updateActiveClient__block_invoke;
  v5[3] = &unk_1E769F928;
  objc_copyWeak(&v6, &location);
  MRMediaRemoteGetNowPlayingClientForOrigin(v3, queue, v5);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __55__MRNowPlayingAudioFormatController_updateActiveClient__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = _MRLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = 138543874;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = v5;
    v14 = 2114;
    v15 = a3;
    _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ active client changed: %{public}@ %{public}@", &v10, 0x20u);
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setActiveClient:v5];

  v9 = *MEMORY[0x1E69E9840];
}

- (id)contentInfoForBundleID:(id)d contentInfos:(id)infos
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  infosCopy = infos;
  v7 = infosCopy;
  if (dCopy)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = infosCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          bundleID = [v12 bundleID];
          if ([bundleID isEqualToString:dCopy])
          {
            isEligibleForSpatialization = [v12 isEligibleForSpatialization];

            if (isEligibleForSpatialization)
            {
              v9 = v12;
              goto LABEL_15;
            }
          }

          else
          {
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

LABEL_15:
  }

  else
  {
    v9 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)firstContentInfoMatchingSet:(id)set contentInfos:(id)infos
{
  v21 = *MEMORY[0x1E69E9840];
  setCopy = set;
  infosCopy = infos;
  if ([setCopy count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = infosCopy;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          bundleID = [v11 bundleID];
          v13 = [setCopy containsObject:bundleID];

          if (v13)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)firstEligibleContentInfoFor:(id)for
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  forCopy = for;
  v4 = [forCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(forCopy);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 isEligibleForSpatialization])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [forCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)displayNameForBundleID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v10 = 0;
    v5 = [MEMORY[0x1E69635F8] bundleRecordWithApplicationIdentifier:dCopy error:&v10];
    v6 = v10;
    if (v6)
    {
      v7 = _MRLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(MRNowPlayingAudioFormatController *)self displayNameForBundleID:v6, v7];
      }
    }

    localizedName = [v5 localizedName];
  }

  else
  {
    localizedName = 0;
  }

  return localizedName;
}

void __54__MRNowPlayingAudioFormatController_faceTimeBundleSet__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F1577530];
  v1 = faceTimeBundleSet___set;
  faceTimeBundleSet___set = v0;
}

- (NSString)bundleID
{
  bundleID = [(MRNowPlayingAudioFormatApplication *)self->_audioFormatApplication bundleID];
  v3 = bundleID;
  if (bundleID)
  {
    v4 = bundleID;
  }

  else
  {
    v4 = &stru_1F1513E38;
  }

  v5 = v4;

  return &v4->isa;
}

- (NSString)displayName
{
  displayName = [(MRNowPlayingAudioFormatApplication *)self->_audioFormatApplication displayName];
  v3 = displayName;
  if (displayName)
  {
    v4 = displayName;
  }

  else
  {
    v4 = &stru_1F1513E38;
  }

  v5 = v4;

  return &v4->isa;
}

- (void)displayNameForBundleID:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "%{public}@ error retreiving application record: %{public}@", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end
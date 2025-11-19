@interface CSDarwinVoiceTriggerHandler
- (CSDarwinVoiceTriggerHandler)initWithRemoteDevice:(id)a3 voiceTriggerEventsCoordinator:(id)a4 delegate:(id)a5 testContext:(id)a6;
- (CSDarwinVoiceTriggerHandlerDelegate)delegate;
- (CSVoiceTriggerEventsCoordinator)voiceTriggerEventsCoordinator;
- (id)_connectRemoteCoreSpeechIfNeeded;
- (id)_getSpeakerProfileForCurrentLanguage;
- (int64_t)_currentSystemUserActiveState;
- (unint64_t)_fetchUserPreferredVoiceTriggerPhraseType;
- (void)CSBluetoothWirelessSplitterMonitor:(id)a3 didReceiveSplitterStateChange:(unint64_t)a4 shouldDisableSpeakerVerificationInSplitterMode:(BOOL)a5;
- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4;
- (void)CSScreenLockMonitor:(id)a3 didReceiveScreenLockStateChanged:(BOOL)a4;
- (void)CSSystemUserActivityMonitor:(id)a3 activeStateChanged:(BOOL)a4;
- (void)CSVoiceTriggerAssetDownloadMonitor:(id)a3 didInstallNewAsset:(BOOL)a4;
- (void)CSVoiceTriggerUserSelectedPhraseDidChange:(BOOL)a3;
- (void)_disableRemoteVoiceTrigger;
- (void)_disconnectRemoteCoreSpeech;
- (void)_enableRemoteVoiceTrigger;
- (void)_handleDeviceDisconnection;
- (void)_handleRemoteCoreSpeechFirstTimeConnected;
- (void)_handleSelfTriggerDetected:(id)a3 myriadHash:(id)a4;
- (void)_handleVoiceTriggerEnabled:(BOOL)a3;
- (void)_invalidateRemoteControlClient;
- (void)_markRemoteVoiceTriggerEnabled;
- (void)_releasePreventSystemSleepPowerAssertion;
- (void)_remoteVoiceTriggerEnabled:(id)a3;
- (void)_retryVoiceTriggerEnable:(id)a3;
- (void)_safeAssetChangeHandler;
- (void)_sendSELFMetricsForCachedVoiceTriggerEvents:(id)a3 secondPassRejectEvents:(id)a4 secondPassCancelledEvents:(id)a5;
- (void)_startMonitoringSystemUserActivity;
- (void)_startPreventSleepAssertionTimer;
- (void)_startRetryTimer;
- (void)_stopMonitoringSystemUserActivity;
- (void)_stopPreventSleepAssertionTimer;
- (void)_stopRetryTimer;
- (void)_switchSelfTriggerStatus:(BOOL)a3;
- (void)_switchVoiceTriggerStatus:(BOOL)a3;
- (void)_transferDarwinVoiceTriggerAsset:(id)a3 languageCode:(id)a4;
- (void)_updateRemoteSupportedVoiceTriggerPhraseType:(unint64_t)a3;
- (void)_updateSystemSleepPowerAssertionState;
- (void)_wakeSiriIfNeededFromFullWake:(BOOL)a3 completion:(id)a4;
- (void)_writeMyriadHashFile:(id)a3;
- (void)dealloc;
- (void)didReceiveConnectionInvalidated:(id)a3;
- (void)didReceiveSelfTriggerDetected:(id)a3 myriadHash:(id)a4;
- (void)didReceiveVoiceTriggerAssetsDownloadingRequest:(id)a3 withConfigVersion:(id)a4 languageCode:(id)a5;
- (void)didReceiveVoiceTriggered:(id)a3;
- (void)disconnected:(id)a3;
- (void)handleAssetChange;
- (void)onDaemonExit;
- (void)onDarkWake;
- (void)onEarlyWake;
- (void)onFullWake;
- (void)onSleep;
- (void)onUserSessionActive:(id)a3;
- (void)onUserSessionResign:(id)a3;
- (void)retryVoiceTriggerEnable:(id)a3;
- (void)start;
- (void)stop;
@end

@implementation CSDarwinVoiceTriggerHandler

- (CSDarwinVoiceTriggerHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSVoiceTriggerEventsCoordinator)voiceTriggerEventsCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_voiceTriggerEventsCoordinator);

  return WeakRetained;
}

- (void)CSBluetoothWirelessSplitterMonitor:(id)a3 didReceiveSplitterStateChange:(unint64_t)a4 shouldDisableSpeakerVerificationInSplitterMode:(BOOL)a5
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D238;
  block[3] = &unk_100253028;
  block[4] = self;
  block[5] = a4;
  v7 = a5;
  dispatch_async(queue, block);
}

- (void)CSVoiceTriggerUserSelectedPhraseDidChange:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000D2FC;
  v4[3] = &unk_100253BF8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)CSScreenLockMonitor:(id)a3 didReceiveScreenLockStateChanged:(BOOL)a4
{
  if (!a4)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000D55C;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_safeAssetChangeHandler
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v10 = 136315394;
    v11 = "[CSDarwinVoiceTriggerHandler _safeAssetChangeHandler]";
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Performing _safeAssetChangeHandler", &v10, 0x16u);
  }

  v6 = [(CSPolicy *)self->_voiceTriggerStartPolicy isEnabled];
  v7 = [(CSDarwinVoiceTriggerHandler *)self _connectRemoteCoreSpeechIfNeeded];
  remoteControlClient = self->_remoteControlClient;
  v9 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  [(CSRemoteControlClient *)remoteControlClient notifyVoiceTriggerAssetChangeWithSiriLanguageCode:v9];

  if (v6)
  {
    [(CSDarwinVoiceTriggerHandler *)self _enableRemoteVoiceTrigger];
  }

  else
  {
    [(CSDarwinVoiceTriggerHandler *)self _disableRemoteVoiceTrigger];
  }
}

- (void)handleAssetChange
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D81C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)CSLanguageCodeUpdateMonitor:(id)a3 didReceiveLanguageCodeChanged:(id)a4
{
  v5 = a4;
  v6 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v9 = 136315650;
    v10 = "[CSDarwinVoiceTriggerHandler CSLanguageCodeUpdateMonitor:didReceiveLanguageCodeChanged:]";
    v11 = 2114;
    v12 = v8;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:LanguageCode changed to : %{public}@", &v9, 0x20u);
  }

  [(CSDarwinVoiceTriggerHandler *)self handleAssetChange];
}

- (void)CSVoiceTriggerAssetDownloadMonitor:(id)a3 didInstallNewAsset:(BOOL)a4
{
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v8 = 136315394;
    v9 = "[CSDarwinVoiceTriggerHandler CSVoiceTriggerAssetDownloadMonitor:didInstallNewAsset:]";
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Download new asset", &v8, 0x16u);
  }

  [(CSDarwinVoiceTriggerHandler *)self handleAssetChange];
}

- (void)_switchSelfTriggerStatus:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000DE7C;
  v4[3] = &unk_100253BF8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (id)_getSpeakerProfileForCurrentLanguage
{
  v2 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
  v3 = +[SSRVoiceProfileManager sharedInstance];
  v4 = [v3 provisionedVoiceProfilesForAppDomain:SSRSpeakerRecognitionSiriAppDomain withLocale:v2];
  if ([v4 count])
  {
    v5 = [v4 objectAtIndexedSubscript:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_remoteVoiceTriggerEnabled:(id)a3
{
  v5 = a3;
  v4 = [(CSDarwinVoiceTriggerHandler *)self _connectRemoteCoreSpeechIfNeeded];
  [(CSRemoteControlClient *)self->_remoteControlClient voiceTriggerEnabledWithCompletion:v5];
}

- (void)_disableRemoteVoiceTrigger
{
  v3 = [(CSDarwinVoiceTriggerHandler *)self _connectRemoteCoreSpeechIfNeeded];
  v4 = dispatch_semaphore_create(0);
  remoteControlClient = self->_remoteControlClient;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10000E13C;
  v13 = &unk_10024E420;
  v14 = self;
  v6 = v4;
  v15 = v6;
  [(CSRemoteControlClient *)remoteControlClient setVoiceTriggerEnable:0 withCompletion:&v10];
  v7 = dispatch_time(0, 5000000000);
  if (dispatch_semaphore_wait(v6, v7))
  {
    v8 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[CSDarwinVoiceTriggerHandler _disableRemoteVoiceTrigger]";
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s Disable VoiceTrigger in Darwin timed-out!!", buf, 0xCu);
    }
  }

  [(CSDarwinVoiceTriggerHandler *)self _releasePreventSystemSleepPowerAssertion:v10];
  v9 = +[CSSuddenTerminationProtector sharedInstance];
  [v9 allowSuddenTermination];
}

- (void)_enableRemoteVoiceTrigger
{
  if (self->_isUserSessionActive)
  {
    v3 = [(CSDarwinVoiceTriggerHandler *)self _connectRemoteCoreSpeechIfNeeded];
    v4 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
    v5 = [(CSDarwinVoiceTriggerHandler *)self _getSpeakerProfileForCurrentLanguage];
    if (v5)
    {
      v6 = +[SSRAESKeyManager getVoiceTriggerProfilesAESKey];
      if (!CSIsOSX() || v6)
      {
        v14 = [v5 getEnrollmentUtterancesForModelType:{+[SSRUtils explicitSpIdTypeForSpId:](SSRUtils, "explicitSpIdTypeForSpId:", 1)}];
        [(CSRemoteControlClient *)self->_remoteControlClient setVoiceTriggerEnable:0 withCompletion:0];
        objc_initWeak(buf, self);
        remoteControlClient = self->_remoteControlClient;
        v16 = +[CSConfig EncryptionAudioSampleByteDepth];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 3221225472;
        v24[2] = sub_10000E7AC;
        v24[3] = &unk_10024E3F8;
        v24[4] = self;
        objc_copyWeak(&v26, buf);
        v25 = &stru_10024E3D0;
        [(CSRemoteControlClient *)remoteControlClient createRemoteVoiceProfileWithAudioFiles:v14 aesKey:v6 encryptedAudioSampleBypeDepth:v16 languageCode:v4 completion:v24];
        v17 = +[CSSuddenTerminationProtector sharedInstance];
        [v17 disallowSuddenTermiation];

        objc_destroyWeak(&v26);
        objc_destroyWeak(buf);
      }

      else
      {
        v7 = CSLogCategoryVT;
        v8 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR);
        if (v8)
        {
          v21 = v7;
          v22 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
          v23 = [(CSRemoteControlClient *)self->_remoteControlClient description];
          *buf = 136315650;
          v28 = "[CSDarwinVoiceTriggerHandler _enableRemoteVoiceTrigger]";
          v29 = 2114;
          v30 = v22;
          v31 = 2114;
          v32 = v23;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s CSDarwinVTHandler[%{public}@]:ERR: cannot find AES key, remote VoiceTrigger %{public}@ will be turned on without PHS", buf, 0x20u);
        }

        self->_shouldHandleAssetChangeAfterUnlock = 1;
        sub_10000E704(v8, self);
      }
    }

    else
    {
      v12 = CSLogCategoryVT;
      v13 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR);
      if (v13)
      {
        v18 = v12;
        v19 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
        v20 = [(CSRemoteControlClient *)self->_remoteControlClient description];
        *buf = 136315650;
        v28 = "[CSDarwinVoiceTriggerHandler _enableRemoteVoiceTrigger]";
        v29 = 2114;
        v30 = v19;
        v31 = 2114;
        v32 = v20;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s CSDarwinVTHandler[%{public}@]:ERR: No Speaker Profile, remote VoiceTrigger %{public}@ will be turned on without PHS", buf, 0x20u);
      }

      self->_shouldHandleAssetChangeAfterUnlock = 1;
      sub_10000E704(v13, self);
    }
  }

  else
  {
    v9 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
      *buf = 136315394;
      v28 = "[CSDarwinVoiceTriggerHandler _enableRemoteVoiceTrigger]";
      v29 = 2114;
      v30 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Does not enable remote Voice Trigger since user session is deactivated", buf, 0x16u);
    }
  }
}

- (void)_markRemoteVoiceTriggerEnabled
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v8 = 136315394;
    v9 = "[CSDarwinVoiceTriggerHandler _markRemoteVoiceTriggerEnabled]";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:", &v8, 0x16u);
  }

  [(CSDarwinVoiceTriggerHandler *)self setVoiceTriggerEnabled:1];
  v6 = +[CSRemoteDarwinDeviceInfo sharedInstance];
  v7 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
  [v6 notifyVoiceTriggerEnabledWithDeviceUUID:v7];

  [(CSDarwinVoiceTriggerHandler *)self _updateSystemSleepPowerAssertionState];
}

- (void)_transferDarwinVoiceTriggerAsset:(id)a3 languageCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_isUserSessionActive)
  {
    v8 = [(CSDarwinVoiceTriggerHandler *)self _connectRemoteCoreSpeechIfNeeded];
    [(CSRemoteControlClient *)self->_remoteControlClient setVoiceTriggerEnable:0 withCompletion:0];
    remoteControlClient = self->_remoteControlClient;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000ED34;
    v14[3] = &unk_100253300;
    v14[4] = self;
    [(CSRemoteControlClient *)remoteControlClient transferVoiceTriggerAsset:v6 forLanguageCode:v7 completion:v14];
    v10 = +[CSSuddenTerminationProtector sharedInstance];
    [v10 disallowSuddenTermiation];
  }

  else
  {
    v11 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
      *buf = 136315394;
      v16 = "[CSDarwinVoiceTriggerHandler _transferDarwinVoiceTriggerAsset:languageCode:]";
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Skip transfer since user session became inactive", buf, 0x16u);
    }
  }
}

- (void)_retryVoiceTriggerEnable:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v8 = [(CSRemoteControlClient *)self->_remoteControlClient description];
    *buf = 136315650;
    v17 = "[CSDarwinVoiceTriggerHandler _retryVoiceTriggerEnable:]";
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:remoteClient : %{public}@", buf, 0x20u);
  }

  if (!self->_isUserSessionActive)
  {
    v9 = CSLogCategoryVT;
    if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v10 = v9;
    v11 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    *buf = 136315394;
    v17 = "[CSDarwinVoiceTriggerHandler _retryVoiceTriggerEnable:]";
    v18 = 2114;
    v19 = v11;
    v12 = "%s CSDarwinVTHandler[%{public}@]:user session is not active on macOS, should stop this timer";
    goto LABEL_10;
  }

  if (([(CSPolicy *)self->_voiceTriggerStartPolicy isEnabled]& 1) != 0)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000F010;
    v14[3] = &unk_10024E390;
    v14[4] = self;
    v15 = v4;
    [(CSDarwinVoiceTriggerHandler *)self _remoteVoiceTriggerEnabled:v14];

    goto LABEL_13;
  }

  v13 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v13;
    v11 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    *buf = 136315394;
    v17 = "[CSDarwinVoiceTriggerHandler _retryVoiceTriggerEnable:]";
    v18 = 2114;
    v19 = v11;
    v12 = "%s CSDarwinVTHandler[%{public}@]:VoiceTrigger is disabled on macOS, should stop this timer";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0x16u);
  }

LABEL_11:
  if (v4)
  {
    (*(v4 + 2))(v4, 1);
  }

LABEL_13:
}

- (void)retryVoiceTriggerEnable:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000F378;
  v7[3] = &unk_100253718;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)_handleVoiceTriggerEnabled:(BOOL)a3
{
  if (a3)
  {
    [(CSDarwinVoiceTriggerHandler *)self _enableRemoteVoiceTrigger];

    [(CSDarwinVoiceTriggerHandler *)self _startRetryTimer];
  }

  else
  {

    [(CSDarwinVoiceTriggerHandler *)self _disableRemoteVoiceTrigger];
  }
}

- (void)_switchVoiceTriggerStatus:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F45C;
  v4[3] = &unk_100253BF8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(queue, v4);
}

- (void)CSSystemUserActivityMonitor:(id)a3 activeStateChanged:(BOOL)a4
{
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[CSDarwinVoiceTriggerHandler CSSystemUserActivityMonitor:activeStateChanged:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F5A4;
  block[3] = &unk_100253510;
  objc_copyWeak(&v8, buf);
  dispatch_async(queue, block);
  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);
}

- (void)_releasePreventSystemSleepPowerAssertion
{
  [(CSDarwinPreventSystemSleepManager *)self->_preventSystemSleepManager releasePreventSystemSleepAssertion];

  [(CSDarwinVoiceTriggerHandler *)self _stopPreventSleepAssertionTimer];
}

- (void)_updateSystemSleepPowerAssertionState
{
  v3 = [(CSDarwinVoiceTriggerHandler *)self _currentSystemUserActiveState];
  v4 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[CSDarwinVoiceTriggerHandler _updateSystemSleepPowerAssertionState]";
    v7 = 2048;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s System User Activity State %ld", &v5, 0x16u);
  }

  if (v3)
  {
    if (v3 == 1)
    {
      [(CSDarwinVoiceTriggerHandler *)self _startPreventSleepAssertionTimer];
      [(CSDarwinPreventSystemSleepManager *)self->_preventSystemSleepManager acquireAssertionForActiveUser];
    }

    else
    {
      [(CSDarwinVoiceTriggerHandler *)self _stopPreventSleepAssertionTimer];
      [(CSDarwinPreventSystemSleepManager *)self->_preventSystemSleepManager acquireAssertion];
    }
  }

  else
  {
    [(CSDarwinVoiceTriggerHandler *)self _stopPreventSleepAssertionTimer];
    [(CSDarwinPreventSystemSleepManager *)self->_preventSystemSleepManager acquireAssertionForIdleUser];
  }
}

- (int64_t)_currentSystemUserActiveState
{
  if (CSIsIPad())
  {
    return -1;
  }

  v3 = +[CSSystemUserActivityMonitor sharedInstance];
  v4 = [v3 systemUserActivityState];

  return v4;
}

- (void)_stopMonitoringSystemUserActivity
{
  if ((CSIsOSX() & 1) != 0 || [(CSVoiceTriggerDarwinHandlerTestContext *)self->_testContext forceAcquirePowerAssertion])
  {
    v3 = +[CSSystemUserActivityMonitor sharedInstance];
    [v3 removeObserver:self];
  }
}

- (void)_startMonitoringSystemUserActivity
{
  if ((CSIsOSX() & 1) != 0 || [(CSVoiceTriggerDarwinHandlerTestContext *)self->_testContext forceAcquirePowerAssertion])
  {
    [(CSDarwinVoiceTriggerHandler *)self _stopMonitoringSystemUserActivity];
    v3 = +[CSSystemUserActivityMonitor sharedInstance];
    [v3 addObserver:self];
  }
}

- (void)_stopPreventSleepAssertionTimer
{
  if (CSIsAppleSiliconMac() && self->_preventSystemSleepManager || [(CSVoiceTriggerDarwinHandlerTestContext *)self->_testContext forceAcquirePowerAssertion])
  {
    preventSleepAssertionTimer = self->_preventSleepAssertionTimer;
    if (preventSleepAssertionTimer && !dispatch_source_testcancel(self->_preventSleepAssertionTimer))
    {
      v4 = CSLogCategoryVT;
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        v6 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
        v8 = 136315394;
        v9 = "[CSDarwinVoiceTriggerHandler _stopPreventSleepAssertionTimer]";
        v10 = 2114;
        v11 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:", &v8, 0x16u);

        preventSleepAssertionTimer = self->_preventSleepAssertionTimer;
      }

      dispatch_source_cancel(preventSleepAssertionTimer);
      v7 = self->_preventSleepAssertionTimer;
      self->_preventSleepAssertionTimer = 0;
    }
  }
}

- (void)_startPreventSleepAssertionTimer
{
  if ((CSIsAppleSiliconMac() & 1) != 0 || [(CSVoiceTriggerDarwinHandlerTestContext *)self->_testContext forceAcquirePowerAssertion])
  {
    [(CSDarwinVoiceTriggerHandler *)self _stopPreventSleepAssertionTimer];
    v3 = CSLogCategoryVT;
    if (self->_preventSystemSleepManager)
    {
      if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v3;
        v5 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
        *buf = 136315650;
        v14 = "[CSDarwinVoiceTriggerHandler _startPreventSleepAssertionTimer]";
        v15 = 2114;
        v16 = v5;
        v17 = 2048;
        v18 = 0x4082C00000000000;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Setting PreventSystemSleep timer for %f seconds", buf, 0x20u);
      }

      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_queue);
      v7 = dispatch_time(0, 600000000000);
      dispatch_source_set_timer(v6, v7, 0x8BB2C97000uLL, 0x5F5E100uLL);
      objc_initWeak(buf, self);
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10000FC4C;
      handler[3] = &unk_100253510;
      objc_copyWeak(&v12, buf);
      dispatch_source_set_event_handler(v6, handler);
      dispatch_resume(v6);
      preventSleepAssertionTimer = self->_preventSleepAssertionTimer;
      self->_preventSleepAssertionTimer = v6;

      objc_destroyWeak(&v12);
      objc_destroyWeak(buf);
    }

    else if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v9 = v3;
      v10 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
      *buf = 136315394;
      v14 = "[CSDarwinVoiceTriggerHandler _startPreventSleepAssertionTimer]";
      v15 = 2114;
      v16 = v10;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%s CSDarwinVTHandler[%{public}@]:Sleep manager is unavailable.", buf, 0x16u);
    }
  }
}

- (void)didReceiveVoiceTriggerAssetsDownloadingRequest:(id)a3 withConfigVersion:(id)a4 languageCode:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v14 = [v8 description];
    *buf = 136315650;
    v24 = "[CSDarwinVoiceTriggerHandler didReceiveVoiceTriggerAssetsDownloadingRequest:withConfigVersion:languageCode:]";
    v25 = 2114;
    v26 = v13;
    v27 = 2114;
    v28 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:darwin client : %{public}@", buf, 0x20u);
  }

  queue = self->_queue;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000FF30;
  v19[3] = &unk_100252F38;
  v19[4] = self;
  v20 = v10;
  v21 = v9;
  v22 = v8;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  dispatch_async(queue, v19);
}

- (void)_handleSelfTriggerDetected:(id)a3 myriadHash:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010540;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)_invalidateRemoteControlClient
{
  [(CSRemoteControlClient *)self->_remoteControlClient invalidate];
  remoteControlClient = self->_remoteControlClient;
  self->_remoteControlClient = 0;
}

- (void)didReceiveSelfTriggerDetected:(id)a3 myriadHash:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v11 = [v6 description];
    v12 = 136315650;
    v13 = "[CSDarwinVoiceTriggerHandler didReceiveSelfTriggerDetected:myriadHash:]";
    v14 = 2114;
    v15 = v10;
    v16 = 2114;
    v17 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:remoteClient : %{public}@", &v12, 0x20u);
  }

  [(CSDarwinVoiceTriggerHandler *)self _handleSelfTriggerDetected:v6 myriadHash:v7];
}

- (void)didReceiveVoiceTriggered:(id)a3
{
  v4 = a3;
  v5 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v8 = [v4 description];
    *buf = 136315650;
    v15 = "[CSDarwinVoiceTriggerHandler didReceiveVoiceTriggered:]";
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:remoteClient : %{public}@", buf, 0x20u);
  }

  v9 = +[CSVoiceTriggerEventInfoProvider sharedInstance];
  [v9 setTriggerNotifiedMachTime:mach_absolute_time()];

  queue = self->_queue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000109F4;
  v12[3] = &unk_100253C48;
  v12[4] = self;
  v13 = v4;
  v11 = v4;
  dispatch_async(queue, v12);
}

- (void)didReceiveConnectionInvalidated:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010A98;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)disconnected:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100010C18;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_updateRemoteSupportedVoiceTriggerPhraseType:(unint64_t)a3
{
  remoteControlClient = self->_remoteControlClient;
  if (remoteControlClient)
  {
    [(CSRemoteControlClient *)remoteControlClient setUserSelectedVoiceTriggerPhraseType:a3];
  }
}

- (unint64_t)_fetchUserPreferredVoiceTriggerPhraseType
{
  v3 = +[VTPreferences sharedPreferences];
  v10 = 0;
  v4 = [v3 getUserPreferredVoiceTriggerPhraseTypeForDeviceType:3 endpointId:0 error:&v10];
  v5 = v10;

  if (v5)
  {
    v6 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
      *buf = 136315650;
      v12 = "[CSDarwinVoiceTriggerHandler _fetchUserPreferredVoiceTriggerPhraseType]";
      v13 = 2114;
      v14 = v8;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Failed to fetch user selected phrase type with error %@", buf, 0x20u);
    }
  }

  return v4;
}

- (void)_sendSELFMetricsForCachedVoiceTriggerEvents:(id)a3 secondPassRejectEvents:(id)a4 secondPassCancelledEvents:(id)a5
{
  v7 = a3;
  v8 = a4;
  v37 = a5;
  obj = v7;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v49;
    v12 = kCSFSelfLoggingMHUUIDKey;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v49 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v48 + 1) + 8 * i);
        v15 = [v14 objectForKeyedSubscript:v12];
        if (v15)
        {
          v16 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
          v17 = [[NSUUID alloc] initWithUUIDString:v15];
          [v16 logStartEventWithFirstPassStartedInfo:v14 withMHUUID:v17];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v10);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = v8;
  v18 = [v39 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v45;
    v21 = kCSFSelfLoggingMHUUIDKey;
    v22 = kCSFSelfLoggingSecondPassResultKey;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v45 != v20)
        {
          objc_enumerationMutation(v39);
        }

        v24 = *(*(&v44 + 1) + 8 * j);
        v25 = [v24 objectForKeyedSubscript:v21];
        if (v25)
        {
          v26 = [v24 objectForKeyedSubscript:v22];

          if (v26)
          {
            v27 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
            v28 = [[NSUUID alloc] initWithUUIDString:v25];
            v29 = [v24 objectForKeyedSubscript:v22];
            [v27 logRejectEventWithVTEI:v24 withMHUUID:v28 withSecondPassResult:{objc_msgSend(v29, "unsignedIntegerValue")}];
          }
        }
      }

      v19 = [v39 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v19);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v30 = v37;
  v31 = [v30 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v41;
    do
    {
      for (k = 0; k != v32; k = k + 1)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [[NSUUID alloc] initWithUUIDString:*(*(&v40 + 1) + 8 * k)];
        if (v35)
        {
          v36 = +[CSFVoiceTriggerEventInfoSelfLogger sharedLogger];
          [v36 logCancelledEventWithMHUUID:v35];
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v32);
  }
}

- (void)_writeMyriadHashFile:(id)a3
{
  v4 = a3;
  v5 = +[CSFPreferences sharedPreferences];
  v6 = [v5 myriadHashFilePath];

  if (!v4)
  {
    v11 = +[NSFileManager defaultManager];
    [v11 removeItemAtPath:v6 error:0];

    v12 = CSLogCategoryVT;
    if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v9 = v12;
    v10 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v14 = 136315394;
    v15 = "[CSDarwinVoiceTriggerHandler _writeMyriadHashFile:]";
    v16 = 2114;
    v17 = v10;
    v13 = "%s CSDarwinVTHandler[%{public}@]:Myriad hash is nil";
LABEL_9:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v13, &v14, 0x16u);
    goto LABEL_10;
  }

  v7 = [v4 writeToFile:v6 atomically:0];
  v8 = CSLogCategoryVT;
  if (!v7)
  {
    if (!os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v9 = v8;
    v10 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v14 = 136315394;
    v15 = "[CSDarwinVoiceTriggerHandler _writeMyriadHashFile:]";
    v16 = 2114;
    v17 = v10;
    v13 = "%s CSDarwinVTHandler[%{public}@]:Cannot write Myriad hash into file";
    goto LABEL_9;
  }

  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v14 = 136315394;
    v15 = "[CSDarwinVoiceTriggerHandler _writeMyriadHashFile:]";
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Successfully write Myriad hash", &v14, 0x16u);
LABEL_10:
  }

LABEL_11:
}

- (void)_wakeSiriIfNeededFromFullWake:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    *buf = 136315394;
    v25 = "[CSDarwinVoiceTriggerHandler _wakeSiriIfNeededFromFullWake:completion:]";
    v26 = 2114;
    v27 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:", buf, 0x16u);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000117D8;
  v22[3] = &unk_10024F648;
  v10 = v6;
  v23 = v10;
  v11 = objc_retainBlock(v22);
  if (self->_isUserSessionActive)
  {
    v12 = [(CSDarwinVoiceTriggerHandler *)self _connectRemoteCoreSpeechIfNeeded];
    kdebug_trace();
    remoteControlClient = self->_remoteControlClient;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000117F0;
    v19[3] = &unk_10024E2F0;
    v19[4] = self;
    v20 = v11;
    v21 = a3;
    [(CSRemoteControlClient *)remoteControlClient readAndClearVoiceTriggeredTokenWithCompletion:v19];
    v14 = self->_remoteControlClient;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000118E8;
    v18[3] = &unk_10024E318;
    v18[4] = self;
    [(CSRemoteControlClient *)v14 fetchAndClearCachedVoiceTriggerEventsWithCompletion:v18];
  }

  else
  {
    v15 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
      *buf = 136315394;
      v25 = "[CSDarwinVoiceTriggerHandler _wakeSiriIfNeededFromFullWake:completion:]";
      v26 = 2114;
      v27 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Does not wake Siri since user session is not activated", buf, 0x16u);
    }

    (v11[2])(v11, 0);
  }
}

- (void)_handleDeviceDisconnection
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    remoteDeviceId = self->_remoteDeviceId;
    v9 = 136315650;
    v10 = "[CSDarwinVoiceTriggerHandler _handleDeviceDisconnection]";
    v11 = 2114;
    v12 = v5;
    v13 = 2114;
    v14 = remoteDeviceId;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Report darwin device(%{public}@) disconnected", &v9, 0x20u);
  }

  if (self->_remoteDeviceId)
  {
    v7 = +[CSRemoteDarwinDeviceInfo sharedInstance];
    [v7 deviceDisconnectedWithUUID:self->_remoteDeviceId];
  }

  [(CSDarwinVoiceTriggerHandler *)self _disconnectRemoteCoreSpeech];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained didReceiveDarwinDeviceDisconnected:self];
}

- (void)_disconnectRemoteCoreSpeech
{
  if (self->_remoteControlClient)
  {

    [(CSDarwinVoiceTriggerHandler *)self _invalidateRemoteControlClient];
  }

  else
  {
    v3 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      v5 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
      v6 = 136315394;
      v7 = "[CSDarwinVoiceTriggerHandler _disconnectRemoteCoreSpeech]";
      v8 = 2114;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:It try to disconnect remote corespeechd connection even though it does not exist", &v6, 0x16u);
    }
  }
}

- (void)_handleRemoteCoreSpeechFirstTimeConnected
{
  isUserSessionActive = self->_isUserSessionActive;
  v4 = CSLogCategoryVT;
  v5 = os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT);
  if (isUserSessionActive)
  {
    if (v5)
    {
      v6 = v4;
      v7 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
      v8 = [(CSRemoteControlClient *)self->_remoteControlClient description];
      v15 = 136315650;
      v16 = "[CSDarwinVoiceTriggerHandler _handleRemoteCoreSpeechFirstTimeConnected]";
      v17 = 2114;
      v18 = v7;
      v19 = 2114;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:darwin client : %{public}@", &v15, 0x20u);
    }

    remoteControlClient = self->_remoteControlClient;
    v10 = +[CSRemoteDeviceProtocolInfo localDeviceProtocolInfo];
    [(CSRemoteControlClient *)remoteControlClient exchangeRemoteDeviceProtocolInfo:v10];

    v11 = self->_remoteControlClient;
    v12 = [CSUtils getSiriLanguageWithFallback:@"en-US"];
    [(CSRemoteControlClient *)v11 notifyVoiceTriggerAssetChangeWithSiriLanguageCode:v12];

    [(CSDarwinVoiceTriggerHandler *)self _updateRemoteSupportedVoiceTriggerPhraseType:[(CSDarwinVoiceTriggerHandler *)self _fetchUserPreferredVoiceTriggerPhraseType]];
    if ([(CSPolicy *)self->_voiceTriggerStartPolicy isEnabled])
    {
      [(CSDarwinVoiceTriggerHandler *)self _wakeSiriIfNeededFromFullWake:1 completion:0];
      if (CSIsOSX())
      {
        [(CSDarwinVoiceTriggerHandler *)self _enableRemoteVoiceTrigger];
      }

      else
      {
        [(CSDarwinVoiceTriggerHandler *)self _retryVoiceTriggerEnable:0];
      }

      [(CSDarwinVoiceTriggerHandler *)self _startRetryTimer];
    }

    else
    {
      [(CSDarwinVoiceTriggerHandler *)self _disableRemoteVoiceTrigger];
    }

    [(CSDarwinVoiceTriggerHandler *)self _sendSelfTriggerEnabledToRemote:[(CSPolicy *)self->_selfTriggerStartPolicy isEnabled] force:1];
  }

  else if (v5)
  {
    v13 = v4;
    v14 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v15 = 136315394;
    v16 = "[CSDarwinVoiceTriggerHandler _handleRemoteCoreSpeechFirstTimeConnected]";
    v17 = 2114;
    v18 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Skip handling Darwin connected event since user session is inactive", &v15, 0x16u);
  }
}

- (id)_connectRemoteCoreSpeechIfNeeded
{
  if (*&self->_remoteDevice == 0)
  {
    v6 = CSLogCategoryVT;
    if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
    {
      v23 = v6;
      v24 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
      *buf = 136315394;
      *&buf[4] = "[CSDarwinVoiceTriggerHandler _connectRemoteCoreSpeechIfNeeded]";
      *&buf[12] = 2114;
      *&buf[14] = v24;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%s CSDarwinVTHandler[%{public}@]:Invalid darwin device", buf, 0x16u);
    }

    [(CSDarwinVoiceTriggerHandler *)self _handleDeviceDisconnection];
    v7 = 0;
  }

  else
  {
    if (self->_remoteControlClient)
    {
      v3 = 0;
    }

    else
    {
      if (self->_remoteDeviceId)
      {
        *buf = 0;
        *&buf[8] = 0;
        v4 = [[NSUUID alloc] initWithUUIDString:self->_remoteDeviceId];
        [v4 getUUIDBytes:buf];
        v5 = remote_device_copy_device_with_uuid();
      }

      else
      {
        v5 = self->_remoteDevice;
      }

      v8 = [[CSRemoteControlClient alloc] initWithRemoteDevice:v5];
      remoteControlClient = self->_remoteControlClient;
      self->_remoteControlClient = v8;

      v10 = self->_remoteControlClient;
      v25 = 0;
      v11 = [(CSRemoteControlClient *)v10 waitingForConnection:&v25 error:15.0];
      v3 = v25;
      v12 = CSLogCategoryVT;
      if (v11)
      {
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
          v14 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
          *buf = 136315394;
          *&buf[4] = "[CSDarwinVoiceTriggerHandler _connectRemoteCoreSpeechIfNeeded]";
          *&buf[12] = 2114;
          *&buf[14] = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Connected remote corespeechd successfully", buf, 0x16u);
        }

        [(CSRemoteControlClient *)self->_remoteControlClient addObserver:self];
        v15 = [(CSRemoteControlClient *)self->_remoteControlClient deviceId];
        remoteDeviceId = self->_remoteDeviceId;
        self->_remoteDeviceId = v15;

        v17 = +[CSRemoteDarwinDeviceInfo sharedInstance];
        [v17 deviceConnectedWithUUID:self->_remoteDeviceId];

        remoteDevice = self->_remoteDevice;
        self->_remoteDevice = 0;

        v19 = +[CSFPreferences sharedPreferences];
        [v19 setRemoteDarwinEverConnectedWithNotifyKey:"com.apple.voicetrigger.remotedarwin.EverConnected"];
      }

      else
      {
        if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_ERROR))
        {
          v21 = v12;
          v22 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
          *buf = 136315394;
          *&buf[4] = "[CSDarwinVoiceTriggerHandler _connectRemoteCoreSpeechIfNeeded]";
          *&buf[12] = 2114;
          *&buf[14] = v22;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s CSDarwinVTHandler[%{public}@]:Connecting to remote corespeechd failed", buf, 0x16u);
        }

        [(CSDarwinVoiceTriggerHandler *)self _invalidateRemoteControlClient];
      }

      if (!self->_remoteControlClient && [v3 code] != 302)
      {
        [(CSDarwinVoiceTriggerHandler *)self _handleDeviceDisconnection];
      }
    }

    v7 = self->_remoteControlClient;
  }

  return v7;
}

- (void)onDaemonExit
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000126D0;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)onSleep
{
  kdebug_trace();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000127AC;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)onEarlyWake
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012834;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)onDarkWake
{
  kdebug_trace();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012A9C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)onFullWake
{
  kdebug_trace();
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012B98;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)onUserSessionResign:(id)a3
{
  v4 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    *buf = 136315394;
    v10 = "[CSDarwinVoiceTriggerHandler onUserSessionResign:]";
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Deactivation session", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012CE4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)onUserSessionActive:(id)a3
{
  v4 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    *buf = 136315394;
    v10 = "[CSDarwinVoiceTriggerHandler onUserSessionActive:]";
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Activation session", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012E6C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_stopRetryTimer
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    v8 = 136315394;
    v9 = "[CSDarwinVoiceTriggerHandler _stopRetryTimer]";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:", &v8, 0x16u);
  }

  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    dispatch_source_cancel(retryTimer);
    v7 = self->_retryTimer;
    self->_retryTimer = 0;
  }
}

- (void)_startRetryTimer
{
  [(CSDarwinVoiceTriggerHandler *)self _stopRetryTimer];
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = [(CSDarwinVoiceTriggerHandler *)self remoteDeviceId];
    *buf = 136315394;
    v12 = "[CSDarwinVoiceTriggerHandler _startRetryTimer]";
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVTHandler[%{public}@]:Creating VoiceTrigger enable retry timer", buf, 0x16u);
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, &_dispatch_main_q);
  v7 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v6, v7, 0x6FC23AC00uLL, 0x5F5E100uLL);
  objc_initWeak(buf, self);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100013190;
  handler[3] = &unk_100253510;
  objc_copyWeak(&v10, buf);
  dispatch_source_set_event_handler(v6, handler);
  dispatch_resume(v6);
  retryTimer = self->_retryTimer;
  self->_retryTimer = v6;

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

- (void)stop
{
  self->_isUserSessionActive = 0;
  v3 = +[CSLanguageCodeUpdateMonitor sharedInstance];
  [v3 removeObserver:self];

  v4 = +[CSVoiceTriggerAssetDownloadMonitor sharedInstance];
  [v4 removeObserver:self];

  v5 = +[CSScreenLockMonitor sharedInstance];
  [v5 removeObserver:self];

  [(CSVoiceTriggerUserSelectedPhrase *)self->_multiPhraseSelectedStatus setDelegate:0];
  multiPhraseSelectedStatus = self->_multiPhraseSelectedStatus;
  self->_multiPhraseSelectedStatus = 0;

  preventSystemSleepManager = self->_preventSystemSleepManager;
  self->_preventSystemSleepManager = 0;

  [(CSDarwinVoiceTriggerHandler *)self _stopMonitoringSystemUserActivity];
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001339C;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  v3 = +[CSUserSessionActiveMonitor sharedInstance];
  self->_isUserSessionActive = [v3 isUserActive];

  self->_powerState = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100013774;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
  [(CSDarwinVoiceTriggerHandler *)self _registerUserSessionNotification];
  v5 = +[CSVoiceTriggerAssetDownloadMonitor sharedInstance];
  [v5 addObserver:self];

  objc_initWeak(&location, self);
  v6 = +[CSRemoteXPCVoiceTriggerEnabledPolicy remoteDarwinVoiceTriggerEnabledPolicy];
  voiceTriggerStartPolicy = self->_voiceTriggerStartPolicy;
  self->_voiceTriggerStartPolicy = v6;

  v8 = +[CSSelfTriggerDetectorEnabledPolicyFactory studioDisplaySelfTriggerEnabledPolicy];
  selfTriggerStartPolicy = self->_selfTriggerStartPolicy;
  self->_selfTriggerStartPolicy = v8;

  v10 = self->_voiceTriggerStartPolicy;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10001377C;
  v27[3] = &unk_100253000;
  objc_copyWeak(&v28, &location);
  [(CSPolicy *)v10 setCallback:v27];
  v11 = self->_selfTriggerStartPolicy;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100013870;
  v25[3] = &unk_100253000;
  objc_copyWeak(&v26, &location);
  [(CSPolicy *)v11 setCallback:v25];
  v12 = self->_queue;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100013964;
  v24[3] = &unk_100253C20;
  v24[4] = self;
  dispatch_async(v12, v24);
  v13 = +[CSScreenLockMonitor sharedInstance];
  [v13 addObserver:self];

  v14 = +[CSLanguageCodeUpdateMonitor sharedInstance];
  [v14 addObserver:self];

  v15 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
  [v15 addObserver:self];

  v16 = [[CSVoiceTriggerUserSelectedPhrase alloc] initWithEndpointId:0];
  multiPhraseSelectedStatus = self->_multiPhraseSelectedStatus;
  self->_multiPhraseSelectedStatus = v16;

  [(CSVoiceTriggerUserSelectedPhrase *)self->_multiPhraseSelectedStatus setDelegate:self];
  v18 = +[CSBluetoothWirelessSplitterMonitor sharedInstance];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000139BC;
  v23[3] = &unk_100253050;
  v23[4] = self;
  [v18 splitterState:v23];

  if (!self->_preventSystemSleepManager && ((CSIsAppleSiliconMac() & 1) != 0 || CSIsIOS()))
  {
    [(CSVoiceTriggerDarwinHandlerTestContext *)self->_testContext forcedPowerAssertionTimeout];
    v20 = v19;
    if (v19 < 0.0 || v19 <= 2.22044605e-16)
    {
      if (CSIsAppleSiliconMac())
      {
        v20 = 259200.0;
      }

      else
      {
        v20 = 0.0;
      }
    }

    v21 = [[CSDarwinPreventSystemSleepManager alloc] initWithTimeout:v20];
    preventSystemSleepManager = self->_preventSystemSleepManager;
    self->_preventSystemSleepManager = v21;
  }

  [(CSDarwinVoiceTriggerHandler *)self _startMonitoringSystemUserActivity];
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = CSLogCategoryVT;
  if (os_log_type_enabled(CSLogCategoryVT, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSDarwinVoiceTriggerHandler dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s CSDarwinVoiceTriggerHandler dealloc", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSDarwinVoiceTriggerHandler;
  [(CSDarwinVoiceTriggerHandler *)&v4 dealloc];
}

- (CSDarwinVoiceTriggerHandler)initWithRemoteDevice:(id)a3 voiceTriggerEventsCoordinator:(id)a4 delegate:(id)a5 testContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = CSDarwinVoiceTriggerHandler;
  v15 = [(CSDarwinVoiceTriggerHandler *)&v22 init];
  if (v15)
  {
    if (!+[CSUtils supportRemoteDarwinVoiceTrigger])
    {
      v20 = 0;
      goto LABEL_6;
    }

    v16 = dispatch_queue_create("CSDarwinVoiceTriggerHandler", 0);
    queue = v15->_queue;
    v15->_queue = v16;

    v15->_voiceTriggerEnabled = 0;
    objc_storeWeak(&v15->_voiceTriggerEventsCoordinator, v12);
    objc_storeWeak(&v15->_delegate, v13);
    objc_storeStrong(&v15->_remoteDevice, a3);
    v18 = [v14 preventSystemSleepManager];
    preventSystemSleepManager = v15->_preventSystemSleepManager;
    v15->_preventSystemSleepManager = v18;

    objc_storeStrong(&v15->_testContext, a6);
  }

  v20 = v15;
LABEL_6:

  return v20;
}

@end
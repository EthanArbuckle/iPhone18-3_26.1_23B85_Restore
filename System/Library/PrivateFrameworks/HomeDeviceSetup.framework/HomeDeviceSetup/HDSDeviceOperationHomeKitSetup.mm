@interface HDSDeviceOperationHomeKitSetup
- (BOOL)_isOwnerOfHome:(id)home;
- (BOOL)_runHomeKitConfigureStereoPairAndReturnError:(id *)error;
- (HDSDeviceOperationHomeKitSetup)init;
- (id)_homeKitFindSettingsWithKeyPath:(id)path group:(id)group;
- (id)_mediaSystemForAccessory:(id)accessory;
- (id)_normalizedString:(id)string;
- (id)_runHomeKitAutoSelectHome:(BOOL)home;
- (id)checkIfExistingHome:(id)home;
- (id)findStereoCounterpartsWithSupportedVersions:(unint64_t)versions;
- (id)findTVs;
- (id)homePodsInHomeRoom:(id)room roomName:(id)name;
- (void)_cleanup;
- (void)_completeWithError:(id)error errorLabel:(id)label;
- (void)_removeAccessoryIfNeeded;
- (void)_removeSimilarRoomNames:(id)names home:(id)home;
- (void)_restoreHomeApp;
- (void)_run;
- (void)_runHomeKitAddAccessory;
- (void)_runHomeKitAddAppData;
- (void)_runHomeKitAddHome;
- (void)_runHomeKitAddHomeWithName:(id)name;
- (void)_runHomeKitAssignRoom;
- (void)_runHomeKitDeviceSetup;
- (void)_runHomeKitSelectRoom;
- (void)_runHomeKitSetupRoom:(BOOL)room;
- (void)_runHomeKitUpdateAppleTVAudioDestination;
- (void)_runInit;
- (void)_runPersonalRequestsStart;
- (void)_runUpdateUserListeningHistoryStart;
- (void)_startTimeout:(double)timeout;
- (void)_syncAccessoriesInSelectedRoom;
- (void)_timeoutForAccessorySync;
- (void)_updateAccount;
- (void)_updateHomeStats;
- (void)acceptSelectSameWrongLocation;
- (void)accessory:(id)accessory didUpdateLoggedInAccount:(id)account;
- (void)accessoryBrowser:(id)browser didRemoveNewAccessory:(id)accessory;
- (void)activate;
- (void)addHomePodsToAccessorySync:(id)sync;
- (void)createHomeInSameLocation;
- (void)createStereoPairBuilder:(id)builder;
- (void)homeAppInstallChoice:(BOOL)choice;
- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status;
- (void)homeManagerDidUpdateDataSyncState:(id)state;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)invalidate;
- (void)performReadinessCheck:(id)check completion:(id)completion;
- (void)reselectHome;
- (void)resetHomeSelection;
- (void)resetToHomeSelection;
- (void)resume;
- (void)selectHome:(id)home;
- (void)selectHomeName:(id)name;
- (void)selectRoom:(id)room;
- (void)sendPeerAccessoryHintForStereoPair;
@end

@implementation HDSDeviceOperationHomeKitSetup

- (HDSDeviceOperationHomeKitSetup)init
{
  v6.receiver = self;
  v6.super_class = HDSDeviceOperationHomeKitSetup;
  v2 = [(HDSDeviceOperationHomeKitSetup *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_timeoutInSeconds = 300.0;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HDSDeviceOperationHomeKitSetup_activate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __42__HDSDeviceOperationHomeKitSetup_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __42__HDSDeviceOperationHomeKitSetup_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HDSDeviceOperationHomeKitSetup_invalidate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __44__HDSDeviceOperationHomeKitSetup_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 264);
  if (v2)
  {
    if (*(v1 + 227) != 1 || !*(v1 + 176))
    {
      goto LABEL_8;
    }

    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __44__HDSDeviceOperationHomeKitSetup_invalidate__block_invoke_cold_1();
    }

    [*(*(a1 + 32) + 264) _endActiveAssertion:*(*(a1 + 32) + 176)];
    v1 = *(a1 + 32);
    v2 = *(v1 + 264);
    if (v2)
    {
LABEL_8:
      *(v1 + 264) = 0;

      v1 = *(a1 + 32);
    }
  }

  v4 = NSErrorWithOSStatusF();
  [v1 _completeWithError:v4 errorLabel:0];
}

- (void)_cleanup
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  pauseHandler = self->_pauseHandler;
  self->_pauseHandler = 0;

  promptForHomeHandler = self->_promptForHomeHandler;
  self->_promptForHomeHandler = 0;

  promptForRoomHandler = self->_promptForRoomHandler;
  self->_promptForRoomHandler = 0;

  promptForHomeNameCreationHandler = self->_promptForHomeNameCreationHandler;
  self->_promptForHomeNameCreationHandler = 0;

  promptForHomeInSameLocationHandler = self->_promptForHomeInSameLocationHandler;
  self->_promptForHomeInSameLocationHandler = 0;

  promptToInstallHomeAppHandler = self->_promptToInstallHomeAppHandler;
  self->_promptToInstallHomeAppHandler = 0;

  trSession = self->_trSession;
  self->_trSession = 0;

  self->_active = 0;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v12 = timeoutTimer;
    dispatch_source_cancel(v12);
    v13 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  [(TROperationQueue *)self->_trOperationQueue invalidate];
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = 0;

  [(HMAccessoryBrowser *)self->_homeKitBrowser stopSearchingForNewAccessories];
  homeKitBrowser = self->_homeKitBrowser;
  self->_homeKitBrowser = 0;

  [(HMDeviceSetupOperation *)self->_homeKitDeviceSetupOperation cancel];
  [(HMDeviceSetupOperation *)self->_homeKitDeviceSetupOperation setCompletionBlock:0];
  homeKitAccessory = self->_homeKitAccessory;
  self->_homeKitAccessory = 0;

  homeKitSelectedHome = self->_homeKitSelectedHome;
  self->_homeKitSelectedHome = 0;

  homeKitSelectedRoom = self->_homeKitSelectedRoom;
  self->_homeKitSelectedRoom = 0;

  builder = self->_builder;
  self->_builder = 0;
}

- (void)resetHomeSelection
{
  userCreatedHomeName = self->_userCreatedHomeName;
  self->_userCreatedHomeName = 0;

  homeKitSelectedHome = self->_homeKitSelectedHome;
  self->_homeKitSelectedHome = 0;

  self->_state = 16;
}

- (void)_removeAccessoryIfNeeded
{
  if (self->_homeKitAddedAccessory)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [(HDSDeviceOperationHomeKitSetup *)self _removeAccessoryIfNeeded];
    }

    homeKitSelectedHome = self->_homeKitSelectedHome;
    homeKitAccessory = self->_homeKitAccessory;

    [(HMHome *)homeKitSelectedHome removeAccessory:homeKitAccessory completionHandler:&__block_literal_global_1];
  }
}

uint64_t __58__HDSDeviceOperationHomeKitSetup__removeAccessoryIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 90)
    {
      v5 = v2;
      if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
      {
        v2 = __58__HDSDeviceOperationHomeKitSetup__removeAccessoryIfNeeded__block_invoke_cold_1();
LABEL_13:
        v3 = v5;
      }
    }
  }

  else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
  {
    v5 = 0;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v2 = _LogCategory_Initialize(), v3 = 0, v2))
    {
      v2 = __58__HDSDeviceOperationHomeKitSetup__removeAccessoryIfNeeded__block_invoke_cold_2();
      goto LABEL_13;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)_completeWithError:(id)error errorLabel:(id)label
{
  errorCopy = error;
  labelCopy = label;
  if (self->_active)
  {
    if (errorCopy)
    {
      self->_state = 3;
      [(HDSDeviceOperationHomeKitSetup *)self _removeAccessoryIfNeeded];
      if ([errorCopy code] == -6723)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _completeWithError:errorLabel:];
        }
      }

      else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _completeWithError:errorLabel:];
      }
    }

    else
    {
      mach_absolute_time();
      startTicks = self->_startTicks;
      UpTicksToSecondsF();
      v9 = v8;
      if (gLogCategory_HDSDeviceOperationHomeKitSetup >= 31)
      {
        self->_metricNonUserSeconds = v8 + self->_metricNonUserSeconds;
        self->_state = 4;
        goto LABEL_19;
      }

      if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize())
      {
        [HDSDeviceOperationHomeKitSetup _completeWithError:errorLabel:];
      }

      v10 = gLogCategory_HDSDeviceOperationHomeKitSetup;
      metricNonUserSeconds = v9 + self->_metricNonUserSeconds;
      self->_metricNonUserSeconds = metricNonUserSeconds;
      self->_state = 4;
      if (v10 <= 30)
      {
        if (v10 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_19;
          }

          metricNonUserSeconds = self->_metricNonUserSeconds;
        }

        v13 = metricNonUserSeconds;
        metricUserSeconds = self->_metricUserSeconds;
        LogPrintF();
      }
    }
  }

LABEL_19:
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, errorCopy, labelCopy);
  }

  [(HDSDeviceOperationHomeKitSetup *)self _cleanup:*&v13];
}

- (void)homeAppInstallChoice:(BOOL)choice
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__HDSDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke;
  v4[3] = &unk_2797142A8;
  v4[4] = self;
  choiceCopy = choice;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __55__HDSDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __55__HDSDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke_cold_1(v2);
    }

    *(*(v2 + 32) + 88) = 1;
    if (*(v2 + 40) == 1)
    {
      [*(v2 + 32) _restoreHomeApp];
    }

    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (void)resume
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HDSDeviceOperationHomeKitSetup_resume__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __40__HDSDeviceOperationHomeKitSetup_resume__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup >= 31)
    {
      *(v2 + 9) = 0;
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize())
      {
        __40__HDSDeviceOperationHomeKitSetup_resume__block_invoke_cold_1();
      }

      v4 = gLogCategory_HDSDeviceOperationHomeKitSetup;
      *(*(v3 + 32) + 9) = 0;
      if (v4 <= 30 && (v4 != -1 || _LogCategory_Initialize()))
      {
        __40__HDSDeviceOperationHomeKitSetup_resume__block_invoke_cold_2();
      }
    }

    *(*(v3 + 32) + 16) = mach_absolute_time();
    [*(v3 + 32) _startTimeout:*(*(v3 + 32) + 488)];
    v5 = *(v3 + 32);

    return [v5 _run];
  }

  return result;
}

- (void)selectHome:(id)home
{
  homeCopy = home;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HDSDeviceOperationHomeKitSetup_selectHome___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = homeCopy;
  v6 = homeCopy;
  dispatch_async(dispatchQueue, v7);
}

void __45__HDSDeviceOperationHomeKitSetup_selectHome___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __45__HDSDeviceOperationHomeKitSetup_selectHome___block_invoke_cold_1();
    }

    mach_absolute_time();
    v2 = *(*(a1 + 32) + 16);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 312) = v3 + *(*(a1 + 32) + 312);
    if ([*(a1 + 32) _isOwnerOfHome:*(a1 + 40)])
    {
      objc_storeStrong((*(a1 + 32) + 272), *(a1 + 40));
      *(*(a1 + 32) + 16) = mach_absolute_time();
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __45__HDSDeviceOperationHomeKitSetup_selectHome___block_invoke_cold_2();
      }

      [*(a1 + 32) _startTimeout:*(*(a1 + 32) + 488)];
      v4 = *(a1 + 32);

      [v4 _run];
    }

    else
    {
      v16 = NSErrorWithOSStatusF();
      v5 = [v16 userInfo];
      v6 = [v5 mutableCopy];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v9 = v8;

      v10 = [*(a1 + 40) name];
      [v9 setObject:v10 forKeyedSubscript:@"SFErrorKeyHomeName"];

      v11 = [*(a1 + 40) owner];
      v12 = [v11 name];
      [v9 setObject:v12 forKeyedSubscript:@"SFErrorKeyHomeOwnerAccount"];

      v13 = objc_alloc(MEMORY[0x277CCA9B8]);
      v14 = [v16 domain];
      v15 = [v13 initWithDomain:v14 code:objc_msgSend(v16 userInfo:{"code"), v9}];

      [*(a1 + 32) _completeWithError:v15 errorLabel:@"HDS-HK-NotHomeOwner"];
    }
  }
}

- (void)selectHomeName:(id)name
{
  nameCopy = name;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HDSDeviceOperationHomeKitSetup_selectHomeName___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __49__HDSDeviceOperationHomeKitSetup_selectHomeName___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __49__HDSDeviceOperationHomeKitSetup_selectHomeName___block_invoke_cold_1(v2);
    }

    objc_storeStrong((*(v2 + 32) + 208), *(v2 + 40));
    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (void)createHomeInSameLocation
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDSDeviceOperationHomeKitSetup_createHomeInSameLocation__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __58__HDSDeviceOperationHomeKitSetup_createHomeInSameLocation__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __58__HDSDeviceOperationHomeKitSetup_createHomeInSameLocation__block_invoke_cold_1();
    }

    *(*(v2 + 32) + 216) = 1;
    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (void)acceptSelectSameWrongLocation
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HDSDeviceOperationHomeKitSetup_acceptSelectSameWrongLocation__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __63__HDSDeviceOperationHomeKitSetup_acceptSelectSameWrongLocation__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __63__HDSDeviceOperationHomeKitSetup_acceptSelectSameWrongLocation__block_invoke_cold_1();
    }

    *(*(v2 + 32) + 217) = 1;
    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (void)resetToHomeSelection
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HDSDeviceOperationHomeKitSetup_resetToHomeSelection__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __54__HDSDeviceOperationHomeKitSetup_resetToHomeSelection__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v7 = v1;
    v5 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __54__HDSDeviceOperationHomeKitSetup_resetToHomeSelection__block_invoke_cold_1();
    }

    [*(v5 + 32) resetHomeSelection];
    v6 = *(v5 + 32);

    return [v6 _run];
  }

  return result;
}

- (void)reselectHome
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HDSDeviceOperationHomeKitSetup_reselectHome__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __46__HDSDeviceOperationHomeKitSetup_reselectHome__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __46__HDSDeviceOperationHomeKitSetup_reselectHome__block_invoke_cold_1();
    }

    *(*(v2 + 32) + 112) = 1;
    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (void)selectRoom:(id)room
{
  roomCopy = room;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HDSDeviceOperationHomeKitSetup_selectRoom___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = roomCopy;
  v6 = roomCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __45__HDSDeviceOperationHomeKitSetup_selectRoom___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __45__HDSDeviceOperationHomeKitSetup_selectRoom___block_invoke_cold_1(v2);
    }

    mach_absolute_time();
    v3 = *(*(v2 + 32) + 16);
    UpTicksToSecondsF();
    *(*(v2 + 32) + 312) = v4 + *(*(v2 + 32) + 312);
    *(*(v2 + 32) + 16) = mach_absolute_time();
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __45__HDSDeviceOperationHomeKitSetup_selectRoom___block_invoke_cold_2();
    }

    objc_storeStrong((*(v2 + 32) + 280), *(v2 + 40));
    [*(v2 + 32) _startTimeout:*(*(v2 + 32) + 488)];
    v5 = *(v2 + 32);

    return [v5 _run];
  }

  return result;
}

- (void)_startTimeout:(double)timeout
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v6 = timeoutTimer;
    dispatch_source_cancel(v6);
    v7 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  v9 = self->_timeoutTimer;
  self->_timeoutTimer = v8;

  v10 = self->_timeoutTimer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HDSDeviceOperationHomeKitSetup__startTimeout___block_invoke;
  v11[3] = &unk_2797142F8;
  v11[4] = self;
  *&v11[5] = timeout;
  dispatch_source_set_event_handler(v10, v11);
  HDSDispatchTimerSet(self->_timeoutTimer, timeout, -1.0, -4.0);
  dispatch_resume(self->_timeoutTimer);
}

void __48__HDSDeviceOperationHomeKitSetup__startTimeout___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48) - 10;
  if (v2 > 0x28)
  {
    v3 = "HomeKitSetupUnknownState?";
  }

  else
  {
    v3 = off_279714480[v2];
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    v9 = *(a1 + 40);
    LogPrintF();
  }

  v4 = *(*(a1 + 32) + 56);
  if (v4)
  {
    v5 = v4;
    dispatch_source_cancel(v5);
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = 0;
  }

  v8 = *(a1 + 32);
  v10 = NSErrorWithOSStatusF();
  [v8 _completeWithError:v10 errorLabel:{@"HDS-HK-TimeOut", v3}];
}

- (void)_run
{
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA590];
  v4 = *MEMORY[0x277CCA450];
  state = self->_state;
  while (2)
  {
    switch(state)
    {
      case 0:
        self->_state = 10;
        [(HDSDeviceOperationHomeKitSetup *)self _runInit];
        goto LABEL_188;
      case 10:
        if (self->_homeKitHomeManagerReady)
        {
          v6 = 11;
          goto LABEL_187;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 11:
        v6 = 12;
        goto LABEL_187;
      case 12:
        if ([(HMHomeManager *)self->_homeKitHomeManager dataSyncState]== 5)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _run];
          }

          v22 = MEMORY[0x277CCA9B8];
          v50 = v4;
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
          v24 = v23;
          v25 = @"?";
          if (v23)
          {
            v25 = v23;
          }

          v51[0] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:{1, *&v46}];
          v27 = [v22 errorWithDomain:v3 code:301024 userInfo:v26];
          v28 = @"HDS-HK-RequiresConfigurationReset";
LABEL_136:
          [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v27 errorLabel:v28];

          goto LABEL_188;
        }

        if ([(HMHomeManager *)self->_homeKitHomeManager dataSyncState]== 2)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _run];
          }

          v33 = MEMORY[0x277CCA9B8];
          v48 = v4;
          v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
          v24 = v34;
          v35 = @"?";
          if (v34)
          {
            v35 = v34;
          }

          v49 = v35;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:{1, *&v46}];
          v27 = [v33 errorWithDomain:v3 code:301011 userInfo:v26];
          v28 = @"HDS-HK-KeychainNotEnabled";
          goto LABEL_136;
        }

        if ([(HMHomeManager *)self->_homeKitHomeManager isDataSyncInProgress])
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [(HDSDeviceOperationHomeKitSetup *)&self->_homeKitHomeManager _run];
          }
        }

        else if ([(HMHomeManager *)self->_homeKitHomeManager status])
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [(HDSDeviceOperationHomeKitSetup *)&self->_homeKitHomeManager _run];
          }
        }

        else
        {
          self->_state = 13;
          mach_absolute_time();
          homeKitDataSyncStartTicks = self->_homeKitDataSyncStartTicks;
          UpTicksToSecondsF();
          self->_homekitDataSyncSeconds = homekitDataSyncSeconds;
          if (gLogCategory_HDSDeviceOperationHomeKitSetup > 30)
          {
            goto LABEL_188;
          }

          if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1)
          {
            goto LABEL_197;
          }

          if (_LogCategory_Initialize())
          {
            homekitDataSyncSeconds = self->_homekitDataSyncSeconds;
LABEL_197:
            v46 = homekitDataSyncSeconds;
            LogPrintF();
            goto LABEL_188;
          }
        }

        goto LABEL_188;
      case 13:
        if (self->_keyExchangeOnly)
        {
          goto LABEL_97;
        }

        v6 = 14;
        goto LABEL_187;
      case 14:
        if (!self->_promptToInstallHomeAppHandler)
        {
          goto LABEL_83;
        }

        v19 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.Home"];
        appState = [v19 appState];
        isInstalled = [appState isInstalled];

        if (isInstalled)
        {
          goto LABEL_83;
        }

        self->_state = 15;
        promptToInstallHomeAppHandler = self->_promptToInstallHomeAppHandler;
        goto LABEL_172;
      case 15:
        if (self->_homeAppInstallUserDidChoose)
        {
LABEL_83:
          v6 = 16;
          goto LABEL_187;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 16:
        v9 = [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAutoSelectHome:0];
        homeKitSelectedHome = self->_homeKitSelectedHome;
        self->_homeKitSelectedHome = v9;

        if (!self->_homeKitSelectedHome)
        {
          goto LABEL_188;
        }

        goto LABEL_170;
      case 17:
        timeoutTimer = self->_timeoutTimer;
        if (timeoutTimer)
        {
          v13 = timeoutTimer;
          dispatch_source_cancel(v13);
          v14 = self->_timeoutTimer;
          self->_timeoutTimer = 0;
        }

        if (!self->_homeKitSelectedHome)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _run];
          }

LABEL_188:
          v38 = self->_state == state;
          state = self->_state;
          if (v38)
          {
            goto LABEL_211;
          }

          continue;
        }

        if (self->_isCLIMode)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _run];
          }

          goto LABEL_170;
        }

        if (!_os_feature_enabled_impl())
        {
          goto LABEL_170;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize())
          {
            [(HDSDeviceOperationHomeKitSetup *)&self->_homeKitSelectedHome _run];
          }

          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _run];
          }
        }

        if ([(HMHome *)self->_homeKitSelectedHome homeLocationStatus]!= 2 && [(HMHome *)self->_homeKitSelectedHome homeLocationStatus]!= 3 && !+[HDSDefaults forceHomeLocationCreationFlow])
        {
LABEL_170:
          v6 = 21;
LABEL_187:
          self->_state = v6;
          goto LABEL_188;
        }

        self->_state = 20;
        promptForHomeInSameLocationHandler = self->_promptForHomeInSameLocationHandler;
        if (promptForHomeInSameLocationHandler)
        {
          name = [(HMHome *)self->_homeKitSelectedHome name];
          v43 = name;
          if (name)
          {
            v44 = name;
          }

          else
          {
            v44 = @"My Home";
          }

          promptForHomeInSameLocationHandler[2](promptForHomeInSameLocationHandler, v44);
        }

LABEL_211:
        v45 = *MEMORY[0x277D85DE8];
        return;
      case 18:
        if (self->_isCLIMode)
        {
          userCreatedHomeName = self->_userCreatedHomeName;
          self->_userCreatedHomeName = @"My Home";
        }

        if (self->_userCreatedHomeName)
        {
          [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAddHomeWithName:?];
        }

        else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 19:
        if (self->_homeKitSelectedHome)
        {
          goto LABEL_170;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 20:
        if (self->_isCLIMode)
        {
          self->_userSelectHomeWrongLocation = 1;
          goto LABEL_170;
        }

        if (self->_userSelectHomeWrongLocation)
        {
          goto LABEL_170;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 21:
        [(HDSDeviceOperationHomeKitSetup *)self _updateHomeStats];
        self->_state = 22;
        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitSelectRoom];
        goto LABEL_188;
      case 22:
        if (self->_reselectHome)
        {
          self->_reselectHome = 0;
          v31 = self->_homeKitSelectedHome;
          self->_homeKitSelectedHome = 0;

          self->_state = 17;
          v32 = [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAutoSelectHome:1];
        }

        else if (self->_homeKitSelectedRoom || self->_homeKitSelectedRoomName)
        {
          v36 = 23;
          if (self->_isCLIMode)
          {
            if (+[HDSDefaults waitForAccessorySync])
            {
              v36 = 24;
            }

            else
            {
              v36 = 23;
            }
          }

          self->_state = v36;
        }

        else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 23:
        if (!self->_pauseAfterUserInput || !self->_pauseHandler)
        {
          goto LABEL_97;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        v15 = self->_timeoutTimer;
        if (v15)
        {
          v16 = v15;
          dispatch_source_cancel(v16);
          v17 = self->_timeoutTimer;
          self->_timeoutTimer = 0;
        }

        self->_paused = 1;
        self->_state = 26;
        promptToInstallHomeAppHandler = self->_pauseHandler;
LABEL_172:
        promptToInstallHomeAppHandler[2]();
        goto LABEL_188;
      case 24:
        if (!self->_isCLIMode || !+[HDSDefaults waitForAccessorySync])
        {
          goto LABEL_186;
        }

        self->_accessorySyncStartTicks = mach_absolute_time();
        self->_state = 25;
        [(HDSDeviceOperationHomeKitSetup *)self _syncAccessoriesInSelectedRoom];
        goto LABEL_188;
      case 25:
        if (!self->_accessorySyncDone)
        {
          goto LABEL_188;
        }

        mach_absolute_time();
        accessorySyncStartTicks = self->_accessorySyncStartTicks;
        UpTicksToSecondsF();
        self->_accessorySyncSeconds = accessorySyncSeconds;
        if (gLogCategory_HDSDeviceOperationHomeKitSetup > 30)
        {
          goto LABEL_186;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1)
        {
          goto LABEL_108;
        }

        if (_LogCategory_Initialize())
        {
          accessorySyncSeconds = self->_accessorySyncSeconds;
LABEL_108:
          v46 = accessorySyncSeconds;
          LogPrintF();
        }

LABEL_186:
        v6 = 23;
        goto LABEL_187;
      case 26:
        if (!self->_paused)
        {
LABEL_97:
          v6 = 27;
          goto LABEL_187;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 27:
        self->_state = 28;
        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitDeviceSetup];
        goto LABEL_188;
      case 28:
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 29:
        if (self->_keyExchangeOnly)
        {
          goto LABEL_112;
        }

        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAddAccessory];
        goto LABEL_188;
      case 30:
        if (self->_homeKitAddedAccessory)
        {
          v6 = 31;
          goto LABEL_187;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 31:
        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitSetupRoom:0];
        goto LABEL_188;
      case 32:
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 33:
        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAssignRoom];
        goto LABEL_188;
      case 34:
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 35:
        if (self->_stereoRole)
        {
          v6 = 38;
        }

        else if (self->_tvAudioInput)
        {
LABEL_146:
          v6 = 41;
        }

        else if (self->_appDataSelf)
        {
          v6 = 36;
        }

        else
        {
LABEL_80:
          v6 = 44;
        }

        goto LABEL_187;
      case 36:
        self->_state = 37;
        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAddAppData];
        goto LABEL_188;
      case 37:
        if (self->_homeKitAddedAppData)
        {
          goto LABEL_80;
        }

        goto LABEL_188;
      case 38:
        v47 = 0;
        v7 = [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitConfigureStereoPairAndReturnError:&v47];
        v8 = v47;
        if (v8)
        {
          [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v8 errorLabel:@"HDS-HK-StereoPair-Preflights"];
        }

        else
        {
          if (v7)
          {
            v37 = 39;
          }

          else
          {
            v37 = 40;
          }

          self->_state = v37;
        }

        goto LABEL_188;
      case 39:
        if (!self->_configuredStereoPair)
        {
          goto LABEL_188;
        }

        v6 = 40;
        goto LABEL_187;
      case 40:
        goto LABEL_146;
      case 41:
        if (!self->_tvAudioInput)
        {
          goto LABEL_99;
        }

        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitUpdateAppleTVAudioDestination];
        v6 = 42;
        goto LABEL_187;
      case 42:
        if (!self->_configuredTVAudio)
        {
          goto LABEL_188;
        }

LABEL_99:
        v6 = 43;
        goto LABEL_187;
      case 43:
        goto LABEL_80;
      case 44:
        self->_state = 45;
        [(HDSDeviceOperationHomeKitSetup *)self _runPersonalRequestsStart];
        goto LABEL_188;
      case 45:
        if (!self->_personalRequestsDone)
        {
          goto LABEL_188;
        }

        v6 = 46;
        goto LABEL_187;
      case 46:
        self->_state = 47;
        [(HDSDeviceOperationHomeKitSetup *)self _runUpdateUserListeningHistoryStart];
        goto LABEL_188;
      case 47:
        if (!self->_userListeningHistoryDone)
        {
          goto LABEL_188;
        }

        if (self->_psgHomePods && self->_psgStereoPairs)
        {
          v6 = 48;
        }

        else
        {
LABEL_112:
          v6 = 50;
        }

        goto LABEL_187;
      case 48:
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_112;
      case 49:
        if (!self->_createUpdatePSGDone)
        {
          goto LABEL_188;
        }

        goto LABEL_112;
      case 50:
        [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:0 errorLabel:0];
        goto LABEL_188;
      default:
        goto LABEL_188;
    }
  }
}

- (void)_runInit
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _runInit];
  }

  self->_startTicks = mach_absolute_time();
  self->_homeKitDataSyncStartTicks = mach_absolute_time();
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _runInit];
  }

  [(HDSDeviceOperationHomeKitSetup *)self _startTimeout:self->_timeoutInSeconds];
  v3 = objc_alloc_init(getTROperationQueueClass());
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = v3;

  if (self->_isCLIMode)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runInit];
    }

    defaultConfiguration = [(objc_class *)getHMMutableHomeManagerConfigurationClass() defaultConfiguration];
    v6 = [defaultConfiguration mutableCopy];
    [v6 setAdaptive:1];
    v7 = [objc_alloc(getHMHomeManagerClass()) initWithHomeMangerConfiguration:v6];
    homeKitHomeManager = self->_homeKitHomeManager;
    self->_homeKitHomeManager = v7;

    v9 = [(HMHomeManager *)self->_homeKitHomeManager _beginActiveAssertionWithReason:@"hdsutil Started"];
    hdsutilHKToken = self->_hdsutilHKToken;
    self->_hdsutilHKToken = v9;
  }

  else
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runInit];
    }

    v11 = objc_alloc_init(getHMHomeManagerClass());
    defaultConfiguration = self->_homeKitHomeManager;
    self->_homeKitHomeManager = v11;
  }

  v12 = self->_homeKitHomeManager;

  [(HMHomeManager *)v12 setDelegate:self];
}

- (void)_runHomeKitDeviceSetup
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
  }

  if (!self->_keyExchangeOnly)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
    }

    v3 = objc_alloc_init(getHMAccessoryBrowserClass());
    homeKitBrowser = self->_homeKitBrowser;
    self->_homeKitBrowser = v3;

    [(HMAccessoryBrowser *)self->_homeKitBrowser setDelegate:self];
    [(HMAccessoryBrowser *)self->_homeKitBrowser startSearchingForNewAccessories];
  }

  v5 = self->_trSession;
  if (v5)
  {
    sessionID = self->_sessionID;
    v7 = objc_alloc(getHMDeviceSetupOperationClass());
    if (sessionID)
    {
      v8 = [v7 initWithSession:v5 sessionIdentifier:self->_sessionID];
      homeKitDeviceSetupOperation = self->_homeKitDeviceSetupOperation;
      self->_homeKitDeviceSetupOperation = v8;

      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [(HDSDeviceOperationHomeKitSetup *)&self->_sessionID _runHomeKitDeviceSetup];
      }
    }

    else
    {
      v11 = [v7 initWithSession:v5];
      v12 = self->_homeKitDeviceSetupOperation;
      self->_homeKitDeviceSetupOperation = v11;

      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
      }
    }

    if (self->_userInteractive)
    {
      v13 = 33;
    }

    else
    {
      v13 = 9;
    }

    [(HMDeviceSetupOperation *)self->_homeKitDeviceSetupOperation setQualityOfService:v13];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__HDSDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke;
    v14[3] = &unk_279713FF0;
    v14[4] = self;
    [(HMDeviceSetupOperation *)self->_homeKitDeviceSetupOperation setCompletionBlock:v14];
    [(TROperationQueue *)self->_trOperationQueue addOperation:self->_homeKitDeviceSetupOperation];
    self->_startTicksForHomeKitSteps = mach_absolute_time();
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
    }
  }

  else
  {
    v10 = NSErrorWithOSStatusF();
    [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v10 errorLabel:@"HDS-HK-NoTR"];
  }
}

void __56__HDSDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 256);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HDSDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2;
  block[3] = &unk_279713FF0;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __56__HDSDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v3 = *(a1 + 32);
  v2 = a1 + 32;
  v4 = *(v3 + 24);
  UpTicksToSecondsF();
  *(*v2 + 320) = v5;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __56__HDSDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2_cold_1(v2);
  }

  if (*(*v2 + 8) == 1)
  {
    v6 = [*(*v2 + 96) error];

    if (v6)
    {
      v7 = [*(*v2 + 96) error];
      v14 = NSErrorNestedF();

      v8 = *v2;
      v9 = @"HDS-HK-DeviceSetup-DeviceSetupOperationFailed";
      v10 = v14;
LABEL_7:
      [v8 _completeWithError:v10 errorLabel:v9];

      return;
    }

    v11 = [*(*v2 + 96) accessory];
    v12 = *(*v2 + 104);
    *(*v2 + 104) = v11;

    if (!*(*v2 + 104))
    {
      v10 = NSErrorF();
      v14 = v10;
      v8 = *v2;
      v9 = @"HDS-HK-DeviceSetup-DeviceSetupOperationFailed";
      goto LABEL_7;
    }

    if (+[HDSDefaults sysDropForceErrorLateEnabled])
    {
      v10 = NSErrorWithOSStatusF();
      v14 = v10;
      v8 = *v2;
      v9 = @"Force-Failure";
      goto LABEL_7;
    }

    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __56__HDSDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2_cold_2(v2);
    }

    *(*v2 + 48) = 29;
    v13 = *v2;

    [v13 _run];
  }
}

- (id)_runHomeKitAutoSelectHome:(BOOL)home
{
  v49 = *MEMORY[0x277D85DE8];
  homes = [(HMHomeManager *)self->_homeKitHomeManager homes];
  v6 = homes;
  if (!home && ![homes count])
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
    }

    [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAddHome];
    goto LABEL_70;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v43 + 1) + 8 * i) homeLocationStatus] == 1)
        {
          v12 = 0;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  if (!_os_feature_enabled_impl())
  {
    if (home || [v7 count] != 1)
    {
      goto LABEL_38;
    }

    firstObject = [v7 firstObject];
    if (firstObject && [(HDSDeviceOperationHomeKitSetup *)self _isOwnerOfHome:firstObject])
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_24;
      }

      goto LABEL_71;
    }

LABEL_37:

LABEL_38:
    v15 = &OBJC_IVAR___SysDropService__invalidateCalled;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:v7];
    }

    if (!self->_promptForHomeHandler)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
      }

      firstObject = [v7 firstObject];
      goto LABEL_71;
    }

    currentHome = [(HMHomeManager *)self->_homeKitHomeManager currentHome];
    uniqueIdentifier = [currentHome uniqueIdentifier];

    if (uniqueIdentifier)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v18 = v7;
      v19 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v19)
      {
        v20 = v19;
        v37 = v6;
        v21 = 0;
        v22 = *v40;
LABEL_45:
        v23 = 0;
        v38 = v21 + v20;
        while (1)
        {
          if (*v40 != v22)
          {
            objc_enumerationMutation(v18);
          }

          uniqueIdentifier2 = [*(*(&v39 + 1) + 8 * v23) uniqueIdentifier];
          v25 = [uniqueIdentifier2 isEqual:uniqueIdentifier];

          if (v25)
          {
            break;
          }

          ++v21;
          if (v20 == ++v23)
          {
            v20 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
            v21 = v38;
            if (v20)
            {
              goto LABEL_45;
            }

            break;
          }
        }

        v6 = v37;
        v15 = &OBJC_IVAR___SysDropService__invalidateCalled;
      }
    }

    v26 = v15[120];
    if (v26 <= 30 && (v26 != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
    }

    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v28 = timeoutTimer;
      dispatch_source_cancel(v28);
      v29 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    mach_absolute_time();
    startTicks = self->_startTicks;
    UpTicksToSecondsF();
    v32 = v31;
    v33 = v15[120];
    if (v33 <= 30 && (v33 != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
    }

    self->_metricNonUserSeconds = v32 + self->_metricNonUserSeconds;
    self->_startTicks = mach_absolute_time();
    v34 = v15[120];
    if (v34 <= 30 && (v34 != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
    }

    self->_state = 17;
    (*(self->_promptForHomeHandler + 2))();

LABEL_70:
    firstObject = 0;
    goto LABEL_71;
  }

  if (home)
  {
    goto LABEL_38;
  }

  v13 = [v7 count] == 1 ? v12 : 1;
  if (v13)
  {
    goto LABEL_38;
  }

  firstObject = [v7 firstObject];
  if (!firstObject || ![(HDSDeviceOperationHomeKitSetup *)self _isOwnerOfHome:firstObject])
  {
    goto LABEL_37;
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
LABEL_24:
    [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
  }

LABEL_71:

  v35 = *MEMORY[0x277D85DE8];

  return firstObject;
}

- (void)_runHomeKitAddHome
{
  self->_state = 19;
  homeKitHomeManager = self->_homeKitHomeManager;
  v4 = initSFLocalizedStringForKey(@"MY_HOME");
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HDSDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke;
  v5[3] = &unk_279714348;
  v5[4] = self;
  [(HMHomeManager *)homeKitHomeManager addHomeWithName:v4 completionHandler:v5];
}

void __52__HDSDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 256);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDSDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke_2;
  block[3] = &unk_279714320;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __52__HDSDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[8] == 1)
  {
    if (*(a1 + 40))
    {
      v3 = *(a1 + 32);

      [v3 _completeWithError:? errorLabel:?];
    }

    else if (*(a1 + 48))
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __52__HDSDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke_2_cold_1();
      }

      objc_storeStrong((*(a1 + 32) + 272), *(a1 + 48));
      *(*(a1 + 32) + 224) = 1;
      v4 = *(a1 + 32);

      [v4 _run];
    }

    else
    {
      v5 = NSErrorWithOSStatusF();
      [v1 _completeWithError:v5 errorLabel:@"HDS-HK-AddHome"];
    }
  }
}

- (void)_runHomeKitAddHomeWithName:(id)name
{
  self->_state = 19;
  homeKitHomeManager = self->_homeKitHomeManager;
  v5 = initSFLocalizedStringForKey(name);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HDSDeviceOperationHomeKitSetup__runHomeKitAddHomeWithName___block_invoke;
  v6[3] = &unk_279714348;
  v6[4] = self;
  [(HMHomeManager *)homeKitHomeManager addHomeWithName:v5 completionHandler:v6];
}

void __61__HDSDeviceOperationHomeKitSetup__runHomeKitAddHomeWithName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 256);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HDSDeviceOperationHomeKitSetup__runHomeKitAddHomeWithName___block_invoke_2;
  block[3] = &unk_279714320;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __61__HDSDeviceOperationHomeKitSetup__runHomeKitAddHomeWithName___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[8] == 1)
  {
    if (*(a1 + 40))
    {
      v3 = *(a1 + 32);

      [v3 _completeWithError:? errorLabel:?];
    }

    else if (*(a1 + 48))
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __61__HDSDeviceOperationHomeKitSetup__runHomeKitAddHomeWithName___block_invoke_2_cold_1();
      }

      objc_storeStrong((*(a1 + 32) + 272), *(a1 + 48));
      *(*(a1 + 32) + 224) = 1;
      v4 = *(a1 + 32);

      [v4 _run];
    }

    else
    {
      v5 = NSErrorWithOSStatusF();
      [v1 _completeWithError:v5 errorLabel:@"HDS-HK-AddHome"];
    }
  }
}

- (void)_runHomeKitSelectRoom
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = self->_homeKitSelectedHome;
  if (*&self->_promptForRoomHandler != 0)
  {
    selfCopy = self;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v44 = v3;
    rooms = [(HMHome *)v3 rooms];
    v6 = [rooms countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v55;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v55 != v8)
          {
            objc_enumerationMutation(rooms);
          }

          name = [*(*(&v54 + 1) + 8 * i) name];
          if (name && ([v4 containsObject:name] & 1) == 0)
          {
            [v4 addObject:name];
          }
        }

        v7 = [rooms countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v7);
    }

    [v4 sortUsingSelector:?];
    v48 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v11 = [&unk_2864E7CA0 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v47 = 0;
      v14 = *v51;
      selfCopy3 = self;
      do
      {
        v16 = 0;
        v45 = v13;
        v17 = 10 - v13;
        do
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(&unk_2864E7CA0);
          }

          v18 = initSFLocalizedStringForKey(*(*(&v50 + 1) + 8 * v16));
          if (v18)
          {
            v19 = [(HDSDeviceOperationHomeKitSetup *)selfCopy3 _normalizedString:v18];
            v49[0] = MEMORY[0x277D85DD0];
            v49[1] = 3221225472;
            v49[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke;
            v49[3] = &unk_279714370;
            v49[4] = v19;
            if ([v4 indexOfObjectPassingTest:v49] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v48 addObject:v18];
              if (v17 == v16)
              {
                v20 = v18;

                v47 = v20;
                selfCopy3 = selfCopy;
              }
            }
          }

          ++v16;
        }

        while (v12 != v16);
        v13 = v45 + v12;
        v12 = [&unk_2864E7CA0 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v12);
    }

    else
    {
      v47 = 0;
      selfCopy3 = self;
    }

    v3 = v44;
    [(HDSDeviceOperationHomeKitSetup *)selfCopy3 _removeSimilarRoomNames:v48 home:v44];
    [v48 sortUsingSelector:sel_localizedStandardCompare_];
    v21 = [v4 arrayByAddingObjectsFromArray:v48];
    timeoutTimer = selfCopy3->_timeoutTimer;
    if (timeoutTimer)
    {
      v23 = timeoutTimer;
      dispatch_source_cancel(v23);
      v24 = selfCopy->_timeoutTimer;
      selfCopy->_timeoutTimer = 0;

      selfCopy3 = selfCopy;
    }

    mach_absolute_time();
    startTicks = selfCopy3->_startTicks;
    UpTicksToSecondsF();
    v27 = v26;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
    }

    selfCopy3->_metricNonUserSeconds = v27 + selfCopy3->_metricNonUserSeconds;
    selfCopy3->_startTicks = mach_absolute_time();
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
    }

    if (selfCopy3->_promptForRoomHandler && selfCopy3->_promptForRoomHandlerDetailed && gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
    }

    v28 = [v4 count];
    v29 = v28;
    if (selfCopy3->_promptForRoomHandlerDetailed)
    {
      v30 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
      if (v29)
      {
        v31 = v47;
        goto LABEL_65;
      }

      v31 = v47;
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
        if (v47)
        {
          goto LABEL_48;
        }
      }

      else if (v47)
      {
LABEL_48:
        v33 = [v48 indexOfObject:v47];
LABEL_64:
        v36 = [MEMORY[0x277CCAA70] indexPathForRow:v33 inSection:1];

        v30 = v36;
        selfCopy3 = selfCopy;
LABEL_65:
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          v42 = v48;
          v43 = v30;
          v41 = v4;
          LogPrintF();
        }

        promptForRoomHandlerDetailed = selfCopy3->_promptForRoomHandlerDetailed;
        v38 = [(HMHome *)v44 name:v41];
        promptForRoomHandlerDetailed[2](promptForRoomHandlerDetailed, v38, v4, v48, v30);

LABEL_79:
        goto LABEL_80;
      }

      v33 = 0;
      goto LABEL_64;
    }

    if (v28)
    {
      v32 = 0;
      v31 = v47;
      goto LABEL_73;
    }

    v31 = v47;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
      if (v47)
      {
        goto LABEL_58;
      }
    }

    else if (v47)
    {
LABEL_58:
      v32 = [v21 indexOfObject:v47];
      goto LABEL_73;
    }

    v32 = 0;
LABEL_73:
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    promptForRoomHandler = selfCopy3->_promptForRoomHandler;
    if (promptForRoomHandler)
    {
      promptForRoomHandler[2](promptForRoomHandler, v21, v32);
    }

    goto LABEL_79;
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
  }

  roomForEntireHome = [(HMHome *)v3 roomForEntireHome];
  homeKitSelectedRoom = self->_homeKitSelectedRoom;
  self->_homeKitSelectedRoom = roomForEntireHome;

  if (!self->_homeKitSelectedRoom)
  {
    v4 = NSErrorWithOSStatusF();
    [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v4 errorLabel:@"HDS-HK-RoomSelection"];
LABEL_80:
  }

  v40 = *MEMORY[0x277D85DE8];
}

BOOL __55__HDSDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 caseInsensitiveCompare:*(a1 + 32)];
  if (!v5)
  {
    *a4 = 1;
  }

  return v5 == 0;
}

- (void)_runHomeKitAddAccessory
{
  v26 = *MEMORY[0x277D85DE8];
  self->_state = 30;
  uniqueIdentifier = [(HMAccessory *)self->_homeKitAccessory uniqueIdentifier];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  accessories = [(HMHome *)self->_homeKitSelectedHome accessories];
  v5 = [accessories countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v22 != v7)
      {
        objc_enumerationMutation(accessories);
      }

      v9 = *(*(&v21 + 1) + 8 * v8);
      uniqueIdentifier2 = [v9 uniqueIdentifier];
      v11 = [uniqueIdentifier2 isEqual:uniqueIdentifier];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [accessories countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (!v12)
    {
      goto LABEL_15;
    }

    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAddAccessory];
    }

    homeKitAccessory = self->_homeKitAccessory;
    self->_homeKitAccessory = v12;
    identifier = v12;

    self->_homeKitAddedAccessory = 1;
  }

  else
  {
LABEL_9:

LABEL_15:
    self->_startTicksForHomeKitSteps = mach_absolute_time();
    pairedPeer = [(HDSDeviceOperationHomeKitSetup *)self pairedPeer];
    identifier = [pairedPeer identifier];

    if (identifier)
    {
      v16 = self->_homeKitAccessory;
      if (objc_opt_respondsToSelector())
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _runHomeKitAddAccessory];
        }

        [(HMAccessory *)self->_homeKitAccessory setPeerIdentifier:identifier];
      }
    }

    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAddAccessory];
    }

    homeKitSelectedHome = self->_homeKitSelectedHome;
    v18 = self->_homeKitAccessory;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke;
    v20[3] = &unk_279714198;
    v20[4] = self;
    [(HMHome *)homeKitSelectedHome addAccessory:v18 completionHandler:v20];
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 256);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = (a1 + 32);
  v3 = *(*(a1 + 32) + 24);
  result = UpTicksToSecondsF();
  *(*(a1 + 32) + 328) = v5;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2_cold_1(a1 + 32);
    }
  }

  if (*(*v2 + 8) == 1)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2_cold_2();
    }

    [*(*(a1 + 32) + 80) stopSearchingForNewAccessories];
    if (*(a1 + 40))
    {
      v6 = *v2;

      return [v6 _completeWithError:? errorLabel:?];
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2_cold_3();
      }

      *(*v2 + 221) = 1;
      [*v2 _updateAccount];
      v7 = *v2;

      return [v7 _run];
    }
  }

  return result;
}

- (void)_runHomeKitSetupRoom:(BOOL)room
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = self->_homeKitSelectedRoom;
  if (v5)
  {
    v6 = v5;
LABEL_3:
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitSetupRoom:];
    }

    homeKitSelectedRoom = self->_homeKitSelectedRoom;
    self->_homeKitSelectedRoom = v6;
    v8 = v6;

    self->_state = 33;
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    rooms = [(HMHome *)self->_homeKitSelectedHome rooms];
    v11 = [rooms countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
LABEL_10:
      v14 = 0;
      while (1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(rooms);
        }

        v15 = *(*(&v23 + 1) + 8 * v14);
        name = [v15 name];
        v17 = [name isEqual:self->_homeKitSelectedRoomName];

        if (v17)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [rooms countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v12)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      v6 = v15;

      if (v6)
      {
        goto LABEL_3;
      }
    }

    else
    {
LABEL_16:
    }

    v8 = self->_homeKitSelectedRoomName;
    if (v8)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _runHomeKitSetupRoom:?];
      }

      self->_state = 32;
      homeKitSelectedHome = self->_homeKitSelectedHome;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke;
      v20[3] = &unk_2797143C0;
      v20[4] = self;
      roomCopy = room;
      v8 = v8;
      v21 = v8;
      [(HMHome *)homeKitSelectedHome addRoomWithName:v8 completionHandler:v20];
    }

    else
    {
      v19 = NSErrorWithOSStatusF();
      [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v19 errorLabel:@"HDS-HK-NoRoomName"];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 256);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2;
  block[3] = &unk_279714398;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v15 = *(a1 + 48);
  v14 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8) != 1)
  {
    goto LABEL_41;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v13 = *(a1 + 48);
    if (v13)
    {
      objc_storeStrong((v1 + 120), v13);
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2_cold_1();
      }

      *(*(a1 + 32) + 48) = 33;
      v14 = *(a1 + 32);
      v15 = *MEMORY[0x277D85DE8];

      [v14 _run];
      return;
    }
  }

  if ([v3 code] == 1 && (*(a1 + 64) & 1) == 0)
  {
    v19 = dispatch_time(0, 2000000000);
    v20 = *(*(a1 + 32) + 256);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_3;
    block[3] = &unk_2797142D0;
    v21 = *(a1 + 40);
    v22 = *(a1 + 32);
    v34 = v21;
    v35 = v22;
    dispatch_after(v19, v20, block);

LABEL_41:
    v27 = *MEMORY[0x277D85DE8];
    return;
  }

  if ([*(a1 + 40) code] == 1)
  {
    objc_storeStrong((*(a1 + 32) + 120), *(a1 + 48));
    v4 = *(a1 + 32);
    if (!*(v4 + 120))
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v5 = [*(v4 + 272) rooms];
      v6 = [v5 countByEnumeratingWithState:&v29 objects:v36 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v30;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v30 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v29 + 1) + 8 * i);
            v11 = [v10 name];
            v12 = [v11 isEqualToString:*(a1 + 56)];

            if (v12)
            {
              objc_storeStrong((*(a1 + 32) + 120), v10);
              goto LABEL_32;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v29 objects:v36 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_32:
    }

    v24 = *(a1 + 32);
    if (v24[15])
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2_cold_2();
      }

      *(*(a1 + 32) + 48) = 33;
      [*(a1 + 32) _run];
    }

    else
    {
      v25 = *(a1 + 40);
      if (v25)
      {
        [*(a1 + 32) _completeWithError:v25 errorLabel:@"HDS-HK-AddRoomWithName"];
      }

      else
      {
        v26 = NSErrorWithOSStatusF();
        [v24 _completeWithError:v26 errorLabel:@"HDS-HK-AddRoomWithName"];
      }
    }

    goto LABEL_41;
  }

  v16 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v17 = *MEMORY[0x277D85DE8];
    v18 = *(a1 + 32);

    [v18 _completeWithError:? errorLabel:?];
  }

  else
  {
    v28 = NSErrorWithOSStatusF();
    [v16 _completeWithError:? errorLabel:?];
    v23 = *MEMORY[0x277D85DE8];
  }
}

uint64_t __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_3(uint64_t a1)
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_3_cold_1(a1);
  }

  [*(a1 + 40) _runHomeKitSetupRoom:1];
  v2 = *(a1 + 40);

  return [v2 _run];
}

- (void)_runHomeKitAssignRoom
{
  name = [*(self + 120) name];
  LogPrintF();
}

void __55__HDSDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 256);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void *__55__HDSDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 24);
  UpTicksToSecondsF();
  *(*(a1 + 32) + 336) = v4;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __55__HDSDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2_cold_1(a1 + 32);
  }

  result = *v2;
  if (*(*v2 + 8) == 1)
  {
    if (*(a1 + 40))
    {

      return [result _completeWithError:? errorLabel:?];
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __55__HDSDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2_cold_2();
      }

      *(*v2 + 48) = 35;
      v6 = *v2;

      return [v6 _run];
    }
  }

  return result;
}

- (void)_runHomeKitAddAppData
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _runHomeKitAddAppData];
  }

  homeKitAccessory = self->_homeKitAccessory;
  if (homeKitAccessory)
  {
    applicationData = [(HMAccessory *)homeKitAccessory applicationData];
    appDataSelf = self->_appDataSelf;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke;
    v10[3] = &unk_2797143E8;
    v11 = applicationData;
    v6 = applicationData;
    [(NSDictionary *)appDataSelf enumerateKeysAndObjectsUsingBlock:v10];
    v7 = self->_homeKitAccessory;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_2;
    v9[3] = &unk_279714198;
    v9[4] = self;
    [(HMAccessory *)v7 updateApplicationData:v6 completionHandler:v9];
  }

  else
  {
    v8 = NSErrorWithOSStatusF();
    [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v8 errorLabel:@"HDS-HK-AppData-NoHKAccessory"];
  }
}

void __55__HDSDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 256);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_3;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __55__HDSDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_3(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v1 = result;
    v2 = *(result + 40);
    if (v2)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v4 = _LogCategory_Initialize(), v2 = *(v1 + 40), v4))
        {
          LogPrintF();
          v2 = *(v1 + 40);
        }
      }

      v5 = *(v1 + 32);

      return [v5 _completeWithError:v2 errorLabel:@"HDS-HK-AddAppData"];
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __55__HDSDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_3_cold_1();
      }

      *(*(v1 + 32) + 128) = 1;
      v3 = *(v1 + 32);

      return [v3 _run];
    }
  }

  return result;
}

- (BOOL)_runHomeKitConfigureStereoPairAndReturnError:(id *)error
{
  v33[2] = *MEMORY[0x277D85DE8];
  v5 = self->_stereoCounterpart;
  if (!v5 || (self->_stereoRole & 0xFFFFFFFE) != 2)
  {
    goto LABEL_18;
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _runHomeKitConfigureStereoPairAndReturnError:];
  }

  if (self->_homeKitAccessory)
  {
    HMMediaSystemBuilderClass = getHMMediaSystemBuilderClass();
    homeKitAccessory = self->_homeKitAccessory;
    v33[0] = v5;
    v33[1] = homeKitAccessory;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:2];
    LOBYTE(HMMediaSystemBuilderClass) = [(objc_class *)HMMediaSystemBuilderClass isStereoPairingSupportedForAccessories:v8];

    if (HMMediaSystemBuilderClass)
    {
      v9 = self->_homeKitSelectedHome;
      if (!v9)
      {
        if (error)
        {
          NSErrorWithOSStatusF();
          *error = v13 = 0;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_62;
      }

      v10 = self->_homeKitSelectedRoomName;
      if (v10)
      {
        builder = self->_builder;
        if (builder || (!_os_feature_enabled_impl() || !self->_sessionID ? (v12 = [objc_alloc(getHMMediaSystemBuilderClass()) initWithHome:v9]) : (v12 = objc_msgSend(objc_alloc(getHMMediaSystemBuilderClass()), "initWithHome:setupSessionIdentifier:", v9, self->_sessionID)), v16 = self->_builder, self->_builder = v12, v16, (builder = self->_builder) != 0))
        {
          [(HMMediaSystemBuilder *)builder setName:v10];
          mediaProfile = [(HMAccessory *)self->_homeKitAccessory mediaProfile];
          if (mediaProfile)
          {
            stereoRole = self->_stereoRole;
            HMMediaSystemRoleClass = getHMMediaSystemRoleClass();
            if (stereoRole == 2)
            {
              [(objc_class *)HMMediaSystemRoleClass leftRole];
            }

            else
            {
              [(objc_class *)HMMediaSystemRoleClass rightRole];
            }
            v20 = ;
            v30 = [objc_alloc(getHMMediaSystemComponentClass()) initWithMediaProfile:mediaProfile role:v20];
            if (v30)
            {
              mediaProfile2 = [(HMAccessory *)v5 mediaProfile];
              if (mediaProfile2)
              {
                v28 = v20;
                v21 = self->_stereoRole;
                v22 = getHMMediaSystemRoleClass();
                if (v21 == 2)
                {
                  [(objc_class *)v22 rightRole];
                }

                else
                {
                  [(objc_class *)v22 leftRole];
                }
                v27 = ;
                v23 = [objc_alloc(getHMMediaSystemComponentClass()) initWithMediaProfile:mediaProfile2 role:v27];
                v13 = v23 != 0;
                if (v23)
                {
                  self->_stereoPairStartTicks = mach_absolute_time();
                  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
                  {
                    [HDSDeviceOperationHomeKitSetup _runHomeKitConfigureStereoPairAndReturnError:];
                  }

                  v24 = v30;
                  v32[0] = v30;
                  v32[1] = v23;
                  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
                  [(HMMediaSystemBuilder *)self->_builder setComponents:v25];

                  v26 = self->_builder;
                  v31[0] = MEMORY[0x277D85DD0];
                  v31[1] = 3221225472;
                  v31[2] = __79__HDSDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke;
                  v31[3] = &unk_279714410;
                  v31[4] = self;
                  [(HMMediaSystemBuilder *)v26 commitWithCompletionHandler:v31];
                }

                else
                {
                  v24 = v30;
                  if (error)
                  {
                    *error = NSErrorWithOSStatusF();
                  }
                }

                v20 = v28;
              }

              else
              {
                if (error)
                {
                  NSErrorWithOSStatusF();
                  *error = v13 = 0;
                }

                else
                {
                  v13 = 0;
                }

                v24 = v30;
              }
            }

            else
            {
              if (error)
              {
                NSErrorWithOSStatusF();
                *error = v13 = 0;
              }

              else
              {
                v13 = 0;
              }

              v24 = 0;
            }
          }

          else if (error)
          {
            NSErrorWithOSStatusF();
            *error = v13 = 0;
          }

          else
          {
            v13 = 0;
          }

          goto LABEL_61;
        }

        if (!error)
        {
          goto LABEL_41;
        }
      }

      else if (!error)
      {
LABEL_41:
        v13 = 0;
        goto LABEL_61;
      }

      NSErrorWithOSStatusF();
      *error = v13 = 0;
LABEL_61:

LABEL_62:
      goto LABEL_19;
    }

    if (error)
    {
      goto LABEL_17;
    }

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  if (!error)
  {
    goto LABEL_18;
  }

LABEL_17:
  NSErrorWithOSStatusF();
  *error = v13 = 0;
LABEL_19:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void __79__HDSDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(*(a1 + 32) + 8) == 1)
  {
    mach_absolute_time();
    v7 = *(*(a1 + 32) + 40);
    UpTicksToSecondsF();
    *(*(a1 + 32) + 368) = v8;
    v9 = *(*(a1 + 32) + 256);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HDSDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke_2;
    block[3] = &unk_279714320;
    v10 = v5;
    v11 = *(a1 + 32);
    v13 = v10;
    v14 = v11;
    v15 = v6;
    dispatch_async(v9, block);
  }
}

void __79__HDSDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 90)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v6 = _LogCategory_Initialize(), v2 = *(a1 + 32), v6))
      {
        LogPrintF();
        v2 = *(a1 + 32);
      }
    }

    v7 = *(a1 + 40);

    [v7 _completeWithError:v2 errorLabel:@"HDS-HK-StereoPair"];
    return;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v3 = *(a1 + 48);
      }

      v4 = [v3 uniqueIdentifier];
      v9 = [*(*(a1 + 40) + 144) name];
      LogPrintF();
    }

LABEL_20:
    *(*(a1 + 40) + 129) = 1;
    objc_storeStrong((*(a1 + 40) + 136), *(a1 + 48));
    v8 = *(a1 + 40);

    [v8 _run];
    return;
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 90 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __79__HDSDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 40);
  v10 = NSErrorWithOSStatusF();
  [v5 _completeWithError:v10 errorLabel:@"HDS-HK-StereoPair-NoMediaSystem"];
}

- (void)_runHomeKitUpdateAppleTVAudioDestination
{
  self->_odeonStartTicks = mach_absolute_time();
  audioDestinationController = [(HMAccessory *)self->_tvAudioInput audioDestinationController];
  if (audioDestinationController)
  {
    v4 = 104;
    if (self->_configuredStereoPair)
    {
      v4 = 136;
    }

    v5 = *(&self->super.isa + v4);
    if (v5)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __74__HDSDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke;
      v7[3] = &unk_2797141C0;
      v7[4] = self;
      v8 = audioDestinationController;
      [v8 updateDestination:v5 options:2 completionHandler:v7];
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 115 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _runHomeKitUpdateAppleTVAudioDestination];
      }

      v6 = NSErrorWithOSStatusF();
      [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v6 errorLabel:@"HDS-HK-NoAudioDestination"];
    }
  }

  else
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 115 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitUpdateAppleTVAudioDestination];
    }

    v5 = NSErrorWithOSStatusF();
    [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v5 errorLabel:@"HDS-HK-Odeon-NoAudioDestinationController"];
  }
}

void __74__HDSDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  mach_absolute_time();
  v4 = *(*(a1 + 32) + 160);
  UpTicksToSecondsF();
  *(*(a1 + 32) + 496) = v5;
  v6 = *(a1 + 32);
  if (*(v6 + 8) == 1)
  {
    v7 = *(v6 + 256);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HDSDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2;
    block[3] = &unk_279714320;
    block[4] = v6;
    v9 = v3;
    v10 = *(a1 + 40);
    dispatch_async(v7, block);
  }
}

uint64_t __74__HDSDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 160);
  UpTicksToSecondsF();
  *(*(a1 + 32) + 496) = v4;
  v5 = *(a1 + 40);
  if (v5)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v8 = _LogCategory_Initialize(), v5 = *(a1 + 40), v8))
      {
        LogPrintF();
        v5 = *(a1 + 40);
      }
    }

    v9 = *v2;

    return [v9 _completeWithError:v5 errorLabel:@"HDS-HK-Odeon"];
  }

  else
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __74__HDSDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2_cold_1(a1, a1 + 32);
    }

    *(*v2 + 72) = 1;
    v6 = *v2;

    return [v6 _run];
  }
}

- (id)_homeKitFindSettingsWithKeyPath:(id)path group:(id)group
{
  v34 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  groupCopy = group;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  settings = [groupCopy settings];
  v9 = [settings countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(settings);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        keyPath = [v13 keyPath];
        v15 = [keyPath isEqual:pathCopy];

        if (v15)
        {
          v20 = v13;
          goto LABEL_19;
        }
      }

      v10 = [settings countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  settings = [groupCopy groups];
  v16 = [settings countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
LABEL_11:
    v19 = 0;
    while (1)
    {
      if (*v25 != v18)
      {
        objc_enumerationMutation(settings);
      }

      v20 = [(HDSDeviceOperationHomeKitSetup *)self _homeKitFindSettingsWithKeyPath:pathCopy group:*(*(&v24 + 1) + 8 * v19)];
      if (v20)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [settings countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v17)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_19:
    v21 = v20;
  }

  else
  {
LABEL_17:
    v21 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)_runUpdateUserListeningHistoryStart
{
  v3 = self->_homeKitAccessory;
  if (v3)
  {
    v4 = self->_homeKitSelectedHome;
    owner = [(HMHome *)self->_homeKitSelectedHome owner];
    if (owner)
    {
      owner2 = [(HMHome *)v4 owner];
      v7 = [owner2 userSettingsForHome:v4];
      settings = [v7 settings];

      rootGroup = [settings rootGroup];
      v10 = [(HDSDeviceOperationHomeKitSetup *)self _homeKitFindSettingsWithKeyPath:@"root.siri.identifyVoice" group:rootGroup];

      if (v10 && ([v10 value], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, (v12 & 1) != 0))
      {
        v13 = [owner userListeningHistoryUpdateControlForHome:v4];
        v14 = [v13 mutableCopy];
        if (v14)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _runUpdateUserListeningHistoryStart];
          }

          [v14 addAccessory:v3];
          self->_startTicksForHomeKitSteps = mach_absolute_time();
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __69__HDSDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke;
          v16[3] = &unk_279714198;
          v16[4] = self;
          [owner updateUserListeningHistoryUpdateControl:v14 forHome:v4 completionHandler:v16];
        }

        else
        {
          v15 = NSErrorWithOSStatusF();
          [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v15 errorLabel:@"HDS-HK-ULH-CreateAccessFail"];
        }
      }

      else
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 50 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _runUpdateUserListeningHistoryStart];
        }

        self->_userListeningHistoryDone = 1;
      }
    }

    else
    {
      settings = NSErrorWithOSStatusF();
      [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:settings errorLabel:@"HDS-HK-NotOwner"];
    }
  }

  else
  {
    v4 = NSErrorWithOSStatusF();
    [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v4 errorLabel:@"NoAccessory"];
  }
}

void __69__HDSDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 256);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HDSDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __69__HDSDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 24);
  result = UpTicksToSecondsF();
  *(*(a1 + 32) + 352) = v5;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __69__HDSDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2_cold_1(a1 + 32);
    }
  }

  if (*(*v2 + 8) == 1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v8 = _LogCategory_Initialize(), v6 = *(a1 + 40), v8))
        {
          LogPrintF();
          v6 = *(a1 + 40);
        }
      }

      v9 = *v2;

      return [v9 _completeWithError:v6 errorLabel:@"HDS-HK-ULH-UpdateAccessControlFailed"];
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __69__HDSDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2_cold_2();
      }

      *(*v2 + 153) = 1;
      v7 = *v2;

      return [v7 _run];
    }
  }

  return result;
}

- (void)_runPersonalRequestsStart
{
  v35 = *MEMORY[0x277D85DE8];
  if (self->_personalRequestsEnabled)
  {
    v28 = self->_homeKitAccessory;
    if (v28)
    {
      v3 = self->_homeKitSelectedHome;
      owner = [(HMHome *)self->_homeKitSelectedHome owner];
      v5 = owner;
      if (owner)
      {
        v6 = [owner assistantAccessControlForHome:v3];
        v7 = [v6 mutableCopy];
        if (v7)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _runPersonalRequestsStart];
          }

          [v7 setEnabled:1];
          if (_os_feature_enabled_impl())
          {
            v23 = v7;
            v24 = v6;
            v25 = v5;
            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v26 = v3;
            obj = [(HMHome *)v3 accessories];
            v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v8)
            {
              v9 = v8;
              v10 = *v31;
              do
              {
                for (i = 0; i != v9; ++i)
                {
                  if (*v31 != v10)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v12 = *(*(&v30 + 1) + 8 * i);
                  category = [v12 category];
                  categoryType = [category categoryType];
                  v15 = getHMAccessoryCategoryTypeHomePod();
                  if ([categoryType isEqualToString:v15])
                  {
                    uniqueIdentifier = [v12 uniqueIdentifier];
                    uniqueIdentifier2 = [(HMAccessory *)v28 uniqueIdentifier];
                    v18 = [uniqueIdentifier isEqual:uniqueIdentifier2];

                    if (!v18)
                    {

                      v5 = v25;
                      v3 = v26;
                      v7 = v23;
                      v6 = v24;
                      goto LABEL_31;
                    }
                  }

                  else
                  {
                  }
                }

                v9 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
              }

              while (v9);
            }

            if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
            {
              [HDSDeviceOperationHomeKitSetup _runPersonalRequestsStart];
            }

            v7 = v23;
            [v23 setAllowUnauthenticatedRequests:1];
            v5 = v25;
            v3 = v26;
            v6 = v24;
          }

LABEL_31:
          self->_startTicksForHomeKitSteps = mach_absolute_time();
          [v7 addAccessory:v28];
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __59__HDSDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke;
          v29[3] = &unk_279714198;
          v29[4] = self;
          [v5 updateAssistantAccessControl:v7 forHome:v3 completionHandler:v29];
        }

        else
        {
          v21 = NSErrorWithOSStatusF();
          [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v21 errorLabel:@"HDS-HK-PR-CreateAccessFail"];
        }
      }

      else
      {
        v20 = NSErrorWithOSStatusF();
        [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v20 errorLabel:@"HDS-HK-NotOwner"];
      }
    }

    else
    {
      v19 = NSErrorWithOSStatusF();
      [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v19 errorLabel:@"HDS-HK-NoAccessory"];
    }
  }

  else
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runPersonalRequestsStart];
    }

    self->_personalRequestsDone = 1;
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __59__HDSDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 256);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HDSDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __59__HDSDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  v3 = *(*(a1 + 32) + 24);
  result = UpTicksToSecondsF();
  *(*(a1 + 32) + 344) = v5;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __59__HDSDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2_cold_1(a1 + 32);
    }
  }

  if (*(*v2 + 8) == 1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v8 = _LogCategory_Initialize(), v6 = *(a1 + 40), v8))
        {
          LogPrintF();
          v6 = *(a1 + 40);
        }
      }

      v9 = *v2;

      return [v9 _completeWithError:v6 errorLabel:@"HDS-HK-PR-UpdateAccessControlFailed"];
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __59__HDSDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2_cold_2();
      }

      *(*v2 + 152) = 1;
      v7 = *v2;

      return [v7 _run];
    }
  }

  return result;
}

- (void)accessoryBrowser:(id)browser didRemoveNewAccessory:(id)accessory
{
  homeKitBrowser = self->_homeKitBrowser;
  self->_homeKitBrowser = 0;
  MEMORY[0x2821F96F8]();
}

- (void)homeManagerDidUpdateDataSyncState:(id)state
{
  stateCopy = state;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HDSDeviceOperationHomeKitSetup_homeManagerDidUpdateDataSyncState___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __68__HDSDeviceOperationHomeKitSetup_homeManagerDidUpdateDataSyncState___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __68__HDSDeviceOperationHomeKitSetup_homeManagerDidUpdateDataSyncState___block_invoke_cold_1(v2);
    }

    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDSDeviceOperationHomeKitSetup_homeManagerDidUpdateHomes___block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __60__HDSDeviceOperationHomeKitSetup_homeManagerDidUpdateHomes___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __60__HDSDeviceOperationHomeKitSetup_homeManagerDidUpdateHomes___block_invoke_cold_1();
    }

    *(*(v2 + 32) + 222) = 1;
    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__HDSDeviceOperationHomeKitSetup_homeManager_didUpdateStatus___block_invoke;
  v5[3] = &unk_2797142F8;
  v5[4] = self;
  v5[5] = status;
  dispatch_async(dispatchQueue, v5);
}

uint64_t __62__HDSDeviceOperationHomeKitSetup_homeManager_didUpdateStatus___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __62__HDSDeviceOperationHomeKitSetup_homeManager_didUpdateStatus___block_invoke_cold_1(v2);
    }

    v3 = *(v2 + 32);

    return [v3 _run];
  }

  return result;
}

- (void)addHomePodsToAccessorySync:(id)sync
{
  v27 = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  homePodsAccessorySyncing = self->_homePodsAccessorySyncing;
  self->_homePodsAccessorySyncing = v5;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = syncCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        remoteLoginHandler = [v12 remoteLoginHandler];
        loggedInAccount = [remoteLoginHandler loggedInAccount];

        if (!loggedInAccount)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup addHomePodsToAccessorySync:];
          }

          [v12 setDelegate:self];
          v17 = self->_homePodsAccessorySyncing;
          uniqueIdentifier = [v12 uniqueIdentifier];
          uUIDString = [uniqueIdentifier UUIDString];
          [(NSMutableDictionary *)v17 setValue:v12 forKey:uUIDString];
          goto LABEL_14;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          uniqueIdentifier = [v12 remoteLoginHandler];
          uUIDString = [uniqueIdentifier loggedInAccount];
          v21 = uUIDString;
          LogPrintF();
LABEL_14:
        }

        ++v11;
      }

      while (v9 != v11);
      v18 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
      v9 = v18;
    }

    while (v18);
  }

  if ([(NSMutableDictionary *)self->_homePodsAccessorySyncing count])
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup addHomePodsToAccessorySync:];
    }

    [(HDSDeviceOperationHomeKitSetup *)self _timeoutForAccessorySync];
  }

  else
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup addHomePodsToAccessorySync:];
    }

    v19 = self->_homePodsAccessorySyncing;
    self->_homePodsAccessorySyncing = 0;

    self->_accessorySyncDone = 1;
    self->_state = 25;
    [(HDSDeviceOperationHomeKitSetup *)self _run];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)performReadinessCheck:(id)check completion:(id)completion
{
  checkCopy = check;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke;
  block[3] = &unk_279714460;
  v12 = checkCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = checkCopy;
  v10 = completionCopy;
  dispatch_async(v8, block);
}

void __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_cold_1();
  }

  v2 = objc_opt_new();
  if (!*(*(a1 + 32) + 264))
  {
    (*(*(a1 + 48) + 16))();
  }

  v3 = dispatch_group_create();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 40);
  v4 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      v7 = 0;
      do
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * v7);
        dispatch_group_enter(v3);
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_cold_2(v8);
        }

        v9 = *(a1 + 32);
        v10 = *(v9 + 272);
        v11 = *(v9 + 504);
        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_2;
        v20[3] = &unk_279714438;
        v20[4] = v8;
        v21 = v2;
        v22 = v3;
        [v10 performMediaGroupReadinessCheckForAccessory:v8 timeout:v11 setupSessionIdentifier:v20 completion:10.0];

        ++v7;
      }

      while (v5 != v7);
      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
      v5 = v12;
    }

    while (v12);
  }

  v13 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_3;
  block[3] = &unk_279714210;
  v18 = v2;
  v19 = *(a1 + 48);
  v14 = v2;
  dispatch_group_notify(v3, v13, block);

  v15 = *MEMORY[0x277D85DE8];
}

void __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_2_cold_1(a1);
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    goto LABEL_9;
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_2_cold_2(a1);
  }

  [*(a1 + 40) addObject:*(a1 + 32)];
LABEL_9:
  dispatch_group_leave(*(a1 + 48));
}

uint64_t __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_3(uint64_t a1)
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_3_cold_1(a1);
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)findStereoCounterpartsWithSupportedVersions:(unint64_t)versions
{
  v61 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self->_homeKitSelectedRoom;
  if (v4)
  {
    v5 = v4;
LABEL_3:
    v6 = self->_iTunesAccountID;
    selfCopy = self;
    if (v6)
    {
      v7 = v6;
      v48 = SFNormalizeEmailAddress(v6, 1);
    }

    else
    {
      v48 = 0;
    }

    v46 = v5;
    v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    accessories = [(HMRoom *)v5 accessories];
    v16 = [accessories countByEnumeratingWithState:&v51 objects:v59 count:16];
    versionsCopy2 = versions;
    if (!v16)
    {
LABEL_82:

      v9 = [v47 copy];
      rooms = v46;
      goto LABEL_83;
    }

    v18 = v16;
    v19 = *v52;
LABEL_17:
    v20 = 0;
    while (1)
    {
      if (*v52 != v19)
      {
        objc_enumerationMutation(accessories);
      }

      v21 = *(*(&v51 + 1) + 8 * v20);
      category = [v21 category];
      categoryType = [category categoryType];
      v24 = getHMAccessoryCategoryTypeHomePod();
      v25 = [categoryType isEqual:v24];

      if (!v25)
      {
        goto LABEL_76;
      }

      v26 = [(HDSDeviceOperationHomeKitSetup *)selfCopy _mediaSystemForAccessory:v21];
      if (v26)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
        }

        goto LABEL_75;
      }

      if (([v21 supportedStereoPairVersions] & versionsCopy2) == 0)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
        }

        goto LABEL_75;
      }

      if (([(objc_class *)getHMMediaSystemBuilderClass() supportsMediaSystem:v21]& 1) == 0)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
        }

        goto LABEL_75;
      }

      remoteLoginHandler = [v21 remoteLoginHandler];
      loggedInAccount = [remoteLoginHandler loggedInAccount];
      username = [loggedInAccount username];

      remoteLoginHandler2 = [v21 remoteLoginHandler];

      if (remoteLoginHandler2)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
        }
      }

      else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
      }

      remoteLoginHandler3 = [v21 remoteLoginHandler];
      loggedInAccount2 = [remoteLoginHandler3 loggedInAccount];

      if (loggedInAccount2)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
        }
      }

      else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
      }

      remoteLoginHandler4 = [v21 remoteLoginHandler];
      loggedInAccount3 = [remoteLoginHandler4 loggedInAccount];
      username2 = [loggedInAccount3 username];

      if (username2)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
        }
      }

      else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
      }

      if (username)
      {
        v36 = SFNormalizeEmailAddress(username, 1);
      }

      else
      {
        v36 = 0;
      }

      v37 = v36;
      v38 = v48;
      v39 = v38;
      if (v37 == v38)
      {
      }

      else
      {
        if ((v48 == 0) == (v37 != 0))
        {

LABEL_70:
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            v44 = v39;
            v45 = v37;
            LogPrintF();
          }

          goto LABEL_74;
        }

        v40 = [v37 isEqual:v38];

        if ((v40 & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      [v47 addObject:v21];
LABEL_74:

      versionsCopy2 = versions;
LABEL_75:

LABEL_76:
      if (v18 == ++v20)
      {
        v41 = [accessories countByEnumeratingWithState:&v51 objects:v59 count:16];
        v18 = v41;
        if (!v41)
        {
          goto LABEL_82;
        }

        goto LABEL_17;
      }
    }
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  rooms = [(HMHome *)self->_homeKitSelectedHome rooms];
  v9 = [rooms countByEnumeratingWithState:&v55 objects:v60 count:16];
  if (!v9)
  {
    goto LABEL_83;
  }

  v10 = *v56;
LABEL_7:
  v11 = 0;
  while (1)
  {
    if (*v56 != v10)
    {
      objc_enumerationMutation(rooms);
    }

    v12 = *(*(&v55 + 1) + 8 * v11);
    name = [v12 name];
    v14 = [name isEqual:self->_homeKitSelectedRoomName];

    if (v14)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [rooms countByEnumeratingWithState:&v55 objects:v60 count:16];
      if (!v9)
      {
LABEL_83:

        goto LABEL_84;
      }

      goto LABEL_7;
    }
  }

  v5 = v12;

  if (v5)
  {
    goto LABEL_3;
  }

  v9 = 0;
LABEL_84:
  v42 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)findTVs
{
  v39 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = self->_homeKitSelectedRoom;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    v27 = v4;
    v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    accessories = [(HMRoom *)v4 accessories];
    v6 = [accessories countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(accessories);
          }

          v10 = *(*(&v29 + 1) + 8 * i);
          category = [v10 category];
          categoryType = [category categoryType];
          v13 = getHMAccessoryCategoryTypeAppleTV();
          v14 = [categoryType isEqual:v13];

          if (v14)
          {
            audioDestinationController = [v10 audioDestinationController];

            if (audioDestinationController)
            {
              audioDestinationController2 = [v10 audioDestinationController];
              destination = [audioDestinationController2 destination];

              if (destination)
              {
                if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
                {
                  [HDSDeviceOperationHomeKitSetup findTVs];
                }
              }

              else
              {
                [v28 addObject:v10];
              }
            }

            else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
            {
              [HDSDeviceOperationHomeKitSetup findTVs];
            }
          }
        }

        v7 = [accessories countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v7);
    }

    v18 = [v28 copy];
    rooms = v27;
    goto LABEL_24;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  rooms = [(HMHome *)self->_homeKitSelectedHome rooms];
  v18 = [rooms countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (!v18)
  {
LABEL_24:

    goto LABEL_25;
  }

  v22 = *v34;
LABEL_30:
  v23 = 0;
  while (1)
  {
    if (*v34 != v22)
    {
      objc_enumerationMutation(rooms);
    }

    v24 = *(*(&v33 + 1) + 8 * v23);
    name = [v24 name];
    v26 = [name isEqual:self->_homeKitSelectedRoomName];

    if (v26)
    {
      break;
    }

    if (v18 == ++v23)
    {
      v18 = [rooms countByEnumeratingWithState:&v33 objects:v38 count:16];
      if (v18)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }
  }

  v4 = v24;

  if (v4)
  {
    goto LABEL_3;
  }

  v18 = 0;
LABEL_25:
  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)homePodsInHomeRoom:(id)room roomName:(id)name
{
  v28 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  nameCopy = name;
  v22 = objc_opt_new();
  if (roomCopy && nameCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = roomCopy;
    accessories = [roomCopy accessories];
    v8 = [accessories countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(accessories);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          room = [v12 room];
          name = [room name];

          category = [v12 category];
          categoryType = [category categoryType];

          if ([name isEqualToString:nameCopy])
          {
            v17 = getHMAccessoryCategoryTypeHomePod();
            v18 = [categoryType isEqualToString:v17];

            if (v18)
            {
              [v22 addObject:v12];
            }
          }
        }

        v9 = [accessories countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    roomCopy = v21;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup homePodsInHomeRoom:roomName:];
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

- (BOOL)_isOwnerOfHome:(id)home
{
  homeCopy = home;
  currentUser = [homeCopy currentUser];
  if (currentUser)
  {
    v5 = [homeCopy homeAccessControlForUser:currentUser];
    isOwner = [v5 isOwner];
  }

  else
  {
    isOwner = 0;
  }

  return isOwner;
}

- (id)_mediaSystemForAccessory:(id)accessory
{
  v36 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  uniqueIdentifier = [accessoryCopy uniqueIdentifier];
  home = [accessoryCopy home];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  mediaSystems = [home mediaSystems];
  v24 = [mediaSystems countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v24)
  {
    v7 = *v31;
    v22 = home;
    v23 = accessoryCopy;
    v25 = mediaSystems;
    v21 = *v31;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(mediaSystems);
        }

        v9 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        components = [v9 components];
        v11 = [components countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v27;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v27 != v13)
              {
                objc_enumerationMutation(components);
              }

              mediaProfile = [*(*(&v26 + 1) + 8 * j) mediaProfile];
              accessory = [mediaProfile accessory];
              uniqueIdentifier2 = [accessory uniqueIdentifier];

              if ([uniqueIdentifier2 isEqual:uniqueIdentifier])
              {
                v18 = v9;

                home = v22;
                accessoryCopy = v23;
                mediaSystems = v25;
                goto LABEL_19;
              }
            }

            v12 = [components countByEnumeratingWithState:&v26 objects:v34 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        mediaSystems = v25;
        v7 = v21;
      }

      v18 = 0;
      home = v22;
      accessoryCopy = v23;
      v24 = [v25 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v24);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)_normalizedString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy stringByReplacingOccurrencesOfString:@"[ ]+" withString:@" " options:1024 range:{0, objc_msgSend(stringCopy, "length")}];

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v6;
}

- (void)_removeSimilarRoomNames:(id)names home:(id)home
{
  v76 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  homeCopy = home;
  name = [homeCopy name];
  v8 = [(HDSDeviceOperationHomeKitSetup *)self _normalizedString:name];

  if (v8)
  {
    v9 = [namesCopy count];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v52 = v8;
      v53 = namesCopy;
      do
      {
        v12 = [namesCopy objectAtIndexedSubscript:v11];
        v13 = [(HDSDeviceOperationHomeKitSetup *)self _normalizedString:v12];

        if ([v13 caseInsensitiveCompare:v8])
        {
          v54 = v10;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          actionSets = [homeCopy actionSets];
          v15 = [actionSets countByEnumeratingWithState:&v68 objects:v75 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v69;
LABEL_7:
            v18 = 0;
            while (1)
            {
              if (*v69 != v17)
              {
                objc_enumerationMutation(actionSets);
              }

              v19 = *(*(&v68 + 1) + 8 * v18);
              name2 = [v19 name];
              v21 = [(HDSDeviceOperationHomeKitSetup *)self _normalizedString:name2];

              if (v21)
              {
                if (![v13 caseInsensitiveCompare:v21])
                {
                  break;
                }
              }

              if (v16 == ++v18)
              {
                v16 = [actionSets countByEnumeratingWithState:&v68 objects:v75 count:16];
                if (v16)
                {
                  goto LABEL_7;
                }

                goto LABEL_14;
              }
            }

            name3 = [v19 name];

            if (!name3)
            {
              goto LABEL_18;
            }

            v23 = "ActionSet";
          }

          else
          {
LABEL_14:

LABEL_18:
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            serviceGroups = [homeCopy serviceGroups];
            v25 = [serviceGroups countByEnumeratingWithState:&v64 objects:v74 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v65;
LABEL_20:
              v28 = 0;
              while (1)
              {
                if (*v65 != v27)
                {
                  objc_enumerationMutation(serviceGroups);
                }

                v29 = *(*(&v64 + 1) + 8 * v28);
                name4 = [v29 name];
                v31 = [(HDSDeviceOperationHomeKitSetup *)self _normalizedString:name4];

                if (v31)
                {
                  if (![v13 caseInsensitiveCompare:v31])
                  {
                    break;
                  }
                }

                if (v26 == ++v28)
                {
                  v26 = [serviceGroups countByEnumeratingWithState:&v64 objects:v74 count:16];
                  if (v26)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_27;
                }
              }

              name3 = [v29 name];

              if (!name3)
              {
                goto LABEL_30;
              }

              v23 = "ServiceGroup";
            }

            else
            {
LABEL_27:

LABEL_30:
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              triggers = [homeCopy triggers];
              v33 = [triggers countByEnumeratingWithState:&v60 objects:v73 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v61;
LABEL_32:
                v36 = 0;
                while (1)
                {
                  if (*v61 != v35)
                  {
                    objc_enumerationMutation(triggers);
                  }

                  v37 = *(*(&v60 + 1) + 8 * v36);
                  name5 = [v37 name];
                  v39 = [(HDSDeviceOperationHomeKitSetup *)self _normalizedString:name5];

                  if (v39)
                  {
                    if (![v13 caseInsensitiveCompare:v39])
                    {
                      break;
                    }
                  }

                  if (v34 == ++v36)
                  {
                    v34 = [triggers countByEnumeratingWithState:&v60 objects:v73 count:16];
                    if (v34)
                    {
                      goto LABEL_32;
                    }

                    goto LABEL_39;
                  }
                }

                name3 = [v37 name];

                if (!name3)
                {
                  goto LABEL_42;
                }

                v23 = "Trigger";
              }

              else
              {
LABEL_39:

LABEL_42:
                v58 = 0u;
                v59 = 0u;
                v56 = 0u;
                v57 = 0u;
                zones = [homeCopy zones];
                v41 = [zones countByEnumeratingWithState:&v56 objects:v72 count:16];
                if (!v41)
                {
LABEL_51:

LABEL_62:
                  ++v11;
                  v8 = v52;
                  namesCopy = v53;
                  v10 = v54;
                  goto LABEL_60;
                }

                v42 = v41;
                v43 = *v57;
LABEL_44:
                v44 = 0;
                while (1)
                {
                  if (*v57 != v43)
                  {
                    objc_enumerationMutation(zones);
                  }

                  v45 = *(*(&v56 + 1) + 8 * v44);
                  name6 = [v45 name];
                  v47 = [(HDSDeviceOperationHomeKitSetup *)self _normalizedString:name6];

                  if (v47)
                  {
                    if (![v13 caseInsensitiveCompare:v47])
                    {
                      break;
                    }
                  }

                  if (v42 == ++v44)
                  {
                    v42 = [zones countByEnumeratingWithState:&v56 objects:v72 count:16];
                    if (v42)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_51;
                  }
                }

                name3 = [v45 name];

                if (!name3)
                {
                  goto LABEL_62;
                }

                v23 = "Zone";
              }
            }
          }

          v8 = v52;
          namesCopy = v53;
          v10 = v54;
        }

        else
        {
          name3 = v8;
          v23 = "Home";
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          v50 = name3;
          v51 = v23;
          v49 = v13;
          LogPrintF();
        }

        [namesCopy removeObjectAtIndex:{v11, v49, v50, v51}];
        --v10;

LABEL_60:
      }

      while (v11 < v10);
    }
  }

  v48 = *MEMORY[0x277D85DE8];
}

- (void)_syncAccessoriesInSelectedRoom
{
  homeKitSelectedHome = [self homeKitSelectedHome];
  name = [homeKitSelectedHome name];
  homeKitSelectedRoomName = [self homeKitSelectedRoomName];
  LogPrintF();
}

- (void)_restoreHomeApp
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _restoreHomeApp];
  }

  v3 = [objc_alloc(getASDSystemAppRequestClass()) initWithBundleID:@"com.apple.Home"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HDSDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke;
  v5[3] = &unk_2797141C0;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [v4 startWithErrorHandler:v5];
}

void __49__HDSDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 256);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HDSDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2;
  v6[3] = &unk_2797142D0;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __49__HDSDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 90)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1)
      {
LABEL_4:
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        v2 = *(a1 + 32);
        goto LABEL_4;
      }
    }
  }

  else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __49__HDSDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2_cold_1(a1);
  }
}

- (void)_timeoutForAccessorySync
{
  v3 = dispatch_time(0, 30000000000);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDSDeviceOperationHomeKitSetup__timeoutForAccessorySync__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_after(v3, dispatchQueue, block);
}

uint64_t __58__HDSDeviceOperationHomeKitSetup__timeoutForAccessorySync__block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 192))
  {
    v1 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __58__HDSDeviceOperationHomeKitSetup__timeoutForAccessorySync__block_invoke_cold_1();
    }

    *(*(v1 + 32) + 200) = 1;
    v2 = *(v1 + 32);
    v3 = *(v2 + 192);
    *(v2 + 192) = 0;

    *(*(v1 + 32) + 48) = 25;
    v4 = *(v1 + 32);

    return [v4 _run];
  }

  return result;
}

- (void)_updateHomeStats
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  accessories = [(HMHome *)self->_homeKitSelectedHome accessories];
  v4 = [accessories countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        category = [*(*(&v16 + 1) + 8 * i) category];
        categoryType = [category categoryType];
        v10 = getHMAccessoryCategoryTypeHomePod();
        v11 = [categoryType isEqual:v10];

        if (v11)
        {
          self->_hasHomePod = 1;
          goto LABEL_11;
        }
      }

      v5 = [accessories countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [(HDSDeviceOperationHomeKitSetup *)self _updateHomeStats];
  }

  users = [(HMHome *)self->_homeKitSelectedHome users];
  v13 = [users count];

  self->_hasMultipleUsers = v13 != 0;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      hasMultipleUsers = self->_hasMultipleUsers;
    }

    LogPrintF();
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
}

- (void)_updateAccount
{
  username = [self username];
  LogPrintF();
}

uint64_t __48__HDSDeviceOperationHomeKitSetup__updateAccount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup > 90)
    {
      goto LABEL_11;
    }

    v7 = v3;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup == -1)
    {
      v3 = _LogCategory_Initialize();
      v4 = v7;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v5 = [*(a1 + 32) username];
    LogPrintF();
LABEL_5:

    v4 = v7;
    goto LABEL_11;
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
  {
    v7 = 0;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      __48__HDSDeviceOperationHomeKitSetup__updateAccount__block_invoke_cold_1(a1, &v8);
      v5 = v8;
      goto LABEL_5;
    }
  }

LABEL_11:

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)checkIfExistingHome:(id)home
{
  v19 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  [(HMHomeManager *)self->_homeKitHomeManager homes];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v17 = 0u;
  name2 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (name2)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != name2; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        name = [v9 name];
        if ([name isEqualToString:homeCopy])
        {
        }

        else
        {
          homeLocationStatus = [v9 homeLocationStatus];

          if (homeLocationStatus == 1)
          {
            name2 = [v9 name];
            goto LABEL_13;
          }
        }
      }

      name2 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (name2)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v12 = *MEMORY[0x277D85DE8];

  return name2;
}

- (void)createStereoPairBuilder:(id)builder
{
  builderCopy = builder;
  if (_os_feature_enabled_impl() && self->_sessionID)
  {
    v4 = [objc_alloc(getHMMediaSystemBuilderClass()) initWithHome:builderCopy setupSessionIdentifier:self->_sessionID];
  }

  else
  {
    v4 = [objc_alloc(getHMMediaSystemBuilderClass()) initWithHome:builderCopy];
  }

  builder = self->_builder;
  self->_builder = v4;
}

- (void)sendPeerAccessoryHintForStereoPair
{
  if (_os_feature_enabled_impl())
  {
    if (!self->_builder || !self->_stereoCounterpart || (v3 = self->_stereoRole, (v3 & 0xFFFFFFFE) != 2))
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup > 90)
      {
        return;
      }

      if (gLogCategory_HDSDeviceOperationHomeKitSetup == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        builder = self->_builder;
      }

      stereoRole = self->_stereoRole;
      stereoCounterpart = self->_stereoCounterpart;
      LogPrintF();
      return;
    }

    HMMediaSystemRoleClass = getHMMediaSystemRoleClass();
    if (v3 == 2)
    {
      [(objc_class *)HMMediaSystemRoleClass rightRole];
    }

    else
    {
      [(objc_class *)HMMediaSystemRoleClass leftRole];
    }
    v8 = ;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup sendPeerAccessoryHintForStereoPair];
    }

    [(HMMediaSystemBuilder *)self->_builder addPeerAccessoryBeforeSetupSession:self->_stereoCounterpart role:v8];
  }

  else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup sendPeerAccessoryHintForStereoPair];
  }
}

- (void)accessory:(id)accessory didUpdateLoggedInAccount:(id)account
{
  accessoryCopy = accessory;
  accountCopy = account;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (self->_homePodsAccessorySyncing)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HDSDeviceOperationHomeKitSetup_accessory_didUpdateLoggedInAccount___block_invoke;
    block[3] = &unk_2797142D0;
    block[4] = self;
    v10 = accessoryCopy;
    dispatch_async(dispatchQueue, block);
  }
}

void __69__HDSDeviceOperationHomeKitSetup_accessory_didUpdateLoggedInAccount___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 192);
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v3 UUIDString];
  v10 = [v2 objectForKeyedSubscript:v4];

  if (v10)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __69__HDSDeviceOperationHomeKitSetup_accessory_didUpdateLoggedInAccount___block_invoke_cold_1();
    }

    v5 = *(*(a1 + 32) + 192);
    v6 = [v10 uniqueIdentifier];
    v7 = [v6 UUIDString];
    [v5 removeObjectForKey:v7];
  }

  if (![*(*(a1 + 32) + 192) count])
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __69__HDSDeviceOperationHomeKitSetup_accessory_didUpdateLoggedInAccount___block_invoke_cold_2();
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 192);
    *(v8 + 192) = 0;

    *(*(a1 + 32) + 200) = 1;
    *(*(a1 + 32) + 48) = 25;
    [*(a1 + 32) _run];
  }
}

void __74__HDSDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = [*(*a2 + 240) name];
  LogPrintF();
}

void __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_cold_2(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  LogPrintF();
}

void __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) uniqueIdentifier];
  LogPrintF();
}

- (void)findStereoCounterpartsWithSupportedVersions:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 remoteLoginHandler];
  LogPrintF();
}

- (void)findStereoCounterpartsWithSupportedVersions:(void *)a1 .cold.5(void *a1)
{
  v1 = [a1 remoteLoginHandler];
  v2 = [v1 loggedInAccount];
  LogPrintF();
}

- (void)findStereoCounterpartsWithSupportedVersions:(void *)a1 .cold.7(void *a1)
{
  v1 = [a1 remoteLoginHandler];
  v2 = [v1 loggedInAccount];
  v3 = [v2 username];
  LogPrintF();
}

void __49__HDSDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) bundleID];
  LogPrintF();
}

void __48__HDSDeviceOperationHomeKitSetup__updateAccount__block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  *a2 = [*(a1 + 32) username];
  v5 = [*(a1 + 40) loggedInAccount];
  v4 = [v5 username];
  LogPrintF();
}

@end
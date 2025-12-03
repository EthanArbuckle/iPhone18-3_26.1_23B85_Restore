@interface MRUListeningModeController
- (MRUListeningModeController)initWithOutputDeviceRouteController:(id)controller;
- (MRUListeningModeControllerDelegate)delegate;
- (id)listeningModeErrorMessageForOutputDevice:(id)device;
- (id)sortedListeningModes:(id)modes excludeModes:(id)excludeModes;
- (void)setHearingServiceController:(id)controller;
- (void)setListeningMode:(id)mode forOutputDeviceRoute:(id)route previousListeningMode:(id)listeningMode completion:(id)completion;
- (void)setPrimaryListeningMode:(id)mode completion:(id)completion;
- (void)setSecondaryListeningMode:(id)mode completion:(id)completion;
- (void)systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)properties;
- (void)updatePrimaryListeningMode;
- (void)updateSecondaryListeningMode;
@end

@implementation MRUListeningModeController

- (MRUListeningModeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)updatePrimaryListeningMode
{
  v27 = *MEMORY[0x1E69E9840];
  primaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  logicalLeaderOutputDevice = [primaryOutputDeviceRoute logicalLeaderOutputDevice];

  currentBluetoothListeningMode = [logicalLeaderOutputDevice currentBluetoothListeningMode];
  if ([(MRUHearingServiceController *)self->_hearingServiceController primaryListeningModeOffAllowed])
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6958740]];
  }

  availableBluetoothListeningModes = [logicalLeaderOutputDevice availableBluetoothListeningModes];
  v8 = [(MRUListeningModeController *)self sortedListeningModes:availableBluetoothListeningModes excludeModes:v6];

  if ([v6 containsObject:currentBluetoothListeningMode])
  {
    firstObject = [v8 firstObject];

    currentBluetoothListeningMode = firstObject;
  }

  v10 = [(NSArray *)self->_availablePrimaryListeningModes isEqualToArray:v8];
  if (!v10)
  {
    v11 = MCLogCategoryVolume();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      availablePrimaryListeningModes = self->_availablePrimaryListeningModes;
      v19 = 138544130;
      v20 = v12;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = availablePrimaryListeningModes;
      v25 = 2114;
      v26 = logicalLeaderOutputDevice;
      _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ update available primary bluetooth to listening mode: %{public}@ | %{public}@ | device: %{public}@", &v19, 0x2Au);
    }

    objc_storeStrong(&self->_availablePrimaryListeningModes, v8);
  }

  v14 = [(NSString *)self->_primaryListeningMode isEqualToString:currentBluetoothListeningMode];
  if (!v14)
  {
    v15 = MCLogCategoryVolume();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      primaryListeningMode = self->_primaryListeningMode;
      v19 = 138544130;
      v20 = v16;
      v21 = 2114;
      v22 = currentBluetoothListeningMode;
      v23 = 2114;
      v24 = primaryListeningMode;
      v25 = 2114;
      v26 = logicalLeaderOutputDevice;
      _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ update primary bluetooth to listening mode: %{public}@ | %{public}@ | device: %{public}@", &v19, 0x2Au);
    }

    objc_storeStrong(&self->_primaryListeningMode, currentBluetoothListeningMode);
  }

  delegate = [(MRUListeningModeController *)self delegate];
  if (!v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate listeningModeController:self didChangeAvailablePrimaryListeningMode:v8];
  }

  if (!v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate listeningModeController:self didChangePrimaryListeningMode:currentBluetoothListeningMode];
  }
}

- (void)updateSecondaryListeningMode
{
  v27 = *MEMORY[0x1E69E9840];
  secondaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController secondaryOutputDeviceRoute];
  logicalLeaderOutputDevice = [secondaryOutputDeviceRoute logicalLeaderOutputDevice];

  currentBluetoothListeningMode = [logicalLeaderOutputDevice currentBluetoothListeningMode];
  if ([(MRUHearingServiceController *)self->_hearingServiceController secondaryListeningModeOffAllowed])
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6958740]];
  }

  availableBluetoothListeningModes = [logicalLeaderOutputDevice availableBluetoothListeningModes];
  v8 = [(MRUListeningModeController *)self sortedListeningModes:availableBluetoothListeningModes excludeModes:v6];

  if ([v6 containsObject:currentBluetoothListeningMode])
  {
    firstObject = [v8 firstObject];

    currentBluetoothListeningMode = firstObject;
  }

  v10 = [(NSArray *)self->_availableSecondaryListeningModes isEqualToArray:v8];
  if (!v10)
  {
    v11 = MCLogCategoryVolume();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      availableSecondaryListeningModes = self->_availableSecondaryListeningModes;
      v19 = 138544130;
      v20 = v12;
      v21 = 2114;
      v22 = v8;
      v23 = 2114;
      v24 = availableSecondaryListeningModes;
      v25 = 2114;
      v26 = logicalLeaderOutputDevice;
      _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ update available secondary bluetooth to listening mode: %{public}@ | %{public}@ | device: %{public}@", &v19, 0x2Au);
    }

    objc_storeStrong(&self->_availableSecondaryListeningModes, v8);
  }

  v14 = [(NSString *)self->_secondaryListeningMode isEqualToString:currentBluetoothListeningMode];
  if (!v14)
  {
    v15 = MCLogCategoryVolume();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      secondaryListeningMode = self->_secondaryListeningMode;
      v19 = 138544130;
      v20 = v16;
      v21 = 2114;
      v22 = currentBluetoothListeningMode;
      v23 = 2114;
      v24 = secondaryListeningMode;
      v25 = 2114;
      v26 = logicalLeaderOutputDevice;
      _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ update secondary bluetooth to listening mode: %{public}@ | %{public}@ | device: %{public}@", &v19, 0x2Au);
    }

    objc_storeStrong(&self->_secondaryListeningMode, currentBluetoothListeningMode);
  }

  delegate = [(MRUListeningModeController *)self delegate];
  if (!v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate listeningModeController:self didChangeAvailableSecondaryListeningModes:v8];
  }

  if (!v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [delegate listeningModeController:self didChangeSecondaryListeningMode:currentBluetoothListeningMode];
  }
}

- (MRUListeningModeController)initWithOutputDeviceRouteController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MRUListeningModeController;
  v6 = [(MRUListeningModeController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDeviceRouteController, controller);
    [(MRUSystemOutputDeviceRouteController *)v7->_outputDeviceRouteController add:v7];
    [(MRUListeningModeController *)v7 updatePrimaryListeningMode];
    [(MRUListeningModeController *)v7 updateSecondaryListeningMode];
  }

  return v7;
}

- (void)setHearingServiceController:(id)controller
{
  controllerCopy = controller;
  [(MRUHearingServiceController *)self->_hearingServiceController removeObserver:self];
  hearingServiceController = self->_hearingServiceController;
  self->_hearingServiceController = controllerCopy;
  v6 = controllerCopy;

  [(MRUHearingServiceController *)self->_hearingServiceController addObserver:self];

  [(MRUListeningModeController *)self updatePrimaryListeningMode];
}

- (void)setPrimaryListeningMode:(id)mode completion:(id)completion
{
  completionCopy = completion;
  outputDeviceRouteController = self->_outputDeviceRouteController;
  modeCopy = mode;
  primaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)outputDeviceRouteController primaryOutputDeviceRoute];
  primaryListeningMode = self->_primaryListeningMode;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__MRUListeningModeController_setPrimaryListeningMode_completion___block_invoke;
  v12[3] = &unk_1E76647A0;
  v13 = completionCopy;
  v11 = completionCopy;
  [(MRUListeningModeController *)self setListeningMode:modeCopy forOutputDeviceRoute:primaryOutputDeviceRoute previousListeningMode:primaryListeningMode completion:v12];
}

- (void)setSecondaryListeningMode:(id)mode completion:(id)completion
{
  completionCopy = completion;
  outputDeviceRouteController = self->_outputDeviceRouteController;
  modeCopy = mode;
  secondaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)outputDeviceRouteController secondaryOutputDeviceRoute];
  secondaryListeningMode = self->_secondaryListeningMode;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__MRUListeningModeController_setSecondaryListeningMode_completion___block_invoke;
  v12[3] = &unk_1E76647A0;
  v13 = completionCopy;
  v11 = completionCopy;
  [(MRUListeningModeController *)self setListeningMode:modeCopy forOutputDeviceRoute:secondaryOutputDeviceRoute previousListeningMode:secondaryListeningMode completion:v12];
}

- (void)systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)properties
{
  [(MRUListeningModeController *)self updatePrimaryListeningMode];

  [(MRUListeningModeController *)self updateSecondaryListeningMode];
}

- (void)setListeningMode:(id)mode forOutputDeviceRoute:(id)route previousListeningMode:(id)listeningMode completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  routeCopy = route;
  listeningModeCopy = listeningMode;
  completionCopy = completion;
  logicalLeaderOutputDevice = [routeCopy logicalLeaderOutputDevice];
  v15 = MCLogCategoryVolume();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v31 = objc_opt_class();
    v32 = 2114;
    v33 = modeCopy;
    v34 = 2114;
    v35 = listeningModeCopy;
    v36 = 2114;
    v37 = logicalLeaderOutputDevice;
    _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ set bluetooth to listening mode: %{public}@ | %{public}@ | device: %{public}@", buf, 0x2Au);
  }

  systemRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController systemRoute];
  endpoint = [systemRoute endpoint];

  routeUID = [routeCopy routeUID];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __101__MRUListeningModeController_setListeningMode_forOutputDeviceRoute_previousListeningMode_completion___block_invoke;
  v24[3] = &unk_1E76647C8;
  v24[4] = self;
  v25 = routeCopy;
  v26 = modeCopy;
  v27 = listeningModeCopy;
  v28 = logicalLeaderOutputDevice;
  v29 = completionCopy;
  v19 = completionCopy;
  v20 = logicalLeaderOutputDevice;
  v21 = listeningModeCopy;
  v22 = modeCopy;
  v23 = routeCopy;
  [endpoint setListeningMode:v22 outputDeviceUID:routeUID queue:MEMORY[0x1E69E96A0] completion:v24];
}

void __101__MRUListeningModeController_setListeningMode_forOutputDeviceRoute_previousListeningMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  if ([v5 code] == -11910)
  {
    v6 = [*(a1 + 32) listeningModeErrorMessageForOutputDevice:*(a1 + 40)];
  }

  else
  {
    v6 = 0;
  }

  v7 = MCLogCategoryVolume();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    *buf = 138544386;
    v20 = v8;
    v21 = 2114;
    v22 = v9;
    v23 = 2114;
    v24 = v10;
    v25 = 2114;
    v26 = v11;
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_1A20FC000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ set bluetooth to listening mode completed: %{public}@ | %{public}@ | device: %{public}@ | error: %@", buf, 0x34u);
  }

  (*(*(a1 + 72) + 16))(*(a1 + 72), v3 == 0, v6);
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v13 = v12;
  if (*(a1 + 56))
  {
    v14 = *(a1 + 56);
  }

  else
  {
    v14 = @"nil";
  }

  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69B0B98]];
  if (*(a1 + 48))
  {
    v15 = *(a1 + 48);
  }

  else
  {
    v15 = @"nil";
  }

  [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x1E69B0B88]];
  v16 = +[MRUSystemOutputDeviceRouteController outputContextDescription];
  [v13 setObject:v16 forKeyedSubscript:*MEMORY[0x1E69B0B90]];

  v18 = v13;
  v17 = v13;
  MRAnalyticsSendEvent();
}

- (id)sortedListeningModes:(id)modes excludeModes:(id)excludeModes
{
  excludeModesCopy = excludeModes;
  v6 = [MEMORY[0x1E695DFD8] setWithArray:modes];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = *MEMORY[0x1E6958740];
  if ([v6 containsObject:*MEMORY[0x1E6958740]] && (objc_msgSend(excludeModesCopy, "containsObject:", v8) & 1) == 0)
  {
    [v7 addObject:v8];
  }

  v9 = *MEMORY[0x1E6958730];
  if ([v6 containsObject:*MEMORY[0x1E6958730]] && (objc_msgSend(excludeModesCopy, "containsObject:", v9) & 1) == 0)
  {
    [v7 addObject:v9];
  }

  v10 = *MEMORY[0x1E6958738];
  if ([v6 containsObject:*MEMORY[0x1E6958738]] && (objc_msgSend(excludeModesCopy, "containsObject:", v10) & 1) == 0)
  {
    [v7 addObject:v10];
  }

  v11 = *MEMORY[0x1E6958728];
  if ([v6 containsObject:*MEMORY[0x1E6958728]] && (objc_msgSend(excludeModesCopy, "containsObject:", v11) & 1) == 0)
  {
    [v7 addObject:v11];
  }

  return v7;
}

- (id)listeningModeErrorMessageForOutputDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isB515Route])
  {
    v4 = +[MRUStringsProvider listeningModeErrorMessageB515];
  }

  else if ([deviceCopy isB507Route])
  {
    v4 = +[MRUStringsProvider listeningModeErrorMessageB507];
  }

  else if ([deviceCopy isB494Route])
  {
    v4 = +[MRUStringsProvider listeningModeErrorMessageB494];
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && [deviceCopy isB494BRoute])
  {
    v4 = +[MRUStringsProvider listeningModeErrorMessageB494B];
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && [deviceCopy isB498Route])
  {
    v4 = +[MRUStringsProvider listeningModeErrorMessageB498];
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && [deviceCopy isB607Route])
  {
    v4 = +[MRUStringsProvider listeningModeErrorMessageB607];
  }

  else
  {
    v4 = +[MRUStringsProvider listeningModeErrorMessage];
  }

  v5 = v4;

  return v5;
}

@end
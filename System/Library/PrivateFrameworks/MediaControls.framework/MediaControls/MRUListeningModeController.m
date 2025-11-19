@interface MRUListeningModeController
- (MRUListeningModeController)initWithOutputDeviceRouteController:(id)a3;
- (MRUListeningModeControllerDelegate)delegate;
- (id)listeningModeErrorMessageForOutputDevice:(id)a3;
- (id)sortedListeningModes:(id)a3 excludeModes:(id)a4;
- (void)setHearingServiceController:(id)a3;
- (void)setListeningMode:(id)a3 forOutputDeviceRoute:(id)a4 previousListeningMode:(id)a5 completion:(id)a6;
- (void)setPrimaryListeningMode:(id)a3 completion:(id)a4;
- (void)setSecondaryListeningMode:(id)a3 completion:(id)a4;
- (void)systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)a3;
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
  v3 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  v4 = [v3 logicalLeaderOutputDevice];

  v5 = [v4 currentBluetoothListeningMode];
  if ([(MRUHearingServiceController *)self->_hearingServiceController primaryListeningModeOffAllowed])
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6958740]];
  }

  v7 = [v4 availableBluetoothListeningModes];
  v8 = [(MRUListeningModeController *)self sortedListeningModes:v7 excludeModes:v6];

  if ([v6 containsObject:v5])
  {
    v9 = [v8 firstObject];

    v5 = v9;
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
      v26 = v4;
      _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ update available primary bluetooth to listening mode: %{public}@ | %{public}@ | device: %{public}@", &v19, 0x2Au);
    }

    objc_storeStrong(&self->_availablePrimaryListeningModes, v8);
  }

  v14 = [(NSString *)self->_primaryListeningMode isEqualToString:v5];
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
      v22 = v5;
      v23 = 2114;
      v24 = primaryListeningMode;
      v25 = 2114;
      v26 = v4;
      _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ update primary bluetooth to listening mode: %{public}@ | %{public}@ | device: %{public}@", &v19, 0x2Au);
    }

    objc_storeStrong(&self->_primaryListeningMode, v5);
  }

  v18 = [(MRUListeningModeController *)self delegate];
  if (!v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v18 listeningModeController:self didChangeAvailablePrimaryListeningMode:v8];
  }

  if (!v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v18 listeningModeController:self didChangePrimaryListeningMode:v5];
  }
}

- (void)updateSecondaryListeningMode
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController secondaryOutputDeviceRoute];
  v4 = [v3 logicalLeaderOutputDevice];

  v5 = [v4 currentBluetoothListeningMode];
  if ([(MRUHearingServiceController *)self->_hearingServiceController secondaryListeningModeOffAllowed])
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6958740]];
  }

  v7 = [v4 availableBluetoothListeningModes];
  v8 = [(MRUListeningModeController *)self sortedListeningModes:v7 excludeModes:v6];

  if ([v6 containsObject:v5])
  {
    v9 = [v8 firstObject];

    v5 = v9;
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
      v26 = v4;
      _os_log_impl(&dword_1A20FC000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ update available secondary bluetooth to listening mode: %{public}@ | %{public}@ | device: %{public}@", &v19, 0x2Au);
    }

    objc_storeStrong(&self->_availableSecondaryListeningModes, v8);
  }

  v14 = [(NSString *)self->_secondaryListeningMode isEqualToString:v5];
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
      v22 = v5;
      v23 = 2114;
      v24 = secondaryListeningMode;
      v25 = 2114;
      v26 = v4;
      _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ update secondary bluetooth to listening mode: %{public}@ | %{public}@ | device: %{public}@", &v19, 0x2Au);
    }

    objc_storeStrong(&self->_secondaryListeningMode, v5);
  }

  v18 = [(MRUListeningModeController *)self delegate];
  if (!v10 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v18 listeningModeController:self didChangeAvailableSecondaryListeningModes:v8];
  }

  if (!v14 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v18 listeningModeController:self didChangeSecondaryListeningMode:v5];
  }
}

- (MRUListeningModeController)initWithOutputDeviceRouteController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRUListeningModeController;
  v6 = [(MRUListeningModeController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDeviceRouteController, a3);
    [(MRUSystemOutputDeviceRouteController *)v7->_outputDeviceRouteController add:v7];
    [(MRUListeningModeController *)v7 updatePrimaryListeningMode];
    [(MRUListeningModeController *)v7 updateSecondaryListeningMode];
  }

  return v7;
}

- (void)setHearingServiceController:(id)a3
{
  v4 = a3;
  [(MRUHearingServiceController *)self->_hearingServiceController removeObserver:self];
  hearingServiceController = self->_hearingServiceController;
  self->_hearingServiceController = v4;
  v6 = v4;

  [(MRUHearingServiceController *)self->_hearingServiceController addObserver:self];

  [(MRUListeningModeController *)self updatePrimaryListeningMode];
}

- (void)setPrimaryListeningMode:(id)a3 completion:(id)a4
{
  v6 = a4;
  outputDeviceRouteController = self->_outputDeviceRouteController;
  v8 = a3;
  v9 = [(MRUSystemOutputDeviceRouteController *)outputDeviceRouteController primaryOutputDeviceRoute];
  primaryListeningMode = self->_primaryListeningMode;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__MRUListeningModeController_setPrimaryListeningMode_completion___block_invoke;
  v12[3] = &unk_1E76647A0;
  v13 = v6;
  v11 = v6;
  [(MRUListeningModeController *)self setListeningMode:v8 forOutputDeviceRoute:v9 previousListeningMode:primaryListeningMode completion:v12];
}

- (void)setSecondaryListeningMode:(id)a3 completion:(id)a4
{
  v6 = a4;
  outputDeviceRouteController = self->_outputDeviceRouteController;
  v8 = a3;
  v9 = [(MRUSystemOutputDeviceRouteController *)outputDeviceRouteController secondaryOutputDeviceRoute];
  secondaryListeningMode = self->_secondaryListeningMode;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __67__MRUListeningModeController_setSecondaryListeningMode_completion___block_invoke;
  v12[3] = &unk_1E76647A0;
  v13 = v6;
  v11 = v6;
  [(MRUListeningModeController *)self setListeningMode:v8 forOutputDeviceRoute:v9 previousListeningMode:secondaryListeningMode completion:v12];
}

- (void)systemOutputDeviceRouteControllerDidUpdateOutputDeviceProperties:(id)a3
{
  [(MRUListeningModeController *)self updatePrimaryListeningMode];

  [(MRUListeningModeController *)self updateSecondaryListeningMode];
}

- (void)setListeningMode:(id)a3 forOutputDeviceRoute:(id)a4 previousListeningMode:(id)a5 completion:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v11 logicalLeaderOutputDevice];
  v15 = MCLogCategoryVolume();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544130;
    v31 = objc_opt_class();
    v32 = 2114;
    v33 = v10;
    v34 = 2114;
    v35 = v12;
    v36 = 2114;
    v37 = v14;
    _os_log_impl(&dword_1A20FC000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ set bluetooth to listening mode: %{public}@ | %{public}@ | device: %{public}@", buf, 0x2Au);
  }

  v16 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController systemRoute];
  v17 = [v16 endpoint];

  v18 = [v11 routeUID];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __101__MRUListeningModeController_setListeningMode_forOutputDeviceRoute_previousListeningMode_completion___block_invoke;
  v24[3] = &unk_1E76647C8;
  v24[4] = self;
  v25 = v11;
  v26 = v10;
  v27 = v12;
  v28 = v14;
  v29 = v13;
  v19 = v13;
  v20 = v14;
  v21 = v12;
  v22 = v10;
  v23 = v11;
  [v17 setListeningMode:v22 outputDeviceUID:v18 queue:MEMORY[0x1E69E96A0] completion:v24];
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

- (id)sortedListeningModes:(id)a3 excludeModes:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x1E695DFD8] setWithArray:a3];
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v8 = *MEMORY[0x1E6958740];
  if ([v6 containsObject:*MEMORY[0x1E6958740]] && (objc_msgSend(v5, "containsObject:", v8) & 1) == 0)
  {
    [v7 addObject:v8];
  }

  v9 = *MEMORY[0x1E6958730];
  if ([v6 containsObject:*MEMORY[0x1E6958730]] && (objc_msgSend(v5, "containsObject:", v9) & 1) == 0)
  {
    [v7 addObject:v9];
  }

  v10 = *MEMORY[0x1E6958738];
  if ([v6 containsObject:*MEMORY[0x1E6958738]] && (objc_msgSend(v5, "containsObject:", v10) & 1) == 0)
  {
    [v7 addObject:v10];
  }

  v11 = *MEMORY[0x1E6958728];
  if ([v6 containsObject:*MEMORY[0x1E6958728]] && (objc_msgSend(v5, "containsObject:", v11) & 1) == 0)
  {
    [v7 addObject:v11];
  }

  return v7;
}

- (id)listeningModeErrorMessageForOutputDevice:(id)a3
{
  v3 = a3;
  if ([v3 isB515Route])
  {
    v4 = +[MRUStringsProvider listeningModeErrorMessageB515];
  }

  else if ([v3 isB507Route])
  {
    v4 = +[MRUStringsProvider listeningModeErrorMessageB507];
  }

  else if ([v3 isB494Route])
  {
    v4 = +[MRUStringsProvider listeningModeErrorMessageB494];
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 isB494BRoute])
  {
    v4 = +[MRUStringsProvider listeningModeErrorMessageB494B];
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 isB498Route])
  {
    v4 = +[MRUStringsProvider listeningModeErrorMessageB498];
  }

  else if ((objc_opt_respondsToSelector() & 1) != 0 && [v3 isB607Route])
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
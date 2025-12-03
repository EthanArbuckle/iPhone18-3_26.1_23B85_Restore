@interface MRUHearingServiceController
- (MRUHearingServiceController)initWithOutputDeviceRouteController:(id)controller;
- (id)fetchRecordWithID:(id)d fromRecords:(id)records;
- (id)primaryOutputDeviceUID;
- (id)secondaryOutputDeviceUID;
- (void)dealloc;
- (void)reset;
- (void)setPrimaryAmplification:(float)amplification;
- (void)setPrimaryHealthRecord:(id)record;
- (void)setSecondaryAmplification:(float)amplification;
- (void)setSecondaryHealthRecord:(id)record;
- (void)systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)devices;
- (void)updateClient;
- (void)updateHealthRecord;
- (void)updatePrimaryAmplification;
- (void)updatePrimaryHearingAidEnabled;
- (void)updatePrimaryListeningModeOffAllowed;
- (void)updateSecondaryAmplification;
- (void)updateSecondaryHearingAidEnabled;
- (void)updateSecondaryListeningModeOffAllowed;
@end

@implementation MRUHearingServiceController

- (void)reset
{
  [(HMServiceClient *)self->_client invalidate];
  client = self->_client;
  self->_client = 0;

  [(MRUHearingServiceController *)self setPrimaryHealthRecord:0];
  [(MRUHearingServiceController *)self setSecondaryHealthRecord:0];
  records = [(MRUHearingServiceController *)self records];
  [records removeAllObjects];
}

- (void)updateSecondaryListeningModeOffAllowed
{
  v28 = *MEMORY[0x1E69E9840];
  listeningModeOffAllowed = [(HMDeviceRecord *)self->_secondaryHealthRecord listeningModeOffAllowed];
  v4 = listeningModeOffAllowed < 2;
  if (self->_secondaryListeningModeOffAllowed != v4)
  {
    v5 = listeningModeOffAllowed;
    self->_secondaryListeningModeOffAllowed = v4;
    v6 = MCLogCategoryVolume();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      bluetoothAddress = [(HMDeviceRecord *)self->_secondaryHealthRecord bluetoothAddress];
      v9 = bluetoothAddress;
      if (v5 > 2)
      {
        v10 = "?";
      }

      else
      {
        v10 = off_1E7665820[v5];
      }

      *buf = 138543874;
      v23 = v7;
      v24 = 2114;
      v25 = bluetoothAddress;
      v26 = 2080;
      v27 = v10;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ update secondary listeningModeOffAllowed for device: %{public}@ | listeningModeOffAllowed: %s", buf, 0x20u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(NSHashTable *)self->_observers copy];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v17 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 hearingServiceController:self didChangeSecondaryListeningModeOffAllowed:v5 < 2];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)updatePrimaryListeningModeOffAllowed
{
  v28 = *MEMORY[0x1E69E9840];
  listeningModeOffAllowed = [(HMDeviceRecord *)self->_primaryHealthRecord listeningModeOffAllowed];
  v4 = listeningModeOffAllowed < 2;
  if (self->_primaryListeningModeOffAllowed != v4)
  {
    v5 = listeningModeOffAllowed;
    self->_primaryListeningModeOffAllowed = v4;
    v6 = MCLogCategoryVolume();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      bluetoothAddress = [(HMDeviceRecord *)self->_primaryHealthRecord bluetoothAddress];
      v9 = bluetoothAddress;
      if (v5 > 2)
      {
        v10 = "?";
      }

      else
      {
        v10 = off_1E7665820[v5];
      }

      *buf = 138543874;
      v23 = v7;
      v24 = 2114;
      v25 = bluetoothAddress;
      v26 = 2080;
      v27 = v10;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ update primary listeningModeOffAllowed for device: %{public}@ | listeningModeOffAllowed: %s", buf, 0x20u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(NSHashTable *)self->_observers copy];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v17 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 hearingServiceController:self didChangePrimaryListeningModeOffAllowed:v5 < 2];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)updateClient
{
  v17 = *MEMORY[0x1E69E9840];
  primaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  logicalLeaderOutputDevice = [primaryOutputDeviceRoute logicalLeaderOutputDevice];
  if ([logicalLeaderOutputDevice deviceType] == 2 && !self->_client)
  {
    objc_initWeak(buf, self);
    v6 = objc_alloc_init(MEMORY[0x1E69A4590]);
    client = self->_client;
    self->_client = v6;

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__MRUHearingServiceController_updateClient__block_invoke;
    v13[3] = &unk_1E7663AE8;
    objc_copyWeak(&v14, buf);
    [(HMServiceClient *)self->_client setInterruptionHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__MRUHearingServiceController_updateClient__block_invoke_8;
    v11[3] = &unk_1E76657D8;
    objc_copyWeak(&v12, buf);
    [(HMServiceClient *)self->_client setDeviceRecordChangedHandler:v11];
    v8 = self->_client;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__MRUHearingServiceController_updateClient__block_invoke_2;
    v9[3] = &unk_1E7665800;
    objc_copyWeak(&v10, buf);
    [(HMServiceClient *)v8 activateWithCompletion:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  else if ([logicalLeaderOutputDevice deviceType] != 2)
  {
    v5 = MCLogCategoryVolume();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = objc_opt_class();
      _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting service, no bluetooth devices", buf, 0xCu);
    }

    [(MRUHearingServiceController *)self reset];
  }
}

- (void)updatePrimaryHearingAidEnabled
{
  v28 = *MEMORY[0x1E69E9840];
  hearingAidEnabled = [(HMDeviceRecord *)self->_primaryHealthRecord hearingAidEnabled];
  v4 = hearingAidEnabled == 1;
  if (self->_primaryHearingAidEnabled != v4)
  {
    v5 = hearingAidEnabled;
    self->_primaryHearingAidEnabled = v4;
    v6 = MCLogCategoryVolume();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      bluetoothAddress = [(HMDeviceRecord *)self->_primaryHealthRecord bluetoothAddress];
      v9 = bluetoothAddress;
      if (v5 > 2)
      {
        v10 = "?";
      }

      else
      {
        v10 = off_1E7665820[v5];
      }

      *buf = 138543874;
      v23 = v7;
      v24 = 2114;
      v25 = bluetoothAddress;
      v26 = 2080;
      v27 = v10;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ update primary hearingAidEnabled for device: %{public}@ | hearingAidEnabled: %s", buf, 0x20u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(NSHashTable *)self->_observers copy];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v17 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 hearingServiceController:self didChangePrimaryHearingAidEnabled:v5 == 1];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)updateSecondaryAmplification
{
  v28 = *MEMORY[0x1E69E9840];
  amplification = [(HMDeviceRecord *)self->_secondaryHealthRecord amplification];
  [amplification floatValue];
  v5 = v4;

  if (v5 != self->_secondaryAmplification)
  {
    self->_secondaryAmplification = v5;
    v6 = MCLogCategoryVolume();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      bluetoothAddress = [(HMDeviceRecord *)self->_secondaryHealthRecord bluetoothAddress];
      amplification2 = [(HMDeviceRecord *)self->_secondaryHealthRecord amplification];
      *buf = 138543874;
      v23 = v7;
      v24 = 2114;
      v25 = bluetoothAddress;
      v26 = 2114;
      v27 = amplification2;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ update secondary amplification for device: %{public}@ | amplification: %{public}@", buf, 0x20u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [(NSHashTable *)self->_observers copy];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            *&v16 = v5;
            [v15 hearingServiceController:self didChangeSecondaryAmplification:v16];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)updateSecondaryHearingAidEnabled
{
  v28 = *MEMORY[0x1E69E9840];
  hearingAidEnabled = [(HMDeviceRecord *)self->_secondaryHealthRecord hearingAidEnabled];
  v4 = hearingAidEnabled == 1;
  if (self->_secondaryHearingAidEnabled != v4)
  {
    v5 = hearingAidEnabled;
    self->_secondaryHearingAidEnabled = v4;
    v6 = MCLogCategoryVolume();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      bluetoothAddress = [(HMDeviceRecord *)self->_secondaryHealthRecord bluetoothAddress];
      v9 = bluetoothAddress;
      if (v5 > 2)
      {
        v10 = "?";
      }

      else
      {
        v10 = off_1E7665820[v5];
      }

      *buf = 138543874;
      v23 = v7;
      v24 = 2114;
      v25 = bluetoothAddress;
      v26 = 2080;
      v27 = v10;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ update secondary hearingAidEnabled for device: %{public}@ | hearingAidEnabled: %s", buf, 0x20u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v11 = [(NSHashTable *)self->_observers copy];
    v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v17 + 1) + 8 * v15);
          if (objc_opt_respondsToSelector())
          {
            [v16 hearingServiceController:self didChangeSecondaryHearingAidEnabled:v5 == 1];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)updatePrimaryAmplification
{
  v28 = *MEMORY[0x1E69E9840];
  amplification = [(HMDeviceRecord *)self->_primaryHealthRecord amplification];
  [amplification floatValue];
  v5 = v4;

  if (v5 != self->_primaryAmplification)
  {
    self->_primaryAmplification = v5;
    v6 = MCLogCategoryVolume();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      bluetoothAddress = [(HMDeviceRecord *)self->_primaryHealthRecord bluetoothAddress];
      amplification2 = [(HMDeviceRecord *)self->_primaryHealthRecord amplification];
      *buf = 138543874;
      v23 = v7;
      v24 = 2114;
      v25 = bluetoothAddress;
      v26 = 2114;
      v27 = amplification2;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ update primary amplification for device: %{public}@ | amplification: %{public}@", buf, 0x20u);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [(NSHashTable *)self->_observers copy];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            *&v16 = v5;
            [v15 hearingServiceController:self didChangePrimaryAmplification:v16];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }
}

- (void)updateHealthRecord
{
  primaryOutputDeviceUID = [(MRUHearingServiceController *)self primaryOutputDeviceUID];
  records = [(MRUHearingServiceController *)self records];
  allValues = [records allValues];
  v6 = [(MRUHearingServiceController *)self fetchRecordWithID:primaryOutputDeviceUID fromRecords:allValues];
  [(MRUHearingServiceController *)self setPrimaryHealthRecord:v6];

  secondaryOutputDeviceUID = [(MRUHearingServiceController *)self secondaryOutputDeviceUID];
  records2 = [(MRUHearingServiceController *)self records];
  allValues2 = [records2 allValues];
  v9 = [(MRUHearingServiceController *)self fetchRecordWithID:secondaryOutputDeviceUID fromRecords:allValues2];
  [(MRUHearingServiceController *)self setSecondaryHealthRecord:v9];
}

- (id)secondaryOutputDeviceUID
{
  secondaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController secondaryOutputDeviceRoute];
  logicalLeaderOutputDevice = [secondaryOutputDeviceRoute logicalLeaderOutputDevice];

  if ([logicalLeaderOutputDevice deviceType] == 2)
  {
    v4 = [logicalLeaderOutputDevice uid];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)primaryOutputDeviceUID
{
  primaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
  logicalLeaderOutputDevice = [primaryOutputDeviceRoute logicalLeaderOutputDevice];

  if ([logicalLeaderOutputDevice deviceType] == 2)
  {
    v4 = [logicalLeaderOutputDevice uid];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MRUHearingServiceController)initWithOutputDeviceRouteController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = MRUHearingServiceController;
  v6 = [(MRUHearingServiceController *)&v12 init];
  if (v6)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v6->_observers;
    v6->_observers = weakObjectsHashTable;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    records = v6->_records;
    v6->_records = dictionary;

    objc_storeStrong(&v6->_outputDeviceRouteController, controller);
    [(MRUSystemOutputDeviceRouteController *)v6->_outputDeviceRouteController add:v6];
    [(MRUHearingServiceController *)v6 updatePrimaryHearingAidEnabled];
    [(MRUHearingServiceController *)v6 updateSecondaryHearingAidEnabled];
    [(MRUHearingServiceController *)v6 updatePrimaryAmplification];
    [(MRUHearingServiceController *)v6 updateSecondaryAmplification];
    [(MRUHearingServiceController *)v6 updatePrimaryListeningModeOffAllowed];
    [(MRUHearingServiceController *)v6 updateSecondaryListeningModeOffAllowed];
  }

  return v6;
}

- (void)dealloc
{
  [(HMServiceClient *)self->_client invalidate];
  v3.receiver = self;
  v3.super_class = MRUHearingServiceController;
  [(MRUHearingServiceController *)&v3 dealloc];
}

- (void)setPrimaryAmplification:(float)amplification
{
  v24 = *MEMORY[0x1E69E9840];
  bluetoothUUID = [(HMDeviceRecord *)self->_primaryHealthRecord bluetoothUUID];
  v6 = objc_alloc_init(MEMORY[0x1E69A4578]);
  *&v7 = amplification;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  [v6 setAmplification:v8];

  v9 = MCLogCategoryVolume();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    amplification = [v6 amplification];
    *buf = 138543874;
    v19 = v10;
    v20 = 2114;
    v21 = bluetoothUUID;
    v22 = 2112;
    v23 = amplification;
    _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ setting primary amplification for device: %{public}@ | amplification: %@", buf, 0x20u);
  }

  client = self->_client;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __55__MRUHearingServiceController_setPrimaryAmplification___block_invoke;
  v15[3] = &unk_1E7664380;
  v15[4] = self;
  v16 = bluetoothUUID;
  v17 = v6;
  v13 = v6;
  v14 = bluetoothUUID;
  [(HMServiceClient *)client modifyDeviceConfig:v13 identifier:v14 completion:v15];
}

void __55__MRUHearingServiceController_setPrimaryAmplification___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = MCLogCategoryVolume();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = *(a1 + 40);
      v7 = [*(a1 + 48) amplification];
      v8 = 138544130;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ error setting primary amplification for device: %{public}@ | amplification: %{public}@ | error: %{public}@", &v8, 0x2Au);
    }
  }
}

- (void)setSecondaryAmplification:(float)amplification
{
  v24 = *MEMORY[0x1E69E9840];
  bluetoothUUID = [(HMDeviceRecord *)self->_secondaryHealthRecord bluetoothUUID];
  v6 = objc_alloc_init(MEMORY[0x1E69A4578]);
  *&v7 = amplification;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  [v6 setAmplification:v8];

  v9 = MCLogCategoryVolume();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    amplification = [v6 amplification];
    *buf = 138543874;
    v19 = v10;
    v20 = 2114;
    v21 = bluetoothUUID;
    v22 = 2112;
    v23 = amplification;
    _os_log_impl(&dword_1A20FC000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ setting secondary amplification for device: %{public}@ | amplification: %@", buf, 0x20u);
  }

  client = self->_client;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__MRUHearingServiceController_setSecondaryAmplification___block_invoke;
  v15[3] = &unk_1E7664380;
  v15[4] = self;
  v16 = bluetoothUUID;
  v17 = v6;
  v13 = v6;
  v14 = bluetoothUUID;
  [(HMServiceClient *)client modifyDeviceConfig:v13 identifier:v14 completion:v15];
}

void __57__MRUHearingServiceController_setSecondaryAmplification___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = MCLogCategoryVolume();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = *(a1 + 40);
      v7 = [*(a1 + 48) amplification];
      v8 = 138544130;
      v9 = v5;
      v10 = 2114;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v3;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ error setting secondary amplification for device: %{public}@ | amplification: %{public}@ | error: %{public}@", &v8, 0x2Au);
    }
  }
}

- (void)setPrimaryHealthRecord:(id)record
{
  objc_storeStrong(&self->_primaryHealthRecord, record);
  [(MRUHearingServiceController *)self updatePrimaryHearingAidEnabled];
  [(MRUHearingServiceController *)self updatePrimaryAmplification];

  [(MRUHearingServiceController *)self updatePrimaryListeningModeOffAllowed];
}

- (void)setSecondaryHealthRecord:(id)record
{
  objc_storeStrong(&self->_secondaryHealthRecord, record);
  [(MRUHearingServiceController *)self updateSecondaryHearingAidEnabled];
  [(MRUHearingServiceController *)self updateSecondaryAmplification];

  [(MRUHearingServiceController *)self updateSecondaryListeningModeOffAllowed];
}

- (void)systemOutputDeviceRouteControllerDidUpdateOutputDevices:(id)devices
{
  [(MRUHearingServiceController *)self updateHealthRecord];

  [(MRUHearingServiceController *)self updateClient];
}

void __43__MRUHearingServiceController_updateClient__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = MCLogCategoryVolume();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v5 = 138543362;
    v6 = objc_opt_class();
    _os_log_impl(&dword_1A20FC000, v2, OS_LOG_TYPE_ERROR, "%{public}@ Hearing Mode Server crashed", &v5, 0xCu);
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 reset];
}

void __43__MRUHearingServiceController_updateClient__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained records];
  v6 = [v3 bluetoothAddress];
  [v5 setObject:v3 forKey:v6];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 updateHealthRecord];
}

void __43__MRUHearingServiceController_updateClient__block_invoke_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = MCLogCategoryVolume();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v7 = 138543618;
      v8 = objc_opt_class();
      v9 = 2114;
      v10 = v3;
      _os_log_impl(&dword_1A20FC000, v4, OS_LOG_TYPE_ERROR, "%{public}@ received error trying to activate service error: %{public}@ ", &v7, 0x16u);
    }

    v6 = objc_loadWeakRetained((a1 + 32));
    [v6 reset];
  }
}

- (id)fetchRecordWithID:(id)d fromRecords:(id)records
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  recordsCopy = records;
  v7 = recordsCopy;
  if (dCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = recordsCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          bluetoothAddress = [v12 bluetoothAddress];
          v14 = [dCopy containsString:bluetoothAddress];

          if (v14)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
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
    v9 = 0;
  }

  return v9;
}

@end
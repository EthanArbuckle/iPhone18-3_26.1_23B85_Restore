@interface MediaControlsVolumeController
- (BOOL)_setupOutputDevicesAndVolumeControllersIfNeeded;
- (BOOL)setCurrentBluetoothListeningModeForRouteType:(unint64_t)a3 bluetoothListeningMode:(id)a4 error:(id *)a5;
- (BOOL)volumeControlAvailableForRouteType:(unint64_t)a3;
- (MediaControlsVolumeController)init;
- (float)volumeForRouteType:(unint64_t)a3;
- (id)availableBluetoothListeningModeForRouteType:(unint64_t)a3;
- (id)currentBluetoothListeningModeForRouteType:(unint64_t)a3;
- (id)imageForRouteType:(unint64_t)a3;
- (id)routeNameForRouteType:(unint64_t)a3;
- (unint64_t)_routeForVolumeController:(id)a3;
- (void)routeDidChangeNotification;
- (void)setVolume:(float)a3 forRouteType:(unint64_t)a4;
- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4;
@end

@implementation MediaControlsVolumeController

- (MediaControlsVolumeController)init
{
  v11.receiver = self;
  v11.super_class = MediaControlsVolumeController;
  v2 = [(MediaControlsVolumeController *)&v11 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [MEMORY[0x277CD5D48] systemRoute];
    systemRoute = v2->_systemRoute;
    v2->_systemRoute = v5;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel_routeDidChangeNotification name:*MEMORY[0x277CD5640] object:v2->_systemRoute];

    v8 = objc_alloc_init(MEMORY[0x277CD60F0]);
    systemVolumeController = v2->_systemVolumeController;
    v2->_systemVolumeController = v8;

    [(MPVolumeController *)v2->_systemVolumeController setDelegate:v2];
    [(MediaControlsVolumeController *)v2 _setupOutputDevicesAndVolumeControllersIfNeeded];
  }

  return v2;
}

- (id)routeNameForRouteType:(unint64_t)a3
{
  if (a3 <= 2)
  {
    a2 = [*(&self->super.isa + qword_25AEEB470[a3]) routeName];
  }

  return a2;
}

- (id)imageForRouteType:(unint64_t)a3
{
  if (a3 <= 2)
  {
    a2 = [MEMORY[0x277CD5D48] _iconImageForRoute:{*(&self->_systemOutputDeviceRoute + a3), v3}];
  }

  return a2;
}

- (id)currentBluetoothListeningModeForRouteType:(unint64_t)a3
{
  if (a3 <= 2)
  {
    [*(&self->_systemOutputDeviceRoute + a3) logicalLeaderOutputDevice];
    self = MRAVOutputDeviceCopyCurrentBluetoothListeningMode();
  }

  return self;
}

- (BOOL)setCurrentBluetoothListeningModeForRouteType:(unint64_t)a3 bluetoothListeningMode:(id)a4 error:(id *)a5
{
  v8 = a4;
  if (a3 <= 2)
  {
    [*(&self->_systemOutputDeviceRoute + a3) logicalLeaderOutputDevice];
    v9 = v8;
    v10 = MRAVOutputDeviceSetCurrentBluetoothListeningMode();
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v10 = 0;
  if (a5)
  {
LABEL_5:
    *a5 = 0;
  }

LABEL_6:

  return v10;
}

- (id)availableBluetoothListeningModeForRouteType:(unint64_t)a3
{
  if (a3 >= 2)
  {
    if (a3 != 2)
    {
      goto LABEL_8;
    }

    secondaryOutputDeviceRoute = self->_secondaryOutputDeviceRoute;
  }

  else if (self->_primaryOutputDeviceRoute)
  {
    secondaryOutputDeviceRoute = self->_primaryOutputDeviceRoute;
  }

  else
  {
    secondaryOutputDeviceRoute = self->_systemOutputDeviceRoute;
  }

  [(MPAVOutputDeviceRoute *)secondaryOutputDeviceRoute logicalLeaderOutputDevice];
  a2 = MRAVOutputDeviceCopyAvailableBluetoothListeningMode();
LABEL_8:

  return a2;
}

- (float)volumeForRouteType:(unint64_t)a3
{
  if (a3 == 2)
  {
    p_secondaryVolumeController = &self->_secondaryVolumeController;
    if ([(MPVolumeController *)self->_secondaryVolumeController isVolumeControlAvailable])
    {
      goto LABEL_7;
    }

    return 1.0;
  }

  if (a3 != 1)
  {
    if (!a3)
    {
      p_secondaryVolumeController = &self->_systemVolumeController;
      systemVolumeController = self->_systemVolumeController;
      goto LABEL_6;
    }

    return 1.0;
  }

  p_secondaryVolumeController = &self->_primaryVolumeController;
  systemVolumeController = self->_primaryVolumeController;
LABEL_6:
  if (([(MPVolumeController *)systemVolumeController isVolumeControlAvailable]& 1) == 0)
  {
    return 1.0;
  }

LABEL_7:
  v5 = *p_secondaryVolumeController;

  [(MPVolumeController *)v5 volumeValue];
  return result;
}

- (BOOL)volumeControlAvailableForRouteType:(unint64_t)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return [*(&self->_systemVolumeController + a3) isVolumeControlAvailable];
  }
}

- (void)setVolume:(float)a3 forRouteType:(unint64_t)a4
{
  if (a4 <= 2)
  {
    [*(&self->_systemVolumeController + a4) setVolume:? withNotificationDelay:?];
  }
}

- (void)routeDidChangeNotification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__MediaControlsVolumeController_routeDidChangeNotification__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__MediaControlsVolumeController_routeDidChangeNotification__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _setupOutputDevicesAndVolumeControllersIfNeeded];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [*(*(a1 + 32) + 32) copy];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) mediaControlsVolumeController:*(a1 + 32) didUpdateSplitRoute:v2];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4
{
  v8 = a3;
  v6 = [v8 isVolumeControlAvailable];
  *&v7 = a4;
  [(MediaControlsVolumeController *)self _notifyVolumeChangedForVolumeController:v8 volumeControlAvailable:v6 effectiveVolume:v7];
}

- (unint64_t)_routeForVolumeController:(id)a3
{
  if (self->_primaryVolumeController == a3)
  {
    return 1;
  }

  else
  {
    return 2 * (self->_secondaryVolumeController == a3);
  }
}

- (BOOL)_setupOutputDevicesAndVolumeControllersIfNeeded
{
  v42[1] = *MEMORY[0x277D85DE8];
  v3 = [(MPAVEndpointRoute *)self->_systemRoute endpointWrapper];
  [v3 unwrappedValue];
  v4 = MRAVEndpointCopyOutputDevices();

  if (v4)
  {
    v5 = [(MPAVEndpointRoute *)self->_systemRoute isSplitRoute];
    systemOutputDeviceRoute = self->_systemOutputDeviceRoute;
    if (v5)
    {
      self->_systemOutputDeviceRoute = 0;

      [(MPAVOutputDeviceRoute *)self->_primaryOutputDeviceRoute logicalLeaderOutputDevice];
      v7 = MRAVOutputDeviceCopyUniqueIdentifier();
      v8 = [v4 objectAtIndexedSubscript:0];
      v9 = MRAVOutputDeviceCopyUniqueIdentifier();

      v10 = objc_alloc(MEMORY[0x277CD5D30]);
      v11 = [v4 objectAtIndexedSubscript:0];
      v42[0] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
      v13 = [v10 initWithOutputDevices:v12];
      primaryOutputDeviceRoute = self->_primaryOutputDeviceRoute;
      self->_primaryOutputDeviceRoute = v13;

      v15 = [v7 isEqualToString:v9];
      if ((v15 & 1) == 0)
      {
        [(MPVolumeController *)self->_primaryVolumeController setDelegate:0];
        primaryVolumeController = self->_primaryVolumeController;
        self->_primaryVolumeController = 0;

        v17 = [objc_alloc(MEMORY[0x277CD60F8]) initWithGroupRoute:self->_systemRoute outputDeviceRoute:self->_primaryOutputDeviceRoute];
        v18 = [objc_alloc(MEMORY[0x277CD60F0]) initWithDataSource:v17];
        v19 = self->_primaryVolumeController;
        self->_primaryVolumeController = v18;

        [(MPVolumeController *)self->_primaryVolumeController setDelegate:self];
      }

      [(MPAVOutputDeviceRoute *)self->_secondaryOutputDeviceRoute logicalLeaderOutputDevice];
      v20 = MRAVOutputDeviceCopyUniqueIdentifier();
      v21 = [v4 objectAtIndexedSubscript:1];
      v22 = MRAVOutputDeviceCopyUniqueIdentifier();

      v23 = objc_alloc(MEMORY[0x277CD5D30]);
      v24 = [v4 objectAtIndexedSubscript:1];
      v41 = v24;
      v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
      v26 = [v23 initWithOutputDevices:v25];
      secondaryOutputDeviceRoute = self->_secondaryOutputDeviceRoute;
      self->_secondaryOutputDeviceRoute = v26;

      if ([v20 isEqualToString:v22])
      {
        LOBYTE(v28) = v15 ^ 1;
      }

      else
      {
        [(MPVolumeController *)self->_secondaryVolumeController setDelegate:0];
        secondaryVolumeController = self->_secondaryVolumeController;
        self->_secondaryVolumeController = 0;

        v28 = [objc_alloc(MEMORY[0x277CD60F8]) initWithGroupRoute:self->_systemRoute outputDeviceRoute:self->_secondaryOutputDeviceRoute];
        v37 = [objc_alloc(MEMORY[0x277CD60F0]) initWithDataSource:v28];
        v38 = self->_secondaryVolumeController;
        self->_secondaryVolumeController = v37;

        [(MPVolumeController *)self->_secondaryVolumeController setDelegate:self];
        LOBYTE(v28) = 1;
      }

      if (!self->_isSplitRoute)
      {
        LOBYTE(v28) = 1;
        self->_isSplitRoute = 1;
      }
    }

    else
    {
      v29 = [(MPAVOutputDeviceRoute *)systemOutputDeviceRoute outputDevices];
      LODWORD(v28) = [v29 isEqualToArray:v4] ^ 1;

      v30 = self->_primaryOutputDeviceRoute;
      self->_primaryOutputDeviceRoute = 0;

      [(MPVolumeController *)self->_primaryVolumeController setDelegate:0];
      v31 = self->_primaryVolumeController;
      self->_primaryVolumeController = 0;

      v32 = self->_secondaryOutputDeviceRoute;
      self->_secondaryOutputDeviceRoute = 0;

      [(MPVolumeController *)self->_secondaryVolumeController setDelegate:0];
      v33 = self->_secondaryVolumeController;
      self->_secondaryVolumeController = 0;

      v34 = [objc_alloc(MEMORY[0x277CD5D30]) initWithOutputDevices:v4];
      v35 = self->_systemOutputDeviceRoute;
      self->_systemOutputDeviceRoute = v34;

      self->_isSplitRoute = 0;
    }
  }

  else
  {
    LOBYTE(v28) = 0;
  }

  v39 = *MEMORY[0x277D85DE8];
  return v28;
}

@end
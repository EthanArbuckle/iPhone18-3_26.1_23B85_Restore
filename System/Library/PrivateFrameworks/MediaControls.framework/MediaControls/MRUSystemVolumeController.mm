@interface MRUSystemVolumeController
+ (id)packageStateForVolumeValue:(float)value;
- (MRUSystemVolumeController)initWithOutputDeviceRouteController:(id)controller;
- (MRUSystemVolumeControllerDelegate)delegate;
- (float)volumeValueForType:(int64_t)type;
- (id)volumeControllerForType:(int64_t)type;
- (int64_t)typeForVolumeController:(id)controller;
- (unsigned)volumeCapabilitiesForType:(int64_t)type;
- (void)setVolumeValue:(float)value forType:(int64_t)type;
- (void)updateVolumeControllers;
- (void)volumeController:(id)controller volumeControlCapabilitiesDidChange:(unsigned int)change;
- (void)volumeController:(id)controller volumeValueDidChange:(float)change;
@end

@implementation MRUSystemVolumeController

- (void)updateVolumeControllers
{
  if ([(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController isSplitRoute])
  {
    v3 = objc_alloc(MEMORY[0x1E6970A20]);
    systemRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController systemRoute];
    primaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
    v16 = [v3 initWithGroupRoute:systemRoute outputDeviceRoute:primaryOutputDeviceRoute];

    v6 = [objc_alloc(MEMORY[0x1E6970A18]) initWithDataSource:v16];
    primaryVolumeController = self->_primaryVolumeController;
    self->_primaryVolumeController = v6;

    [(MPVolumeController *)self->_primaryVolumeController setDelegate:self];
    v8 = objc_alloc(MEMORY[0x1E6970A20]);
    systemRoute2 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController systemRoute];
    secondaryOutputDeviceRoute = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController secondaryOutputDeviceRoute];
    v11 = [v8 initWithGroupRoute:systemRoute2 outputDeviceRoute:secondaryOutputDeviceRoute];

    v12 = [objc_alloc(MEMORY[0x1E6970A18]) initWithDataSource:v11];
    secondaryVolumeController = self->_secondaryVolumeController;
    self->_secondaryVolumeController = v12;

    [(MPVolumeController *)self->_secondaryVolumeController setDelegate:self];
    v14 = v16;
  }

  else
  {
    [(MPVolumeController *)self->_primaryVolumeController setDelegate:0];
    v15 = self->_primaryVolumeController;
    self->_primaryVolumeController = 0;

    [(MPVolumeController *)self->_secondaryVolumeController setDelegate:0];
    v14 = self->_secondaryVolumeController;
    self->_secondaryVolumeController = 0;
  }
}

- (MRUSystemVolumeController)initWithOutputDeviceRouteController:(id)controller
{
  controllerCopy = controller;
  v13.receiver = self;
  v13.super_class = MRUSystemVolumeController;
  v6 = [(MRUSystemVolumeController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDeviceRouteController, controller);
    [(MRUSystemOutputDeviceRouteController *)v7->_outputDeviceRouteController add:v7];
    v8 = [MEMORY[0x1E695DFD8] setWithObjects:{@"Audio/Video", @"MediaPlayback", @"Alarm", @"Ringtone", @"PhoneCall", @"VoiceCommand", 0}];
    v9 = [objc_alloc(MEMORY[0x1E6970A28]) initWithVolumeAudioCategories:v8];
    v10 = [objc_alloc(MEMORY[0x1E6970A18]) initWithDataSource:v9];
    systemVolumeController = v7->_systemVolumeController;
    v7->_systemVolumeController = v10;

    [(MPVolumeController *)v7->_systemVolumeController setDelegate:v7];
    [(MRUSystemVolumeController *)v7 updateVolumeControllers];
  }

  return v7;
}

- (float)volumeValueForType:(int64_t)type
{
  v3 = [(MRUSystemVolumeController *)self volumeControllerForType:type];
  volumeCapabilities = [v3 volumeCapabilities];
  [v3 volumeValue];
  if ((volumeCapabilities & 2) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (unsigned)volumeCapabilitiesForType:(int64_t)type
{
  v3 = [(MRUSystemVolumeController *)self volumeControllerForType:type];
  volumeCapabilities = [v3 volumeCapabilities];

  return volumeCapabilities;
}

- (void)setVolumeValue:(float)value forType:(int64_t)type
{
  v7 = [(MRUSystemVolumeController *)self volumeControllerForType:type];
  LODWORD(v5) = 1036831949;
  *&v6 = value;
  [v7 setVolume:v6 withNotificationDelay:v5];
}

+ (id)packageStateForVolumeValue:(float)value
{
  if (value <= 0.00000011921)
  {
    return @"mute";
  }

  if (value < 0.33)
  {
    return @"min";
  }

  if (value >= 1.0)
  {
    v4 = @"max";
  }

  else
  {
    v4 = @"full";
  }

  if (value >= 0.66)
  {
    return v4;
  }

  else
  {
    return @"half";
  }
}

- (void)volumeController:(id)controller volumeValueDidChange:(float)change
{
  controllerCopy = controller;
  v7 = [(MRUSystemVolumeController *)self typeForVolumeController:controllerCopy];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  volumeCapabilities = [controllerCopy volumeCapabilities];

  *&v9 = change;
  [WeakRetained systemVolumeController:self didChangeVolumeControlCapabilities:volumeCapabilities effectiveVolumeValue:v7 forType:v9];
}

- (void)volumeController:(id)controller volumeControlCapabilitiesDidChange:(unsigned int)change
{
  v4 = *&change;
  controllerCopy = controller;
  v6 = [(MRUSystemVolumeController *)self typeForVolumeController:?];
  v7 = 1.0;
  if ((v4 & 2) != 0)
  {
    [controllerCopy volumeValue];
    v7 = v8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  *&v10 = v7;
  [WeakRetained systemVolumeController:self didChangeVolumeControlCapabilities:v4 effectiveVolumeValue:v6 forType:v10];
}

- (int64_t)typeForVolumeController:(id)controller
{
  if (self->_primaryVolumeController == controller)
  {
    return 1;
  }

  else
  {
    return 2 * (self->_secondaryVolumeController == controller);
  }
}

- (id)volumeControllerForType:(int64_t)type
{
  if (type <= 2)
  {
    self = *(&self->_systemVolumeController + type);
  }

  return self;
}

- (MRUSystemVolumeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
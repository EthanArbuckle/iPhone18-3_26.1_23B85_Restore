@interface MRUSystemVolumeController
+ (id)packageStateForVolumeValue:(float)a3;
- (MRUSystemVolumeController)initWithOutputDeviceRouteController:(id)a3;
- (MRUSystemVolumeControllerDelegate)delegate;
- (float)volumeValueForType:(int64_t)a3;
- (id)volumeControllerForType:(int64_t)a3;
- (int64_t)typeForVolumeController:(id)a3;
- (unsigned)volumeCapabilitiesForType:(int64_t)a3;
- (void)setVolumeValue:(float)a3 forType:(int64_t)a4;
- (void)updateVolumeControllers;
- (void)volumeController:(id)a3 volumeControlCapabilitiesDidChange:(unsigned int)a4;
- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4;
@end

@implementation MRUSystemVolumeController

- (void)updateVolumeControllers
{
  if ([(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController isSplitRoute])
  {
    v3 = objc_alloc(MEMORY[0x1E6970A20]);
    v4 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController systemRoute];
    v5 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController primaryOutputDeviceRoute];
    v16 = [v3 initWithGroupRoute:v4 outputDeviceRoute:v5];

    v6 = [objc_alloc(MEMORY[0x1E6970A18]) initWithDataSource:v16];
    primaryVolumeController = self->_primaryVolumeController;
    self->_primaryVolumeController = v6;

    [(MPVolumeController *)self->_primaryVolumeController setDelegate:self];
    v8 = objc_alloc(MEMORY[0x1E6970A20]);
    v9 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController systemRoute];
    v10 = [(MRUSystemOutputDeviceRouteController *)self->_outputDeviceRouteController secondaryOutputDeviceRoute];
    v11 = [v8 initWithGroupRoute:v9 outputDeviceRoute:v10];

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

- (MRUSystemVolumeController)initWithOutputDeviceRouteController:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = MRUSystemVolumeController;
  v6 = [(MRUSystemVolumeController *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outputDeviceRouteController, a3);
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

- (float)volumeValueForType:(int64_t)a3
{
  v3 = [(MRUSystemVolumeController *)self volumeControllerForType:a3];
  v4 = [v3 volumeCapabilities];
  [v3 volumeValue];
  if ((v4 & 2) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1.0;
  }

  return v6;
}

- (unsigned)volumeCapabilitiesForType:(int64_t)a3
{
  v3 = [(MRUSystemVolumeController *)self volumeControllerForType:a3];
  v4 = [v3 volumeCapabilities];

  return v4;
}

- (void)setVolumeValue:(float)a3 forType:(int64_t)a4
{
  v7 = [(MRUSystemVolumeController *)self volumeControllerForType:a4];
  LODWORD(v5) = 1036831949;
  *&v6 = a3;
  [v7 setVolume:v6 withNotificationDelay:v5];
}

+ (id)packageStateForVolumeValue:(float)a3
{
  if (a3 <= 0.00000011921)
  {
    return @"mute";
  }

  if (a3 < 0.33)
  {
    return @"min";
  }

  if (a3 >= 1.0)
  {
    v4 = @"max";
  }

  else
  {
    v4 = @"full";
  }

  if (a3 >= 0.66)
  {
    return v4;
  }

  else
  {
    return @"half";
  }
}

- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4
{
  v6 = a3;
  v7 = [(MRUSystemVolumeController *)self typeForVolumeController:v6];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [v6 volumeCapabilities];

  *&v9 = a4;
  [WeakRetained systemVolumeController:self didChangeVolumeControlCapabilities:v8 effectiveVolumeValue:v7 forType:v9];
}

- (void)volumeController:(id)a3 volumeControlCapabilitiesDidChange:(unsigned int)a4
{
  v4 = *&a4;
  v11 = a3;
  v6 = [(MRUSystemVolumeController *)self typeForVolumeController:?];
  v7 = 1.0;
  if ((v4 & 2) != 0)
  {
    [v11 volumeValue];
    v7 = v8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  *&v10 = v7;
  [WeakRetained systemVolumeController:self didChangeVolumeControlCapabilities:v4 effectiveVolumeValue:v6 forType:v10];
}

- (int64_t)typeForVolumeController:(id)a3
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

- (id)volumeControllerForType:(int64_t)a3
{
  if (a3 <= 2)
  {
    self = *(&self->_systemVolumeController + a3);
  }

  return self;
}

- (MRUSystemVolumeControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
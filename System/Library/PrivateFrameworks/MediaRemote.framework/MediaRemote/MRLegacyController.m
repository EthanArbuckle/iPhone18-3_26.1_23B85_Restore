@interface MRLegacyController
- (MRLegacyController)initWithExternalDevice:(id)a3 outputDeviceUID:(id)a4;
- (MRLegacyController)initWithOutputDevice:(id)a3;
- (MRLegacyControllerDelegate)delegate;
- (void)connect;
- (void)dealloc;
- (void)getMasterVolumeCapabilitiesWithCompletion:(id)a3;
- (void)getMasterVolumeWithCompletion:(id)a3;
- (void)getOutputDeviceVolume:(id)a3 completion:(id)a4;
- (void)getOutputDeviceVolumeCapabilities:(id)a3 completion:(id)a4;
- (void)handleVolumeCapabilitiesDidChangeNotification:(id)a3;
- (void)setMasterVolume:(float)a3 completion:(id)a4;
- (void)setVolume:(float)a3 forOutputDeviceID:(id)a4 completion:(id)a5;
- (void)setupExternalDevice;
- (void)tearDown;
@end

@implementation MRLegacyController

- (MRLegacyController)initWithExternalDevice:(id)a3 outputDeviceUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = MRLegacyController;
  v9 = [(MRLegacyController *)&v15 init];
  v10 = v9;
  if (v9)
  {
    [(MRLegacyController *)v9 setOutputDeviceUID:v8];
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.mediaremote/MRLegacyController", v11);
    queue = v10->_queue;
    v10->_queue = v12;

    objc_storeStrong(&v10->_externalDevice, a3);
    [(MRLegacyController *)v10 setupExternalDevice];
  }

  return v10;
}

- (MRLegacyController)initWithOutputDevice:(id)a3
{
  v4 = [a3 uid];
  v5 = [(MRLegacyController *)self initWithExternalDevice:0 outputDeviceUID:v4];

  return v5;
}

- (void)connect
{
  v6[1] = *MEMORY[0x1E69E9840];
  externalDevice = self->_externalDevice;
  v5 = @"MRExternalDeviceConnectionReasonUserInfoKey";
  v6[0] = @"MRLegacyController";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [(MRExternalDevice *)externalDevice connectWithOptions:0 userInfo:v3];

  v4 = *MEMORY[0x1E69E9840];
}

- (void)getMasterVolumeWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MRLegacyController *)self externalDevice];
  [v5 outputDeviceVolume:0 queue:self->_queue completion:v4];
}

- (void)getOutputDeviceVolume:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MRLegacyController *)self externalDevice];
  [v8 outputDeviceVolume:v7 queue:self->_queue completion:v6];
}

- (void)getMasterVolumeCapabilitiesWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MRLegacyController *)self externalDevice];
  [v5 outputDeviceVolumeControlCapabilities:0 queue:self->_queue completion:v4];
}

- (void)getOutputDeviceVolumeCapabilities:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MRLegacyController *)self externalDevice];
  [v8 outputDeviceVolumeControlCapabilities:v7 queue:self->_queue completion:v6];
}

- (void)setMasterVolume:(float)a3 completion:(id)a4
{
  v6 = a4;
  v8 = [(MRLegacyController *)self externalDevice];
  *&v7 = a3;
  [v8 setOutputDeviceVolume:0 outputDeviceUID:self->_queue queue:v6 completion:v7];
}

- (void)setVolume:(float)a3 forOutputDeviceID:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v11 = [(MRLegacyController *)self externalDevice];
  *&v10 = a3;
  [v11 setOutputDeviceVolume:v9 outputDeviceUID:self->_queue queue:v8 completion:v10];
}

- (void)tearDown
{
  [(MRExternalDevice *)self->_externalDevice disconnect:0];
  externalDevice = self->_externalDevice;
  self->_externalDevice = 0;
}

- (void)dealloc
{
  [(MRLegacyController *)self tearDown];
  v3.receiver = self;
  v3.super_class = MRLegacyController;
  [(MRLegacyController *)&v3 dealloc];
}

- (void)setupExternalDevice
{
  [(MRExternalDevice *)self->_externalDevice setWantsVolumeNotifications:1];
  [(MRExternalDevice *)self->_externalDevice setWantsOutputDeviceNotifications:1];
  [(MRExternalDevice *)self->_externalDevice setWantsNowPlayingArtworkNotifications:0];
  [(MRExternalDevice *)self->_externalDevice setWantsNowPlayingNotifications:0];
  objc_initWeak(&location, self);
  externalDevice = self->_externalDevice;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__MRLegacyController_setupExternalDevice__block_invoke;
  v8[3] = &unk_1E769A008;
  objc_copyWeak(&v9, &location);
  [(MRExternalDevice *)externalDevice setVolumeCallback:v8 withQueue:self->_queue];
  v4 = self->_externalDevice;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__MRLegacyController_setupExternalDevice__block_invoke_2;
  v6[3] = &unk_1E769A030;
  objc_copyWeak(&v7, &location);
  [(MRExternalDevice *)v4 setConnectionStateCallback:v6 withQueue:self->_queue];
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 addObserver:self selector:sel_handleVolumeCapabilitiesDidChangeNotification_ name:@"kMRAVEndpointVolumeControlCapabilitiesDidChangeNotification" object:0];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __41__MRLegacyController_setupExternalDevice__block_invoke(uint64_t a1, float a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = [WeakRetained delegate];
  v7 = v6;
  *&v8 = a2;
  if (a4)
  {
    [v6 legacyController:WeakRetained volumeDidChange:a4 forOutputDevice:v8];
  }

  else
  {
    [v6 legacyController:WeakRetained masterVolumeDidChange:v8];
  }
}

void __41__MRLegacyController_setupExternalDevice__block_invoke_2(uint64_t a1, int a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 == 2)
  {
    v11 = WeakRetained;
    v9 = [WeakRetained delegate];
    v10 = objc_opt_respondsToSelector();

    WeakRetained = v11;
    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }

    v8 = [v11 delegate];
    [v8 legacyControllerConnectionDidConnect:v11];
    goto LABEL_7;
  }

  if (a2 == 3)
  {
    v11 = WeakRetained;
    v6 = [WeakRetained delegate];
    v7 = objc_opt_respondsToSelector();

    WeakRetained = v11;
    if (v7)
    {
      v8 = [v11 delegate];
      [v8 legacyControllerConnectionDidDisconnect:v11 withError:a3];
LABEL_7:

      WeakRetained = v11;
    }
  }

LABEL_8:
}

- (void)handleVolumeCapabilitiesDidChangeNotification:(id)a3
{
  v14 = a3;
  v4 = [v14 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"kMRAVEndpointIdentifierUserInfoKey"];

  v6 = [v5 containsString:self->_outputDeviceUID];
  v7 = [v14 userInfo];
  v8 = [v7 objectForKeyedSubscript:@"kMRAVEndpointOutputDeviceIdentifierUserInfoKey"];

  v9 = [v8 isEqualToString:self->_outputDeviceUID];
  if ((v6 & 1) != 0 || v9)
  {
    v10 = [v14 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"kMRAVEndpointVolumeControlCapabilitiesUserInfoKey"];
    v12 = [v11 intValue];

    v13 = [(MRLegacyController *)self delegate];
    [v13 legacyController:self volumeControlAvailabilityDidChange:v12 != 0 forOutputDevice:v8];
  }
}

- (MRLegacyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
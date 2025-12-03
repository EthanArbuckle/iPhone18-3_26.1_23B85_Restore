@interface MRUVirtualHearingAidRoute
+ (void)disconnect;
- (MRUVirtualHearingAidRoute)initWithHearingDeviceName:(id)name;
- (MRUVirtualHearingAidRouteObserver)hearingAidDelegate;
- (void)connect;
- (void)disconnect;
- (void)hearingAidConnectionDidChange:(BOOL)change;
@end

@implementation MRUVirtualHearingAidRoute

- (MRUVirtualHearingAidRoute)initWithHearingDeviceName:(id)name
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = MEMORY[0x1E696AFB0];
  nameCopy = name;
  uUID = [v5 UUID];
  uUIDString = [uUID UUIDString];
  v9 = [v4 stringWithFormat:@"%@-tlea", uUIDString];

  v10 = [objc_alloc(MEMORY[0x1E69B09B0]) initWithDeviceType:2 deviceSubtype:9 uid:v9 name:nameCopy];
  v11 = [[MRUVirtualHearingAidDevice alloc] initWithDeviceDescription:v10];
  mEMORY[0x1E69A45B0] = [MEMORY[0x1E69A45B0] sharedInstance];
  [mEMORY[0x1E69A45B0] setDelegate:self];

  v17[0] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v16.receiver = self;
  v16.super_class = MRUVirtualHearingAidRoute;
  v14 = [(MPAVOutputDeviceRoute *)&v16 initWithOutputDevices:v13];

  return v14;
}

- (void)connect
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MCLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    outputDevice = [(MPAVOutputDeviceRoute *)self outputDevice];
    name = [outputDevice name];
    v7 = 138412290;
    v8 = name;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "MRUVirtualHearingAidRoute connect Hearing Aid device: %@", &v7, 0xCu);
  }

  self->_isConnecting = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x1E69A45A8], 0, 0, 1u);
}

- (void)disconnect
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MCLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    outputDevice = [(MPAVOutputDeviceRoute *)self outputDevice];
    name = [outputDevice name];
    v6 = 138412290;
    v7 = name;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "MRUVirtualHearingAidRoute disconnect Hearing Aid device: %@", &v6, 0xCu);
  }

  self->_isConnecting = 0;
  [objc_opt_class() disconnect];
}

+ (void)disconnect
{
  v2 = MCLogCategoryDefault();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A20FC000, v2, OS_LOG_TYPE_DEFAULT, "MRUVirtualHearingAidRoute disconnect Hearing Aid", v4, 2u);
  }

  mEMORY[0x1E69A45B0] = [MEMORY[0x1E69A45B0] sharedInstance];
  [mEMORY[0x1E69A45B0] cancelHearingAidConnectionRequest];
}

- (void)hearingAidConnectionDidChange:(BOOL)change
{
  changeCopy = change;
  v10 = *MEMORY[0x1E69E9840];
  self->_isConnecting = 0;
  v5 = MCLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:changeCopy];
    *buf = 138412290;
    v9 = v6;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "MRUVirtualHearingAidRoute hearingAidConnectionDidChange connected: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__MRUVirtualHearingAidRoute_hearingAidConnectionDidChange___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__MRUVirtualHearingAidRoute_hearingAidConnectionDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hearingAidDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) hearingAidDelegate];
    [v4 hearingAidConnectionDidChange];
  }
}

- (MRUVirtualHearingAidRouteObserver)hearingAidDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_hearingAidDelegate);

  return WeakRetained;
}

@end
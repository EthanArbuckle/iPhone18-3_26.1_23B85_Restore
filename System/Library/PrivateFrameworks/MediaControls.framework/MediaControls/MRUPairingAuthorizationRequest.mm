@interface MRUPairingAuthorizationRequest
- (MRUPairingAuthorizationRequest)initWithOutputDevice:(id)device inputType:(int64_t)type;
- (void)cancel;
- (void)completeWithPasscode:(id)passcode;
@end

@implementation MRUPairingAuthorizationRequest

- (MRUPairingAuthorizationRequest)initWithOutputDevice:(id)device inputType:(int64_t)type
{
  deviceCopy = device;
  v11.receiver = self;
  v11.super_class = MRUPairingAuthorizationRequest;
  v8 = [(MRUPairingAuthorizationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_outputDevice, device);
    v9->_inputType = type;
  }

  return v9;
}

- (void)completeWithPasscode:(id)passcode
{
  v13 = *MEMORY[0x1E69E9840];
  passcodeCopy = passcode;
  v5 = _MPAVLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    outputDevice = self->_outputDevice;
    v9 = 138543618;
    v10 = v6;
    v11 = 2114;
    v12 = outputDevice;
    _os_log_impl(&dword_1A20FC000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ complete authorization request for device: %{public}@", &v9, 0x16u);
  }

  deviceID = [(AVOutputDevice *)self->_outputDevice deviceID];
  MRMediaRemoteCompletePairingHandler();
}

- (void)cancel
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _MPAVLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    outputDevice = self->_outputDevice;
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = outputDevice;
    _os_log_impl(&dword_1A20FC000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ cancel authorization request for device: %{public}@", &v7, 0x16u);
  }

  deviceID = [(AVOutputDevice *)self->_outputDevice deviceID];
  MRMediaRemoteCompletePairingHandler();
}

@end
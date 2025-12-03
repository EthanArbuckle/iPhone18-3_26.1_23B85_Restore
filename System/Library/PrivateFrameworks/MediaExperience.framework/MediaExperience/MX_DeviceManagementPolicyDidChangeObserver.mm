@interface MX_DeviceManagementPolicyDidChangeObserver
- (void)deviceManagementPolicyDidChange:(id)change;
@end

@implementation MX_DeviceManagementPolicyDidChangeObserver

- (void)deviceManagementPolicyDidChange:(id)change
{
  changeCopy = change;
  v5 = MXGetSerialQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __78__MX_DeviceManagementPolicyDidChangeObserver_deviceManagementPolicyDidChange___block_invoke;
  v6[3] = &unk_1E7AE7CE0;
  v6[4] = change;
  MXDispatchAsync("[MX_DeviceManagementPolicyDidChangeObserver deviceManagementPolicyDidChange:]", "MX_CoreServices.m", 258, 0, 0, v5, v6);
}

@end
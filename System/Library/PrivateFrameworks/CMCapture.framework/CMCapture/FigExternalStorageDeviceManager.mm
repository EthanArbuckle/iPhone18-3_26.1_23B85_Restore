@interface FigExternalStorageDeviceManager
@end

@implementation FigExternalStorageDeviceManager

uint64_t __FigExternalStorageDeviceManager_BeginMonitoring_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __fedm_startMonitoringForExternalDevices_block_invoke;
  v3[3] = &__block_descriptor_40_e34_v24__0__NSDictionary_8__NSError_16l;
  v3[4] = v1;
  result = [MEMORY[0x1E69673E8] beginMonitoringProviderDomainChangesWithHandler:v3];
  *(v1 + 24) = result;
  return result;
}

@end
@interface HKTinkerSharingHelper
- (BOOL)isChinaSKUDevice;
- (BOOL)networkAccessEnabledForHealth;
- (HKTinkerSharingHelper)init;
- (void)networkAccessEnabledForHealth;
- (void)setNetworkAccessEnabledForHealth:(BOOL)a3;
@end

@implementation HKTinkerSharingHelper

- (HKTinkerSharingHelper)init
{
  v4.receiver = self;
  v4.super_class = HKTinkerSharingHelper;
  v2 = [(HKTinkerSharingHelper *)&v4 init];
  if (v2)
  {
    v2->_ctServerConnection = _CTServerConnectionCreateOnTargetQueue();
  }

  return v2;
}

- (BOOL)isChinaSKUDevice
{
  if (isChinaSKUDevice_onceToken != -1)
  {
    [HKTinkerSharingHelper isChinaSKUDevice];
  }

  return isChinaSKUDevice_deviceIsChinaRegion;
}

void __41__HKTinkerSharingHelper_isChinaSKUDevice__block_invoke()
{
  v0 = MGGetStringAnswer();
  if (v0)
  {
    v1 = v0;
    isChinaSKUDevice_deviceIsChinaRegion = CFStringCompare(v0, @"CH", 0) == kCFCompareEqualTo;

    CFRelease(v1);
  }

  else
  {
    isChinaSKUDevice_deviceIsChinaRegion = 0;
  }
}

- (BOOL)networkAccessEnabledForHealth
{
  if (_CTServerConnectionCopyCellularUsagePolicy())
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x1E696B9A0], OS_LOG_TYPE_ERROR))
    {
      [HKTinkerSharingHelper networkAccessEnabledForHealth];
    }
  }

  return 1;
}

- (void)setNetworkAccessEnabledForHealth:(BOOL)a3
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6965238];
  if (!a3)
  {
    v3 = MEMORY[0x1E6965240];
  }

  v4 = *v3;
  v5 = *MEMORY[0x1E6965230];
  v14[0] = v4;
  v6 = *MEMORY[0x1E6965248];
  v13[0] = v5;
  v13[1] = v6;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v13[2] = *MEMORY[0x1E69654D0];
  v14[1] = v7;
  v14[2] = v4;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  LODWORD(v7) = _CTServerConnectionSetCellularUsagePolicy();
  _HKInitializeLogging();
  v9 = *MEMORY[0x1E696B9A0];
  v10 = *MEMORY[0x1E696B9A0];
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [HKTinkerSharingHelper setNetworkAccessEnabledForHealth:];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[HKTinkerSharingHelper setNetworkAccessEnabledForHealth:]";
    _os_log_impl(&dword_1C3942000, v9, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %s succeeded", &v11, 0xCu);
  }

  CFRelease(v4);
  CFRelease(v4);
}

- (void)networkAccessEnabledForHealth
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_9(&dword_1C3942000, v0, v1, "[sharing-setup] %s failed, error: %d domain: (%d)", v2, v3, v4);
}

- (void)setNetworkAccessEnabledForHealth:.cold.1()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_15();
  OUTLINED_FUNCTION_1_9(&dword_1C3942000, v0, v1, "[sharing-setup] %s failed, error: %d domain: (%d)", v2, v3, v4);
}

@end
@interface LACAKSHelper
+ (BOOL)isOnenessAssertionActive;
+ (int64_t)deviceLockState;
+ (void)deviceLockState;
@end

@implementation LACAKSHelper

+ (BOOL)isOnenessAssertionActive
{
  v7 = *MEMORY[0x1E69E9840];
  extended_device_state = aks_get_extended_device_state(0);
  if (extended_device_state)
  {
    v3 = extended_device_state;
    v4 = LACLogABM();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(LACAKSHelper *)v3];
    }

    result = 0;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (int64_t)deviceLockState
{
  v7 = *MEMORY[0x1E69E9840];
  device_state = aks_get_device_state(0);
  if (device_state)
  {
    v3 = device_state;
    v4 = LACLogABM();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      +[(LACAKSHelper *)v3];
    }

    result = 0;
  }

  else
  {
    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

+ (void)deviceLockState
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B0233000, a2, OS_LOG_TYPE_ERROR, "AKS get device state returned non-zero result: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

@end
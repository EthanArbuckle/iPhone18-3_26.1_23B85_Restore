@interface LogUtils
@end

@implementation LogUtils

uint64_t __LogUtils_EnsureInitialized_block_invoke()
{
  pthread_mutex_lock(&gLogUtilsLock);
  _LogUtils_ReadCFPreferences(0);

  return pthread_mutex_unlock(&gLogUtilsLock);
}

@end
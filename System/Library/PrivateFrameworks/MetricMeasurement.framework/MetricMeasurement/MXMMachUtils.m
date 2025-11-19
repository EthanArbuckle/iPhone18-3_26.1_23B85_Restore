@interface MXMMachUtils
+ (id)_processNameWithBundleIdentifier:(id)a3;
+ (mach_timebase_info)_timebase;
@end

@implementation MXMMachUtils

+ (mach_timebase_info)_timebase
{
  if (_timebase_onceToken != -1)
  {
    +[MXMMachUtils _timebase];
  }

  return &_timebase_localTimebase;
}

uint64_t __25__MXMMachUtils__timebase__block_invoke()
{
  result = mach_timebase_info(&_timebase_localTimebase);
  if (result)
  {
    v1 = [MEMORY[0x277CBEAD8] exceptionWithName:@"MXMUtils" reason:@"Failed to retrieve local timebase info." userInfo:0];
    objc_exception_throw(v1);
  }

  return result;
}

+ (id)_processNameWithBundleIdentifier:(id)a3
{
  v3 = [MEMORY[0x277CC1E88] bundleProxyForIdentifier:a3];
  v4 = [v3 bundleExecutable];
  v5 = [v4 lastPathComponent];
  v6 = [v5 copy];

  return v6;
}

@end
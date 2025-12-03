@interface MXMMachUtils
+ (id)_processNameWithBundleIdentifier:(id)identifier;
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

+ (id)_processNameWithBundleIdentifier:(id)identifier
{
  v3 = [MEMORY[0x277CC1E88] bundleProxyForIdentifier:identifier];
  bundleExecutable = [v3 bundleExecutable];
  lastPathComponent = [bundleExecutable lastPathComponent];
  v6 = [lastPathComponent copy];

  return v6;
}

@end
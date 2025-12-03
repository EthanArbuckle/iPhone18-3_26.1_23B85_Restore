@interface HBXHealthAppPluginUtilities
+ (id)defaultUtilities;
- (HBXHealthAppPluginUtilities)initWithConfigurationOverride:(int64_t)override;
- (NSString)feedItemPluginsPath;
- (NSString)systemPath;
- (id)_rootPath;
- (id)_simulatorPath;
@end

@implementation HBXHealthAppPluginUtilities

+ (id)defaultUtilities
{
  v2 = [[HBXHealthAppPluginUtilities alloc] initWithConfigurationOverride:0];

  return v2;
}

- (HBXHealthAppPluginUtilities)initWithConfigurationOverride:(int64_t)override
{
  result = [(HBXHealthAppPluginUtilities *)self init];
  if (result)
  {
    result->_configurationOverride = override;
  }

  return result;
}

- (NSString)systemPath
{
  _rootPath = [(HBXHealthAppPluginUtilities *)self _rootPath];
  v3 = [_rootPath stringByAppendingPathComponent:@"/System"];

  return v3;
}

- (id)_rootPath
{
  if ([(HBXHealthAppPluginUtilities *)self _isCatalyst])
  {
    v3 = @"/System/iOSSupport/";
  }

  else
  {
    _simulatorPath = [(HBXHealthAppPluginUtilities *)self _simulatorPath];
    if ([_simulatorPath length])
    {
      v3 = _simulatorPath;
    }

    else
    {
      v3 = @"/";
    }
  }

  return v3;
}

- (id)_simulatorPath
{
  configurationOverride = self->_configurationOverride;
  if (configurationOverride)
  {
    if (configurationOverride == 2)
    {
      simulatorPathOverride = [(HBXHealthAppPluginUtilities *)self simulatorPathOverride];
    }

    else
    {
      simulatorPathOverride = 0;
    }
  }

  else
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    environment = [processInfo environment];
    simulatorPathOverride = [environment objectForKeyedSubscript:@"SIMULATOR_ROOT"];
  }

  return simulatorPathOverride;
}

- (NSString)feedItemPluginsPath
{
  _rootPath = [(HBXHealthAppPluginUtilities *)self _rootPath];
  v3 = [_rootPath stringByAppendingPathComponent:@"/System/Library/Health/FeedItemPlugins"];

  return v3;
}

@end
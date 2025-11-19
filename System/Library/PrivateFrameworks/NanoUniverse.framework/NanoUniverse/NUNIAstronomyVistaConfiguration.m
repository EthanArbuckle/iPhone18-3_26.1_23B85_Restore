@interface NUNIAstronomyVistaConfiguration
+ (id)defaultConfigurationWithDevice:(id)a3;
- (NUNIAstronomyVistaConfiguration)initWithDevice:(id)a3;
@end

@implementation NUNIAstronomyVistaConfiguration

- (NUNIAstronomyVistaConfiguration)initWithDevice:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = NUNIAstronomyVistaConfiguration;
  v6 = [(NUNIAstronomyVistaConfiguration *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, a3);
    v7->_rendererStyle = 0;
    v7->_colorSpace = 0;
    textureSuffix = v7->_textureSuffix;
    v7->_textureSuffix = @"classic";
  }

  return v7;
}

+ (id)defaultConfigurationWithDevice:(id)a3
{
  v3 = a3;
  v4 = [[NUNIAstronomyVistaConfiguration alloc] initWithDevice:v3];
  if (defaultConfigurationWithDevice__onceToken[0] != -1)
  {
    +[NUNIAstronomyVistaConfiguration defaultConfigurationWithDevice:];
  }

  [(NUNIAstronomyVistaConfiguration *)v4 setIsRTLLayout:CLKLayoutIsRTL()];
  [(NUNIAstronomyVistaConfiguration *)v4 setIsGPUEnabled:defaultConfigurationWithDevice__gpuIsEnabled];
  [v3 screenScale];
  [(NUNIAstronomyVistaConfiguration *)v4 setScreenScale:?];
  [(NUNIAstronomyVistaConfiguration *)v4 setQuadViewOptions:32];

  return v4;
}

void __66__NUNIAstronomyVistaConfiguration_defaultConfigurationWithDevice___block_invoke()
{
  v0 = [MEMORY[0x277CFA798] sharedDevice];
  defaultConfigurationWithDevice__gpuIsEnabled = v0 != 0;
  if (!v0)
  {
    v1 = NUNILoggingObjectForDomain(0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __66__NUNIAstronomyVistaConfiguration_defaultConfigurationWithDevice___block_invoke_cold_1(v1);
    }
  }
}

@end
@interface MTEnvironmentDeviceDelegate
- (id)app;
- (id)appVersion;
- (id)capacityData;
- (id)capacityDataAvailable;
- (id)capacityDisk;
- (id)capacitySystem;
- (id)capacitySystemAvailable;
- (id)hardwareFamily;
- (id)hardwareModel;
- (id)osBuildNumber;
- (id)osVersion;
- (id)pixelRatio;
- (id)screenHeight;
- (id)screenWidth;
@end

@implementation MTEnvironmentDeviceDelegate

- (id)app
{
  v2 = +[MTFrameworkEnvironment sharedEnvironment];
  hostProcessBundleIdentifier = [v2 hostProcessBundleIdentifier];

  return hostProcessBundleIdentifier;
}

- (id)appVersion
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v4 = [infoDictionary objectForKeyedSubscript:@"CFBundleShortVersionString"];

  return v4;
}

- (id)hardwareFamily
{
  v2 = MGCopyAnswer();
  if ([(__CFString *)v2 isEqualToString:@"iPod"])
  {

    v2 = @"iPod touch";
  }

  return v2;
}

- (id)hardwareModel
{
  v2 = MGGetStringAnswer();

  return v2;
}

- (id)osBuildNumber
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)osVersion
{
  if (osVersion_onceToken != -1)
  {
    [MTEnvironmentDeviceDelegate osVersion];
  }

  v3 = osVersion_productVersion;

  return v3;
}

void __40__MTEnvironmentDeviceDelegate_osVersion__block_invoke()
{
  v2 = _CFCopySystemVersionDictionary();
  v0 = [v2 objectForKey:*MEMORY[0x277CBEC88]];
  v1 = osVersion_productVersion;
  osVersion_productVersion = v0;
}

- (id)pixelRatio
{
  MGGetFloat32Answer();
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  }

  return v3;
}

- (id)screenHeight
{
  v2 = MGGetSInt32Answer();
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:v2];
  }

  return v3;
}

- (id)screenWidth
{
  v2 = MGGetSInt32Answer();
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:v2];
  }

  return v3;
}

void *__41__MTEnvironmentDeviceDelegate__diskUsage__block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x277CBEC10];
  }

  v3 = v2;

  return v2;
}

- (id)capacityData
{
  _diskUsage = [(MTEnvironmentDeviceDelegate *)self _diskUsage];
  v3 = [_diskUsage thenWithBlock:&__block_literal_global_44];

  return v3;
}

id __43__MTEnvironmentDeviceDelegate_capacityData__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:*MEMORY[0x277D823B8]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v5 = v4;

  v6 = [MTPromise promiseWithResult:v5];

  return v6;
}

- (id)capacityDataAvailable
{
  _diskUsage = [(MTEnvironmentDeviceDelegate *)self _diskUsage];
  v3 = [_diskUsage thenWithBlock:&__block_literal_global_48];

  return v3;
}

id __52__MTEnvironmentDeviceDelegate_capacityDataAvailable__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:*MEMORY[0x277D823B0]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v5 = v4;

  v6 = [MTPromise promiseWithResult:v5];

  return v6;
}

- (id)capacityDisk
{
  _diskUsage = [(MTEnvironmentDeviceDelegate *)self _diskUsage];
  v3 = [_diskUsage thenWithBlock:&__block_literal_global_50];

  return v3;
}

id __43__MTEnvironmentDeviceDelegate_capacityDisk__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:*MEMORY[0x277D823D0]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v5 = v4;

  v6 = [MTPromise promiseWithResult:v5];

  return v6;
}

- (id)capacitySystem
{
  _diskUsage = [(MTEnvironmentDeviceDelegate *)self _diskUsage];
  v3 = [_diskUsage thenWithBlock:&__block_literal_global_52];

  return v3;
}

id __45__MTEnvironmentDeviceDelegate_capacitySystem__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:*MEMORY[0x277D823F0]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v5 = v4;

  v6 = [MTPromise promiseWithResult:v5];

  return v6;
}

- (id)capacitySystemAvailable
{
  _diskUsage = [(MTEnvironmentDeviceDelegate *)self _diskUsage];
  v3 = [_diskUsage thenWithBlock:&__block_literal_global_54];

  return v3;
}

id __54__MTEnvironmentDeviceDelegate_capacitySystemAvailable__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKey:*MEMORY[0x277D823E0]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB68] null];
  }

  v5 = v4;

  v6 = [MTPromise promiseWithResult:v5];

  return v6;
}

@end
@interface C2DeviceInfo
+ (BOOL)whitelistedForDisableAPWakeOnIdleConnections;
+ (id)processName;
+ (id)processUUID;
+ (id)processVersion;
+ (id)testName;
@end

@implementation C2DeviceInfo

+ (BOOL)whitelistedForDisableAPWakeOnIdleConnections
{
  if (entitlementsDict_onceToken != -1)
  {
    +[C2DeviceInfo whitelistedForDisableAPWakeOnIdleConnections];
  }

  v2 = [entitlementsDict_entitlementsDict objectForKeyedSubscript:@"application-identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 isEqual:@"com.apple.cloudd"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)processName
{
  v2 = processInfoDict();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBED38]];

  return v3;
}

+ (id)processVersion
{
  v2 = processInfoDict();
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBEC50]];

  return v3;
}

+ (id)processUUID
{
  if (C2MetricProcessUUID_onceToken != -1)
  {
    +[C2DeviceInfo processUUID];
  }

  v3 = C2MetricProcessUUID_processUUIDString;

  return v3;
}

+ (id)testName
{
  c2DefaultsDomain = [MEMORY[0x277CBEBD0] c2DefaultsDomain];
  v3 = [c2DefaultsDomain stringForKey:@"C2MetricsTestName"];

  return v3;
}

@end
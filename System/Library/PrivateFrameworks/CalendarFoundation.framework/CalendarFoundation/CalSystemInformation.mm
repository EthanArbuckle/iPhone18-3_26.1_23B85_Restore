@interface CalSystemInformation
+ (id)systemBuildVersion;
@end

@implementation CalSystemInformation

+ (id)systemBuildVersion
{
  if (systemBuildVersion_onceToken[0] != -1)
  {
    +[CalSystemInformation systemBuildVersion];
  }

  v3 = systemBuildVersion_buildVersion;

  return v3;
}

void __42__CalSystemInformation_systemBuildVersion__block_invoke()
{
  v0 = _CFCopyServerVersionDictionary();
  if (!v0)
  {
    v0 = _CFCopySystemVersionDictionary();
  }

  v3 = v0;
  v1 = [v0 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
  v2 = systemBuildVersion_buildVersion;
  systemBuildVersion_buildVersion = v1;
}

@end
@interface GenerateBuiltInAppInstallID
@end

@implementation GenerateBuiltInAppInstallID

void ___GenerateBuiltInAppInstallID_block_invoke()
{
  v4 = _CFCopySystemVersionDictionary();
  v0 = [v4 objectForKeyedSubscript:*MEMORY[0x1E695E1E8]];
  v1 = [v4 objectForKeyedSubscript:@"ReleaseType"];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", v0, v1];
  v3 = _GenerateBuiltInAppInstallID_osVersion;
  _GenerateBuiltInAppInstallID_osVersion = v2;
}

@end
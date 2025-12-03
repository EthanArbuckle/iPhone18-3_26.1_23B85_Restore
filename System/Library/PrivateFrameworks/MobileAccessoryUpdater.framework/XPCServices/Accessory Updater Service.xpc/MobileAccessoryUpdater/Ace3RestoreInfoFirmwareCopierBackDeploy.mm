@interface Ace3RestoreInfoFirmwareCopierBackDeploy
- (id)firmwareKeyFromBuildIdentityDict:(id)dict deviceInfo:(id)info;
@end

@implementation Ace3RestoreInfoFirmwareCopierBackDeploy

- (id)firmwareKeyFromBuildIdentityDict:(id)dict deviceInfo:(id)info
{
  dictCopy = dict;
  infoCopy = info;
  [(Ace3SoCRestoreInfoHelperBackDeploy *)self verboseLog:@"%s", "[Ace3RestoreInfoFirmwareCopierBackDeploy firmwareKeyFromBuildIdentityDict:deviceInfo:]"];
  if (infoCopy)
  {
    v8 = [infoCopy objectForKeyedSubscript:@"ManifestPrefix"];
    v9 = [dictCopy keyWithPrefix:v8];
  }

  else
  {
    [(Ace3SoCRestoreInfoHelperBackDeploy *)self log:@"Error: Could not find device info dictionary"];
    v9 = 0;
  }

  return v9;
}

@end
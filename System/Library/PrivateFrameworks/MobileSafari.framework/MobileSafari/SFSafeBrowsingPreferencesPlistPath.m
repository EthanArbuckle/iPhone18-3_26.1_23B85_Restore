@interface SFSafeBrowsingPreferencesPlistPath
@end

@implementation SFSafeBrowsingPreferencesPlistPath

void ___SFSafeBrowsingPreferencesPlistPath_block_invoke()
{
  v2 = CPSharedResourcesDirectory();
  v0 = [v2 stringByAppendingPathComponent:@"Library/Preferences/com.apple.Safari.SafeBrowsing.plist"];
  v1 = _SFSafeBrowsingPreferencesPlistPath::safeBrowsingPreferencesPlistPath;
  _SFSafeBrowsingPreferencesPlistPath::safeBrowsingPreferencesPlistPath = v0;
}

@end
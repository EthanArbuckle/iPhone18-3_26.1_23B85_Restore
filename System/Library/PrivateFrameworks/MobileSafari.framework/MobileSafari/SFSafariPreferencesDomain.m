@interface SFSafariPreferencesDomain
@end

@implementation SFSafariPreferencesDomain

void ___SFSafariPreferencesDomain_block_invoke()
{
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v0 = [v7 safari_currentProcessIsContainerized];

  if (v0)
  {
    v1 = *MEMORY[0x1E69C8DA8];
    v2 = _SFSafariPreferencesDomain::domain;
    _SFSafariPreferencesDomain::domain = v1;
  }

  else
  {
    v8 = _SFSafariContainerPath();
    if (v8)
    {
      v3 = _SFSafariContainerPath();
      v4 = [v3 stringByAppendingPathComponent:@"Library/Preferences/com.apple.mobilesafari"];
      v5 = _SFSafariPreferencesDomain::domain;
      _SFSafariPreferencesDomain::domain = v4;
    }

    else
    {
      v6 = *MEMORY[0x1E69C8DA8];
      v3 = _SFSafariPreferencesDomain::domain;
      _SFSafariPreferencesDomain::domain = v6;
    }

    v2 = v8;
  }
}

@end
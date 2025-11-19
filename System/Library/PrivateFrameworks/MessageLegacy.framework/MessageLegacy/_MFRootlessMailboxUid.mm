@interface _MFRootlessMailboxUid
- (id)displayName;
- (id)tildeAbbreviatedPath;
@end

@implementation _MFRootlessMailboxUid

- (id)displayName
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [(MFMailboxUid *)self name];

  return [v3 displayNameAtPath:v4];
}

- (id)tildeAbbreviatedPath
{
  v2 = [(MFMailboxUid *)self name];

  return [v2 mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
}

@end
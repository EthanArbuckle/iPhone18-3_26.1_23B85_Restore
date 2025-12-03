@interface _MFRootlessMailboxUid
- (id)displayName;
- (id)tildeAbbreviatedPath;
@end

@implementation _MFRootlessMailboxUid

- (id)displayName
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  name = [(MFMailboxUid *)self name];

  return [defaultManager displayNameAtPath:name];
}

- (id)tildeAbbreviatedPath
{
  name = [(MFMailboxUid *)self name];

  return [name mf_stringByReallyAbbreviatingSharedResourcesDirectoryWithTildeInPath];
}

@end
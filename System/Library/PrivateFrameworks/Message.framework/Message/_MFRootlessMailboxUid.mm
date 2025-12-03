@interface _MFRootlessMailboxUid
- (id)displayName;
- (id)storeForMailboxUid:(id)uid;
@end

@implementation _MFRootlessMailboxUid

- (id)displayName
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  name = [(MFMailboxUid *)self name];
  v5 = [defaultManager displayNameAtPath:name];

  return v5;
}

- (id)storeForMailboxUid:(id)uid
{
  v3 = [MFLibraryStore storeWithMailbox:uid];

  return v3;
}

@end
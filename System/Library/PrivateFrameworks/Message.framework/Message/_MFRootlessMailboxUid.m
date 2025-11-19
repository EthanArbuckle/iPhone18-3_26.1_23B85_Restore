@interface _MFRootlessMailboxUid
- (id)displayName;
- (id)storeForMailboxUid:(id)a3;
@end

@implementation _MFRootlessMailboxUid

- (id)displayName
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(MFMailboxUid *)self name];
  v5 = [v3 displayNameAtPath:v4];

  return v5;
}

- (id)storeForMailboxUid:(id)a3
{
  v3 = [MFLibraryStore storeWithMailbox:a3];

  return v3;
}

@end
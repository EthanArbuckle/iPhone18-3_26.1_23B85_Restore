@interface ECExchangeAccount
- (NSString)folderHierarchySyncState;
- (NSString)inboxMailboxName;
- (NSString)journalMailboxName;
@end

@implementation ECExchangeAccount

- (NSString)inboxMailboxName
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"InboxMailboxName"];

  return v3;
}

- (NSString)journalMailboxName
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"JournalMailboxName"];

  return v3;
}

- (NSString)folderHierarchySyncState
{
  v2 = [(ECAccount *)self dataclassProperties];
  v3 = [v2 objectForKeyedSubscript:@"FolderHierarchySyncState"];

  return v3;
}

@end
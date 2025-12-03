@interface ECExchangeAccount
- (NSString)folderHierarchySyncState;
- (NSString)inboxMailboxName;
- (NSString)journalMailboxName;
@end

@implementation ECExchangeAccount

- (NSString)inboxMailboxName
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"InboxMailboxName"];

  return v3;
}

- (NSString)journalMailboxName
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"JournalMailboxName"];

  return v3;
}

- (NSString)folderHierarchySyncState
{
  dataclassProperties = [(ECAccount *)self dataclassProperties];
  v3 = [dataclassProperties objectForKeyedSubscript:@"FolderHierarchySyncState"];

  return v3;
}

@end
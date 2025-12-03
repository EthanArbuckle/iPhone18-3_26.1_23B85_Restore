@interface MFMailMessageLibraryPopulateSendersTableMigrationStep
+ (int)runWithConnection:(id)connection;
@end

@implementation MFMailMessageLibraryPopulateSendersTableMigrationStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = +[MailAccount mailAccounts];
  v5 = [v4 ef_compactMap:&__block_literal_global_42];

  v6 = objc_alloc_init(MEMORY[0x1E695CE18]);
  v7 = [MEMORY[0x1E699B628] runWithConnection:connectionCopy sentMailboxURLs:v5 contactStore:v6];

  return v7 ^ 1;
}

id __75__MFMailMessageLibraryPopulateSendersTableMigrationStep_runWithConnection___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 mailboxUidOfType:4 createIfNeeded:0];
  v3 = [v2 URL];

  return v3;
}

@end
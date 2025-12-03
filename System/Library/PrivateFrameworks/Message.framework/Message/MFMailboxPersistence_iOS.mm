@interface MFMailboxPersistence_iOS
+ (OS_dispatch_queue)mailboxCacheQueue;
- (BOOL)createMailbox:(id)mailbox parentMailboxID:(id)d;
- (BOOL)deleteMailbox:(id)mailbox;
- (BOOL)moveMailbox:(id)mailbox newParentMailboxID:(id)d;
- (BOOL)renameMailbox:(id)mailbox newName:(id)name;
- (EDMailboxRowID_s)insertDatabaseRowForMailboxURL:(id)l;
- (MFMailMessageLibrary)library;
- (MFMailboxPersistence_iOS)initWithMailboxProvider:(id)provider database:(id)database library:(id)library;
- (id)frecentMailboxes;
- (id)mailboxDatabaseIDsForMailboxObjectIDs:(id)ds createIfNecessary:(BOOL)necessary;
- (id)mailboxDatabaseIDsForMailboxURLStrings:(id)strings;
- (id)mailboxURLForMailboxDatabaseID:(EDMailboxRowID_s)d;
- (void)recordFrecencyEventWithMailboxesWithIDs:(id)ds;
- (void)serverCountsForMailboxScope:(id)scope block:(id)block;
- (void)testRecordFrecencyEventsForAllMailboxes;
- (void)testResetFrecencyForAllMailboxes;
@end

@implementation MFMailboxPersistence_iOS

- (MFMailMessageLibrary)library
{
  WeakRetained = objc_loadWeakRetained(&self->_library);

  return WeakRetained;
}

- (MFMailboxPersistence_iOS)initWithMailboxProvider:(id)provider database:(id)database library:(id)library
{
  providerCopy = provider;
  databaseCopy = database;
  libraryCopy = library;
  persistence = [libraryCopy persistence];
  hookRegistry = [persistence hookRegistry];
  v15.receiver = self;
  v15.super_class = MFMailboxPersistence_iOS;
  v13 = [(EDMailboxPersistence *)&v15 initWithMailboxProvider:providerCopy database:databaseCopy hookRegistry:hookRegistry];

  if (v13)
  {
    objc_storeWeak(&v13->_library, libraryCopy);
  }

  return v13;
}

+ (OS_dispatch_queue)mailboxCacheQueue
{
  if (mailboxCacheQueue_onceToken != -1)
  {
    +[MFMailboxPersistence_iOS mailboxCacheQueue];
  }

  v3 = mailboxCacheQueue_queue;

  return v3;
}

- (id)mailboxDatabaseIDsForMailboxObjectIDs:(id)ds createIfNecessary:(BOOL)necessary
{
  dsCopy = ds;
  library = [(MFMailboxPersistence_iOS *)self library];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__MFMailboxPersistence_iOS_mailboxDatabaseIDsForMailboxObjectIDs_createIfNecessary___block_invoke;
  v11[3] = &unk_1E7AA61C8;
  necessaryCopy = necessary;
  v12 = library;
  selfCopy = self;
  v8 = library;
  v9 = [dsCopy ef_compactMap:v11];

  return v9;
}

- (id)mailboxDatabaseIDsForMailboxURLStrings:(id)strings
{
  stringsCopy = strings;
  if ([stringsCopy count])
  {
    allObjects = [stringsCopy allObjects];
    ef_longestCommonPrefix = [allObjects ef_longestCommonPrefix];

    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__14;
    v18 = __Block_byref_object_dispose__14;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    database = [(EDMailboxPersistence *)self database];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailboxPersistence_iOS mailboxDatabaseIDsForMailboxURLStrings:]"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__MFMailboxPersistence_iOS_mailboxDatabaseIDsForMailboxURLStrings___block_invoke;
    v11[3] = &unk_1E7AA3528;
    v11[4] = ef_longestCommonPrefix;
    v12 = stringsCopy;
    v13 = &v14;
    [database __performReadWithCaller:v8 usingBlock:v11];

    v9 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  return v9;
}

- (EDMailboxRowID_s)insertDatabaseRowForMailboxURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(MEMORY[0x1E699B608]);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2810000000;
  v19 = "";
  v20 = 0;
  database = [(EDMailboxPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailboxPersistence_iOS insertDatabaseRowForMailboxURL:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__MFMailboxPersistence_iOS_insertDatabaseRowForMailboxURL___block_invoke;
  v12[3] = &unk_1E7AA3528;
  v8 = v5;
  v13 = v8;
  v9 = lCopy;
  v14 = v9;
  v15 = &v16;
  [database __performWriteWithCaller:v7 usingBlock:v12];

  v10.var0 = v17[4];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)mailboxURLForMailboxDatabaseID:(EDMailboxRowID_s)d
{
  if (d.var0)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__14;
    v13 = __Block_byref_object_dispose__14;
    v14 = 0;
    database = [(EDMailboxPersistence *)self database];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailboxPersistence_iOS mailboxURLForMailboxDatabaseID:]"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__MFMailboxPersistence_iOS_mailboxURLForMailboxDatabaseID___block_invoke;
    v8[3] = &unk_1E7AA3E00;
    v8[4] = &v9;
    v8[5] = d.var0;
    [database __performReadWithCaller:v5 usingBlock:v8];

    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)createMailbox:(id)mailbox parentMailboxID:(id)d
{
  mailboxCopy = mailbox;
  dCopy = d;
  mailboxProvider = [(EDMailboxPersistence *)self mailboxProvider];
  v9 = [mailboxProvider legacyMailboxForObjectID:dCopy];

  account = [v9 account];
  v11 = [account newMailboxWithParent:v9 name:mailboxCopy];
  if (v11)
  {
    [account saveState];
  }

  return v11 != 0;
}

- (BOOL)deleteMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  mailboxProvider = [(EDMailboxPersistence *)self mailboxProvider];
  v6 = [mailboxProvider legacyMailboxForObjectID:mailboxCopy];

  account = [v6 account];
  v8 = [account deleteMailbox:v6];

  return v8;
}

- (BOOL)moveMailbox:(id)mailbox newParentMailboxID:(id)d
{
  mailboxCopy = mailbox;
  dCopy = d;
  mailboxProvider = [(EDMailboxPersistence *)self mailboxProvider];
  v9 = [mailboxProvider legacyMailboxForObjectID:mailboxCopy];

  mailboxProvider2 = [(EDMailboxPersistence *)self mailboxProvider];
  v11 = [mailboxProvider2 legacyMailboxForObjectID:dCopy];

  account = [v11 account];
  LOBYTE(mailboxProvider2) = [account moveMailbox:v9 intoParent:v11];

  return mailboxProvider2;
}

- (BOOL)renameMailbox:(id)mailbox newName:(id)name
{
  mailboxCopy = mailbox;
  nameCopy = name;
  mailboxProvider = [(EDMailboxPersistence *)self mailboxProvider];
  v9 = [mailboxProvider legacyMailboxForObjectID:mailboxCopy];

  account = [v9 account];
  LOBYTE(mailboxProvider) = [account renameMailbox:v9 newName:nameCopy];

  return mailboxProvider;
}

- (id)frecentMailboxes
{
  library = [(MFMailboxPersistence_iOS *)self library];
  mailboxFrecencyController = [library mailboxFrecencyController];
  frecentMailboxes = [mailboxFrecencyController frecentMailboxes];

  return frecentMailboxes;
}

- (void)recordFrecencyEventWithMailboxesWithIDs:(id)ds
{
  dsCopy = ds;
  library = [(MFMailboxPersistence_iOS *)self library];
  mailboxFrecencyController = [library mailboxFrecencyController];
  [mailboxFrecencyController recordEventWithMailboxIDs:dsCopy];
}

- (void)testRecordFrecencyEventsForAllMailboxes
{
  library = [(MFMailboxPersistence_iOS *)self library];
  mailboxFrecencyController = [library mailboxFrecencyController];
  [mailboxFrecencyController testRecordFrecencyEventsForAllMailboxes];
}

- (void)testResetFrecencyForAllMailboxes
{
  library = [(MFMailboxPersistence_iOS *)self library];
  mailboxFrecencyController = [library mailboxFrecencyController];
  [mailboxFrecencyController testResetFrecencyForAllMailboxes];
}

- (void)serverCountsForMailboxScope:(id)scope block:(id)block
{
  scopeCopy = scope;
  blockCopy = block;
  allMailboxesScope = [MEMORY[0x1E699AD28] allMailboxesScope];

  if (allMailboxesScope == scopeCopy)
  {
    v13 = 0;
LABEL_9:
    database = [(EDMailboxPersistence *)self database];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailboxPersistence_iOS serverCountsForMailboxScope:block:]"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__MFMailboxPersistence_iOS_serverCountsForMailboxScope_block___block_invoke;
    v17[3] = &unk_1E7AA6210;
    v16 = v13;
    v18 = v16;
    v19 = blockCopy;
    [database __performReadWithCaller:v15 usingBlock:v17];

    goto LABEL_10;
  }

  v20 = 0;
  v9 = [scopeCopy allMailboxObjectIDsWithMailboxTypeResolver:self forExclusion:&v20];
  v10 = [(MFMailboxPersistence_iOS *)self mailboxDatabaseIDsForMailboxObjectIDs:v9 createIfNecessary:0];
  if ([v10 count])
  {
    v11 = [MEMORY[0x1E699B8C8] column:*MEMORY[0x1E699B768]];
    v12 = v11;
    if (v20 == 1)
    {
      [v11 notIn:v10];
    }

    else
    {
      [v11 in:v10];
    }
    v13 = ;

    goto LABEL_9;
  }

LABEL_10:
}

@end
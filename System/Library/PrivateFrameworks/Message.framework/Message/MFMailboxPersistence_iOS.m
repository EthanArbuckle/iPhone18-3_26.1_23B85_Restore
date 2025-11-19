@interface MFMailboxPersistence_iOS
+ (OS_dispatch_queue)mailboxCacheQueue;
- (BOOL)createMailbox:(id)a3 parentMailboxID:(id)a4;
- (BOOL)deleteMailbox:(id)a3;
- (BOOL)moveMailbox:(id)a3 newParentMailboxID:(id)a4;
- (BOOL)renameMailbox:(id)a3 newName:(id)a4;
- (EDMailboxRowID_s)insertDatabaseRowForMailboxURL:(id)a3;
- (MFMailMessageLibrary)library;
- (MFMailboxPersistence_iOS)initWithMailboxProvider:(id)a3 database:(id)a4 library:(id)a5;
- (id)frecentMailboxes;
- (id)mailboxDatabaseIDsForMailboxObjectIDs:(id)a3 createIfNecessary:(BOOL)a4;
- (id)mailboxDatabaseIDsForMailboxURLStrings:(id)a3;
- (id)mailboxURLForMailboxDatabaseID:(EDMailboxRowID_s)a3;
- (void)recordFrecencyEventWithMailboxesWithIDs:(id)a3;
- (void)serverCountsForMailboxScope:(id)a3 block:(id)a4;
- (void)testRecordFrecencyEventsForAllMailboxes;
- (void)testResetFrecencyForAllMailboxes;
@end

@implementation MFMailboxPersistence_iOS

- (MFMailMessageLibrary)library
{
  WeakRetained = objc_loadWeakRetained(&self->_library);

  return WeakRetained;
}

- (MFMailboxPersistence_iOS)initWithMailboxProvider:(id)a3 database:(id)a4 library:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 persistence];
  v12 = [v11 hookRegistry];
  v15.receiver = self;
  v15.super_class = MFMailboxPersistence_iOS;
  v13 = [(EDMailboxPersistence *)&v15 initWithMailboxProvider:v8 database:v9 hookRegistry:v12];

  if (v13)
  {
    objc_storeWeak(&v13->_library, v10);
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

- (id)mailboxDatabaseIDsForMailboxObjectIDs:(id)a3 createIfNecessary:(BOOL)a4
{
  v6 = a3;
  v7 = [(MFMailboxPersistence_iOS *)self library];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__MFMailboxPersistence_iOS_mailboxDatabaseIDsForMailboxObjectIDs_createIfNecessary___block_invoke;
  v11[3] = &unk_1E7AA61C8;
  v14 = a4;
  v12 = v7;
  v13 = self;
  v8 = v7;
  v9 = [v6 ef_compactMap:v11];

  return v9;
}

- (id)mailboxDatabaseIDsForMailboxURLStrings:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 allObjects];
    v6 = [v5 ef_longestCommonPrefix];

    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__14;
    v18 = __Block_byref_object_dispose__14;
    v19 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [(EDMailboxPersistence *)self database];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailboxPersistence_iOS mailboxDatabaseIDsForMailboxURLStrings:]"];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__MFMailboxPersistence_iOS_mailboxDatabaseIDsForMailboxURLStrings___block_invoke;
    v11[3] = &unk_1E7AA3528;
    v11[4] = v6;
    v12 = v4;
    v13 = &v14;
    [v7 __performReadWithCaller:v8 usingBlock:v11];

    v9 = v15[5];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v9 = MEMORY[0x1E695E0F8];
  }

  return v9;
}

- (EDMailboxRowID_s)insertDatabaseRowForMailboxURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E699B608]);
  v16 = 0;
  v17 = &v16;
  v18 = 0x2810000000;
  v19 = "";
  v20 = 0;
  v6 = [(EDMailboxPersistence *)self database];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailboxPersistence_iOS insertDatabaseRowForMailboxURL:]"];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__MFMailboxPersistence_iOS_insertDatabaseRowForMailboxURL___block_invoke;
  v12[3] = &unk_1E7AA3528;
  v8 = v5;
  v13 = v8;
  v9 = v4;
  v14 = v9;
  v15 = &v16;
  [v6 __performWriteWithCaller:v7 usingBlock:v12];

  v10.var0 = v17[4];
  _Block_object_dispose(&v16, 8);

  return v10;
}

- (id)mailboxURLForMailboxDatabaseID:(EDMailboxRowID_s)a3
{
  if (a3.var0)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__14;
    v13 = __Block_byref_object_dispose__14;
    v14 = 0;
    v4 = [(EDMailboxPersistence *)self database];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailboxPersistence_iOS mailboxURLForMailboxDatabaseID:]"];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__MFMailboxPersistence_iOS_mailboxURLForMailboxDatabaseID___block_invoke;
    v8[3] = &unk_1E7AA3E00;
    v8[4] = &v9;
    v8[5] = a3.var0;
    [v4 __performReadWithCaller:v5 usingBlock:v8];

    v6 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)createMailbox:(id)a3 parentMailboxID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDMailboxPersistence *)self mailboxProvider];
  v9 = [v8 legacyMailboxForObjectID:v7];

  v10 = [v9 account];
  v11 = [v10 newMailboxWithParent:v9 name:v6];
  if (v11)
  {
    [v10 saveState];
  }

  return v11 != 0;
}

- (BOOL)deleteMailbox:(id)a3
{
  v4 = a3;
  v5 = [(EDMailboxPersistence *)self mailboxProvider];
  v6 = [v5 legacyMailboxForObjectID:v4];

  v7 = [v6 account];
  v8 = [v7 deleteMailbox:v6];

  return v8;
}

- (BOOL)moveMailbox:(id)a3 newParentMailboxID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDMailboxPersistence *)self mailboxProvider];
  v9 = [v8 legacyMailboxForObjectID:v6];

  v10 = [(EDMailboxPersistence *)self mailboxProvider];
  v11 = [v10 legacyMailboxForObjectID:v7];

  v12 = [v11 account];
  LOBYTE(v10) = [v12 moveMailbox:v9 intoParent:v11];

  return v10;
}

- (BOOL)renameMailbox:(id)a3 newName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDMailboxPersistence *)self mailboxProvider];
  v9 = [v8 legacyMailboxForObjectID:v6];

  v10 = [v9 account];
  LOBYTE(v8) = [v10 renameMailbox:v9 newName:v7];

  return v8;
}

- (id)frecentMailboxes
{
  v2 = [(MFMailboxPersistence_iOS *)self library];
  v3 = [v2 mailboxFrecencyController];
  v4 = [v3 frecentMailboxes];

  return v4;
}

- (void)recordFrecencyEventWithMailboxesWithIDs:(id)a3
{
  v6 = a3;
  v4 = [(MFMailboxPersistence_iOS *)self library];
  v5 = [v4 mailboxFrecencyController];
  [v5 recordEventWithMailboxIDs:v6];
}

- (void)testRecordFrecencyEventsForAllMailboxes
{
  v3 = [(MFMailboxPersistence_iOS *)self library];
  v2 = [v3 mailboxFrecencyController];
  [v2 testRecordFrecencyEventsForAllMailboxes];
}

- (void)testResetFrecencyForAllMailboxes
{
  v3 = [(MFMailboxPersistence_iOS *)self library];
  v2 = [v3 mailboxFrecencyController];
  [v2 testResetFrecencyForAllMailboxes];
}

- (void)serverCountsForMailboxScope:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E699AD28] allMailboxesScope];

  if (v8 == v6)
  {
    v13 = 0;
LABEL_9:
    v14 = [(EDMailboxPersistence *)self database];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MFMailboxPersistence_iOS serverCountsForMailboxScope:block:]"];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__MFMailboxPersistence_iOS_serverCountsForMailboxScope_block___block_invoke;
    v17[3] = &unk_1E7AA6210;
    v16 = v13;
    v18 = v16;
    v19 = v7;
    [v14 __performReadWithCaller:v15 usingBlock:v17];

    goto LABEL_10;
  }

  v20 = 0;
  v9 = [v6 allMailboxObjectIDsWithMailboxTypeResolver:self forExclusion:&v20];
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
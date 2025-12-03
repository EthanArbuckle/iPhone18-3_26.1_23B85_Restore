@interface MFServerMessagesIndexer
- (MFAccountsProvider)mailAccountsProvider;
- (MFServerMessagesIndexer)initWithAccountsProvider:(id)provider;
- (OS_dispatch_queue)searchRequestQueue;
- (void)excludeIndexedUIDsInMailbox:(id)mailbox fromUIDs:(id)ds completion:(id)completion;
- (void)getIndexingDiagnosticsInMailbox:(id)mailbox beforeUID:(id)d limit:(int64_t)limit completion:(id)completion;
- (void)getIndexingStatisticsWithCompletion:(id)completion;
- (void)lookUpIdentifier:(id)identifier completion:(id)completion;
- (void)performSearchQuery:(id)query completion:(id)completion;
- (void)registerSystemTasks;
@end

@implementation MFServerMessagesIndexer

- (MFAccountsProvider)mailAccountsProvider
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v5 = sub_1B09038F0();
  MEMORY[0x1E69E5920](self);

  return v5;
}

- (OS_dispatch_queue)searchRequestQueue
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  v5 = sub_1B09039E4();
  MEMORY[0x1E69E5920](self);

  return v5;
}

- (MFServerMessagesIndexer)initWithAccountsProvider:(id)provider
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  return sub_1B0903D5C(provider);
}

- (void)registerSystemTasks
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B0904340();
  MEMORY[0x1E69E5920](self);
}

- (void)performSearchQuery:(id)query completion:(id)completion
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](query);
  v6 = _Block_copy(completion);
  MEMORY[0x1E69E5928](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_1B0904C1C(query, sub_1B091126C, v7);

  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](query);
}

- (void)lookUpIdentifier:(id)identifier completion:(id)completion
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](identifier);
  v7 = _Block_copy(completion);
  MEMORY[0x1E69E5928](self);
  v8 = sub_1B0E44AD8();
  v10 = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  sub_1B0906C1C(v8, v10, sub_1B0911284, v9);

  MEMORY[0x1E69E5920](identifier);
  MEMORY[0x1E69E5920](self);
}

- (void)getIndexingStatisticsWithCompletion:(id)completion
{
  swift_getObjectType();
  v5 = _Block_copy(completion);
  MEMORY[0x1E69E5928](self);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_1B0907698(sub_1B09117E4, v6);

  MEMORY[0x1E69E5920](self);
}

- (void)excludeIndexedUIDsInMailbox:(id)mailbox fromUIDs:(id)ds completion:(id)completion
{
  selfCopy = self;
  mailboxCopy = mailbox;
  dsCopy = ds;
  completionCopy = completion;
  v15 = sub_1B09119B4;
  swift_getObjectType();
  v20 = sub_1B0E42E68();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v12 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](mailboxCopy);
  v19 = &v12 - v12;
  MEMORY[0x1E69E5928](v6);
  MEMORY[0x1E69E5928](dsCopy);
  v14 = _Block_copy(completionCopy);
  MEMORY[0x1E69E5928](self);
  sub_1B0E42DE8();
  v7 = swift_allocObject();
  v8 = v15;
  v9 = dsCopy;
  v10 = v7;
  v11 = v19;
  v16 = v10;
  *(v10 + 16) = v14;
  sub_1B09090D4(v11, v9, v8, v10);

  (*(v17 + 8))(v19, v20);
  MEMORY[0x1E69E5920](mailboxCopy);
  MEMORY[0x1E69E5920](selfCopy);
  MEMORY[0x1E69E5920](dsCopy);
}

- (void)getIndexingDiagnosticsInMailbox:(id)mailbox beforeUID:(id)d limit:(int64_t)limit completion:(id)completion
{
  selfCopy = self;
  mailboxCopy = mailbox;
  dCopy = d;
  limitCopy = limit;
  completionCopy = completion;
  v19 = sub_1B09119D4;
  swift_getObjectType();
  v24 = sub_1B0E42E68();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v15 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](mailboxCopy);
  v23 = &v14 - v15;
  MEMORY[0x1E69E5928](v7);
  MEMORY[0x1E69E5928](dCopy);
  v17 = _Block_copy(completionCopy);
  MEMORY[0x1E69E5928](self);
  sub_1B0E42DE8();
  v8 = swift_allocObject();
  v9 = limitCopy;
  v10 = v19;
  v11 = dCopy;
  v12 = v8;
  v13 = v23;
  v20 = v12;
  *(v12 + 16) = v17;
  sub_1B090A68C(v13, v11, v9, v10, v12);

  (*(v21 + 8))(v23, v24);
  MEMORY[0x1E69E5920](mailboxCopy);
  MEMORY[0x1E69E5920](selfCopy);
  MEMORY[0x1E69E5920](dCopy);
}

@end
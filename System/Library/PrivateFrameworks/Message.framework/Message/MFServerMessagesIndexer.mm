@interface MFServerMessagesIndexer
- (MFAccountsProvider)mailAccountsProvider;
- (MFServerMessagesIndexer)initWithAccountsProvider:(id)a3;
- (OS_dispatch_queue)searchRequestQueue;
- (void)excludeIndexedUIDsInMailbox:(id)a3 fromUIDs:(id)a4 completion:(id)a5;
- (void)getIndexingDiagnosticsInMailbox:(id)a3 beforeUID:(id)a4 limit:(int64_t)a5 completion:(id)a6;
- (void)getIndexingStatisticsWithCompletion:(id)a3;
- (void)lookUpIdentifier:(id)a3 completion:(id)a4;
- (void)performSearchQuery:(id)a3 completion:(id)a4;
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

- (MFServerMessagesIndexer)initWithAccountsProvider:(id)a3
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  return sub_1B0903D5C(a3);
}

- (void)registerSystemTasks
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](self);
  sub_1B0904340();
  MEMORY[0x1E69E5920](self);
}

- (void)performSearchQuery:(id)a3 completion:(id)a4
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  v6 = _Block_copy(a4);
  MEMORY[0x1E69E5928](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sub_1B0904C1C(a3, sub_1B091126C, v7);

  MEMORY[0x1E69E5920](self);
  MEMORY[0x1E69E5920](a3);
}

- (void)lookUpIdentifier:(id)a3 completion:(id)a4
{
  swift_getObjectType();
  MEMORY[0x1E69E5928](a3);
  v7 = _Block_copy(a4);
  MEMORY[0x1E69E5928](self);
  v8 = sub_1B0E44AD8();
  v10 = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  sub_1B0906C1C(v8, v10, sub_1B0911284, v9);

  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](self);
}

- (void)getIndexingStatisticsWithCompletion:(id)a3
{
  swift_getObjectType();
  v5 = _Block_copy(a3);
  MEMORY[0x1E69E5928](self);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  sub_1B0907698(sub_1B09117E4, v6);

  MEMORY[0x1E69E5920](self);
}

- (void)excludeIndexedUIDsInMailbox:(id)a3 fromUIDs:(id)a4 completion:(id)a5
{
  v22 = self;
  v21 = a3;
  v23 = a4;
  v13 = a5;
  v15 = sub_1B09119B4;
  swift_getObjectType();
  v20 = sub_1B0E42E68();
  v17 = *(v20 - 8);
  v18 = v20 - 8;
  v12 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v19 = &v12 - v12;
  MEMORY[0x1E69E5928](v6);
  MEMORY[0x1E69E5928](v23);
  v14 = _Block_copy(v13);
  MEMORY[0x1E69E5928](self);
  sub_1B0E42DE8();
  v7 = swift_allocObject();
  v8 = v15;
  v9 = v23;
  v10 = v7;
  v11 = v19;
  v16 = v10;
  *(v10 + 16) = v14;
  sub_1B09090D4(v11, v9, v8, v10);

  (*(v17 + 8))(v19, v20);
  MEMORY[0x1E69E5920](v21);
  MEMORY[0x1E69E5920](v22);
  MEMORY[0x1E69E5920](v23);
}

- (void)getIndexingDiagnosticsInMailbox:(id)a3 beforeUID:(id)a4 limit:(int64_t)a5 completion:(id)a6
{
  v26 = self;
  v25 = a3;
  v27 = a4;
  v18 = a5;
  v16 = a6;
  v19 = sub_1B09119D4;
  swift_getObjectType();
  v24 = sub_1B0E42E68();
  v21 = *(v24 - 8);
  v22 = v24 - 8;
  v15 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v23 = &v14 - v15;
  MEMORY[0x1E69E5928](v7);
  MEMORY[0x1E69E5928](v27);
  v17 = _Block_copy(v16);
  MEMORY[0x1E69E5928](self);
  sub_1B0E42DE8();
  v8 = swift_allocObject();
  v9 = v18;
  v10 = v19;
  v11 = v27;
  v12 = v8;
  v13 = v23;
  v20 = v12;
  *(v12 + 16) = v17;
  sub_1B090A68C(v13, v11, v9, v10, v12);

  (*(v21 + 8))(v23, v24);
  MEMORY[0x1E69E5920](v25);
  MEMORY[0x1E69E5920](v26);
  MEMORY[0x1E69E5920](v27);
}

@end
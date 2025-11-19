@interface _KSTRClient
- (_KSTRClient)initWithOwner:(id)a3;
- (_KSTRClient)initWithOwner:(id)a3 forConnection:(id)a4;
- (void)addEntries:(id)a3 removeEntries:(id)a4 withReply:(id)a5;
- (void)cancelPendingUpdatesWithReply:(id)a3;
- (void)queryTextReplacementEntriesWithReply:(id)a3;
- (void)queryTextReplacementsWithPredicate:(id)a3 reply:(id)a4;
- (void)removeAllEntries;
- (void)requestSyncWithReply:(id)a3;
@end

@implementation _KSTRClient

- (_KSTRClient)initWithOwner:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _KSTRClient;
  v5 = [(_KSTRClient *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owner, v4);
    v6->_hasReadAccess = 1;
  }

  return v6;
}

- (_KSTRClient)initWithOwner:(id)a3 forConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _KSTRClient;
  v8 = [(_KSTRClient *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_owner, v6);
    v10 = [v7 valueForEntitlement:kTextReplacementEntitlement];
    v9->_hasReadAccess = [v10 BOOLValue];
  }

  return v9;
}

- (void)addEntries:(id)a3 removeEntries:(id)a4 withReply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50___KSTRClient_addEntries_removeEntries_withReply___block_invoke;
  v13[3] = &unk_2797F6F98;
  v14 = v8;
  v12 = v8;
  [WeakRetained addEntries:v10 removeEntries:v9 forClient:self withCompletionHandler:v13];
}

- (void)removeAllEntries
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  [WeakRetained removeAllEntries];
}

- (void)requestSyncWithReply:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  [WeakRetained requestSync:0 withCompletionBlock:v4];
}

- (void)cancelPendingUpdatesWithReply:(id)a3
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v5 = [WeakRetained _cancelPendingUpdateForClient:self];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"KSTextReplacementErrorDomain" code:10 userInfo:&unk_28679DAB0];
  }

  v7[2](v7, v5, v6);
}

- (void)queryTextReplacementEntriesWithReply:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(_KSTRClient *)self hasReadAccess])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__5;
    v14 = __Block_byref_object_dispose__5;
    v15 = os_transaction_create();
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52___KSTRClient_queryTextReplacementEntriesWithReply___block_invoke;
    v8[3] = &unk_2797F7580;
    v9 = v4;
    p_buf = &buf;
    [WeakRetained queryTextReplacementsWithCallback:v8];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v6 = KSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[_KSTRClient queryTextReplacementEntriesWithReply:]";
      _os_log_impl(&dword_2557E2000, v6, OS_LOG_TYPE_INFO, "%s  Client does not have read access", &buf, 0xCu);
    }

    (*(v4 + 2))(v4, MEMORY[0x277CBEBF8], 1);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)queryTextReplacementsWithPredicate:(id)a3 reply:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([(_KSTRClient *)self hasReadAccess])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__5;
    v17 = __Block_byref_object_dispose__5;
    v18 = os_transaction_create();
    WeakRetained = objc_loadWeakRetained(&self->_owner);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56___KSTRClient_queryTextReplacementsWithPredicate_reply___block_invoke;
    v11[3] = &unk_2797F7580;
    v12 = v7;
    p_buf = &buf;
    [WeakRetained queryTextReplacementsWithPredicate:v6 callback:v11];

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v9 = KSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[_KSTRClient queryTextReplacementsWithPredicate:reply:]";
      _os_log_impl(&dword_2557E2000, v9, OS_LOG_TYPE_INFO, "%s  Client does not have read access", &buf, 0xCu);
    }

    (*(v7 + 2))(v7, MEMORY[0x277CBEBF8], 1);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end
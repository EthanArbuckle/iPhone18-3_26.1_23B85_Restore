@interface _KSTRClient
- (_KSTRClient)initWithOwner:(id)owner;
- (_KSTRClient)initWithOwner:(id)owner forConnection:(id)connection;
- (void)addEntries:(id)entries removeEntries:(id)removeEntries withReply:(id)reply;
- (void)cancelPendingUpdatesWithReply:(id)reply;
- (void)queryTextReplacementEntriesWithReply:(id)reply;
- (void)queryTextReplacementsWithPredicate:(id)predicate reply:(id)reply;
- (void)removeAllEntries;
- (void)requestSyncWithReply:(id)reply;
@end

@implementation _KSTRClient

- (_KSTRClient)initWithOwner:(id)owner
{
  ownerCopy = owner;
  v8.receiver = self;
  v8.super_class = _KSTRClient;
  v5 = [(_KSTRClient *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_owner, ownerCopy);
    v6->_hasReadAccess = 1;
  }

  return v6;
}

- (_KSTRClient)initWithOwner:(id)owner forConnection:(id)connection
{
  ownerCopy = owner;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = _KSTRClient;
  v8 = [(_KSTRClient *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_owner, ownerCopy);
    v10 = [connectionCopy valueForEntitlement:kTextReplacementEntitlement];
    v9->_hasReadAccess = [v10 BOOLValue];
  }

  return v9;
}

- (void)addEntries:(id)entries removeEntries:(id)removeEntries withReply:(id)reply
{
  replyCopy = reply;
  removeEntriesCopy = removeEntries;
  entriesCopy = entries;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50___KSTRClient_addEntries_removeEntries_withReply___block_invoke;
  v13[3] = &unk_2797F6F98;
  v14 = replyCopy;
  v12 = replyCopy;
  [WeakRetained addEntries:entriesCopy removeEntries:removeEntriesCopy forClient:self withCompletionHandler:v13];
}

- (void)removeAllEntries
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  [WeakRetained removeAllEntries];
}

- (void)requestSyncWithReply:(id)reply
{
  replyCopy = reply;
  WeakRetained = objc_loadWeakRetained(&self->_owner);
  [WeakRetained requestSync:0 withCompletionBlock:replyCopy];
}

- (void)cancelPendingUpdatesWithReply:(id)reply
{
  replyCopy = reply;
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

  replyCopy[2](replyCopy, v5, v6);
}

- (void)queryTextReplacementEntriesWithReply:(id)reply
{
  v16 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
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
    v9 = replyCopy;
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

    (*(replyCopy + 2))(replyCopy, MEMORY[0x277CBEBF8], 1);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)queryTextReplacementsWithPredicate:(id)predicate reply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  replyCopy = reply;
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
    v12 = replyCopy;
    p_buf = &buf;
    [WeakRetained queryTextReplacementsWithPredicate:predicateCopy callback:v11];

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

    (*(replyCopy + 2))(replyCopy, MEMORY[0x277CBEBF8], 1);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end
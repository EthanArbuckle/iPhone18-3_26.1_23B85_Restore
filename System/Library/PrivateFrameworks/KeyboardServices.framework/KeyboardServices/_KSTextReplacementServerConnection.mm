@interface _KSTextReplacementServerConnection
+ (id)serviceConnection;
- (_KSTextReplacementServerConnection)init;
- (id)textReplacementEntries;
- (void)addEntries:(id)entries removeEntries:(id)removeEntries withReply:(id)reply;
- (void)cancelPendingUpdatesWithReply:(id)reply;
- (void)dealloc;
- (void)queryTextReplacementEntriesWithReply:(id)reply;
- (void)queryTextReplacementsWithPredicate:(id)predicate reply:(id)reply;
- (void)removeAllEntries;
- (void)requestSyncWithReply:(id)reply;
@end

@implementation _KSTextReplacementServerConnection

- (_KSTextReplacementServerConnection)init
{
  v9.receiver = self;
  v9.super_class = _KSTextReplacementServerConnection;
  v2 = [(_KSTextReplacementServerConnection *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE80]);
    v4 = +[_KSUtilities machServiceNameTextReplacement];
    v5 = [v3 initWithMachServiceName:v4 options:4096];
    serviceConnection = v2->_serviceConnection;
    v2->_serviceConnection = v5;

    v7 = _KSTextReplacementServerInterface();
    [(NSXPCConnection *)v2->_serviceConnection setRemoteObjectInterface:v7];

    [(NSXPCConnection *)v2->_serviceConnection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_serviceConnection invalidate];
  v3.receiver = self;
  v3.super_class = _KSTextReplacementServerConnection;
  [(_KSTextReplacementServerConnection *)&v3 dealloc];
}

+ (id)serviceConnection
{
  v2 = objc_alloc_init(_KSTextReplacementServerConnection);

  return v2;
}

- (void)addEntries:(id)entries removeEntries:(id)removeEntries withReply:(id)reply
{
  replyCopy = reply;
  serviceConnection = self->_serviceConnection;
  removeEntriesCopy = removeEntries;
  entriesCopy = entries;
  remoteObjectProxy = [(NSXPCConnection *)serviceConnection remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73___KSTextReplacementServerConnection_addEntries_removeEntries_withReply___block_invoke;
  v14[3] = &unk_2797F6FC0;
  v15 = replyCopy;
  v13 = replyCopy;
  [remoteObjectProxy addEntries:entriesCopy removeEntries:removeEntriesCopy withReply:v14];
}

- (void)removeAllEntries
{
  remoteObjectProxy = [(NSXPCConnection *)self->_serviceConnection remoteObjectProxy];
  [remoteObjectProxy removeAllEntries];
}

- (void)requestSyncWithReply:(id)reply
{
  replyCopy = reply;
  remoteObjectProxy = [(NSXPCConnection *)self->_serviceConnection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___KSTextReplacementServerConnection_requestSyncWithReply___block_invoke;
  v7[3] = &unk_2797F6FE8;
  v8 = replyCopy;
  v6 = replyCopy;
  [remoteObjectProxy requestSyncWithReply:v7];
}

- (void)cancelPendingUpdatesWithReply:(id)reply
{
  replyCopy = reply;
  remoteObjectProxy = [(NSXPCConnection *)self->_serviceConnection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68___KSTextReplacementServerConnection_cancelPendingUpdatesWithReply___block_invoke;
  v7[3] = &unk_2797F6FC0;
  v8 = replyCopy;
  v6 = replyCopy;
  [remoteObjectProxy cancelPendingUpdatesWithReply:v7];
}

- (void)queryTextReplacementEntriesWithReply:(id)reply
{
  replyCopy = reply;
  remoteObjectProxy = [(NSXPCConnection *)self->_serviceConnection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75___KSTextReplacementServerConnection_queryTextReplacementEntriesWithReply___block_invoke;
  v7[3] = &unk_2797F7058;
  v8 = replyCopy;
  v6 = replyCopy;
  [remoteObjectProxy queryTextReplacementEntriesWithReply:v7];
}

- (void)queryTextReplacementsWithPredicate:(id)predicate reply:(id)reply
{
  replyCopy = reply;
  serviceConnection = self->_serviceConnection;
  predicateCopy = predicate;
  remoteObjectProxy = [(NSXPCConnection *)serviceConnection remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79___KSTextReplacementServerConnection_queryTextReplacementsWithPredicate_reply___block_invoke;
  v11[3] = &unk_2797F7058;
  v12 = replyCopy;
  v10 = replyCopy;
  [remoteObjectProxy queryTextReplacementsWithPredicate:predicateCopy reply:v11];
}

- (id)textReplacementEntries
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  array = [MEMORY[0x277CBEB18] array];
  serviceConnection = self->_serviceConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60___KSTextReplacementServerConnection_textReplacementEntries__block_invoke;
  v12[3] = &unk_2797F7338;
  v12[4] = &v19;
  v4 = [(NSXPCConnection *)serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  while (*(v9 + 24) == 1 && !v20[5])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60___KSTextReplacementServerConnection_textReplacementEntries__block_invoke_2;
    v7[3] = &unk_2797F7360;
    v7[4] = &v13;
    v7[5] = &v8;
    [v4 queryTextReplacementEntriesWithReply:v7];
  }

  v5 = v14[5];
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v19, 8);

  return v5;
}

@end
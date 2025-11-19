@interface _KSTextReplacementServerConnection
+ (id)serviceConnection;
- (_KSTextReplacementServerConnection)init;
- (id)textReplacementEntries;
- (void)addEntries:(id)a3 removeEntries:(id)a4 withReply:(id)a5;
- (void)cancelPendingUpdatesWithReply:(id)a3;
- (void)dealloc;
- (void)queryTextReplacementEntriesWithReply:(id)a3;
- (void)queryTextReplacementsWithPredicate:(id)a3 reply:(id)a4;
- (void)removeAllEntries;
- (void)requestSyncWithReply:(id)a3;
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

- (void)addEntries:(id)a3 removeEntries:(id)a4 withReply:(id)a5
{
  v8 = a5;
  serviceConnection = self->_serviceConnection;
  v10 = a4;
  v11 = a3;
  v12 = [(NSXPCConnection *)serviceConnection remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73___KSTextReplacementServerConnection_addEntries_removeEntries_withReply___block_invoke;
  v14[3] = &unk_2797F6FC0;
  v15 = v8;
  v13 = v8;
  [v12 addEntries:v11 removeEntries:v10 withReply:v14];
}

- (void)removeAllEntries
{
  v2 = [(NSXPCConnection *)self->_serviceConnection remoteObjectProxy];
  [v2 removeAllEntries];
}

- (void)requestSyncWithReply:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_serviceConnection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59___KSTextReplacementServerConnection_requestSyncWithReply___block_invoke;
  v7[3] = &unk_2797F6FE8;
  v8 = v4;
  v6 = v4;
  [v5 requestSyncWithReply:v7];
}

- (void)cancelPendingUpdatesWithReply:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_serviceConnection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68___KSTextReplacementServerConnection_cancelPendingUpdatesWithReply___block_invoke;
  v7[3] = &unk_2797F6FC0;
  v8 = v4;
  v6 = v4;
  [v5 cancelPendingUpdatesWithReply:v7];
}

- (void)queryTextReplacementEntriesWithReply:(id)a3
{
  v4 = a3;
  v5 = [(NSXPCConnection *)self->_serviceConnection remoteObjectProxy];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75___KSTextReplacementServerConnection_queryTextReplacementEntriesWithReply___block_invoke;
  v7[3] = &unk_2797F7058;
  v8 = v4;
  v6 = v4;
  [v5 queryTextReplacementEntriesWithReply:v7];
}

- (void)queryTextReplacementsWithPredicate:(id)a3 reply:(id)a4
{
  v6 = a4;
  serviceConnection = self->_serviceConnection;
  v8 = a3;
  v9 = [(NSXPCConnection *)serviceConnection remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __79___KSTextReplacementServerConnection_queryTextReplacementsWithPredicate_reply___block_invoke;
  v11[3] = &unk_2797F7058;
  v12 = v6;
  v10 = v6;
  [v9 queryTextReplacementsWithPredicate:v8 reply:v11];
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
  v18 = [MEMORY[0x277CBEB18] array];
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
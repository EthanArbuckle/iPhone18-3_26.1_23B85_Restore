@interface _DPDaemonConnection
+ (id)daemonConnection;
- (_DPDaemonConnection)init;
- (void)dealloc;
- (void)recordBitValues:(id)values forKey:(id)key withReply:(id)reply;
- (void)recordBitValues:(id)values metadata:(id)metadata forKey:(id)key withReply:(id)reply;
- (void)recordBitVectors:(id)vectors forKey:(id)key withReply:(id)reply;
- (void)recordBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key withReply:(id)reply;
- (void)recordFloatVectors:(id)vectors forKey:(id)key withReply:(id)reply;
- (void)recordFloatVectors:(id)vectors metadata:(id)metadata forKey:(id)key withReply:(id)reply;
- (void)recordNumbers:(id)numbers forKey:(id)key withReply:(id)reply;
- (void)recordNumbers:(id)numbers metadata:(id)metadata forKey:(id)key withReply:(id)reply;
- (void)recordNumbersVectors:(id)vectors forKey:(id)key withReply:(id)reply;
- (void)recordNumbersVectors:(id)vectors metadata:(id)metadata forKey:(id)key withReply:(id)reply;
- (void)recordStrings:(id)strings forKey:(id)key withReply:(id)reply;
- (void)recordStrings:(id)strings metadata:(id)metadata forKey:(id)key withReply:(id)reply;
- (void)recordWords:(id)words forKey:(id)key withReply:(id)reply;
- (void)reportsNotYetSubmittedWithReply:(id)reply;
- (void)retireReports:(id)reports withReply:(id)reply;
@end

@implementation _DPDaemonConnection

- (_DPDaemonConnection)init
{
  v9.receiver = self;
  v9.super_class = _DPDaemonConnection;
  v2 = [(_DPDaemonConnection *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAE80]);
    v4 = +[_DPStrings machServiceName];
    v5 = [v3 initWithMachServiceName:v4 options:4096];
    daemonConnection = v2->_daemonConnection;
    v2->_daemonConnection = v5;

    v7 = _DPDaemonInterface();
    [(NSXPCConnection *)v2->_daemonConnection setRemoteObjectInterface:v7];

    [(NSXPCConnection *)v2->_daemonConnection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_daemonConnection invalidate];
  v3.receiver = self;
  v3.super_class = _DPDaemonConnection;
  [(_DPDaemonConnection *)&v3 dealloc];
}

+ (id)daemonConnection
{
  v2 = objc_opt_new();

  return v2;
}

- (void)recordNumbers:(id)numbers forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  keyCopy = key;
  numbersCopy = numbers;
  remoteObjectProxy = [(NSXPCConnection *)daemonConnection remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54___DPDaemonConnection_recordNumbers_forKey_withReply___block_invoke;
  v14[3] = &unk_27858A958;
  v15 = replyCopy;
  v13 = replyCopy;
  [remoteObjectProxy recordNumbers:numbersCopy forKey:keyCopy withReply:v14];
}

- (void)recordNumbers:(id)numbers metadata:(id)metadata forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  keyCopy = key;
  metadataCopy = metadata;
  numbersCopy = numbers;
  remoteObjectProxy = [(NSXPCConnection *)daemonConnection remoteObjectProxy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63___DPDaemonConnection_recordNumbers_metadata_forKey_withReply___block_invoke;
  v17[3] = &unk_27858A958;
  v18 = replyCopy;
  v16 = replyCopy;
  [remoteObjectProxy recordNumbers:numbersCopy metadata:metadataCopy forKey:keyCopy withReply:v17];
}

- (void)recordNumbersVectors:(id)vectors forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  keyCopy = key;
  vectorsCopy = vectors;
  remoteObjectProxy = [(NSXPCConnection *)daemonConnection remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __61___DPDaemonConnection_recordNumbersVectors_forKey_withReply___block_invoke;
  v14[3] = &unk_27858A958;
  v15 = replyCopy;
  v13 = replyCopy;
  [remoteObjectProxy recordNumbersVectors:vectorsCopy forKey:keyCopy withReply:v14];
}

- (void)recordNumbersVectors:(id)vectors metadata:(id)metadata forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  keyCopy = key;
  metadataCopy = metadata;
  vectorsCopy = vectors;
  remoteObjectProxy = [(NSXPCConnection *)daemonConnection remoteObjectProxy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __70___DPDaemonConnection_recordNumbersVectors_metadata_forKey_withReply___block_invoke;
  v17[3] = &unk_27858A958;
  v18 = replyCopy;
  v16 = replyCopy;
  [remoteObjectProxy recordNumbersVectors:vectorsCopy metadata:metadataCopy forKey:keyCopy withReply:v17];
}

- (void)recordBitValues:(id)values forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  keyCopy = key;
  valuesCopy = values;
  remoteObjectProxy = [(NSXPCConnection *)daemonConnection remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56___DPDaemonConnection_recordBitValues_forKey_withReply___block_invoke;
  v14[3] = &unk_27858A958;
  v15 = replyCopy;
  v13 = replyCopy;
  [remoteObjectProxy recordBitValues:valuesCopy forKey:keyCopy withReply:v14];
}

- (void)recordBitValues:(id)values metadata:(id)metadata forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  keyCopy = key;
  metadataCopy = metadata;
  valuesCopy = values;
  remoteObjectProxy = [(NSXPCConnection *)daemonConnection remoteObjectProxy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __65___DPDaemonConnection_recordBitValues_metadata_forKey_withReply___block_invoke;
  v17[3] = &unk_27858A958;
  v18 = replyCopy;
  v16 = replyCopy;
  [remoteObjectProxy recordBitValues:valuesCopy metadata:metadataCopy forKey:keyCopy withReply:v17];
}

- (void)recordBitVectors:(id)vectors forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  keyCopy = key;
  vectorsCopy = vectors;
  remoteObjectProxy = [(NSXPCConnection *)daemonConnection remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57___DPDaemonConnection_recordBitVectors_forKey_withReply___block_invoke;
  v14[3] = &unk_27858A958;
  v15 = replyCopy;
  v13 = replyCopy;
  [remoteObjectProxy recordBitVectors:vectorsCopy forKey:keyCopy withReply:v14];
}

- (void)recordBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key withReply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  replyCopy = reply;
  metadataCopy = metadata;
  vectorsCopy = vectors;
  v14 = +[_DPLog framework];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = keyCopy;
    _os_log_impl(&dword_22622D000, v14, OS_LOG_TYPE_DEFAULT, "Begin: recordBitVectors:metadata: for key %@", buf, 0xCu);
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_daemonConnection remoteObjectProxy];
  v16 = os_transaction_create();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __66___DPDaemonConnection_recordBitVectors_metadata_forKey_withReply___block_invoke;
  v21[3] = &unk_27858A980;
  v23 = v16;
  v24 = replyCopy;
  v22 = keyCopy;
  v17 = v16;
  v18 = keyCopy;
  v19 = replyCopy;
  [remoteObjectProxy recordBitVectors:vectorsCopy metadata:metadataCopy forKey:v18 withReply:v21];

  v20 = *MEMORY[0x277D85DE8];
}

- (void)recordFloatVectors:(id)vectors forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  keyCopy = key;
  vectorsCopy = vectors;
  v12 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59___DPDaemonConnection_recordFloatVectors_forKey_withReply___block_invoke_2;
  v14[3] = &unk_27858A958;
  v15 = replyCopy;
  v13 = replyCopy;
  [v12 recordFloatVectors:vectorsCopy forKey:keyCopy withReply:v14];
}

- (void)recordFloatVectors:(id)vectors metadata:(id)metadata forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  keyCopy = key;
  metadataCopy = metadata;
  vectorsCopy = vectors;
  v15 = [(NSXPCConnection *)daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_8];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __68___DPDaemonConnection_recordFloatVectors_metadata_forKey_withReply___block_invoke_2;
  v17[3] = &unk_27858A958;
  v18 = replyCopy;
  v16 = replyCopy;
  [v15 recordFloatVectors:vectorsCopy metadata:metadataCopy forKey:keyCopy withReply:v17];
}

- (void)recordStrings:(id)strings forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  keyCopy = key;
  stringsCopy = strings;
  remoteObjectProxy = [(NSXPCConnection *)daemonConnection remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __54___DPDaemonConnection_recordStrings_forKey_withReply___block_invoke;
  v14[3] = &unk_27858A958;
  v15 = replyCopy;
  v13 = replyCopy;
  [remoteObjectProxy recordStrings:stringsCopy forKey:keyCopy withReply:v14];
}

- (void)recordStrings:(id)strings metadata:(id)metadata forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  keyCopy = key;
  metadataCopy = metadata;
  stringsCopy = strings;
  remoteObjectProxy = [(NSXPCConnection *)daemonConnection remoteObjectProxy];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63___DPDaemonConnection_recordStrings_metadata_forKey_withReply___block_invoke;
  v17[3] = &unk_27858A958;
  v18 = replyCopy;
  v16 = replyCopy;
  [remoteObjectProxy recordStrings:stringsCopy metadata:metadataCopy forKey:keyCopy withReply:v17];
}

- (void)recordWords:(id)words forKey:(id)key withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  keyCopy = key;
  wordsCopy = words;
  remoteObjectProxy = [(NSXPCConnection *)daemonConnection remoteObjectProxy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52___DPDaemonConnection_recordWords_forKey_withReply___block_invoke;
  v14[3] = &unk_27858A958;
  v15 = replyCopy;
  v13 = replyCopy;
  [remoteObjectProxy recordWords:wordsCopy forKey:keyCopy withReply:v14];
}

- (void)reportsNotYetSubmittedWithReply:(id)reply
{
  replyCopy = reply;
  v5 = [(NSXPCConnection *)self->_daemonConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_10];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55___DPDaemonConnection_reportsNotYetSubmittedWithReply___block_invoke_2;
  v7[3] = &unk_27858A9C8;
  v8 = replyCopy;
  v6 = replyCopy;
  [v5 reportsNotYetSubmittedWithReply:v7];
}

- (void)retireReports:(id)reports withReply:(id)reply
{
  replyCopy = reply;
  daemonConnection = self->_daemonConnection;
  reportsCopy = reports;
  remoteObjectProxy = [(NSXPCConnection *)daemonConnection remoteObjectProxy];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47___DPDaemonConnection_retireReports_withReply___block_invoke;
  v11[3] = &unk_27858A958;
  v12 = replyCopy;
  v10 = replyCopy;
  [remoteObjectProxy retireReports:reportsCopy withReply:v11];
}

@end
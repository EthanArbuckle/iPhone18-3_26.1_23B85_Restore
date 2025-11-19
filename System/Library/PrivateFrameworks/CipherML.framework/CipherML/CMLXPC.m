@interface CMLXPC
+ (id)asyncProxyToConnection:(id)a3 dispatchQueue:(id)a4 errorHandler:(id)a5;
+ (id)createConnection;
+ (id)interfaceDescription;
+ (id)syncProxyToConnection:(id)a3 error:(id *)a4;
@end

@implementation CMLXPC

+ (id)createConnection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ciphermld" options:0];
  if (v2)
  {
    v3 = [objc_opt_class() interfaceDescription];
    [v2 setRemoteObjectInterface:v3];

    [v2 resume];
    v4 = v2;
  }

  else
  {
    v5 = +[CMLLog client];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [CMLSimilarityClient initWithClientConfig:v5 dispatchQueue:?];
    }
  }

  return v2;
}

+ (id)interfaceDescription
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28385BAA8];
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  [v2 setClasses:v5 forSelector:sel_similarityScoresForElements_shardIndices_clientConfig_reply_ argumentIndex:0 ofReply:1];

  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  [v2 setClasses:v8 forSelector:sel_decryptBatchOfSimilarityScores_clientConfig_reply_ argumentIndex:0 ofReply:1];

  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  [v2 setClasses:v12 forSelector:sel_listUseCaseGroupsWithReply_ argumentIndex:0 ofReply:1];

  return v2;
}

+ (id)syncProxyToConnection:(id)a3 error:(id *)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__CMLXPC_syncProxyToConnection_error___block_invoke;
  v6[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v6[4] = a4;
  v4 = [a3 synchronousRemoteObjectProxyWithErrorHandler:v6];

  return v4;
}

void __38__CMLXPC_syncProxyToConnection_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CMLLog client];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__CMLXPC_syncProxyToConnection_error___block_invoke_cold_1();
  }

  v5 = [CMLError errorWithCode:100 underlyingError:v3 description:@"XPC Connection was interrupted"];
  v6 = *(a1 + 32);
  v7 = *v6;
  *v6 = v5;
}

+ (id)asyncProxyToConnection:(id)a3 dispatchQueue:(id)a4 errorHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__CMLXPC_asyncProxyToConnection_dispatchQueue_errorHandler___block_invoke;
  v13[3] = &unk_278541BB8;
  v14 = v7;
  v15 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [a3 remoteObjectProxyWithErrorHandler:v13];

  return v11;
}

void __60__CMLXPC_asyncProxyToConnection_dispatchQueue_errorHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[CMLLog client];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__CMLXPC_syncProxyToConnection_error___block_invoke_cold_1();
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__CMLXPC_asyncProxyToConnection_dispatchQueue_errorHandler___block_invoke_76;
  v8[3] = &unk_278541B90;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);
}

void __60__CMLXPC_asyncProxyToConnection_dispatchQueue_errorHandler___block_invoke_76(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [CMLError errorWithCode:100 underlyingError:*(a1 + 32) description:@"XPC Connection was interrupted"];
  (*(v1 + 16))(v1, v2);
}

void __38__CMLXPC_syncProxyToConnection_error___block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_224E26000, v0, OS_LOG_TYPE_ERROR, "Connection was interrupted with %@ : error=%{public}@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end
@interface CMLPIRClient
- (CMLPIRClient)initWithClientConfig:(id)a3;
- (CMLPIRClient)initWithClientConfig:(id)a3 dispatchQueue:(id)a4;
- (CMLPIRClient)initWithClientConfig:(id)a3 dispatchQueue:(id)a4 connection:(id)a5;
- (NSString)useCase;
- (id)generateEvaluationKey:(id *)a3;
- (id)setPIRConfig:(id)a3 error:(id *)a4;
- (void)dealloc;
@end

@implementation CMLPIRClient

- (NSString)useCase
{
  v2 = [(CMLPIRClient *)self clientConfig];
  v3 = [v2 useCase];

  return v3;
}

- (CMLPIRClient)initWithClientConfig:(id)a3
{
  v4 = a3;
  v5 = dispatch_queue_create("com.apple.CipherML.CMLPIRClient", 0);
  v6 = [(CMLPIRClient *)self initWithClientConfig:v4 dispatchQueue:v5];

  return v6;
}

- (CMLPIRClient)initWithClientConfig:(id)a3 dispatchQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(CMLPIRClient *)self isMemberOfClass:objc_opt_class()])
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"CMLPIRClient should not be instantiated, only its subclasses"}];
  }

  v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ciphermld" options:0];
  if (v8)
  {
    self = [(CMLPIRClient *)self initWithClientConfig:v6 dispatchQueue:v7 connection:v8];
    v9 = self;
  }

  else
  {
    v10 = +[CMLLog client];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CMLSimilarityClient initWithClientConfig:v10 dispatchQueue:?];
    }

    v9 = 0;
  }

  return v9;
}

- (CMLPIRClient)initWithClientConfig:(id)a3 dispatchQueue:(id)a4 connection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CMLPIRClient;
  v12 = [(CMLPIRClient *)&v15 init];
  if (v12)
  {
    v13 = +[CMLXPC interfaceDescription];
    [v11 setRemoteObjectInterface:v13];

    [v11 activate];
    objc_storeStrong(&v12->_clientConfig, a3);
    objc_storeStrong(&v12->_dispatchQueue, a4);
    objc_storeStrong(&v12->_connection, a5);
  }

  return v12;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = CMLPIRClient;
  [(CMLPIRClient *)&v3 dealloc];
}

- (id)setPIRConfig:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v31 = 0;
  v9 = [(CMLPIRClient *)self connection];
  v10 = [CMLXPC syncProxyToConnection:v9 error:&v31];

  objc_storeStrong(&self->_pirConfig, a3);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__3;
  v23 = __Block_byref_object_dispose__3;
  v24 = 0;
  v11 = +[CMLLog client];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543362;
    v33 = v12;
    _os_log_impl(&dword_224E26000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v13 = [(CMLPIRClient *)self clientConfig];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __35__CMLPIRClient_setPIRConfig_error___block_invoke;
  v18[3] = &unk_278541A50;
  v18[4] = &v19;
  v18[5] = &v25;
  v18[6] = a2;
  [v10 setPIRConfig:v8 clientConfig:v13 reply:v18];

  if (a4)
  {
    v14 = v31;
    if (!v31)
    {
      v14 = v26[5];
    }

    *a4 = v14;
  }

  v15 = v20[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void __35__CMLPIRClient_setPIRConfig_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = +[CMLLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    v14 = 138543874;
    v15 = v9;
    v16 = 1024;
    v17 = v6 != 0;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, success(%d) error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:200 underlyingError:v7 description:@"Unable to set PIR config due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)generateEvaluationKey:(id *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v6 = [(CMLPIRClient *)self connection];
  v7 = [CMLXPC syncProxyToConnection:v6 error:&v29];

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__3;
  v21 = __Block_byref_object_dispose__3;
  v22 = 0;
  v8 = +[CMLLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138543362;
    v31 = v9;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v10 = [(CMLPIRClient *)self pirConfig];
  v11 = [(CMLPIRClient *)self clientConfig];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __38__CMLPIRClient_generateEvaluationKey___block_invoke;
  v16[3] = &unk_278541A50;
  v16[4] = &v17;
  v16[5] = &v23;
  v16[6] = a2;
  [v7 generateEvaluationKey:v10 clientConfig:v11 reply:v16];

  if (a3)
  {
    v12 = v29;
    if (!v29)
    {
      v12 = v24[5];
    }

    *a3 = v12;
  }

  v13 = v18[5];
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __38__CMLPIRClient_generateEvaluationKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = +[CMLLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    v14 = 138543874;
    v15 = v9;
    v16 = 1024;
    v17 = v6 != 0;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, success(%d) error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:1500 underlyingError:v7 description:@"Unable to set generateEvaluationKey due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end
@interface CMLSimilarityClient
- (CMLSimilarityClient)initWithClientConfig:(id)a3;
- (CMLSimilarityClient)initWithClientConfig:(id)a3 dispatchQueue:(id)a4;
- (CMLSimilarityClient)initWithClientConfig:(id)a3 dispatchQueue:(id)a4 connection:(id)a5;
- (NSString)useCase;
- (id)asyncResponseSimilarityScoresForElements:(id)a3 shardIndex:(unint64_t)a4 error:(id *)a5;
- (id)asyncResponseSimilarityScoresForElements:(id)a3 shardIndices:(id)a4 error:(id *)a5;
- (id)decryptBatchOfSimilarityScores:(id)a3 error:(id *)a4;
- (id)decryptSimilarityScores:(id)a3 error:(id *)a4;
- (id)encryptBatchOfElements:(id)a3 shardIndex:(unint64_t)a4 error:(id *)a5;
- (id)encryptBatchOfElements:(id)a3 shardIndices:(id)a4 error:(id *)a5;
- (id)encryptDifferentiallyPrivateFakes:(id)a3 shardIndex:(unint64_t)a4 shardCount:(unint64_t)a5 error:(id *)a6;
- (id)encryptElement:(id)a3 shardIndex:(unint64_t)a4 error:(id *)a5;
- (id)encryptElement:(id)a3 shardIndices:(id)a4 error:(id *)a5;
- (id)setPECConfig:(id)a3 error:(id *)a4;
- (id)similarityScoresForElement:(id)a3 shardIndex:(unint64_t)a4 error:(id *)a5;
- (id)similarityScoresForElement:(id)a3 shardIndices:(id)a4 error:(id *)a5;
- (id)similarityScoresForElements:(id)a3 shardIndex:(unint64_t)a4 error:(id *)a5;
- (id)similarityScoresForElements:(id)a3 shardIndices:(id)a4 error:(id *)a5;
- (void)dealloc;
- (void)requestSimilarityScoresForElement:(id)a3 shardIndex:(unint64_t)a4 completionHandler:(id)a5;
- (void)requestSimilarityScoresForElement:(id)a3 shardIndices:(id)a4 completionHandler:(id)a5;
- (void)requestSimilarityScoresForElements:(id)a3 shardIndex:(unint64_t)a4 completionHandler:(id)a5;
- (void)requestSimilarityScoresForElements:(id)a3 shardIndices:(id)a4 completionHandler:(id)a5;
@end

@implementation CMLSimilarityClient

- (NSString)useCase
{
  v2 = [(CMLSimilarityClient *)self clientConfig];
  v3 = [v2 useCase];

  return v3;
}

- (CMLSimilarityClient)initWithClientConfig:(id)a3
{
  v4 = a3;
  v5 = dispatch_queue_create("com.apple.CipherML.CMLSimilarityClient", 0);
  v6 = [(CMLSimilarityClient *)self initWithClientConfig:v4 dispatchQueue:v5];

  return v6;
}

- (CMLSimilarityClient)initWithClientConfig:(id)a3 dispatchQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ciphermld" options:0];
  if (v8)
  {
    self = [(CMLSimilarityClient *)self initWithClientConfig:v6 dispatchQueue:v7 connection:v8];
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

- (CMLSimilarityClient)initWithClientConfig:(id)a3 dispatchQueue:(id)a4 connection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CMLSimilarityClient;
  v12 = [(CMLSimilarityClient *)&v15 init];
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
  v3.super_class = CMLSimilarityClient;
  [(CMLSimilarityClient *)&v3 dealloc];
}

- (void)requestSimilarityScoresForElement:(id)a3 shardIndex:(unint64_t)a4 completionHandler:(id)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = a3;
  v11 = [v8 numberWithUnsignedInteger:a4];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [(CMLSimilarityClient *)self requestSimilarityScoresForElement:v10 shardIndices:v12 completionHandler:v9];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)requestSimilarityScoresForElement:(id)a3 shardIndices:(id)a4 completionHandler:(id)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v17[0] = a3;
  v9 = MEMORY[0x277CBEA60];
  v10 = a4;
  v11 = a3;
  v12 = [v9 arrayWithObjects:v17 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __88__CMLSimilarityClient_requestSimilarityScoresForElement_shardIndices_completionHandler___block_invoke;
  v15[3] = &unk_278541988;
  v16 = v8;
  v13 = v8;
  [(CMLSimilarityClient *)self requestSimilarityScoresForElements:v12 shardIndices:v10 completionHandler:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __88__CMLSimilarityClient_requestSimilarityScoresForElement_shardIndices_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 objectAtIndexedSubscript:0];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)requestSimilarityScoresForElements:(id)a3 shardIndex:(unint64_t)a4 completionHandler:(id)a5
{
  v14[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = a3;
  v11 = [v8 numberWithUnsignedInteger:a4];
  v14[0] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  [(CMLSimilarityClient *)self requestSimilarityScoresForElements:v10 shardIndices:v12 completionHandler:v9];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)requestSimilarityScoresForElements:(id)a3 shardIndices:(id)a4 completionHandler:(id)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__CMLSimilarityClient_requestSimilarityScoresForElements_shardIndices_completionHandler___block_invoke;
  aBlock[3] = &unk_2785419B0;
  v10 = v9;
  v26 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(CMLSimilarityClient *)self connection];
  v15 = [(CMLSimilarityClient *)self dispatchQueue];
  v16 = [CMLXPC asyncProxyToConnection:v14 dispatchQueue:v15 errorHandler:v13];

  v17 = +[CMLLog client];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromSelector(a2);
    *buf = 138543362;
    v28 = v18;
    _os_log_impl(&dword_224E26000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v19 = [(CMLSimilarityClient *)self clientConfig];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __89__CMLSimilarityClient_requestSimilarityScoresForElements_shardIndices_completionHandler___block_invoke_65;
  v22[3] = &unk_278541A00;
  v23 = v10;
  v24 = a2;
  v22[4] = self;
  v20 = v10;
  [v16 similarityScoresForElements:v12 shardIndices:v11 clientConfig:v19 reply:v22];

  v21 = *MEMORY[0x277D85DE8];
}

void __89__CMLSimilarityClient_requestSimilarityScoresForElements_shardIndices_completionHandler___block_invoke_65(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[CMLLog client];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(*(a1 + 48));
    *buf = 138543874;
    v20 = v8;
    v21 = 1024;
    v22 = v5 != 0;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_224E26000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, scores(%d) error:%{public}@", buf, 0x1Cu);
  }

  if (v6)
  {
    v9 = [CMLError errorWithCode:600 underlyingError:v6 description:@"Unable to calculate similarity scores for elements due to errors"];
  }

  else
  {
    v9 = 0;
  }

  if (!(v5 | v9))
  {
    v9 = [CMLError errorWithCode:601 description:@"Server returns nil instead of similarity scores with empty error"];
  }

  v10 = [*(a1 + 32) dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__CMLSimilarityClient_requestSimilarityScoresForElements_shardIndices_completionHandler___block_invoke_73;
  block[3] = &unk_2785419D8;
  v11 = *(a1 + 40);
  v17 = v9;
  v18 = v11;
  v16 = v5;
  v12 = v9;
  v13 = v5;
  dispatch_async(v10, block);

  v14 = *MEMORY[0x277D85DE8];
}

- (id)similarityScoresForElement:(id)a3 shardIndex:(unint64_t)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  v9 = a3;
  v10 = [v8 numberWithUnsignedInteger:a4];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(CMLSimilarityClient *)self similarityScoresForElement:v9 shardIndices:v11 error:a5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)similarityScoresForElement:(id)a3 shardIndices:(id)a4 error:(id *)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v8 = MEMORY[0x277CBEA60];
  v9 = a4;
  v10 = a3;
  v11 = [v8 arrayWithObjects:&v16 count:1];

  v12 = [(CMLSimilarityClient *)self similarityScoresForElements:v11 shardIndices:v9 error:a5, v16, v17];

  v13 = [v12 objectAtIndexedSubscript:0];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)similarityScoresForElements:(id)a3 shardIndex:(unint64_t)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  v9 = a3;
  v10 = [v8 numberWithUnsignedInteger:a4];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(CMLSimilarityClient *)self similarityScoresForElements:v9 shardIndices:v11 error:a5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)similarityScoresForElements:(id)a3 shardIndices:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v39 = 0;
  v11 = [(CMLSimilarityClient *)self connection];
  v12 = [CMLXPC syncProxyToConnection:v11 error:&v39];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v13 = +[CMLLog client];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138543362;
    v41 = v14;
    _os_log_impl(&dword_224E26000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request", buf, 0xCu);
  }

  v15 = [(CMLSimilarityClient *)self clientConfig];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __70__CMLSimilarityClient_similarityScoresForElements_shardIndices_error___block_invoke;
  v26[3] = &unk_278541A28;
  v26[4] = &v27;
  v26[5] = &v33;
  v26[6] = a2;
  [v12 similarityScoresForElements:v9 shardIndices:v10 clientConfig:v15 reply:v26];

  if (!v28[5] && !v34[5])
  {
    v16 = [CMLError errorWithCode:601 description:@"Server returns nil instead of similarity scores with empty error"];
    v17 = v34[5];
    v34[5] = v16;
  }

  if (a5)
  {
    v18 = v39;
    if (!v39)
    {
      v18 = v34[5];
    }

    *a5 = v18;
  }

  v19 = +[CMLLog client];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromSelector(a2);
    v21 = v28[5] != 0;
    v22 = v34[5];
    *buf = 138543874;
    v41 = v20;
    v42 = 1024;
    v43 = v21;
    v44 = 2114;
    v45 = v22;
    _os_log_impl(&dword_224E26000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete, scores(%d) error:%{public}@", buf, 0x1Cu);
  }

  v23 = v28[5];
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __70__CMLSimilarityClient_similarityScoresForElements_shardIndices_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, scores(%d), error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:600 underlyingError:v7 description:@"Unable to calculate similarity scores for element due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)setPECConfig:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v30 = 0;
  v8 = [(CMLSimilarityClient *)self connection];
  v9 = [CMLXPC syncProxyToConnection:v8 error:&v30];

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v10 = +[CMLLog client];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138543362;
    v32 = v11;
    _os_log_impl(&dword_224E26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request", buf, 0xCu);
  }

  [(CMLSimilarityClient *)self setClientPecConfig:v7];
  v12 = [(CMLSimilarityClient *)self clientConfig];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__CMLSimilarityClient_setPECConfig_error___block_invoke;
  v17[3] = &unk_278541A50;
  v17[4] = &v18;
  v17[5] = &v24;
  v17[6] = a2;
  [v9 setPECConfig:v7 clientConfig:v12 reply:v17];

  if (a4)
  {
    v13 = v30;
    if (!v30)
    {
      v13 = v25[5];
    }

    *a4 = v13;
  }

  v14 = v19[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

void __42__CMLSimilarityClient_setPECConfig_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Received response, success(%d) error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:200 underlyingError:v7 description:@"Unable to set PEC config due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)encryptElement:(id)a3 shardIndex:(unint64_t)a4 error:(id *)a5
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = a3;
  v8 = MEMORY[0x277CBEA60];
  v9 = a3;
  v10 = [v8 arrayWithObjects:v17 count:1];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v16 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v16 count:1];

  v13 = [(CMLSimilarityClient *)self encryptBatchOfElements:v10 shardIndices:v12 error:a5];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)encryptElement:(id)a3 shardIndices:(id)a4 error:(id *)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v8 = MEMORY[0x277CBEA60];
  v9 = a4;
  v10 = a3;
  v11 = [v8 arrayWithObjects:&v15 count:1];

  v12 = [(CMLSimilarityClient *)self encryptBatchOfElements:v11 shardIndices:v9 error:a5, v15, v16];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)decryptSimilarityScores:(id)a3 error:(id *)a4
{
  v4 = [(CMLSimilarityClient *)self decryptBatchOfSimilarityScores:a3 error:a4];
  v5 = [v4 objectAtIndexedSubscript:0];

  return v5;
}

- (id)encryptBatchOfElements:(id)a3 shardIndex:(unint64_t)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  v9 = a3;
  v10 = [v8 numberWithUnsignedInteger:a4];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(CMLSimilarityClient *)self encryptBatchOfElements:v9 shardIndices:v11 error:a5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)encryptDifferentiallyPrivateFakes:(id)a3 shardIndex:(unint64_t)a4 shardCount:(unint64_t)a5 error:(id *)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v42 = 0;
  v11 = [(CMLSimilarityClient *)self connection];
  v12 = [CMLXPC syncProxyToConnection:v11 error:&v42];

  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  v41 = 0;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __85__CMLSimilarityClient_encryptDifferentiallyPrivateFakes_shardIndex_shardCount_error___block_invoke;
  aBlock[3] = &unk_278541A28;
  aBlock[5] = &v36;
  aBlock[6] = a2;
  aBlock[4] = &v30;
  v13 = _Block_copy(aBlock);
  v14 = +[CMLLog client];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138543362;
    v44 = v15;
    _os_log_impl(&dword_224E26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request", buf, 0xCu);
  }

  v16 = [(CMLSimilarityClient *)self clientPecConfig];
  v17 = [(CMLSimilarityClient *)self clientConfig];
  [v12 encryptDifferentiallyPrivateFakes:v28 shardIndex:a4 shardCount:a5 pecConfig:v16 clientConfig:v17 reply:v13];

  if (!v31[5] && !v37[5])
  {
    v18 = [CMLError errorWithCode:911 description:@"Server returns nil instead of encrypted elements data with empty error"];
    v19 = v37[5];
    v37[5] = v18;
  }

  if (a6)
  {
    v20 = v42;
    if (!v42)
    {
      v20 = v37[5];
    }

    *a6 = v20;
  }

  v21 = +[CMLLog client];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = NSStringFromSelector(a2);
    v23 = v31[5] != 0;
    v24 = v37[5];
    *buf = 138543874;
    v44 = v22;
    v45 = 1024;
    v46 = v23;
    v47 = 2114;
    v48 = v24;
    _os_log_impl(&dword_224E26000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete, encryptedData(%d) error:%{public}@", buf, 0x1Cu);
  }

  v25 = v31[5];
  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(&v36, 8);
  v26 = *MEMORY[0x277D85DE8];

  return v25;
}

void __85__CMLSimilarityClient_encryptDifferentiallyPrivateFakes_shardIndex_shardCount_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Received response, encrypted(%d) error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:910 underlyingError:v7 description:@"Unable to encrypt batch of elements"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)encryptBatchOfElements:(id)a3 shardIndices:(id)a4 error:(id *)a5
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v39 = 0;
  v11 = [(CMLSimilarityClient *)self connection];
  v12 = [CMLXPC syncProxyToConnection:v11 error:&v39];

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__0;
  v37 = __Block_byref_object_dispose__0;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v13 = +[CMLLog client];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138543362;
    v41 = v14;
    _os_log_impl(&dword_224E26000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending request", buf, 0xCu);
  }

  v15 = [(CMLSimilarityClient *)self clientConfig];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __65__CMLSimilarityClient_encryptBatchOfElements_shardIndices_error___block_invoke;
  v26[3] = &unk_278541A50;
  v26[4] = &v27;
  v26[5] = &v33;
  v26[6] = a2;
  [v12 encryptBatchOfElements:v9 shardIndices:v10 clientConfig:v15 reply:v26];

  if (!v28[5] && !v34[5])
  {
    v16 = [CMLError errorWithCode:901 description:@"Server returns nil instead of encrypted elements data with empty error"];
    v17 = v34[5];
    v34[5] = v16;
  }

  if (a5)
  {
    v18 = v39;
    if (!v39)
    {
      v18 = v34[5];
    }

    *a5 = v18;
  }

  v19 = +[CMLLog client];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromSelector(a2);
    v21 = v28[5] != 0;
    v22 = v34[5];
    *buf = 138543874;
    v41 = v20;
    v42 = 1024;
    v43 = v21;
    v44 = 2114;
    v45 = v22;
    _os_log_impl(&dword_224E26000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete, encryptedData(%d) error:%{public}@", buf, 0x1Cu);
  }

  v23 = v28[5];
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

void __65__CMLSimilarityClient_encryptBatchOfElements_shardIndices_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Received response, encrypted(%d) error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:900 underlyingError:v7 description:@"Unable to encrypt batch of elements"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)decryptBatchOfSimilarityScores:(id)a3 error:(id *)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v36 = 0;
  v8 = [(CMLSimilarityClient *)self connection];
  v9 = [CMLXPC syncProxyToConnection:v8 error:&v36];

  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__0;
  v34 = __Block_byref_object_dispose__0;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__0;
  v28 = __Block_byref_object_dispose__0;
  v29 = 0;
  v10 = +[CMLLog client];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 138543362;
    v38 = v11;
    _os_log_impl(&dword_224E26000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v12 = [(CMLSimilarityClient *)self clientConfig];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __60__CMLSimilarityClient_decryptBatchOfSimilarityScores_error___block_invoke;
  v23[3] = &unk_278541A28;
  v23[4] = &v24;
  v23[5] = &v30;
  v23[6] = a2;
  [v9 decryptBatchOfSimilarityScores:v7 clientConfig:v12 reply:v23];

  if (!v25[5] && !v31[5])
  {
    v13 = [CMLError errorWithCode:1001 description:@"Server returns nil instead of batch of decrypted scores with empty error"];
    v14 = v31[5];
    v31[5] = v13;
  }

  if (a4)
  {
    v15 = v36;
    if (!v36)
    {
      v15 = v31[5];
    }

    *a4 = v15;
  }

  v16 = +[CMLLog client];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    v18 = v25[5] != 0;
    v19 = v31[5];
    *buf = 138543874;
    v38 = v17;
    v39 = 1024;
    v40 = v18;
    v41 = 2114;
    v42 = v19;
    _os_log_impl(&dword_224E26000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Request complete, scores(%d) error:%{public}@", buf, 0x1Cu);
  }

  v20 = v25[5];
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __60__CMLSimilarityClient_decryptBatchOfSimilarityScores_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, scores(%d), error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:1000 underlyingError:v7 description:@"Unable to decrypt batch of similarity scores"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)asyncResponseSimilarityScoresForElements:(id)a3 shardIndex:(unint64_t)a4 error:(id *)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCABB0];
  v9 = a3;
  v10 = [v8 numberWithUnsignedInteger:a4];
  v15[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  v12 = [(CMLSimilarityClient *)self asyncResponseSimilarityScoresForElements:v9 shardIndices:v11 error:a5];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)asyncResponseSimilarityScoresForElements:(id)a3 shardIndices:(id)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v33 = 0;
  v11 = [(CMLSimilarityClient *)self connection];
  v12 = [CMLXPC syncProxyToConnection:v11 error:&v33];

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__0;
  v31 = __Block_byref_object_dispose__0;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__0;
  v25 = __Block_byref_object_dispose__0;
  v26 = 0;
  v13 = +[CMLLog client];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138543362;
    v35 = v14;
    _os_log_impl(&dword_224E26000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v15 = [(CMLSimilarityClient *)self clientConfig];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __83__CMLSimilarityClient_asyncResponseSimilarityScoresForElements_shardIndices_error___block_invoke;
  v20[3] = &unk_278541A78;
  v20[4] = &v21;
  v20[5] = &v27;
  v20[6] = a2;
  [v12 asyncResponseSimilarityScoresForElements:v9 shardIndices:v10 clientConfig:v15 reply:v20];

  if (a5)
  {
    v16 = v33;
    if (!v33)
    {
      v16 = v28[5];
    }

    *a5 = v16;
  }

  v17 = v22[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __83__CMLSimilarityClient_asyncResponseSimilarityScoresForElements_shardIndices_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v16 = 2112;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, asyncResponseId(%@) error:%{public}@", &v14, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:602 underlyingError:v7 description:@"Unable to calculate similarity scores for element with async response due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)initWithClientConfig:(uint64_t)a1 dispatchQueue:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_224E26000, a2, OS_LOG_TYPE_ERROR, "could not create connection to %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end
@interface CMLKeywordPIRClient
- (id)asyncResponseDataByKeyword:(id)a3 error:(id *)a4;
- (id)asyncResponseDataByKeywords:(id)a3 error:(id *)a4;
- (id)constructPIRBatchRequestWithKeywords:(id)a3 shardIds:(id)a4 error:(id *)a5;
- (id)dataByKeyword:(id)a3 shardId:(id)a4 error:(id *)a5;
- (id)dataByKeywords:(id)a3 shardIds:(id)a4 error:(id *)a5;
- (id)dataByStringKeyword:(id)a3 shardId:(id)a4 error:(id *)a5;
- (id)dataByStringKeywords:(id)a3 error:(id *)a4;
- (id)dataByStringKeywords:(id)a3 shardIds:(id)a4 error:(id *)a5;
- (id)decryptPIRBatchResponse:(id)a3 keywords:(id)a4 error:(id *)a5;
- (id)decryptPIRResponse:(id)a3 keyword:(id)a4 shardId:(id)a5 error:(id *)a6;
- (id)removeCachedEntriesByKeywords:(id)a3 error:(id *)a4;
- (id)removeCachedEntriesByStringKeywords:(id)a3 error:(id *)a4;
- (void)requestDataByKeyword:(id)a3 shardId:(id)a4 completionHandler:(id)a5;
- (void)requestDataByKeywords:(id)a3 shardIds:(id)a4 completionHandler:(id)a5;
- (void)requestDataByStringKeyword:(id)a3 completionHandler:(id)a4;
- (void)requestDataByStringKeyword:(id)a3 shardId:(id)a4 completionHandler:(id)a5;
- (void)requestDataByStringKeywords:(id)a3 completionHandler:(id)a4;
- (void)requestDataByStringKeywords:(id)a3 shardIds:(id)a4 completionHandler:(id)a5;
@end

@implementation CMLKeywordPIRClient

- (void)requestDataByStringKeyword:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [a3 dataUsingEncoding:4];
  [(CMLKeywordPIRClient *)self requestDataByKeyword:v7 completionHandler:v6];
}

- (void)requestDataByStringKeyword:(id)a3 shardId:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 dataUsingEncoding:4];
  [(CMLKeywordPIRClient *)self requestDataByKeyword:v10 shardId:v9 completionHandler:v8];
}

- (void)requestDataByStringKeywords:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a4;
  v8 = a3;
  v9 = [v6 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __69__CMLKeywordPIRClient_requestDataByStringKeywords_completionHandler___block_invoke;
  v12[3] = &unk_278541C30;
  v13 = v9;
  v10 = v9;
  [v8 enumerateObjectsUsingBlock:v12];

  v11 = [v10 copy];
  [(CMLKeywordPIRClient *)self requestDataByKeywords:v11 completionHandler:v7];
}

void __69__CMLKeywordPIRClient_requestDataByStringKeywords_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dataUsingEncoding:4];
  [v2 addObject:v3];
}

- (void)requestDataByStringKeywords:(id)a3 shardIds:(id)a4 completionHandler:(id)a5
{
  v8 = MEMORY[0x277CBEB18];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v8 array];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __78__CMLKeywordPIRClient_requestDataByStringKeywords_shardIds_completionHandler___block_invoke;
  v14[3] = &unk_278541C30;
  v15 = v12;
  v13 = v12;
  [v11 enumerateObjectsUsingBlock:v14];

  [(CMLKeywordPIRClient *)self requestDataByKeywords:v13 shardIds:v10 completionHandler:v9];
}

void __78__CMLKeywordPIRClient_requestDataByStringKeywords_shardIds_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dataUsingEncoding:4];
  [v2 addObject:v3];
}

- (void)requestDataByKeyword:(id)a3 shardId:(id)a4 completionHandler:(id)a5
{
  v27[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__3;
  v24[4] = __Block_byref_object_dispose__3;
  v25 = 0;
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __70__CMLKeywordPIRClient_requestDataByKeyword_shardId_completionHandler___block_invoke;
  v20 = &unk_278541C58;
  v22 = v24;
  v12 = v11;
  v21 = v12;
  v23 = a2;
  v13 = _Block_copy(&v17);
  if (v10)
  {
    v27[0] = v10;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:{1, v17, v18, v19, v20}];
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  v26 = v9;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:{1, v17, v18, v19, v20}];
  [(CMLKeywordPIRClient *)self requestDataByKeywords:v15 shardIds:v14 completionHandler:v13];

  _Block_object_dispose(v24, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __70__CMLKeywordPIRClient_requestDataByKeyword_shardId_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = [v5 underlyingErrors];
    v8 = [v7 firstObject];
    v9 = [v6 description];
    v10 = [CMLError errorWithCode:400 underlyingError:v8 description:v9];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  if (v24 && [v24 count] == 1)
  {
    v13 = [v24 objectAtIndexedSubscript:0];
    v14 = [MEMORY[0x277CBEB68] null];

    if (v13 == v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v24 objectAtIndexedSubscript:0];
    }

    v23 = *(*(*(a1 + 40) + 8) + 40);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v16 = MEMORY[0x277CCACA8];
      v17 = NSStringFromSelector(*(a1 + 48));
      v18 = [v16 stringWithFormat:@"%@ returned no result and no error", v17];

      v19 = [CMLError errorWithCode:400 underlyingError:v6 description:v18];
      v20 = *(*(a1 + 40) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;

      v22 = *(*(*(a1 + 40) + 8) + 40);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)requestDataByKeywords:(id)a3 shardIds:(id)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__CMLKeywordPIRClient_requestDataByKeywords_shardIds_completionHandler___block_invoke;
  aBlock[3] = &unk_2785419B0;
  v10 = v9;
  v31 = v10;
  v11 = a4;
  v12 = a3;
  v13 = _Block_copy(aBlock);
  v14 = [(CMLPIRClient *)self connection];
  v15 = [(CMLPIRClient *)self dispatchQueue];
  v16 = [CMLXPC asyncProxyToConnection:v14 dispatchQueue:v15 errorHandler:v13];

  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __72__CMLKeywordPIRClient_requestDataByKeywords_shardIds_completionHandler___block_invoke_2;
  v26 = &unk_278541A00;
  v29 = a2;
  v27 = self;
  v17 = v10;
  v28 = v17;
  v18 = _Block_copy(&v23);
  v19 = [CMLLog client:v23];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = NSStringFromSelector(a2);
    *buf = 138543362;
    v33 = v20;
    _os_log_impl(&dword_224E26000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v21 = [(CMLPIRClient *)self clientConfig];
  [v16 requestDataByKeywords:v12 shardIds:v11 clientConfig:v21 reply:v18];

  v22 = *MEMORY[0x277D85DE8];
}

void __72__CMLKeywordPIRClient_requestDataByKeywords_shardIds_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  v8 = +[CMLLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    *buf = 138543874;
    v23 = v9;
    v24 = 2048;
    v25 = v7;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, results(%lu) error:%{public}@", buf, 0x20u);
  }

  if (!v5)
  {
    if (v6)
    {
      goto LABEL_9;
    }

LABEL_10:
    v12 = [CMLError errorWithCode:401 description:@"requestDataByKeywords resulted in no results and no error"];
    goto LABEL_11;
  }

  v10 = [v5 count];
  if (!v6 && !v10)
  {
    goto LABEL_10;
  }

  if (v6)
  {
LABEL_9:
    v12 = [CMLError errorWithCode:401 underlyingError:v6 description:@"Unable to request data by keywords batch"];
LABEL_11:
    v11 = v12;
    goto LABEL_12;
  }

  v11 = 0;
LABEL_12:
  v13 = [*(a1 + 32) dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CMLKeywordPIRClient_requestDataByKeywords_shardIds_completionHandler___block_invoke_121;
  block[3] = &unk_2785419D8;
  v14 = *(a1 + 40);
  v20 = v11;
  v21 = v14;
  v19 = v5;
  v15 = v11;
  v16 = v5;
  dispatch_async(v13, block);

  v17 = *MEMORY[0x277D85DE8];
}

- (id)dataByStringKeyword:(id)a3 shardId:(id)a4 error:(id *)a5
{
  v8 = a4;
  v9 = [a3 dataUsingEncoding:4];
  v10 = [(CMLKeywordPIRClient *)self dataByKeyword:v9 shardId:v8 error:a5];

  return v10;
}

- (id)dataByKeyword:(id)a3 shardId:(id)a4 error:(id *)a5
{
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v25[0] = v9;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v24 = v8;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v24 count:1];
  v23 = 0;
  v13 = [(CMLKeywordPIRClient *)self dataByKeywords:v12 shardIds:v11 error:&v23];
  v14 = v23;

  if (a5 && v14)
  {
    v15 = [v14 underlyingErrors];
    v16 = [v15 firstObject];
    v17 = [v14 description];
    *a5 = [CMLError errorWithCode:400 underlyingError:v16 description:v17];
  }

  if (v13 && [v13 count] && (objc_msgSend(v13, "objectAtIndexedSubscript:", 0), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEB68], "null"), v19 = objc_claimAutoreleasedReturnValue(), v19, v18, v18 != v19))
  {
    v20 = [v13 objectAtIndexedSubscript:0];
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)dataByStringKeywords:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a3;
  v8 = [v6 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __50__CMLKeywordPIRClient_dataByStringKeywords_error___block_invoke;
  v12[3] = &unk_278541C30;
  v13 = v8;
  v9 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

  v10 = [(CMLKeywordPIRClient *)self dataByKeywords:v9 error:a4];

  return v10;
}

void __50__CMLKeywordPIRClient_dataByStringKeywords_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dataUsingEncoding:4];
  [v2 addObject:v3];
}

- (id)dataByStringKeywords:(id)a3 shardIds:(id)a4 error:(id *)a5
{
  v8 = MEMORY[0x277CBEB18];
  v9 = a4;
  v10 = a3;
  v11 = [v8 array];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__CMLKeywordPIRClient_dataByStringKeywords_shardIds_error___block_invoke;
  v15[3] = &unk_278541C30;
  v16 = v11;
  v12 = v11;
  [v10 enumerateObjectsUsingBlock:v15];

  v13 = [(CMLKeywordPIRClient *)self dataByKeywords:v12 shardIds:v9 error:a5];

  return v13;
}

void __59__CMLKeywordPIRClient_dataByStringKeywords_shardIds_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dataUsingEncoding:4];
  [v2 addObject:v3];
}

- (id)dataByKeywords:(id)a3 shardIds:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v34 = 0;
  v11 = [(CMLPIRClient *)self connection];
  v12 = [CMLXPC syncProxyToConnection:v11 error:&v34];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __53__CMLKeywordPIRClient_dataByKeywords_shardIds_error___block_invoke;
  v21[3] = &unk_278541A28;
  v21[5] = &v28;
  v21[6] = a2;
  v21[4] = &v22;
  v13 = _Block_copy(v21);
  v14 = +[CMLLog client];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138543362;
    v36 = v15;
    _os_log_impl(&dword_224E26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v16 = [(CMLPIRClient *)self clientConfig];
  [v12 requestDataByKeywords:v9 shardIds:v10 clientConfig:v16 reply:v13];

  if (a5)
  {
    v17 = v34;
    if (!v34)
    {
      v17 = v29[5];
    }

    *a5 = v17;
  }

  v18 = v23[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __53__CMLKeywordPIRClient_dataByKeywords_shardIds_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [v6 count];
  v9 = +[CMLLog client];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(*(a1 + 48));
    v15 = 138543874;
    v16 = v10;
    v17 = 2048;
    v18 = v8;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_224E26000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, results(%lu), error:%{public}@", &v15, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v11 = [CMLError errorWithCode:401 underlyingError:v7 description:@"Unable to request data by keywords batch"];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)removeCachedEntriesByStringKeywords:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB18];
  v7 = a3;
  v8 = [v6 array];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__CMLKeywordPIRClient_removeCachedEntriesByStringKeywords_error___block_invoke;
  v12[3] = &unk_278541C30;
  v13 = v8;
  v9 = v8;
  [v7 enumerateObjectsUsingBlock:v12];

  v10 = [(CMLKeywordPIRClient *)self removeCachedEntriesByKeywords:v9 error:a4];

  return v10;
}

void __65__CMLKeywordPIRClient_removeCachedEntriesByStringKeywords_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 dataUsingEncoding:4];
  [v2 addObject:v3];
}

- (id)removeCachedEntriesByKeywords:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v31 = 0;
  v8 = [(CMLPIRClient *)self connection];
  v9 = [CMLXPC syncProxyToConnection:v8 error:&v31];

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
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __59__CMLKeywordPIRClient_removeCachedEntriesByKeywords_error___block_invoke;
  v18[3] = &unk_278541C80;
  v18[5] = &v25;
  v18[6] = a2;
  v18[4] = &v19;
  v10 = _Block_copy(v18);
  v11 = +[CMLLog client];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543362;
    v33 = v12;
    _os_log_impl(&dword_224E26000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v13 = [(CMLPIRClient *)self clientConfig];
  [v9 removeCachedEntriesByKeywords:v7 clientConfig:v13 reply:v10];

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

void __59__CMLKeywordPIRClient_removeCachedEntriesByKeywords_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[CMLLog client];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(*(a1 + 48));
    v15 = 138543874;
    v16 = v7;
    v17 = 2048;
    v18 = a2;
    v19 = 2114;
    v20 = v5;
    _os_log_impl(&dword_224E26000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, removed (%ldl) entries, error:%{public}@", &v15, 0x20u);
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  if (v5)
  {
    v11 = [CMLError errorWithCode:412 underlyingError:v5 description:@"Unable to remove cached entries by keywords"];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __86__CMLKeywordPIRClient_constructPIRRequestWithKeyword_withEvaluationKey_shardId_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d), error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:402 underlyingError:v7 description:@"Unable to create PIR request with keyword due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:403 description:@"Unable to create PIR request with keyword due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
}

- (id)constructPIRBatchRequestWithKeywords:(id)a3 shardIds:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v34 = 0;
  v11 = [(CMLPIRClient *)self connection];
  v12 = [CMLXPC syncProxyToConnection:v11 error:&v34];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__CMLKeywordPIRClient_constructPIRBatchRequestWithKeywords_shardIds_error___block_invoke;
  v21[3] = &unk_278541A50;
  v21[5] = &v28;
  v21[6] = a2;
  v21[4] = &v22;
  v13 = _Block_copy(v21);
  if (!v10)
  {
    v10 = MEMORY[0x277CBEBF8];
  }

  v14 = +[CMLLog client];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138543362;
    v36 = v15;
    _os_log_impl(&dword_224E26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v16 = [(CMLPIRClient *)self clientConfig];
  [v12 constructPIRBatchRequestWithKeywords:v9 shardIds:v10 clientConfig:v16 reply:v13];

  if (a5)
  {
    v17 = v34;
    if (!v34)
    {
      v17 = v29[5];
    }

    *a5 = v17;
  }

  v18 = v23[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __75__CMLKeywordPIRClient_constructPIRBatchRequestWithKeywords_shardIds_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d), error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:404 underlyingError:v7 description:@"Unable to create PIR request with batch of keywords due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:405 description:@"Unable to create PIR request with batch of keywords due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
}

- (id)decryptPIRResponse:(id)a3 keyword:(id)a4 shardId:(id)a5 error:(id *)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v37 = 0;
  v14 = [(CMLPIRClient *)self connection];
  v15 = [CMLXPC syncProxyToConnection:v14 error:&v37];

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__3;
  v35 = __Block_byref_object_dispose__3;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__3;
  v29 = __Block_byref_object_dispose__3;
  v30 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __64__CMLKeywordPIRClient_decryptPIRResponse_keyword_shardId_error___block_invoke;
  v24[3] = &unk_278541A50;
  v24[5] = &v31;
  v24[6] = a2;
  v24[4] = &v25;
  v16 = _Block_copy(v24);
  v17 = +[CMLLog client];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromSelector(a2);
    *buf = 138543362;
    v39 = v18;
    _os_log_impl(&dword_224E26000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v19 = [(CMLPIRClient *)self clientConfig];
  [v15 decryptPIRResponse:v11 keyword:v12 shardId:v13 clientConfig:v19 reply:v16];

  if (a6)
  {
    v20 = v37;
    if (!v37)
    {
      v20 = v32[5];
    }

    *a6 = v20;
  }

  v21 = v26[5];

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

void __64__CMLKeywordPIRClient_decryptPIRResponse_keyword_shardId_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d), error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:406 underlyingError:v7 description:@"Unable to decrypt PIR response with keyword and shardId due to errors"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)decryptPIRBatchResponse:(id)a3 keywords:(id)a4 error:(id *)a5
{
  v37 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v34 = 0;
  v11 = [(CMLPIRClient *)self connection];
  v12 = [CMLXPC syncProxyToConnection:v11 error:&v34];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__3;
  v32 = __Block_byref_object_dispose__3;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__CMLKeywordPIRClient_decryptPIRBatchResponse_keywords_error___block_invoke;
  v21[3] = &unk_278541A28;
  v21[5] = &v28;
  v21[6] = a2;
  v21[4] = &v22;
  v13 = _Block_copy(v21);
  v14 = +[CMLLog client];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 138543362;
    v36 = v15;
    _os_log_impl(&dword_224E26000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v16 = [(CMLPIRClient *)self clientConfig];
  [v12 decryptPIRBatchResponse:v9 keywords:v10 clientConfig:v16 reply:v13];

  if (a5)
  {
    v17 = v34;
    if (!v34)
    {
      v17 = v29[5];
    }

    *a5 = v17;
  }

  v18 = v23[5];

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void __62__CMLKeywordPIRClient_decryptPIRBatchResponse_keywords_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = [v6 count];
  v9 = +[CMLLog client];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(*(a1 + 48));
    v15 = 138543874;
    v16 = v10;
    v17 = 2048;
    v18 = v8;
    v19 = 2114;
    v20 = v7;
    _os_log_impl(&dword_224E26000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, results(%lu) error:%{public}@", &v15, 0x20u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v11 = [CMLError errorWithCode:408 underlyingError:v7 description:@"Unable to decrypt PIR response with batch of keywords due to errors"];
  }

  else
  {
    if (*(*(*(a1 + 32) + 8) + 40))
    {
      goto LABEL_7;
    }

    v11 = [CMLError errorWithCode:409 description:@"Unable to decrypt PIR response with batch of keywords due to empty response"];
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

LABEL_7:
  v14 = *MEMORY[0x277D85DE8];
}

- (id)asyncResponseDataByKeyword:(id)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  v15 = 0;
  v8 = [(CMLKeywordPIRClient *)self asyncResponseDataByKeywords:v7 error:&v15];
  v9 = v15;

  if (a4 && v9)
  {
    v10 = [v9 underlyingErrors];
    v11 = [v10 firstObject];
    v12 = [v9 description];
    *a4 = [CMLError errorWithCode:410 underlyingError:v11 description:v12];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)asyncResponseDataByKeywords:(id)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v31 = 0;
  v8 = [(CMLPIRClient *)self connection];
  v9 = [CMLXPC syncProxyToConnection:v8 error:&v31];

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
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __57__CMLKeywordPIRClient_asyncResponseDataByKeywords_error___block_invoke;
  v18[3] = &unk_278541A78;
  v18[5] = &v25;
  v18[6] = a2;
  v18[4] = &v19;
  v10 = _Block_copy(v18);
  v11 = +[CMLLog client];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 138543362;
    v33 = v12;
    _os_log_impl(&dword_224E26000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v13 = [(CMLPIRClient *)self clientConfig];
  [v9 asyncResponseDataByKeywords:v7 clientConfig:v13 reply:v10];

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

void __57__CMLKeywordPIRClient_asyncResponseDataByKeywords_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v10 = [CMLError errorWithCode:411 underlyingError:v7 description:@"Unable to request data by keywords batch with async response"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end
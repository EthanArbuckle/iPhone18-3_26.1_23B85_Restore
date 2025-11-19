@interface CMLIndexPIRClient
- (id)constructPIRBatchRequestWithIndices:(id)a3 error:(id *)a4;
- (id)constructPIRRequestWithIndex:(unint64_t)a3 error:(id *)a4;
- (id)dataByIndex:(unint64_t)a3 error:(id *)a4;
- (id)dataByIndices:(id)a3 error:(id *)a4;
- (id)decryptPIRBatchResponse:(id)a3 indices:(id)a4 error:(id *)a5;
- (id)decryptPIRResponse:(id)a3 index:(unint64_t)a4 error:(id *)a5;
- (void)requestDataByIndex:(unint64_t)a3 completionHandler:(id)a4;
- (void)requestDataByIndices:(id)a3 completionHandler:(id)a4;
@end

@implementation CMLIndexPIRClient

- (void)requestDataByIndex:(unint64_t)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__CMLIndexPIRClient_requestDataByIndex_completionHandler___block_invoke;
  aBlock[3] = &unk_2785419B0;
  v8 = v7;
  v27 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(CMLPIRClient *)self connection];
  v11 = [(CMLPIRClient *)self dispatchQueue];
  v12 = [CMLXPC asyncProxyToConnection:v10 dispatchQueue:v11 errorHandler:v9];

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __58__CMLIndexPIRClient_requestDataByIndex_completionHandler___block_invoke_2;
  v22 = &unk_278541C08;
  v25 = a2;
  v23 = self;
  v13 = v8;
  v24 = v13;
  v14 = _Block_copy(&v19);
  v15 = [CMLLog client:v19];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 138543362;
    v29 = v16;
    _os_log_impl(&dword_224E26000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v17 = [(CMLPIRClient *)self clientConfig];
  [v12 requestDataByIndex:a3 clientConfig:v17 reply:v14];

  v18 = *MEMORY[0x277D85DE8];
}

void __58__CMLIndexPIRClient_requestDataByIndex_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, success(%d) error:%{public}@", buf, 0x1Cu);
  }

  if (v6)
  {
    v9 = [CMLError errorWithCode:300 underlyingError:v6 description:@"Unable to request data by index"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [*(a1 + 32) dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CMLIndexPIRClient_requestDataByIndex_completionHandler___block_invoke_60;
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

- (void)requestDataByIndices:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__CMLIndexPIRClient_requestDataByIndices_completionHandler___block_invoke;
  aBlock[3] = &unk_2785419B0;
  v8 = v7;
  v28 = v8;
  v9 = a3;
  v10 = _Block_copy(aBlock);
  v11 = [(CMLPIRClient *)self connection];
  v12 = [(CMLPIRClient *)self dispatchQueue];
  v13 = [CMLXPC asyncProxyToConnection:v11 dispatchQueue:v12 errorHandler:v10];

  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __60__CMLIndexPIRClient_requestDataByIndices_completionHandler___block_invoke_2;
  v23 = &unk_278541A00;
  v26 = a2;
  v24 = self;
  v14 = v8;
  v25 = v14;
  v15 = _Block_copy(&v20);
  v16 = [CMLLog client:v20];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    *buf = 138543362;
    v30 = v17;
    _os_log_impl(&dword_224E26000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v18 = [(CMLPIRClient *)self clientConfig];
  [v13 requestDataByIndices:v9 clientConfig:v18 reply:v15];

  v19 = *MEMORY[0x277D85DE8];
}

void __60__CMLIndexPIRClient_requestDataByIndices_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  v8 = +[CMLLog client];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(*(a1 + 48));
    *buf = 138543874;
    v21 = v9;
    v22 = 2048;
    v23 = v7;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, results(%lu), error:%{public}@", buf, 0x20u);
  }

  if (v6)
  {
    v10 = [CMLError errorWithCode:301 underlyingError:v6 description:@"Unable to request data by indices batch"];
  }

  else
  {
    v10 = 0;
  }

  v11 = [*(a1 + 32) dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__CMLIndexPIRClient_requestDataByIndices_completionHandler___block_invoke_65;
  block[3] = &unk_2785419D8;
  v12 = *(a1 + 40);
  v18 = v10;
  v19 = v12;
  v17 = v5;
  v13 = v10;
  v14 = v5;
  dispatch_async(v11, block);

  v15 = *MEMORY[0x277D85DE8];
}

- (id)dataByIndex:(unint64_t)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
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
  v18[2] = __39__CMLIndexPIRClient_dataByIndex_error___block_invoke;
  v18[3] = &unk_278541A50;
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
  [v9 requestDataByIndex:a3 clientConfig:v13 reply:v10];

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

void __39__CMLIndexPIRClient_dataByIndex_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d) error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:300 underlyingError:v7 description:@"Unable to request data by index"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)dataByIndices:(id)a3 error:(id *)a4
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
  v18[2] = __41__CMLIndexPIRClient_dataByIndices_error___block_invoke;
  v18[3] = &unk_278541A28;
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
  [v9 requestDataByIndices:v7 clientConfig:v13 reply:v10];

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

void __41__CMLIndexPIRClient_dataByIndices_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v11 = [CMLError errorWithCode:301 underlyingError:v7 description:@"Unable to request data by indices batch"];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)constructPIRRequestWithIndex:(unint64_t)a3 error:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
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
  v18[2] = __56__CMLIndexPIRClient_constructPIRRequestWithIndex_error___block_invoke;
  v18[3] = &unk_278541A50;
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
  [v9 constructPIRRequestWithIndex:a3 clientConfig:v13 reply:v10];

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

void __56__CMLIndexPIRClient_constructPIRRequestWithIndex_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d) error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:302 underlyingError:v7 description:@"Unable to create PIR request with index due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:303 description:@"Unable to create PIR request with index due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
}

- (id)constructPIRBatchRequestWithIndices:(id)a3 error:(id *)a4
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
  v18[2] = __63__CMLIndexPIRClient_constructPIRBatchRequestWithIndices_error___block_invoke;
  v18[3] = &unk_278541A50;
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
  [v9 constructPIRBatchRequestWithIndices:v7 clientConfig:v13 reply:v10];

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

void __63__CMLIndexPIRClient_constructPIRBatchRequestWithIndices_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d) error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:304 underlyingError:v7 description:@"Unable to create PIR request with batch of indices due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:305 description:@"Unable to create PIR request with batch of indices due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
}

- (id)decryptPIRResponse:(id)a3 index:(unint64_t)a4 error:(id *)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v33 = 0;
  v10 = [(CMLPIRClient *)self connection];
  v11 = [CMLXPC syncProxyToConnection:v10 error:&v33];

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__3;
  v31 = __Block_byref_object_dispose__3;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__3;
  v25 = __Block_byref_object_dispose__3;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __52__CMLIndexPIRClient_decryptPIRResponse_index_error___block_invoke;
  v20[3] = &unk_278541A50;
  v20[5] = &v27;
  v20[6] = a2;
  v20[4] = &v21;
  v12 = _Block_copy(v20);
  v13 = +[CMLLog client];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 138543362;
    v35 = v14;
    _os_log_impl(&dword_224E26000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  v15 = [(CMLPIRClient *)self clientConfig];
  [v11 decryptPIRResponse:v9 index:a4 clientConfig:v15 reply:v12];

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

void __52__CMLIndexPIRClient_decryptPIRResponse_index_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d) error:%{public}@", &v14, 0x1Cu);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  if (v7)
  {
    v10 = [CMLError errorWithCode:306 underlyingError:v7 description:@"Unable to decrypt PIR response with index due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:307 description:@"Unable to decrypt PIR response with index due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
}

- (id)decryptPIRBatchResponse:(id)a3 indices:(id)a4 error:(id *)a5
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
  v21[2] = __59__CMLIndexPIRClient_decryptPIRBatchResponse_indices_error___block_invoke;
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
  [v12 decryptPIRBatchResponse:v9 indices:v10 clientConfig:v16 reply:v13];

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

void __59__CMLIndexPIRClient_decryptPIRBatchResponse_indices_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v11 = [CMLError errorWithCode:308 underlyingError:v7 description:@"Unable to decrypt PIR batch response with indices due to errors"];
  }

  else
  {
    if (*(*(*(a1 + 32) + 8) + 40))
    {
      goto LABEL_7;
    }

    v11 = [CMLError errorWithCode:309 description:@"Unable to decrypt PIR batch response with indices due to empty response"];
  }

  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

LABEL_7:
  v14 = *MEMORY[0x277D85DE8];
}

@end
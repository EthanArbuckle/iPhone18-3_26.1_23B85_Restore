@interface CMLLocationPIRClient
- (id)constructPIRRequestWithLatitude:(double)latitude longitude:(double)longitude error:(id *)error;
- (id)dataByLatitude:(double)latitude longitude:(double)longitude error:(id *)error;
- (id)decryptPIRResponse:(id)response latitude:(double)latitude longitude:(double)longitude error:(id *)error;
- (void)requestDataByLatitude:(double)latitude longitude:(double)longitude completionHandler:(id)handler;
@end

@implementation CMLLocationPIRClient

- (void)requestDataByLatitude:(double)latitude longitude:(double)longitude completionHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__CMLLocationPIRClient_requestDataByLatitude_longitude_completionHandler___block_invoke;
  aBlock[3] = &unk_2785419B0;
  v10 = handlerCopy;
  v29 = v10;
  v11 = _Block_copy(aBlock);
  connection = [(CMLPIRClient *)self connection];
  dispatchQueue = [(CMLPIRClient *)self dispatchQueue];
  v14 = [CMLXPC asyncProxyToConnection:connection dispatchQueue:dispatchQueue errorHandler:v11];

  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = __74__CMLLocationPIRClient_requestDataByLatitude_longitude_completionHandler___block_invoke_2;
  v24 = &unk_278541C08;
  v27 = a2;
  selfCopy = self;
  v15 = v10;
  v26 = v15;
  v16 = _Block_copy(&v21);
  v17 = [CMLLog client:v21];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = NSStringFromSelector(a2);
    *buf = 138543362;
    v31 = v18;
    _os_log_impl(&dword_224E26000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v14 requestDataByLatitude:clientConfig longitude:v16 clientConfig:latitude reply:longitude];

  v20 = *MEMORY[0x277D85DE8];
}

void __74__CMLLocationPIRClient_requestDataByLatitude_longitude_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
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
    _os_log_impl(&dword_224E26000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ XPC request complete, data(%d) error:%{public}@", buf, 0x1Cu);
  }

  if (v6)
  {
    v9 = [CMLError errorWithCode:500 underlyingError:v6 description:@"Unable to request data by location"];
  }

  else
  {
    v9 = 0;
  }

  v10 = [*(a1 + 32) dispatchQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CMLLocationPIRClient_requestDataByLatitude_longitude_completionHandler___block_invoke_190;
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

- (id)dataByLatitude:(double)latitude longitude:(double)longitude error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = 0;
  connection = [(CMLPIRClient *)self connection];
  v11 = [CMLXPC syncProxyToConnection:connection error:&v33];

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
  v20[2] = __55__CMLLocationPIRClient_dataByLatitude_longitude_error___block_invoke;
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

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v11 requestDataByLatitude:clientConfig longitude:v12 clientConfig:latitude reply:longitude];

  if (error)
  {
    v16 = v33;
    if (!v33)
    {
      v16 = v28[5];
    }

    *error = v16;
  }

  v17 = v22[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __55__CMLLocationPIRClient_dataByLatitude_longitude_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v10 = [CMLError errorWithCode:500 underlyingError:v7 description:@"Unable to request data by location"];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)constructPIRRequestWithLatitude:(double)latitude longitude:(double)longitude error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  v33 = 0;
  connection = [(CMLPIRClient *)self connection];
  v11 = [CMLXPC syncProxyToConnection:connection error:&v33];

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
  v20[2] = __72__CMLLocationPIRClient_constructPIRRequestWithLatitude_longitude_error___block_invoke;
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

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v11 constructPIRRequestWithLatitude:clientConfig longitude:v12 clientConfig:latitude reply:longitude];

  if (error)
  {
    v16 = v33;
    if (!v33)
    {
      v16 = v28[5];
    }

    *error = v16;
  }

  v17 = v22[5];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

void __72__CMLLocationPIRClient_constructPIRRequestWithLatitude_longitude_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v10 = [CMLError errorWithCode:501 underlyingError:v7 description:@"Unable to create PIR request with location due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:502 description:@"Unable to create PIR request with location due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
}

- (id)decryptPIRResponse:(id)response latitude:(double)latitude longitude:(double)longitude error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v35 = 0;
  connection = [(CMLPIRClient *)self connection];
  v13 = [CMLXPC syncProxyToConnection:connection error:&v35];

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__3;
  v33 = __Block_byref_object_dispose__3;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__3;
  v27 = __Block_byref_object_dispose__3;
  v28 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __68__CMLLocationPIRClient_decryptPIRResponse_latitude_longitude_error___block_invoke;
  v22[3] = &unk_278541A50;
  v22[5] = &v29;
  v22[6] = a2;
  v22[4] = &v23;
  v14 = _Block_copy(v22);
  v15 = +[CMLLog client];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 138543362;
    v37 = v16;
    _os_log_impl(&dword_224E26000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Sending XPC request", buf, 0xCu);
  }

  clientConfig = [(CMLPIRClient *)self clientConfig];
  [v13 decryptPIRResponse:responseCopy latitude:clientConfig longitude:v14 clientConfig:latitude reply:longitude];

  if (error)
  {
    v18 = v35;
    if (!v35)
    {
      v18 = v30[5];
    }

    *error = v18;
  }

  v19 = v24[5];

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void __68__CMLLocationPIRClient_decryptPIRResponse_latitude_longitude_error___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v10 = [CMLError errorWithCode:503 underlyingError:v7 description:@"Unable to decrypt PIR response with location due to errors"];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v10 = [CMLError errorWithCode:504 description:@"Unable to decrypt PIR response with location due to empty response"];
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

LABEL_7:
  v13 = *MEMORY[0x277D85DE8];
}

@end
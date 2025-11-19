@interface HMDCameraClipAppendStreamingAssetOperation
+ (BOOL)shouldRetry;
+ (NSString)metadataPropertyName;
+ (NSString)streamingAssetPropertyName;
+ (id)logCategory;
- (HMDCameraClipAppendStreamingAssetOperation)initWithClipModelID:(id)a3 localZone:(id)a4 data:(id)a5 metadata:(id)a6 encryptionManager:(id)a7;
- (HMDCameraClipAppendStreamingAssetOperation)initWithClipModelID:(id)a3 localZone:(id)a4 data:(id)a5 metadata:(id)a6 encryptionManager:(id)a7 dataSource:(id)a8;
- (id)_retryDelayForError:(id)a3;
- (id)_updateClipModel:(id)a3 usingStreamingAsset:(id)a4;
- (id)attributeDescriptions;
- (void)cancelWithError:(id)a3;
- (void)finish;
- (void)main;
- (void)timerDidFire:(id)a3;
@end

@implementation HMDCameraClipAppendStreamingAssetOperation

- (id)attributeDescriptions
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = HMDCameraClipAppendStreamingAssetOperation;
  v3 = [(HMDCameraClipOperation *)&v15 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  v5 = [(HMDCameraClipAppendStreamingAssetOperation *)self data];
  v6 = [v5 shortDescription];
  v7 = [v4 initWithName:@"Data" value:v6];
  v16[0] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMDCameraClipAppendStreamingAssetOperation *)self metadata];
  v10 = [v8 initWithName:@"Metadata" value:v9];
  v16[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v12 = [v3 arrayByAddingObjectsFromArray:v11];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)timerDidFire:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDCameraClipAppendStreamingAssetOperation *)self retryTimer];

  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
  if (v5 == v4)
  {
    if (v9)
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Retry timer fired for append", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    [(HMDCameraClipAppendStreamingAssetOperation *)v7 setRetryTimer:0];
    [(HMDCameraClipAppendStreamingAssetOperation *)v7 main];
  }

  else
  {
    if (v9)
    {
      v10 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Operation timed out, cancelling", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:13];
    [(HMDCameraClipAppendStreamingAssetOperation *)v7 cancelWithError:v11];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)_retryDelayForError:(id)a3
{
  v3 = a3;
  if ([objc_opt_class() shouldRetry] && (objc_msgSend(v3, "domain"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", *MEMORY[0x277CBBF50]), v4, v5))
  {
    v6 = [v3 code];
    v7 = &unk_28662BE68;
    if (v6 != 34 && v6 != 121)
    {
      v8 = [v3 userInfo];
      v7 = [v8 hmf_numberForKey:*MEMORY[0x277CBBF68]];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_updateClipModel:(id)a3 usingStreamingAsset:(id)a4
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277D17130]) initWithUploadStreamingAsset:v7];
  v9 = [objc_opt_class() streamingAssetPropertyName];
  [v6 hmbSetProperty:v8 named:v9];

  v10 = [(HMDCameraClipAppendStreamingAssetOperation *)self metadata];
  LODWORD(v9) = [v10 hasDuration];

  if (v9)
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = [v6 duration];
    [v12 doubleValue];
    v14 = v13;
    v15 = [(HMDCameraClipAppendStreamingAssetOperation *)self metadata];
    [v15 duration];
    v17 = [v11 numberWithDouble:v14 + v16];
    [v6 setDuration:v17];

    v18 = MEMORY[0x277CCABB0];
    v19 = [v6 size];
    v20 = [v19 unsignedIntegerValue];
    v21 = [(HMDCameraClipAppendStreamingAssetOperation *)self metadata];
    v22 = [v18 numberWithUnsignedLongLong:{objc_msgSend(v21, "byteLength") + v20}];
    [v6 setSize:v22];
  }

  v23 = [objc_opt_class() metadataPropertyName];
  v24 = [v6 hmbPropertyNamed:v23];
  v25 = v24;
  v26 = MEMORY[0x277CBEBF8];
  if (v24)
  {
    v26 = v24;
  }

  v27 = v26;

  v28 = [(HMDCameraClipAppendStreamingAssetOperation *)self metadata];
  v29 = [v28 data];
  v30 = [v27 arrayByAddingObject:v29];

  v31 = [objc_opt_class() metadataPropertyName];
  [v6 hmbSetProperty:v30 named:v31];

  v32 = objc_autoreleasePoolPush();
  v33 = self;
  v34 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = HMFGetLogIdentifier();
    *buf = 138543362;
    v42 = v35;
    _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Submitting clip model update", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v32);
  v36 = [(HMDCameraClipOperation *)v33 updateClipModel:v6];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __83__HMDCameraClipAppendStreamingAssetOperation__updateClipModel_usingStreamingAsset___block_invoke;
  v40[3] = &unk_2797330A0;
  v40[4] = v33;
  v37 = [v36 flatMap:v40];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

id __83__HMDCameraClipAppendStreamingAssetOperation__updateClipModel_usingStreamingAsset___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 mirrorOutputResult];

  if (v4)
  {
    v5 = [v3 mirrorOutputResult];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@No mirrorOutputResult available for clip update, failing operation", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v10 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:8];
    v5 = [v10 futureWithError:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)cancelWithError:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMDCameraClipAppendStreamingAssetOperation;
  [(HMDCameraClipOperation *)&v4 cancelWithError:a3];
  [(HMDCameraClipAppendStreamingAssetOperation *)self setRetryTimer:0];
}

- (void)finish
{
  v3.receiver = self;
  v3.super_class = HMDCameraClipAppendStreamingAssetOperation;
  [(HMDCameraClipOperation *)&v3 finish];
  [(HMDCameraClipAppendStreamingAssetOperation *)self setRetryTimer:0];
}

- (void)main
{
  v14.receiver = self;
  v14.super_class = HMDCameraClipAppendStreamingAssetOperation;
  [(HMDCameraClipOperation *)&v14 main];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__123908;
  v12[4] = __Block_byref_object_dispose__123909;
  v13 = 0;
  v3 = [(HMDCameraClipOperation *)self fetchClipModel];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke;
  v11[3] = &unk_27972C1A8;
  v11[4] = self;
  v11[5] = v12;
  v4 = [v3 flatMap:v11];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke_28;
  v10[3] = &unk_27972C1D0;
  v10[4] = self;
  v10[5] = v12;
  v5 = [v4 flatMap:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke_30;
  v9[3] = &unk_2797358F0;
  v9[4] = self;
  v6 = [v5 addSuccessBlock:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke_32;
  v8[3] = &unk_2797359D8;
  v8[4] = self;
  v7 = [v6 addFailureBlock:v8];

  _Block_object_dispose(v12, 8);
}

id __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v5 = *(a1 + 32);
  v6 = [objc_opt_class() streamingAssetPropertyName];
  v7 = [v4 hmbPropertyNamed:v6];

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v38 = v4;
    v11 = [v10 uploadStreamingAsset];
    v12 = [*(a1 + 32) encryptionManager];
    v13 = [*(a1 + 32) data];
    v14 = [v12 encryptedDataContextFromData:v13];

    v15 = [v14 dataRepresentation];
    v16 = [v11 bytesUploaded];
    v17 = [*(a1 + 32) metadata];
    [v17 setByteOffset:v16];

    v18 = [v15 length];
    v19 = [*(a1 + 32) metadata];
    [v19 setByteLength:v18];

    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v23;
      v41 = 2048;
      v42 = [v15 length];
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Appending %lu bytes of data to streaming asset", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = objc_alloc_init(MEMORY[0x277D2C900]);
    v25 = [objc_alloc(MEMORY[0x277CBC6D8]) initWithStreamingAsset:v11];
    v26 = [*(a1 + 32) dataSource];
    v27 = [v24 completionHandlerAdapter];
    [v26 appendData:v15 toStreamingAssetAppendContext:v25 completion:v27];

    v4 = v38;
  }

  else
  {
    v28 = objc_autoreleasePoolPush();
    v29 = *(a1 + 32);
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      v32 = *(a1 + 32);
      v33 = [objc_opt_class() streamingAssetPropertyName];
      *buf = 138544130;
      v40 = v31;
      v41 = 2112;
      v42 = v33;
      v43 = 2112;
      v44 = objc_opt_class();
      v45 = 2112;
      v46 = v8;
      v34 = v44;
      _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_ERROR, "%{public}@Property %@ was of unexpected class %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v28);
    v35 = MEMORY[0x277D2C900];
    v11 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:3];
    v24 = [v35 futureWithError:v11];
  }

  v36 = *MEMORY[0x277D85DE8];

  return v24;
}

id __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke_28(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully appended to streaming asset", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) _updateClipModel:*(*(*(a1 + 40) + 8) + 40) usingStreamingAsset:v3];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

void __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke_30(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully updated clip model with updated streaming asset", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  [*(a1 + 32) finish];

  v8 = *MEMORY[0x277D85DE8];
}

void __50__HMDCameraClipAppendStreamingAssetOperation_main__block_invoke_32(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = HMFGetLogIdentifier();
    v28 = 138543618;
    v29 = v7;
    v30 = 2112;
    v31 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to append to streaming asset: %@", &v28, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) _retryDelayForError:v3];
  if (v8)
  {
    v9 = v8;
    v10 = [*(a1 + 32) uploadOperationEvent];
    [v10 setRetryCount:{objc_msgSend(v10, "retryCount") + 1}];

    [v9 doubleValue];
    if (v11 < 0.5)
    {

      v9 = &unk_28662BE68;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v28 = 138543618;
      v29 = v15;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Retrying failed append in %@ seconds", &v28, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [*(a1 + 32) dataSource];
    [v9 doubleValue];
    v17 = [v16 timerWithTimeInterval:2 options:?];
    [*(a1 + 32) setRetryTimer:v17];

    v18 = *(a1 + 32);
    v19 = [v18 retryTimer];
    [v19 setDelegate:v18];

    v20 = [*(a1 + 32) underlyingQueue];
    v21 = [*(a1 + 32) retryTimer];
    [v21 setDelegateQueue:v20];

    v22 = [*(a1 + 32) retryTimer];
    [v22 resume];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      v28 = 138543362;
      v29 = v26;
      _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Unable to retry append operation, canceling", &v28, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    [*(a1 + 32) cancelWithError:v3];
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (HMDCameraClipAppendStreamingAssetOperation)initWithClipModelID:(id)a3 localZone:(id)a4 data:(id)a5 metadata:(id)a6 encryptionManager:(id)a7 dataSource:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!v14)
  {
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  if (!v15)
  {
LABEL_11:
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!v16)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!v17)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!v18)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  v20 = v19;
  if (!v19)
  {
LABEL_15:
    v24 = _HMFPreconditionFailure();
    return [(HMDCameraClipAppendStreamingAssetOperation *)v24 initWithClipModelID:v25 localZone:v26 data:v27 metadata:v28 encryptionManager:v29, v30];
  }

  v31.receiver = self;
  v31.super_class = HMDCameraClipAppendStreamingAssetOperation;
  v21 = [(HMDCameraClipOperation *)&v31 initWithClipModelID:v14 localZone:v15 dataSource:v19];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_data, a5);
    objc_storeStrong(&v22->_metadata, a6);
    objc_storeStrong(&v22->_encryptionManager, a7);
  }

  return v22;
}

- (HMDCameraClipAppendStreamingAssetOperation)initWithClipModelID:(id)a3 localZone:(id)a4 data:(id)a5 metadata:(id)a6 encryptionManager:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = objc_alloc_init(HMDCameraClipOperationDataSource);
  v18 = [(HMDCameraClipAppendStreamingAssetOperation *)self initWithClipModelID:v16 localZone:v15 data:v14 metadata:v13 encryptionManager:v12 dataSource:v17];

  return v18;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t12_123954 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t12_123954, &__block_literal_global_123955);
  }

  v3 = logCategory__hmf_once_v13_123956;

  return v3;
}

uint64_t __57__HMDCameraClipAppendStreamingAssetOperation_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v13_123956;
  logCategory__hmf_once_v13_123956 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

+ (BOOL)shouldRetry
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (NSString)metadataPropertyName
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (NSString)streamingAssetPropertyName
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end
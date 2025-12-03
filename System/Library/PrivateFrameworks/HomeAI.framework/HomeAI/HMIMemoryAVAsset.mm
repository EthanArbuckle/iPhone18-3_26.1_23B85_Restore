@interface HMIMemoryAVAsset
- (BOOL)loadValuesSynchronously;
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (HMIMemoryAVAsset)initWithData:(id)data;
@end

@implementation HMIMemoryAVAsset

- (HMIMemoryAVAsset)initWithData:(id)data
{
  dataCopy = data;
  v6 = [MEMORY[0x277CBEBC0] URLWithString:@"hmi://in-memory"];
  v12.receiver = self;
  v12.super_class = HMIMemoryAVAsset;
  v7 = [(HMIMemoryAVAsset *)&v12 initWithURL:v6 options:0];

  if (v7)
  {
    objc_storeStrong(&v7->_data, data);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("HMIMemoryAVAsset", v8);

    resourceLoader = [(HMIMemoryAVAsset *)v7 resourceLoader];
    [resourceLoader setDelegate:v7 queue:v9];
  }

  return v7;
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  v31 = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  resourceCopy = resource;
  contentInformationRequest = [resourceCopy contentInformationRequest];
  v9 = contentInformationRequest;
  if (contentInformationRequest)
  {
    [contentInformationRequest setContentType:*MEMORY[0x277CE5D98]];
    [v9 setContentLength:{-[NSData length](self->_data, "length")}];
    [v9 setByteRangeAccessSupported:1];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v27 = 138543618;
      v28 = v13;
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Fullfilled content request: %@", &v27, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  dataRequest = [resourceCopy dataRequest];
  v15 = dataRequest;
  if (!dataRequest)
  {
    goto LABEL_13;
  }

  if (([dataRequest requestedOffset] & 0x8000000000000000) == 0 && (objc_msgSend(v15, "requestedLength") & 0x8000000000000000) == 0)
  {
    requestedOffset = [v15 requestedOffset];
    v17 = [v15 requestedLength] + requestedOffset;
    if (v17 <= [(NSData *)self->_data length])
    {
      bytes = [(NSData *)self->_data bytes];
      requestedOffset2 = [v15 requestedOffset];
      v21 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&bytes[requestedOffset2] length:objc_msgSend(v15 freeWhenDone:{"requestedLength"), 0}];
      [v15 respondWithData:v21];

      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = HMFGetLogIdentifier();
        v27 = 138543618;
        v28 = v25;
        v29 = 2112;
        v30 = v15;
        _os_log_impl(&dword_22D12F000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Fullfilled data request: %@", &v27, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
LABEL_13:
      [resourceCopy finishLoading];
      v18 = 1;
      goto LABEL_14;
    }
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (BOOL)loadValuesSynchronously
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __43__HMIMemoryAVAsset_loadValuesSynchronously__block_invoke;
  v12[3] = &unk_278752868;
  v4 = v3;
  v13 = v4;
  [(HMIMemoryAVAsset *)self loadValuesAsynchronouslyForKeys:&unk_2840754E0 completionHandler:v12];
  v5 = dispatch_time(0, 2000000000);
  v6 = dispatch_semaphore_wait(v4, v5);
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_22D12F000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to loadValuesAsynchronouslyForKeys, due to timeout.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  return v6 == 0;
}

@end
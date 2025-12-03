@interface VCPInMemoryAVAsset
+ (id)assetWithData:(id)data;
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (VCPInMemoryAVAsset)initWithData:(id)data;
@end

@implementation VCPInMemoryAVAsset

- (VCPInMemoryAVAsset)initWithData:(id)data
{
  dataCopy = data;
  v6 = [MEMORY[0x1E695DFF8] URLWithString:@"mediaanalysis://in-memory"];
  v11.receiver = self;
  v11.super_class = VCPInMemoryAVAsset;
  v7 = [(VCPInMemoryAVAsset *)&v11 initWithURL:v6 options:0];

  if (v7)
  {
    objc_storeStrong(&v7->_data, data);
    v8 = dispatch_queue_create("com.apple.mediaanalysisd.VCPInMemoryAVAsset", 0);
    resourceLoader = [(VCPInMemoryAVAsset *)v7 resourceLoader];
    [resourceLoader setDelegate:v7 queue:v8];
  }

  return v7;
}

+ (id)assetWithData:(id)data
{
  dataCopy = data;
  v4 = [objc_alloc(objc_opt_class()) initWithData:dataCopy];

  return v4;
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  v28 = *MEMORY[0x1E69E9840];
  loaderCopy = loader;
  resourceCopy = resource;
  contentInformationRequest = [resourceCopy contentInformationRequest];
  v9 = contentInformationRequest;
  if (contentInformationRequest)
  {
    [contentInformationRequest setContentType:*MEMORY[0x1E69874B8]];
    [v9 setContentLength:{-[NSData length](self->_data, "length")}];
    [v9 setByteRangeAccessSupported:1];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  Fullfilled content request: %@", &buf, 0xCu);
    }
  }

  dataRequest = [resourceCopy dataRequest];
  if (!dataRequest)
  {
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  if (([dataRequest requestedOffset] & 0x8000000000000000) == 0 && (objc_msgSend(dataRequest, "requestedLength") & 0x8000000000000000) == 0)
  {
    requestedOffset = [dataRequest requestedOffset];
    requestedLength = [dataRequest requestedLength];
    if (requestedLength + requestedOffset <= [(NSData *)self->_data length])
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__57;
      v26 = __Block_byref_object_dispose__57;
      v27 = self->_data;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __77__VCPInMemoryAVAsset_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke;
      aBlock[3] = &unk_1E8350FA0;
      aBlock[4] = &buf;
      v15 = _Block_copy(aBlock);
      bytes = [(NSData *)self->_data bytes];
      requestedOffset2 = [dataRequest requestedOffset];
      v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&bytes[requestedOffset2] length:objc_msgSend(dataRequest deallocator:{"requestedLength"), v15}];
      [dataRequest respondWithData:v18];

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *v21 = 138412290;
        v22 = dataRequest;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  Fullfilled data request: %@", v21, 0xCu);
      }

      _Block_object_dispose(&buf, 8);
      objc_autoreleasePoolPop(v11);
LABEL_14:
      [resourceCopy finishLoading];
      v14 = 1;
      goto LABEL_15;
    }
  }

  objc_autoreleasePoolPop(v11);
  v14 = 0;
LABEL_15:

  return v14;
}

void __77__VCPInMemoryAVAsset_resourceLoader_shouldWaitForLoadingOfRequestedResource___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

@end
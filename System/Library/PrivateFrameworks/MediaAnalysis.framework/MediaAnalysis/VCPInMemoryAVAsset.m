@interface VCPInMemoryAVAsset
+ (id)assetWithData:(id)a3;
- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4;
- (VCPInMemoryAVAsset)initWithData:(id)a3;
@end

@implementation VCPInMemoryAVAsset

- (VCPInMemoryAVAsset)initWithData:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E695DFF8] URLWithString:@"mediaanalysis://in-memory"];
  v11.receiver = self;
  v11.super_class = VCPInMemoryAVAsset;
  v7 = [(VCPInMemoryAVAsset *)&v11 initWithURL:v6 options:0];

  if (v7)
  {
    objc_storeStrong(&v7->_data, a3);
    v8 = dispatch_queue_create("com.apple.mediaanalysisd.VCPInMemoryAVAsset", 0);
    v9 = [(VCPInMemoryAVAsset *)v7 resourceLoader];
    [v9 setDelegate:v7 queue:v8];
  }

  return v7;
}

+ (id)assetWithData:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithData:v3];

  return v4;
}

- (BOOL)resourceLoader:(id)a3 shouldWaitForLoadingOfRequestedResource:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 contentInformationRequest];
  v9 = v8;
  if (v8)
  {
    [v8 setContentType:*MEMORY[0x1E69874B8]];
    [v9 setContentLength:{-[NSData length](self->_data, "length")}];
    [v9 setByteRangeAccessSupported:1];
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  Fullfilled content request: %@", &buf, 0xCu);
    }
  }

  v10 = [v7 dataRequest];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = objc_autoreleasePoolPush();
  if (([v10 requestedOffset] & 0x8000000000000000) == 0 && (objc_msgSend(v10, "requestedLength") & 0x8000000000000000) == 0)
  {
    v12 = [v10 requestedOffset];
    v13 = [v10 requestedLength];
    if (v13 + v12 <= [(NSData *)self->_data length])
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
      v16 = [(NSData *)self->_data bytes];
      v17 = [v10 requestedOffset];
      v18 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:&v16[v17] length:objc_msgSend(v10 deallocator:{"requestedLength"), v15}];
      [v10 respondWithData:v18];

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *v21 = 138412290;
        v22 = v10;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "  Fullfilled data request: %@", v21, 0xCu);
      }

      _Block_object_dispose(&buf, 8);
      objc_autoreleasePoolPop(v11);
LABEL_14:
      [v7 finishLoading];
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
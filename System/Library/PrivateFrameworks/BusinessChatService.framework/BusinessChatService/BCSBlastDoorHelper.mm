@interface BCSBlastDoorHelper
+ (BCSBlastDoorHelper)defaultHelper;
- (BCSBlastDoorHelper)initWithPersistentStore:(id)a3;
- (id)_blastDoorImagePreviewFromImageURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6;
- (id)_dataFromCGImageRef:(CGImage *)a3;
- (id)_fileURLAfterWritingData:(id)a3 extension:(id)a4 error:(id *)a5;
- (id)safeImageFromImage:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6;
- (id)safeImageURLFromImage:(id)a3 imageFormat:(id)a4 error:(id *)a5;
- (id)safeImageURLFromImage:(id)a3 imageFormat:(id)a4 maxPixelDimension:(float)a5 scale:(float)a6 error:(id *)a7;
- (id)safeImageURLFromImageURL:(id)a3 error:(id *)a4;
- (id)safeImageURLFromImageURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6;
- (void)warmUpBlastDoor;
@end

@implementation BCSBlastDoorHelper

- (BCSBlastDoorHelper)initWithPersistentStore:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v16.receiver = self;
  v16.super_class = BCSBlastDoorHelper;
  v6 = [(BCSBlastDoorHelper *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, a3);
    v8 = objc_alloc_init(BCSExecutionTimer);
    v9 = objc_alloc(MEMORY[0x277D28680]);
    v10 = [v9 initWithBlastDoorInstanceType:*MEMORY[0x277CF30B0]];
    blastdoor = v7->_blastdoor;
    v7->_blastdoor = v10;

    v12 = ABSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(BCSExecutionTimer *)v8 milliseconds];
      *buf = 134217984;
      v18 = v13;
      _os_log_impl(&dword_242072000, v12, OS_LOG_TYPE_DEFAULT, "BlastDoor init took  %llu ms", buf, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (BCSBlastDoorHelper)defaultHelper
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = 0;
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:&v10];
  v4 = v10;

  if (v3)
  {
    v5 = [v3 URLByAppendingPathComponent:@"com.apple.businessservicesd/temp"];
    v6 = [[BCSBlastDoorPersistentStore alloc] initWithCacheURL:v5];
    v7 = [[BCSBlastDoorHelper alloc] initWithPersistentStore:v6];
  }

  else
  {
    v5 = ABSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_error_impl(&dword_242072000, v5, OS_LOG_TYPE_ERROR, "Error finding default cache directory for BlastDoor image store: %@", buf, 0xCu);
    }

    v7 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)warmUpBlastDoor
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = ABSLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242072000, v3, OS_LOG_TYPE_DEFAULT, "Warming up BlastDoor interface", buf, 2u);
  }

  v4 = [(BCSBlastDoorHelper *)self store];
  v14 = 0;
  v5 = [v4 fileURLForImageWithName:@"warmUp.gif" error:&v14];
  v6 = v14;

  if (v5)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:&warmUpBlastDoor_warmUpGIFBytes length:37];
    if (([v7 writeToURL:v5 atomically:0]& 1) != 0)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __37__BCSBlastDoorHelper_warmUpBlastDoor__block_invoke;
      v12[3] = &unk_278D38930;
      v12[4] = self;
      v13 = v5;
      v8 = BCSTimeExecutionOfBlock(v12);
      v9 = ABSLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = v8 / 0xF4240;
        _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "Warmed up BlastDoor interface in %llu ms", buf, 0xCu);
      }
    }

    else
    {
      v10 = ABSLogCommon();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_242072000, v10, OS_LOG_TYPE_ERROR, "Error writing temp file for warm up image", buf, 2u);
      }
    }
  }

  else
  {
    v7 = ABSLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_error_impl(&dword_242072000, v7, OS_LOG_TYPE_ERROR, "Error creating temp file for warm up image: %@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __37__BCSBlastDoorHelper_warmUpBlastDoor__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__BCSBlastDoorHelper_warmUpBlastDoor__block_invoke_2;
  v5[3] = &unk_278D39F30;
  v6 = v1;
  LODWORD(v3) = 1.0;
  LODWORD(v4) = 1.0;
  [v2 generatePreviewforAttachmentWithfileURL:v6 maxPixelDimension:v5 scale:v3 resultHandler:v4];
}

void __37__BCSBlastDoorHelper_warmUpBlastDoor__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  [v2 removeItemAtURL:*(a1 + 32) error:0];
}

- (id)safeImageURLFromImageURL:(id)a3 error:(id *)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = ABSLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[BCSBlastDoorHelper safeImageURLFromImageURL:error:]";
    _os_log_impl(&dword_242072000, v7, OS_LOG_TYPE_DEFAULT, "%s", &v13, 0xCu);
  }

  LODWORD(v8) = 1127153664;
  LODWORD(v9) = 1.0;
  v10 = [(BCSBlastDoorHelper *)self safeImageURLFromImageURL:v6 maxPixelDimension:a4 scale:v8 error:v9];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)safeImageURLFromImageURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6
{
  v36 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = "[BCSBlastDoorHelper safeImageURLFromImageURL:maxPixelDimension:scale:error:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v12 = objc_alloc_init(BCSExecutionTimer);
  *&v13 = a4;
  *&v14 = a5;
  v15 = [(BCSBlastDoorHelper *)self _blastDoorImagePreviewFromImageURL:v10 maxPixelDimension:a6 scale:v13 error:v14];
  v16 = MEMORY[0x277CCACA8];
  v17 = [v10 lastPathComponent];
  v18 = [v17 stringByDeletingPathExtension];
  v19 = [v10 pathExtension];

  v20 = [v16 stringWithFormat:@"%@-safe.%@", v18, v19];

  v21 = [(BCSBlastDoorHelper *)self store];
  v22 = [v21 fileURLForImageWithName:v20 error:a6];

  if (!v22)
  {
    v26 = ABSLogCommon();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
LABEL_11:

      v28 = 0;
      goto LABEL_12;
    }

    v29 = *a6;
    *buf = 138412290;
    v35 = v29;
    v30 = "Error creating temp file for image copy: %@";
LABEL_16:
    _os_log_error_impl(&dword_242072000, v26, OS_LOG_TYPE_ERROR, v30, buf, 0xCu);
    goto LABEL_11;
  }

  v23 = [v15 image];
  v24 = [v23 writeToURL:v22 usingEncoding:0 error:a6];

  v25 = ABSLogCommon();
  v26 = v25;
  if ((v24 & 1) == 0)
  {
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v33 = *a6;
    *buf = 138412290;
    v35 = v33;
    v30 = "Error writing BlastDoor image copy: %@";
    goto LABEL_16;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [(BCSExecutionTimer *)v12 milliseconds];
    *buf = 134217984;
    v35 = v27;
    _os_log_impl(&dword_242072000, v26, OS_LOG_TYPE_DEFAULT, "safeImageURLFromImageURL processing took  %llu ms (total)", buf, 0xCu);
  }

  v28 = v22;
LABEL_12:

  v31 = *MEMORY[0x277D85DE8];

  return v28;
}

- (id)_blastDoorImagePreviewFromImageURL:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = objc_alloc_init(BCSExecutionTimer);
  *&v12 = a4;
  *&v13 = a5;
  v14 = [(IMMessagesBlastDoorInterface *)self->_blastdoor generateImagePreviewForFileURL:v10 maxPixelDimension:a6 scale:v12 error:v13];

  v15 = ABSLogCommon();
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 134217984;
      v22 = [(BCSExecutionTimer *)v11 milliseconds];
      _os_log_impl(&dword_242072000, v16, OS_LOG_TYPE_DEFAULT, "BlastDoor processing took  %llu ms", &v21, 0xCu);
    }

    v17 = v14;
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v20 = *a6;
      v21 = 138412290;
      v22 = v20;
      _os_log_error_impl(&dword_242072000, v16, OS_LOG_TYPE_ERROR, "Error generating BlastDoor preview: %@", &v21, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)safeImageURLFromImage:(id)a3 imageFormat:(id)a4 maxPixelDimension:(float)a5 scale:(float)a6 error:(id *)a7
{
  v24 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a3;
  v14 = ABSLogCommon();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 136315138;
    v23 = "[BCSBlastDoorHelper safeImageURLFromImage:imageFormat:maxPixelDimension:scale:error:]";
    _os_log_impl(&dword_242072000, v14, OS_LOG_TYPE_DEFAULT, "%s", &v22, 0xCu);
  }

  v15 = [(BCSBlastDoorHelper *)self _fileURLAfterWritingData:v13 extension:v12 error:a7];

  *&v16 = a5;
  *&v17 = a6;
  v18 = [(BCSBlastDoorHelper *)self safeImageURLFromImageURL:v15 maxPixelDimension:a7 scale:v16 error:v17];
  v19 = [MEMORY[0x277CCAA00] defaultManager];
  [v19 removeItemAtURL:v15 error:0];

  v20 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)safeImageURLFromImage:(id)a3 imageFormat:(id)a4 error:(id *)a5
{
  v18 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a3;
  v10 = ABSLogCommon();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[BCSBlastDoorHelper safeImageURLFromImage:imageFormat:error:]";
    _os_log_impl(&dword_242072000, v10, OS_LOG_TYPE_DEFAULT, "%s", &v16, 0xCu);
  }

  LODWORD(v11) = 1127153664;
  LODWORD(v12) = 1.0;
  v13 = [(BCSBlastDoorHelper *)self safeImageURLFromImage:v9 imageFormat:v8 maxPixelDimension:a5 scale:v11 error:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)safeImageFromImage:(id)a3 maxPixelDimension:(float)a4 scale:(float)a5 error:(id *)a6
{
  v23 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = ABSLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315138;
    v22 = "[BCSBlastDoorHelper safeImageFromImage:maxPixelDimension:scale:error:]";
    _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s", &v21, 0xCu);
  }

  v12 = [(BCSBlastDoorHelper *)self _fileURLAfterWritingData:v10 extension:@"unknown" error:a6];

  *&v13 = a4;
  *&v14 = a5;
  v15 = [(BCSBlastDoorHelper *)self _blastDoorImagePreviewFromImageURL:v12 maxPixelDimension:a6 scale:v13 error:v14];
  v16 = [v15 image];
  v17 = -[BCSBlastDoorHelper _dataFromCGImageRef:](self, "_dataFromCGImageRef:", [v16 cgImage]);

  v18 = [MEMORY[0x277CCAA00] defaultManager];
  [v18 removeItemAtURL:v12 error:0];

  v19 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_fileURLAfterWritingData:(id)a3 extension:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = MEMORY[0x277CCACA8];
  v10 = MEMORY[0x277CCAD78];
  v11 = a4;
  v12 = [v10 UUID];
  v13 = [v12 UUIDString];
  v14 = [v9 stringWithFormat:@"%@.%@", v13, v11];

  v15 = [(BCSBlastDoorHelper *)self store];
  v16 = [v15 fileURLForImageWithName:v14 error:a5];

  if (v16 && ([v8 writeToURL:v16 atomically:0] & 1) == 0)
  {
    v18 = ABSLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_242072000, v18, OS_LOG_TYPE_ERROR, "Failed to create copy of data", buf, 2u);
    }

    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  return v17;
}

- (id)_dataFromCGImageRef:(CGImage *)a3
{
  v4 = [MEMORY[0x277CBEB28] data];
  v5 = [*MEMORY[0x277CE1E10] identifier];
  v6 = CFStringCreateWithCString(0, [v5 UTF8String], 0x8000100u);

  v7 = CGImageDestinationCreateWithData(v4, v6, 1uLL, 0);
  CFRelease(v6);
  if (v7)
  {
    CGImageDestinationAddImage(v7, a3, 0);
    if (CGImageDestinationFinalize(v7))
    {
      CFRelease(v7);
      v8 = v4;
      goto LABEL_11;
    }

    v10 = ABSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_242072000, v10, OS_LOG_TYPE_ERROR, "Failed to finalize CGImageDestination", v12, 2u);
    }

    CFRelease(v7);
  }

  else
  {
    v9 = ABSLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_242072000, v9, OS_LOG_TYPE_ERROR, "Failed to create CGImageDestination", buf, 2u);
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end
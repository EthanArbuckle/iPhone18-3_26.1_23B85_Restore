@interface ULLearnedFeatures
+ (id)learnedFeatures;
+ (void)_writePhotoToDisk:(id)a3 requestId:(id)a4;
- (id)_init;
- (int)_createLFV2HandleIfNeeded;
- (void)dealloc;
@end

@implementation ULLearnedFeatures

void __86__ULLearnedFeatures_featuresArrayFutureWithPhotoPixelBuffer_andOrientation_requestId___block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    [*(a1 + 32) finishWithResult:v3];
  }

  else
  {
    v4 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v9[0] = @"featuresArrayFutureWithPhotoPixelBuffer failed internally";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    v6 = [v4 errorWithDomain:@"ULLearnedFeatures" code:-1 userInfo:v5];

    [*(a1 + 32) finishWithError:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(ULLearnedFeatures *)self handle];
  LFV2HandleRelease();
  [(ULLearnedFeatures *)self keypoints];
  LFV2KeypointsRelease();
  v3.receiver = self;
  v3.super_class = ULLearnedFeatures;
  [(ULLearnedFeatures *)&v3 dealloc];
}

+ (id)learnedFeatures
{
  v2 = [[ULLearnedFeatures alloc] _init];

  return v2;
}

- (id)_init
{
  v5.receiver = self;
  v5.super_class = ULLearnedFeatures;
  v2 = [(ULLearnedFeatures *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.milod.ULLearnedFeatures", 0);
    [(ULLearnedFeatures *)v2 setQueue:v3];
  }

  return v2;
}

- (int)_createLFV2HandleIfNeeded
{
  if ([(ULLearnedFeatures *)self handle])
  {
    return 0;
  }

  result = LFV2HandleCreate();
  if (!result)
  {
    [(ULLearnedFeatures *)self setKeypoints:LFV2KeypointsCreate()];
    [(ULLearnedFeatures *)self keypoints];
    LFV2KeypointsAppend();
    return 0;
  }

  return result;
}

+ (void)_writePhotoToDisk:(id)a3 requestId:(id)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v26 = a3;
  v5 = a4;
  v6 = +[ULDefaultsSingleton shared];
  v7 = [v6 defaultsDictionary];

  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSaveSensitiveImages"];
  v9 = [v7 objectForKey:v8];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = [v9 BOOLValue];
  }

  else
  {
    v10 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v11 = v10;

  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v12 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = [v12 stringFromDate:v13];

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"/tmp/ULLearnedFeatures_%@_%@.JPEG", v14, v5];
    v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v15];
    v17 = [MEMORY[0x277CBF740] context];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v32 = *MEMORY[0x277CD2D48];
    v33[0] = &unk_286A73380;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v27 = 0;
    LODWORD(v13) = [v17 writeJPEGRepresentationOfImage:v26 toURL:v16 colorSpace:DeviceRGB options:v19 error:&v27];
    v20 = v27;
    CGColorSpaceRelease(DeviceRGB);
    if (v13)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULLearnedFeatures runWithPhotoPixelBuffer:andOrientation:requestId:handler:];
      }

      v21 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v29 = v15;
        _os_log_impl(&dword_258FE9000, v21, OS_LOG_TYPE_DEFAULT, "[ULLearnedFeatures]: transformed image written to: %@, ", buf, 0xCu);
      }

      ULDiskUtils::trackTempFileWithCleanup(v15, v22);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULLearnedFeatures runWithPhotoPixelBuffer:andOrientation:requestId:handler:];
      }

      v23 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v20 localizedDescription];
        *buf = 138412546;
        v29 = v15;
        v30 = 2112;
        v31 = v24;
        _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_DEFAULT, "[ULLearnedFeatures]: Failed to save file: %@, %@", buf, 0x16u);
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

@end
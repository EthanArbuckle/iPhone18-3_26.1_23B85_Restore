@interface CSLPRFAppViewImageProvider
- (void)retrieveImageForLauncherViewMode:(int64_t)mode size:(CGSize)size completion:(id)completion;
@end

@implementation CSLPRFAppViewImageProvider

- (void)retrieveImageForLauncherViewMode:(int64_t)mode size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19.width = width;
    v19.height = height;
    v9 = NSStringFromCGSize(v19);
    *buf = 138412290;
    v17 = v9;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, ">>>> calling getAppViewListImage %@", buf, 0xCu);
  }

  mEMORY[0x277D2BD60] = [MEMORY[0x277D2BD60] sharedInstance];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__CSLPRFAppViewImageProvider_retrieveImageForLauncherViewMode_size_completion___block_invoke;
  v13[3] = &unk_278744B60;
  v14 = completionCopy;
  modeCopy = mode;
  v11 = completionCopy;
  [mEMORY[0x277D2BD60] getAppViewListImage:v13 completion:{width, height}];

  v12 = *MEMORY[0x277D85DE8];
}

void __79__CSLPRFAppViewImageProvider_retrieveImageForLauncherViewMode_size_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v6;
      _os_log_error_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, ">>>> could not get app view list image %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x2318C26B0](*(a1 + 32));
    *buf = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_22CE92000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, ">>>> got image %@, calling %@", buf, 0x16u);
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__CSLPRFAppViewImageProvider_retrieveImageForLauncherViewMode_size_completion___block_invoke_1;
    block[3] = &unk_278744B38;
    v14 = v8;
    v9 = v5;
    v10 = *(a1 + 40);
    v13 = v9;
    v15 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __79__CSLPRFAppViewImageProvider_retrieveImageForLauncherViewMode_size_completion___block_invoke_1(void *a1)
{
  v2 = a1[4];
  (*(a1[5] + 16))();
  v3 = a1[4];
  v4 = a1[6];

  return [CSLPRFAppViewImageCache storeImage:v3 forLauncherMode:v4];
}

@end
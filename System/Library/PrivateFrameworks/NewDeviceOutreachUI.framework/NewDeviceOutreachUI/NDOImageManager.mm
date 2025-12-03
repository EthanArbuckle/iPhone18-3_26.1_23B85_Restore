@interface NDOImageManager
+ (NDOImageManager)sharedManager;
- (id)fetchImageWithURLString:(id)string completion:(id)completion;
- (id)initPrivate;
@end

@implementation NDOImageManager

+ (NDOImageManager)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__NDOImageManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedManager_onceToken != -1)
  {
    dispatch_once(&sharedManager_onceToken, block);
  }

  v2 = sharedManager_shared;

  return v2;
}

uint64_t __32__NDOImageManager_sharedManager__block_invoke(uint64_t a1)
{
  sharedManager_shared = [objc_alloc(*(a1 + 32)) initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (id)initPrivate
{
  v6.receiver = self;
  v6.super_class = NDOImageManager;
  v2 = [(NDOImageManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    imageCache = v2->_imageCache;
    v2->_imageCache = v3;
  }

  return v2;
}

- (id)fetchImageWithURLString:(id)string completion:(id)completion
{
  stringCopy = string;
  completionCopy = completion;
  imageCache = [(NDOImageManager *)self imageCache];
  v9 = [imageCache objectForKey:stringCopy];

  if (v9)
  {
    completionCopy[2](completionCopy, v9, 0);
    v10 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
    if (v11)
    {
      mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke;
      v19[3] = &unk_279978310;
      v21 = completionCopy;
      v19[4] = self;
      v20 = stringCopy;
      v10 = [mEMORY[0x277CCAD30] dataTaskWithURL:v11 completionHandler:v19];

      [v10 resume];
      v13 = v21;
    }

    else
    {
      v14 = _NDOLogSystem();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [NDOImageManager fetchImageWithURLString:completion:];
      }

      v15 = MEMORY[0x277CCA9B8];
      v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      bundleIdentifier = [v16 bundleIdentifier];
      v13 = [v15 errorWithDomain:bundleIdentifier code:0 userInfo:0];

      (completionCopy)[2](completionCopy, 0, v13);
      v10 = 0;
    }
  }

  return v10;
}

void __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = _NDOLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_5;
    block[3] = &unk_2799782E8;
    v42 = *(a1 + 48);
    v41 = v9;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v11 = v42;
  }

  else if (v7)
  {
    v11 = [MEMORY[0x277D755B8] imageWithData:v7];
    if (v11)
    {
      v12 = [*(a1 + 32) imageCache];
      [v12 setObject:v11 forKey:*(a1 + 40)];

      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_2;
      v31[3] = &unk_2799782E8;
      v33 = *(a1 + 48);
      v32 = v11;
      dispatch_async(MEMORY[0x277D85CD0], v31);

      v13 = v33;
    }

    else
    {
      v21 = _NDOLogSystem();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_cold_2();
      }

      v43[0] = @"data";
      v43[1] = @"response";
      v44[0] = v7;
      v22 = v8;
      if (!v8)
      {
        v22 = [MEMORY[0x277CBEB68] null];
      }

      v44[1] = v22;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
      if (!v8)
      {
      }

      v23 = MEMORY[0x277CCA9B8];
      v24 = *(a1 + 32);
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = [v25 bundleIdentifier];
      v27 = [v23 errorWithDomain:v26 code:2 userInfo:v13];

      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_14;
      v34[3] = &unk_2799782E8;
      v28 = *(a1 + 48);
      v35 = v27;
      v36 = v28;
      v29 = v27;
      dispatch_async(MEMORY[0x277D85CD0], v34);
    }
  }

  else
  {
    v14 = _NDOLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_cold_3();
    }

    v15 = MEMORY[0x277CCA9B8];
    v16 = *(a1 + 32);
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 bundleIdentifier];
    v19 = [v15 errorWithDomain:v18 code:1 userInfo:0];

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __54__NDOImageManager_fetchImageWithURLString_completion___block_invoke_6;
    v37[3] = &unk_2799782E8;
    v20 = *(a1 + 48);
    v38 = v19;
    v39 = v20;
    v11 = v19;
    dispatch_async(MEMORY[0x277D85CD0], v37);
  }

  v30 = *MEMORY[0x277D85DE8];
}

@end
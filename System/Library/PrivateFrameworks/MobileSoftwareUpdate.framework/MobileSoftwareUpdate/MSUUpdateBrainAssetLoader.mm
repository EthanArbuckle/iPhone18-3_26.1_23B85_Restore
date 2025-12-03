@interface MSUUpdateBrainAssetLoader
- (BOOL)cancel:(id *)cancel;
- (BOOL)purgeUpdateBrains:(id *)brains;
- (MSUUpdateBrainAssetLoader)initWithUpdateAsset:(id)asset;
- (int64_t)requiredDiskSpace:(id *)space;
- (void)adjustMAOptions:(id)options completion:(id)completion;
- (void)adjustOptions:(id)options completion:(id)completion;
- (void)dealloc;
- (void)loadUpdateBrainWithMAOptions:(id)options clientOptionsFromPolicy:(id)policy progressHandler:(id)handler;
- (void)loadUpdateBrainWithOptions:(id)options progressHandler:(id)handler;
@end

@implementation MSUUpdateBrainAssetLoader

- (MSUUpdateBrainAssetLoader)initWithUpdateAsset:(id)asset
{
  v6.receiver = self;
  v6.super_class = MSUUpdateBrainAssetLoader;
  v4 = [(MSUUpdateBrainAssetLoader *)&v6 init];
  if (v4)
  {
    v4->_updateAsset = asset;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MSUUpdateBrainAssetLoader;
  [(MSUUpdateBrainLoader *)&v3 dealloc];
}

- (void)loadUpdateBrainWithMAOptions:(id)options clientOptionsFromPolicy:(id)policy progressHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  v9 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = @"loadUpdateBrainWithMAOptions";
    _os_log_impl(&dword_259B51000, v9, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", buf, 0xCu);
  }

  global_queue = dispatch_get_global_queue(17, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke;
  block[3] = &unk_2798EDA40;
  block[4] = policy;
  block[5] = self;
  block[6] = @"loadUpdateBrainWithMAOptions";
  block[7] = options;
  block[8] = handler;
  dispatch_async(global_queue, block);
  v11 = *MEMORY[0x277D85DE8];
}

void __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = *(a1 + 32);
  if (v4)
  {
    [v2 setObject:v4 forKey:@"ClientOptions"];
  }

  if ([*(a1 + 40) updateAsset])
  {
    if ([objc_msgSend(*(a1 + 40) "updateAsset")])
    {
      [v2 setObject:objc_msgSend(objc_msgSend(*(a1 + 40) forKey:{"updateAsset"), "attributes"), @"AssetProperties"}];
    }

    else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_cold_1(a1);
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    [v3 setObject:v5 forKey:@"DownloadOptions"];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_14;
  v14[3] = &unk_2798EDA18;
  v7 = *(a1 + 48);
  v6 = (a1 + 48);
  v8 = v6[2];
  v14[4] = v7;
  v14[5] = v8;
  v9 = perform_se_command_with_progress("LoadMABrain", v2, 0, v3, 0, &v15, v14);
  v10 = v6[2];
  if (v9)
  {
    v18 = *MEMORY[0x277D28998];
    v19[0] = *MEMORY[0x277D28988];
    (*(v10 + 16))(v10, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1], 0);
    v11 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *v6;
      *buf = 138543362;
      v17 = v12;
      _os_log_impl(&dword_259B51000, v11, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS", buf, 0xCu);
    }
  }

  else
  {
    (*(v10 + 16))(v10, 0, v15);
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_cold_2(v6, &v15);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_14(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v12 = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = a2;
      v8 = "[BRAIN_LOADER] %{public}@ | PROGRESS (not calling progress handler) | state:%{public}@";
LABEL_6:
      _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x16u);
    }
  }

  else if (v6)
  {
    v9 = *(a1 + 32);
    v12 = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = a2;
    v8 = "[BRAIN_LOADER] %{public}@ | PROGRESS (no progress handler) | state:%{public}@";
    goto LABEL_6;
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

- (void)loadUpdateBrainWithOptions:(id)options progressHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = @"loadUpdateBrainWithOptions";
    _os_log_impl(&dword_259B51000, v7, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", buf, 0xCu);
  }

  global_queue = dispatch_get_global_queue(17, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__MSUUpdateBrainAssetLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke;
  v10[3] = &unk_2798EDA68;
  v10[4] = self;
  v10[5] = @"loadUpdateBrainWithOptions";
  v10[6] = options;
  v10[7] = handler;
  dispatch_async(global_queue, v10);
  v9 = *MEMORY[0x277D85DE8];
}

void __72__MSUUpdateBrainAssetLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  if ([*(a1 + 32) updateAsset])
  {
    if ([objc_msgSend(*(a1 + 32) "updateAsset")])
    {
      [v2 setObject:objc_msgSend(objc_msgSend(*(a1 + 32) forKey:{"updateAsset"), "attributes"), @"AssetProperties"}];
    }

    else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __72__MSUUpdateBrainAssetLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke_cold_1(a1);
    }
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    [v2 setObject:v3 forKey:@"ClientOptions"];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __72__MSUUpdateBrainAssetLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke_22;
  v12[3] = &unk_2798EDA18;
  v5 = *(a1 + 40);
  v4 = (a1 + 40);
  v6 = v4[2];
  v12[4] = v5;
  v12[5] = v6;
  v7 = perform_command_with_progress("LoadBrain", v2, 0, 0, &v13, v12);
  v8 = v4[2];
  if (v7)
  {
    v16 = *MEMORY[0x277D28998];
    v17[0] = *MEMORY[0x277D28988];
    (*(v8 + 16))(v8, [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1], 0);
    v9 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *v4;
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_259B51000, v9, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS", buf, 0xCu);
    }
  }

  else
  {
    (*(v8 + 16))(v8, 0, v13);
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_cold_2(v4, &v13);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __72__MSUUpdateBrainAssetLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke_22(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v11 = 138543618;
      v12 = v7;
      v13 = 2114;
      v14 = a2;
      _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | PROGRESS (calling progress handler) | state:%{public}@", &v11, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else if (v6)
  {
    v8 = *(a1 + 32);
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = a2;
    _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | PROGRESS (no progress handler) | state:%{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (BOOL)cancel:(id *)cancel
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v15 = @"cancel";
    _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", buf, 0xCu);
  }

  attributes = [(MAAsset *)[(MSUUpdateBrainAssetLoader *)self updateAsset] attributes];
  v6 = perform_command("CancelLoadBrain", [MEMORY[0x277CBEAC0] dictionaryWithObjects:&attributes forKeys:&v12 count:1], 0, 0, cancel);
  if (cancel)
  {
    v7 = *cancel;
  }

  v8 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v9 = v8;
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = @"cancel";
      _os_log_impl(&dword_259B51000, v9, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(MSUUpdateBrainAssetLoader *)cancel == 0 cancel:cancel];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)adjustMAOptions:(id)options completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = @"adjustMAOptions";
    _os_log_impl(&dword_259B51000, v7, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", buf, 0xCu);
  }

  global_queue = dispatch_get_global_queue(25, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__MSUUpdateBrainAssetLoader_adjustMAOptions_completion___block_invoke;
  v10[3] = &unk_2798EDA68;
  v10[4] = options;
  v10[5] = @"adjustMAOptions";
  v10[6] = self;
  v10[7] = completion;
  dispatch_async(global_queue, v10);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __56__MSUUpdateBrainAssetLoader_adjustMAOptions_completion___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v10 = 0;
  if (*(a1 + 32))
  {
    if ([*(a1 + 48) updateAsset])
    {
      v15 = @"AssetProperties";
      v16[0] = [objc_msgSend(*(a1 + 48) "updateAsset")];
      v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    }

    else
    {
      v2 = 0;
    }

    v3 = *(a1 + 32);
    v13 = @"DownloadConfig";
    v14 = v3;
    v4 = perform_se_command("MAAdjustLoadBrainOptions", v2, 0, [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1], 0, &v10);
    v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    v6 = v5;
    if (v4)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        *buf = 138543362;
        v12 = v7;
        _os_log_impl(&dword_259B51000, v6, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __56__MSUUpdateBrainAssetLoader_adjustMAOptions_completion___block_invoke_cold_1(a1, &v10);
    }
  }

  else if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
  {
    __56__MSUUpdateBrainAssetLoader_adjustMAOptions_completion___block_invoke_cold_2(a1);
  }

  result = (*(*(a1 + 56) + 16))(*(a1 + 56), v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)adjustOptions:(id)options completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v12 = @"adjustOptions";
    _os_log_impl(&dword_259B51000, v7, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", buf, 0xCu);
  }

  global_queue = dispatch_get_global_queue(17, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__MSUUpdateBrainAssetLoader_adjustOptions_completion___block_invoke;
  v10[3] = &unk_2798EDA68;
  v10[4] = options;
  v10[5] = self;
  v10[6] = @"adjustOptions";
  v10[7] = completion;
  dispatch_async(global_queue, v10);
  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __54__MSUUpdateBrainAssetLoader_adjustOptions_completion___block_invoke(void *a1)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v10 = 0;
  v3 = a1[4];
  v2 = a1[5];
  v13[0] = @"ClientOptions";
  v13[1] = @"AssetProperties";
  v14[0] = v3;
  v14[1] = [objc_msgSend(v2 "updateAsset")];
  v4 = perform_command("AdjustLoadBrainOptions", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2], 0, 0, &v10);
  v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[6];
      *buf = 138543362;
      v12 = v7;
      _os_log_impl(&dword_259B51000, v6, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __54__MSUUpdateBrainAssetLoader_adjustOptions_completion___block_invoke_cold_1(a1, &v10);
  }

  result = (*(a1[7] + 16))(a1[7], v10);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)purgeUpdateBrains:(id *)brains
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = @"purgeUpdateBrains";
    _os_log_impl(&dword_259B51000, v4, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", &v10, 0xCu);
  }

  v5 = perform_command("PurgeBrains", 0, 0, 0, brains);
  if (brains)
  {
    v6 = *brains;
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      [MSUUpdateBrainAssetLoader purgeUpdateBrains:brains];
    }
  }

  else
  {
    v7 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      v11 = @"purgeUpdateBrains";
      _os_log_impl(&dword_259B51000, v7, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS", &v10, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int64_t)requiredDiskSpace:(id *)space
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = @"requiredDiskSpace";
    _os_log_impl(&dword_259B51000, v5, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | BEGIN", buf, 0xCu);
  }

  if ([(MAAsset *)[(MSUUpdateBrainAssetLoader *)self updateAsset] attributes])
  {
    v21 = @"AssetProperties";
    v22[0] = [(MAAsset *)[(MSUUpdateBrainAssetLoader *)self updateAsset] attributes];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  }

  else
  {
    v6 = 0;
  }

  v16 = 0;
  v7 = perform_command("RequiredDiskSpace", v6, 0, &v16, space);
  v8 = v16;
  if (space)
  {
    v9 = *space;
    if ((v7 & 1) == 0)
    {
      if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
      {
        [MSUUpdateBrainAssetLoader requiredDiskSpace:space];
      }

LABEL_19:
      result = -1;
      goto LABEL_20;
    }
  }

  else if ((v7 & 1) == 0)
  {
    if (os_log_type_enabled([objc_msgSend(MEMORY[0x277D64460] "sharedLogger")], OS_LOG_TYPE_ERROR))
    {
      [MSUUpdateBrainAssetLoader requiredDiskSpace:];
    }

    goto LABEL_19;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v11 = [objc_msgSend(MEMORY[0x277D64460] "sharedLogger")];
  v12 = v11;
  if ((isKindOfClass & 1) == 0)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MSUUpdateBrainAssetLoader requiredDiskSpace:];
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    longLongValue = [v16 longLongValue];
    *buf = 138543618;
    v18 = @"requiredDiskSpace";
    v19 = 2048;
    v20 = longLongValue;
    _os_log_impl(&dword_259B51000, v12, OS_LOG_TYPE_DEFAULT, "[BRAIN_LOADER] %{public}@ | SUCCESS | Required disk space: %llu bytes", buf, 0x16u);
  }

  result = [v16 longLongValue];
LABEL_20:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 48);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __98__MSUUpdateBrainAssetLoader_loadUpdateBrainWithMAOptions_clientOptionsFromPolicy_progressHandler___block_invoke_cold_2(uint64_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_259B51000, v4, v5, "[BRAIN_LOADER] %{public}@ | FAILURE | error:%{public}@");
  v6 = *MEMORY[0x277D85DE8];
}

void __72__MSUUpdateBrainAssetLoader_loadUpdateBrainWithOptions_progressHandler___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 40);
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)cancel:(char)a1 .cold.1(char a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if ((a1 & 1) == 0)
  {
    *a2;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_259B51000, v2, v3, "[BRAIN_LOADER] %{public}@ | FAILURE | error:%{public}@", 138543618);
  v4 = *MEMORY[0x277D85DE8];
}

void __56__MSUUpdateBrainAssetLoader_adjustMAOptions_completion___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_259B51000, v4, v5, "[BRAIN_LOADER] %{public}@ | FAILURE | command kCommandBrainLoaderMAAdjustOptions failed, error:%{public}@");
  v6 = *MEMORY[0x277D85DE8];
}

void __56__MSUUpdateBrainAssetLoader_adjustMAOptions_completion___block_invoke_cold_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __54__MSUUpdateBrainAssetLoader_adjustOptions_completion___block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = *a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_259B51000, v4, v5, "[BRAIN_LOADER] %{public}@ | FAILURE | command kCommandBrainLoaderAdjustOptions failed, error:%{public}@");
  v6 = *MEMORY[0x277D85DE8];
}

- (void)purgeUpdateBrains:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)requiredDiskSpace:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v1 = *a1;
  }

  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)requiredDiskSpace:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)requiredDiskSpace:.cold.3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end
@interface MUIPassKitAvatarProvider
+ (OS_os_log)log;
- (MUIPassKitAvatarProvider)init;
- (id)genericAvatarForContext:(id)a3;
- (id)genericCategoryForEmailAddress:(id)a3;
@end

@implementation MUIPassKitAvatarProvider

- (MUIPassKitAvatarProvider)init
{
  v8.receiver = self;
  v8.super_class = MUIPassKitAvatarProvider;
  v2 = [(MUIPassKitAvatarProvider *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getMCCSecretAgentControllerClass_softClass;
    v13 = getMCCSecretAgentControllerClass_softClass;
    if (!getMCCSecretAgentControllerClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getMCCSecretAgentControllerClass_block_invoke;
      v9[3] = &unk_27818A628;
      v9[4] = &v10;
      __getMCCSecretAgentControllerClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    mccController = v2->_mccController;
    v2->_mccController = v5;
  }

  return v2;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__MUIPassKitAvatarProvider_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_11 != -1)
  {
    dispatch_once(&log_onceToken_11, block);
  }

  v2 = log_log_11;

  return v2;
}

void __31__MUIPassKitAvatarProvider_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_11;
  log_log_11 = v2;
}

- (id)genericAvatarForContext:(id)a3
{
  v4 = a3;
  v5 = [v4 emailAddress];
  v6 = [(MUIPassKitAvatarProvider *)self genericCategoryForEmailAddress:v5];

  if ((*(*MEMORY[0x277D07118] + 16))())
  {
    v7 = 0;
  }

  else
  {
    v8 = [v6 unsignedIntegerValue];
    [v4 scale];
    v10 = v9;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v11 = getPKMapsIconForMerchantCategorySymbolLoc_ptr;
    v20 = getPKMapsIconForMerchantCategorySymbolLoc_ptr;
    if (!getPKMapsIconForMerchantCategorySymbolLoc_ptr)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __getPKMapsIconForMerchantCategorySymbolLoc_block_invoke;
      v16[3] = &unk_27818A628;
      v16[4] = &v17;
      __getPKMapsIconForMerchantCategorySymbolLoc_block_invoke(v16);
      v11 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (!v11)
    {
      [MUIPassKitAvatarProvider genericAvatarForContext:];
    }

    v12 = (v11)(v8, 0, 0, 45.0, 45.0, v10);
    v13 = [MUIAvatarImageGeneratorResult alloc];
    v14 = [v4 emailAddress];
    v7 = [(MUIAvatarImageGeneratorResult *)v13 initWithAddress:v14 image:v12 style:1 type:1];
  }

  return v7;
}

- (id)genericCategoryForEmailAddress:(id)a3
{
  v4 = a3;
  v5 = [v4 emailAddressValue];
  v6 = [v5 highLevelDomain];

  if ([v6 length])
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__2;
    v19 = __Block_byref_object_dispose__2;
    v20 = 0;
    v7 = [(MUIPassKitAvatarProvider *)self mccController];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __59__MUIPassKitAvatarProvider_genericCategoryForEmailAddress___block_invoke;
    v11[3] = &unk_27818A600;
    v12 = v6;
    v13 = &v15;
    v14 = &v21;
    [v7 getPKCategoryForDomain:v12 completion:v11];

    if ((v22[3] & 1) == 0)
    {
      v8 = +[MUIPassKitAvatarProvider log];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [MUIPassKitAvatarProvider genericCategoryForEmailAddress:v8];
      }
    }

    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __59__MUIPassKitAvatarProvider_genericCategoryForEmailAddress___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[MUIPassKitAvatarProvider log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __59__MUIPassKitAvatarProvider_genericCategoryForEmailAddress___block_invoke_cold_1(a1, v5, v6);
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  *(*(*(a1 + 48) + 8) + 24) = 1;
}

- (void)genericAvatarForContext:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"UIImage *soft_PKMapsIconForMerchantCategory(PKMerchantCategory, CGSize, CGFloat, BOOL, BOOL)"}];
  [v0 handleFailureInFunction:v1 file:@"MUIGenericAvatarProvider.m" lineNumber:22 description:{@"%s", dlerror()}];

  __break(1u);
}

void __59__MUIPassKitAvatarProvider_genericCategoryForEmailAddress___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D07198] partiallyRedactedStringForString:*(a1 + 32)];
  v6 = [a2 ef_publicDescription];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_214A5E000, a3, OS_LOG_TYPE_ERROR, "Failed to fetch category for domain %{public}@ %{public}@", &v7, 0x16u);
}

@end
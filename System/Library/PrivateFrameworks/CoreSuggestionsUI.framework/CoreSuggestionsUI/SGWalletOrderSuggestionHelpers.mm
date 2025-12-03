@interface SGWalletOrderSuggestionHelpers
- (SGWalletOrderSuggestionHelpers)initWithOrderData:(id)data;
- (id)attributedSubtitle;
- (id)orderDeepLink;
- (id)orderPreviewControllerForURL:(id)l completion:(id)completion;
- (id)walletLogo;
- (void)saveOrderForURL:(id)l completion:(id)completion;
@end

@implementation SGWalletOrderSuggestionHelpers

- (void)saveOrderForURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v8 = getFKSaveOrderClass_softClass;
  v17 = getFKSaveOrderClass_softClass;
  if (!getFKSaveOrderClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getFKSaveOrderClass_block_invoke;
    v13[3] = &unk_1E7CD9710;
    v13[4] = &v14;
    __getFKSaveOrderClass_block_invoke(v13);
    v8 = v15[3];
  }

  v9 = v8;
  _Block_object_dispose(&v14, 8);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__SGWalletOrderSuggestionHelpers_saveOrderForURL_completion___block_invoke;
  v11[3] = &unk_1E7CD9250;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v8 saveOrderAtURL:lCopy completion:v11];
}

void __61__SGWalletOrderSuggestionHelpers_saveOrderForURL_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = [v4 description];
      v9 = 138412546;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      _os_log_error_impl(&dword_1B8182000, v5, OS_LOG_TYPE_ERROR, "%@: Failed to initialize Wallet preview controller. Error: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)orderPreviewControllerForURL:(id)l completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v8 = getFKOrderImportPreviewControllerProviderClass_softClass;
  v25 = getFKOrderImportPreviewControllerProviderClass_softClass;
  if (!getFKOrderImportPreviewControllerProviderClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getFKOrderImportPreviewControllerProviderClass_block_invoke;
    v27 = &unk_1E7CD9710;
    v28 = &v22;
    __getFKOrderImportPreviewControllerProviderClass_block_invoke(buf);
    v8 = v23[3];
  }

  v9 = v8;
  _Block_object_dispose(&v22, 8);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __74__SGWalletOrderSuggestionHelpers_orderPreviewControllerForURL_completion___block_invoke;
  v20[3] = &unk_1E7CD9250;
  v20[4] = self;
  v10 = completionCopy;
  v21 = v10;
  v19 = 0;
  v11 = [v8 makeViewControllerWithOrderURL:lCopy completion:v20 error:&v19];
  v12 = v19;
  if (v12)
  {
    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = [v12 description];
      *buf = 138412546;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      _os_log_error_impl(&dword_1B8182000, v13, OS_LOG_TYPE_ERROR, "%@: Failed to initialize Wallet preview controller. Error: %{public}@", buf, 0x16u);
    }

    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  return v14;
}

void __74__SGWalletOrderSuggestionHelpers_orderPreviewControllerForURL_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 1)
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = [v5 description];
      v10 = 138412546;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_error_impl(&dword_1B8182000, v6, OS_LOG_TYPE_ERROR, "%@: Failed to initialize Wallet preview controller. Error: %{public}@", &v10, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)walletLogo
{
  if (objc_opt_respondsToSelector())
  {
    walletLogo = [(FKSuggestionsOrderBanner *)self->_banner walletLogo];
  }

  else
  {
    walletLogo = 0;
  }

  return walletLogo;
}

- (id)attributedSubtitle
{
  if (objc_opt_respondsToSelector())
  {
    bannerAttributedSubtitle = [(FKSuggestionsOrderBanner *)self->_banner bannerAttributedSubtitle];
  }

  else
  {
    bannerAttributedSubtitle = 0;
  }

  return bannerAttributedSubtitle;
}

- (id)orderDeepLink
{
  if (objc_opt_respondsToSelector())
  {
    orderDeepLink = [(FKSuggestionsOrderBanner *)self->_banner orderDeepLink];
  }

  else
  {
    orderDeepLink = 0;
  }

  return orderDeepLink;
}

- (SGWalletOrderSuggestionHelpers)initWithOrderData:(id)data
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v18.receiver = self;
  v18.super_class = SGWalletOrderSuggestionHelpers;
  v5 = [(SGWalletOrderSuggestionHelpers *)&v18 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v6 = getFKSuggestionsOrderBannerClass_softClass;
  v22 = getFKSuggestionsOrderBannerClass_softClass;
  if (!getFKSuggestionsOrderBannerClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getFKSuggestionsOrderBannerClass_block_invoke;
    v24 = &unk_1E7CD9710;
    v25 = &v19;
    __getFKSuggestionsOrderBannerClass_block_invoke(buf);
    v6 = v20[3];
  }

  v7 = v6;
  _Block_object_dispose(&v19, 8);
  v17 = 0;
  v8 = [[v6 alloc] initWithData:dataCopy error:&v17];
  v9 = v17;
  banner = v5->_banner;
  v5->_banner = v8;

  if (v9)
  {
    v11 = sgLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [v9 description];
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_error_impl(&dword_1B8182000, v11, OS_LOG_TYPE_ERROR, "%@: Encountered Error during initialization. Error: %@", buf, 0x16u);
    }

    v12 = 0;
  }

  else
  {
LABEL_8:
    v12 = v5;
  }

  return v12;
}

@end
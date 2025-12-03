@interface SFStoreBanner
- (CGSize)sizeThatFits:(CGSize)fits;
- (SFAppSuggestionBannerDelegate)delegate;
- (SFStoreBanner)initWithProductID:(id)d mainDocumentURL:(id)l affiliateData:(id)data applicationLaunchArgument:(id)argument;
- (void)_openApp;
- (void)_removeAppStoreLockUpView;
- (void)_setBlockedByUser;
- (void)_setUpAppStoreLockUpView;
- (void)_setUpStoreKitProductView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)lockupView:(id)view appStateDidChange:(id)change;
- (void)lockupView:(id)view didFailRequestWithError:(id)error;
- (void)productPage:(id)page didFailLoadWithError:(id)error;
- (void)productPage:(id)page didFinishPurchase:(id)purchase withError:(id)error;
- (void)productPage:(id)page didFinishWithResult:(int64_t)result;
- (void)productPage:(id)page willMakePurchases:(id)purchases;
- (void)themeDidChange;
@end

@implementation SFStoreBanner

- (SFStoreBanner)initWithProductID:(id)d mainDocumentURL:(id)l affiliateData:(id)data applicationLaunchArgument:(id)argument
{
  dCopy = d;
  lCopy = l;
  dataCopy = data;
  argumentCopy = argument;
  v15 = [(SFStoreBanner *)self init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_productID, d);
    objc_storeStrong(&v16->_affiliateData, data);
    objc_storeStrong(&v16->_mainDocumentURL, l);
    objc_storeStrong(&v16->_argument, argument);
    [(SFStoreBanner *)v16 setClipsToBounds:1];
    [(SFStoreBanner *)v16 _setUpAppStoreLockUpView];
    v17 = v16;
  }

  return v16;
}

- (void)_setUpStoreKitProductView
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getSKProductPageViewControllerClass_softClass;
  v14 = getSKProductPageViewControllerClass_softClass;
  if (!getSKProductPageViewControllerClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getSKProductPageViewControllerClass_block_invoke;
    v10[3] = &unk_1E721C5D0;
    v10[4] = &v11;
    __getSKProductPageViewControllerClass_block_invoke(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  v5 = [[v3 alloc] initWithProductPageStyle:1];
  productViewController = self->_productViewController;
  self->_productViewController = v5;

  if (self->_mainDocumentURL && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SKProductPageViewController *)self->_productViewController setMainDocumentURL:self->_mainDocumentURL];
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_argument forKeyedSubscript:@"applicationLaunchArgument"];
  [dictionary setObject:self->_affiliateData forKeyedSubscript:@"affiliateData"];
  if ([dictionary count])
  {
    [(SKProductPageViewController *)self->_productViewController setScriptContextDictionary:dictionary];
  }

  [(SKProductPageViewController *)self->_productViewController setDelegate:self];
  view = [(SKProductPageViewController *)self->_productViewController view];
  [(SFStoreBanner *)self insertSubview:view atIndex:0];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__SFStoreBanner__setUpStoreKitProductView__block_invoke;
  v9[3] = &unk_1E721B360;
  v9[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void __42__SFStoreBanner__setUpStoreKitProductView__block_invoke(uint64_t a1)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 456);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v3 = getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr;
  v11 = getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr;
  if (!getSKStoreProductParameterITunesItemIdentifierSymbolLoc_ptr)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getSKStoreProductParameterITunesItemIdentifierSymbolLoc_block_invoke;
    v7[3] = &unk_1E721C5D0;
    v7[4] = &v8;
    __getSKStoreProductParameterITunesItemIdentifierSymbolLoc_block_invoke(v7);
    v3 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  if (!v3)
  {
    __42__SFStoreBanner__setUpStoreKitProductView__block_invoke_cold_1();
    __break(1u);
  }

  v12 = *v3;
  v13[0] = *(*(a1 + 32) + 496);
  v4 = MEMORY[0x1E695DF20];
  v5 = v12;
  v6 = [v4 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  [v2 loadProductWithParameters:v6];
}

- (void)_setUpAppStoreLockUpView
{
  v49 = 0;
  v50 = &v49;
  v51 = 0x2050000000;
  v3 = getASCLockupViewClass_softClass;
  v52 = getASCLockupViewClass_softClass;
  if (!getASCLockupViewClass_softClass)
  {
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __getASCLockupViewClass_block_invoke;
    v47 = &unk_1E721C5D0;
    v48 = &v49;
    __getASCLockupViewClass_block_invoke(&v44);
    v3 = v50[3];
  }

  v4 = v3;
  _Block_object_dispose(&v49, 8);
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  lockupView = self->_lockupView;
  self->_lockupView = v6;

  [(ASCLockupView *)self->_lockupView setLayoutMargins:0.0, 0.0, 0.0, 14.0];
  blueTheme = [getASCOfferThemeClass() blueTheme];
  [(ASCLockupView *)self->_lockupView setOfferTheme:blueTheme];

  v49 = 0;
  v50 = &v49;
  v51 = 0x2050000000;
  v9 = getASCLockupRequestClass_softClass;
  v52 = getASCLockupRequestClass_softClass;
  if (!getASCLockupRequestClass_softClass)
  {
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __getASCLockupRequestClass_block_invoke;
    v47 = &unk_1E721C5D0;
    v48 = &v49;
    __getASCLockupRequestClass_block_invoke(&v44);
    v9 = v50[3];
  }

  v10 = v9;
  _Block_object_dispose(&v49, 8);
  v11 = [v9 alloc];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2050000000;
  v12 = getASCAdamIDClass_softClass;
  v52 = getASCAdamIDClass_softClass;
  if (!getASCAdamIDClass_softClass)
  {
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __getASCAdamIDClass_block_invoke;
    v47 = &unk_1E721C5D0;
    v48 = &v49;
    __getASCAdamIDClass_block_invoke(&v44);
    v12 = v50[3];
  }

  v13 = v12;
  _Block_object_dispose(&v49, 8);
  v14 = [[v12 alloc] initWithNumberValue:self->_productID];
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v15 = getASCLockupKindAppSymbolLoc_ptr;
  v52 = getASCLockupKindAppSymbolLoc_ptr;
  if (!getASCLockupKindAppSymbolLoc_ptr)
  {
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __getASCLockupKindAppSymbolLoc_block_invoke;
    v47 = &unk_1E721C5D0;
    v48 = &v49;
    v16 = AppStoreComponentsLibrary();
    v17 = dlsym(v16, "ASCLockupKindApp");
    *(v48[1] + 24) = v17;
    getASCLockupKindAppSymbolLoc_ptr = *(v48[1] + 24);
    v15 = v50[3];
  }

  _Block_object_dispose(&v49, 8);
  if (!v15)
  {
    __42__SFStoreBanner__setUpStoreKitProductView__block_invoke_cold_1();
    goto LABEL_24;
  }

  v18 = *v15;
  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v19 = getASCLockupContextStandardSymbolLoc_ptr;
  v52 = getASCLockupContextStandardSymbolLoc_ptr;
  if (!getASCLockupContextStandardSymbolLoc_ptr)
  {
    v44 = MEMORY[0x1E69E9820];
    v45 = 3221225472;
    v46 = __getASCLockupContextStandardSymbolLoc_block_invoke;
    v47 = &unk_1E721C5D0;
    v48 = &v49;
    v20 = AppStoreComponentsLibrary();
    v21 = dlsym(v20, "ASCLockupContextStandard");
    *(v48[1] + 24) = v21;
    getASCLockupContextStandardSymbolLoc_ptr = *(v48[1] + 24);
    v19 = v50[3];
  }

  _Block_object_dispose(&v49, 8);
  if (!v19)
  {
LABEL_24:
    v43 = __42__SFStoreBanner__setUpStoreKitProductView__block_invoke_cold_1();
    _Block_object_dispose(&v49, 8);
    _Unwind_Resume(v43);
  }

  v22 = *v19;
  v23 = objc_opt_respondsToSelector();
  v24 = v11;
  v25 = v24;
  if (v23)
  {
    v26 = [v24 _initWithID:v14 kind:v18 context:v22 clientID:@"SmartAppBanner" enableAppDistribution:1];
  }

  else
  {
    v26 = [v24 _initWithID:v14 kind:v18 context:v22 clientID:@"SmartAppBanner"];
  }

  v27 = v26;
  [(ASCLockupView *)self->_lockupView setRequest:v26];

  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    [(ASCLockupView *)self->_lockupView setLockupSize:*MEMORY[0x1E698B370]];
  }

  [(ASCLockupView *)self->_lockupView setDelegate:self];
  [(SFStoreBanner *)self addSubview:self->_lockupView];
  plainButtonConfiguration = [MEMORY[0x1E69DC740] plainButtonConfiguration];
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [plainButtonConfiguration setBaseForegroundColor:tertiaryLabelColor];

  v30 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark"];
  [plainButtonConfiguration setImage:v30];

  v31 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDD10] scale:-1];
  [plainButtonConfiguration setPreferredSymbolConfigurationForImage:v31];

  v32 = objc_alloc_init(MEMORY[0x1E69DC738]);
  closeButton = self->_closeButton;
  self->_closeButton = v32;

  [(UIButton *)self->_closeButton setConfiguration:plainButtonConfiguration];
  if ([MEMORY[0x1E69C8880] isSolariumEnabled])
  {
    v34 = [[SFCloseButton alloc] initWithStyle:0 primaryAction:0];
    v35 = self->_closeButton;
    self->_closeButton = &v34->super;
  }

  [(UIButton *)self->_closeButton addTarget:self action:sel__setBlockedByUser forControlEvents:64];
  [(UIButton *)self->_closeButton sizeToFit];
  [(SFStoreBanner *)self addSubview:self->_closeButton];
  if (([MEMORY[0x1E69C8880] isSolariumEnabled] & 1) == 0)
  {
    v36 = [SFThemeColorEffectView alloc];
    v37 = [MEMORY[0x1E69DC730] effectWithStyle:10];
    v38 = [(SFThemeColorEffectView *)v36 initWithEffect:v37];
    backdrop = self->_backdrop;
    self->_backdrop = v38;
  }

  [(SFStoreBanner *)self bounds];
  [(SFThemeColorEffectView *)self->_backdrop setFrame:?];
  [(SFThemeColorEffectView *)self->_backdrop setAutoresizingMask:18];
  [(SFStoreBanner *)self addSubview:self->_backdrop];
  [(SFStoreBanner *)self sendSubviewToBack:self->_backdrop];
  v40 = objc_alloc_init(MEMORY[0x1E69DD250]);
  separator = self->_separator;
  self->_separator = v40;

  sf_barHairlineOutlineColor = [MEMORY[0x1E69DC888] sf_barHairlineOutlineColor];
  [(UIView *)self->_separator setBackgroundColor:sf_barHairlineOutlineColor];

  [(SFStoreBanner *)self addSubview:self->_separator];
}

- (void)_removeAppStoreLockUpView
{
  [(ASCLockupView *)self->_lockupView setDelegate:0];
  [(ASCLockupView *)self->_lockupView removeFromSuperview];
  [(UIButton *)self->_closeButton removeFromSuperview];
  [(UIView *)self->_separator removeFromSuperview];
  [(SFThemeColorEffectView *)self->_backdrop removeFromSuperview];
  lockupView = self->_lockupView;
  self->_lockupView = 0;

  closeButton = self->_closeButton;
  self->_closeButton = 0;

  separator = self->_separator;
  self->_separator = 0;

  backdrop = self->_backdrop;
  self->_backdrop = 0;
}

- (void)themeDidChange
{
  theme = [(SFPinnableBanner *)self theme];
  [(SFThemeColorEffectView *)self->_backdrop setTheme:theme];
  overrideTintColor = [theme overrideTintColor];
  [(UIView *)self->_separator setHidden:overrideTintColor != 0];
  ASCOfferThemeClass = getASCOfferThemeClass();
  if (overrideTintColor)
  {
    v5 = [ASCOfferThemeClass alloc];
    themeColor = [theme themeColor];
    themeColor2 = [theme themeColor];
    v8 = [themeColor2 colorWithAlphaComponent:0.3];
    themeColor3 = [theme themeColor];
    v10 = [v5 initWithTitleBackgroundColor:overrideTintColor titleTextColor:themeColor titleTextDisabledColor:v8 subtitleTextColor:themeColor3 iconTintColor:overrideTintColor progressColor:overrideTintColor];
    [(ASCLockupView *)self->_lockupView setOfferTheme:v10];
  }

  else
  {
    themeColor = [(objc_class *)ASCOfferThemeClass blueTheme];
    [(ASCLockupView *)self->_lockupView setOfferTheme:themeColor];
  }
}

- (void)layoutSubviews
{
  v26.receiver = self;
  v26.super_class = SFStoreBanner;
  [(SFStoreBanner *)&v26 layoutSubviews];
  [(SFStoreBanner *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(SKProductPageViewController *)self->_productViewController view];
  [view setFrame:{v4, v6, v8, v10}];

  if (self->_lockupView)
  {
    v27.origin.x = v4;
    v27.origin.y = v6;
    v27.size.width = v8;
    v27.size.height = v10;
    Width = CGRectGetWidth(v27);
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    Height = CGRectGetHeight(v28);
    [(SFStoreBanner *)self safeAreaInsets];
    v15 = v14;
    v17 = v16;
    [(UIButton *)self->_closeButton sizeToFit];
    [(UIButton *)self->_closeButton bounds];
    v18 = CGRectGetHeight(v29);
    v19 = fmax(v18, 44.0);
    if ([MEMORY[0x1E69C8880] isSolariumEnabled])
    {
      [(SFStoreBanner *)self layoutMargins];
      v22 = fmax(v21, 14.0);
      v23 = Width - fmax(v20, 14.0) - v22 - v18;
      v24 = v22 + v23;
    }

    else
    {
      v24 = fmax(v15, 4.0);
      v22 = v24 + v18;
      v23 = Width - fmax(v17, 4.0) - (v24 + v18);
    }

    [(ASCLockupView *)self->_lockupView setFrame:v22, 0.0, v23, Height];
    [(UIButton *)self->_closeButton setFrame:v24, (Height - v19) * 0.5, v18, v19];
    v25 = _SFOnePixel();
    [(UIView *)self->_separator setFrame:0.0, Height - v25, Width, v25];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  lockupView = self->_lockupView;
  if (lockupView)
  {
    [(ASCLockupView *)lockupView sizeThatFits:fits.width, 1.79769313e308];
    v6 = v5 + 28.0;
  }

  else
  {
    IsPad = _SFDeviceIsPad();
    v6 = 95.0;
    if (!IsPad)
    {
      v6 = 84.0;
    }
  }

  v8 = width;
  result.height = v6;
  result.width = v8;
  return result;
}

- (void)_setBlockedByUser
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dismissAppSuggestionBanner:self];
  if ([WeakRetained shouldBlockAppSuggestionBanner:self])
  {
    v3 = +[SFStoreBannerTracker sharedTracker];
    [v3 blockProductBanner:self->_productID];
  }
}

- (void)dealloc
{
  [(ASCLockupView *)self->_lockupView setDelegate:0];
  [(SKProductPageViewController *)self->_productViewController setDelegate:0];
  v3.receiver = self;
  v3.super_class = SFStoreBanner;
  [(SFStoreBanner *)&v3 dealloc];
}

- (void)productPage:(id)page didFinishWithResult:(int64_t)result
{
  pageCopy = page;
  if (result == 1)
  {
    v8 = pageCopy;
    [(SFStoreBanner *)self _setBlockedByUser];
  }

  else
  {
    if (result != 2)
    {
      goto LABEL_6;
    }

    v8 = pageCopy;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setAppSuggestionBanner:self isPinned:0];
  }

  pageCopy = v8;
LABEL_6:
}

- (void)productPage:(id)page didFailLoadWithError:(id)error
{
  errorCopy = error;
  v6 = WBS_LOG_CHANNEL_PREFIXBanners();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [SFStoreBanner productPage:v6 didFailLoadWithError:errorCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained dismissAppSuggestionBanner:self];
}

- (void)productPage:(id)page willMakePurchases:(id)purchases
{
  v16 = *MEMORY[0x1E69E9840];
  purchasesCopy = purchases;
  v6 = purchasesCopy;
  if (self->_affiliateData)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [purchasesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10++) setAffiliateIdentifier:self->_affiliateData];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)productPage:(id)page didFinishPurchase:(id)purchase withError:(id)error
{
  if (!error)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained setAppSuggestionBanner:self isPinned:1];
  }
}

- (void)lockupView:(id)view didFailRequestWithError:(id)error
{
  [(SFStoreBanner *)self _removeAppStoreLockUpView:view];

  [(SFStoreBanner *)self _setUpStoreKitProductView];
}

- (void)lockupView:(id)view appStateDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v9 = getASCAppStateWaitingSymbolLoc_ptr;
  v39 = getASCAppStateWaitingSymbolLoc_ptr;
  if (!getASCAppStateWaitingSymbolLoc_ptr)
  {
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __getASCAppStateWaitingSymbolLoc_block_invoke;
    v34 = &unk_1E721C5D0;
    v35 = &v36;
    v10 = AppStoreComponentsLibrary();
    v37[3] = dlsym(v10, "ASCAppStateWaiting");
    getASCAppStateWaitingSymbolLoc_ptr = *(v35[1] + 24);
    v9 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v9)
  {
    __42__SFStoreBanner__setUpStoreKitProductView__block_invoke_cold_1();
    goto LABEL_22;
  }

  v11 = *v9;
  if ([changeCopy isEqualToString:v11])
  {
    v12 = 1;
  }

  else
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v13 = getASCAppStateInstallingSymbolLoc_ptr;
    v39 = getASCAppStateInstallingSymbolLoc_ptr;
    if (!getASCAppStateInstallingSymbolLoc_ptr)
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __getASCAppStateInstallingSymbolLoc_block_invoke;
      v34 = &unk_1E721C5D0;
      v35 = &v36;
      v14 = AppStoreComponentsLibrary();
      v37[3] = dlsym(v14, "ASCAppStateInstalling");
      getASCAppStateInstallingSymbolLoc_ptr = *(v35[1] + 24);
      v13 = v37[3];
    }

    _Block_object_dispose(&v36, 8);
    if (!v13)
    {
LABEL_23:
      v27 = __42__SFStoreBanner__setUpStoreKitProductView__block_invoke_cold_1();
      _Block_object_dispose(&v36, 8);
      objc_destroyWeak(&location);
      _Unwind_Resume(v27);
    }

    v12 = [changeCopy isEqualToString:*v13];
  }

  [WeakRetained setAppSuggestionBanner:self isPinned:v12];
  if (!self->_argument)
  {
    goto LABEL_20;
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v15 = getASCAppStateOpenableSymbolLoc_ptr;
  v39 = getASCAppStateOpenableSymbolLoc_ptr;
  if (!getASCAppStateOpenableSymbolLoc_ptr)
  {
    v31 = MEMORY[0x1E69E9820];
    v32 = 3221225472;
    v33 = __getASCAppStateOpenableSymbolLoc_block_invoke;
    v34 = &unk_1E721C5D0;
    v35 = &v36;
    v16 = AppStoreComponentsLibrary();
    v37[3] = dlsym(v16, "ASCAppStateOpenable");
    getASCAppStateOpenableSymbolLoc_ptr = *(v35[1] + 24);
    v15 = v37[3];
  }

  _Block_object_dispose(&v36, 8);
  if (!v15)
  {
LABEL_22:
    __42__SFStoreBanner__setUpStoreKitProductView__block_invoke_cold_1();
    goto LABEL_23;
  }

  if ([changeCopy isEqualToString:*v15])
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v17 = getASCOfferMetadataClass_softClass;
    v39 = getASCOfferMetadataClass_softClass;
    if (!getASCOfferMetadataClass_softClass)
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __getASCOfferMetadataClass_block_invoke;
      v34 = &unk_1E721C5D0;
      v35 = &v36;
      __getASCOfferMetadataClass_block_invoke(&v31);
      v17 = v37[3];
    }

    v18 = v17;
    _Block_object_dispose(&v36, 8);
    v19 = _WBSLocalizedString();
    v20 = [v17 textMetadataWithTitle:v19 subtitle:0];

    objc_initWeak(&location, self);
    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v21 = getASCLocalOfferClass_softClass;
    v39 = getASCLocalOfferClass_softClass;
    if (!getASCLocalOfferClass_softClass)
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __getASCLocalOfferClass_block_invoke;
      v34 = &unk_1E721C5D0;
      v35 = &v36;
      __getASCLocalOfferClass_block_invoke(&v31);
      v21 = v37[3];
    }

    v22 = v21;
    _Block_object_dispose(&v36, 8);
    v23 = [v21 alloc];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __46__SFStoreBanner_lockupView_appStateDidChange___block_invoke;
    v28[3] = &unk_1E721BF08;
    objc_copyWeak(&v29, &location);
    v24 = [v23 initWithMetadata:v20 action:v28];
    lockup = [viewCopy lockup];
    v26 = [lockup lockupWithOffer:v24];
    [viewCopy setLockup:v26];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

LABEL_20:
}

void __46__SFStoreBanner_lockupView_appStateDidChange___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _openApp];
}

- (void)_openApp
{
  selfCopy = self;
  safari_privacyPreservingDescription = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4(&dword_18B7AC000, v5, v6, "Failed to look up application record to open app: %{public}@", v7, v8, v9, v10, 2u);
}

- (SFAppSuggestionBannerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

uint64_t __42__SFStoreBanner__setUpStoreKitProductView__block_invoke_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [SFStoreBanner productPage:v0 didFailLoadWithError:?];
}

- (void)productPage:(void *)a1 didFailLoadWithError:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_4(&dword_18B7AC000, v5, v6, "App Store Banner failed to load and will be dismissed: %{public}@", v7, v8, v9, v10, 2u);
}

@end
@interface StoreScriptInterface
+ (id)webScriptNameForSelector:(SEL)a3;
+ (void)initialize;
- (SUProductPageViewController)parentProductPageViewController;
- (id)makeStoreSheetRequest;
- (void)showStoreSheetWithRequest:(id)a3 animated:(BOOL)a4;
@end

@implementation StoreScriptInterface

+ (id)webScriptNameForSelector:(SEL)a3
{
  v5 = SUWebScriptNameForSelector2();
  if (!v5)
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___StoreScriptInterface;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, a3);
  }

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    __SelectorMapping = sel_makeStoreSheetRequest;
    *algn_27F9F18D8 = @"createStoreSheetRequest";
    qword_27F9F18E0 = sel_showStoreSheetWithRequest_animated_;
    unk_27F9F18E8 = @"showStoreSheet";
  }
}

- (SUProductPageViewController)parentProductPageViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentProductPageViewController);

  return WeakRetained;
}

- (id)makeStoreSheetRequest
{
  v3 = objc_alloc_init(SUScriptStoreSheetRequest);
  [(SUScriptObject *)self checkInScriptObject:v3];

  return v3;
}

- (void)showStoreSheetWithRequest:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 newNativeStorePageRequest];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __86__StoreScriptInterface_SUScriptStoreSheetRequest__showStoreSheetWithRequest_animated___block_invoke;
    v12[3] = &unk_2798FADE0;
    v12[4] = self;
    v13 = v7;
    v14 = a4;
    v8 = v7;
    v9 = SUUIWebCoreFramework();
    v10 = SUUIWeakLinkedSymbolForString("WebThreadRunOnMainThread", v9);
    if (v10)
    {
      v10(v12);
    }
  }

  else
  {
    v11 = SUUIWebCoreFramework();
    [SUUIWeakLinkedClassForString(&cfstr_Webscriptobjec.isa v11)];
  }
}

void __86__StoreScriptInterface_SUScriptStoreSheetRequest__showStoreSheetWithRequest_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) parentProductPageViewController];
  if (!v2)
  {
    v2 = [*(a1 + 32) parentViewController];
    if (v2)
    {
      while (1)
      {
        v5 = v2;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v3 = [v5 parentViewController];

        v2 = v3;
        if (!v3)
        {
          goto LABEL_2;
        }
      }

      v2 = v5;
    }
  }

LABEL_2:
  v4 = v2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 _showPageWithRequest:*(a1 + 40) animated:*(a1 + 48)];
  }
}

@end
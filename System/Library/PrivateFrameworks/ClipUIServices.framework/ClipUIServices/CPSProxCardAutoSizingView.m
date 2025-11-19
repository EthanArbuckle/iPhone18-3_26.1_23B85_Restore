@interface CPSProxCardAutoSizingView
- (CPSProxCardAutoSizingView)init;
- (void)init;
@end

@implementation CPSProxCardAutoSizingView

- (CPSProxCardAutoSizingView)init
{
  v3 = [MEMORY[0x277D759A0] mainScreen];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v12 = getPRXCardPreferredSizeClassForContainerBoundsSymbolLoc_ptr;
  v31 = getPRXCardPreferredSizeClassForContainerBoundsSymbolLoc_ptr;
  if (!getPRXCardPreferredSizeClassForContainerBoundsSymbolLoc_ptr)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getPRXCardPreferredSizeClassForContainerBoundsSymbolLoc_block_invoke;
    v26 = &unk_278DD24C0;
    v27 = &v28;
    v13 = ProxCardKitLibrary();
    v29[3] = dlsym(v13, "PRXCardPreferredSizeClassForContainerBounds");
    getPRXCardPreferredSizeClassForContainerBoundsSymbolLoc_ptr = *(v27[1] + 24);
    v12 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v12)
  {
    [CPSProxCardAutoSizingView init];
  }

  v14 = v12(v5, v7, v9, v11);

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v15 = getPRXCardPreferredSizeSymbolLoc_ptr;
  v31 = getPRXCardPreferredSizeSymbolLoc_ptr;
  if (!getPRXCardPreferredSizeSymbolLoc_ptr)
  {
    v23 = MEMORY[0x277D85DD0];
    v24 = 3221225472;
    v25 = __getPRXCardPreferredSizeSymbolLoc_block_invoke;
    v26 = &unk_278DD24C0;
    v27 = &v28;
    v16 = ProxCardKitLibrary();
    v29[3] = dlsym(v16, "PRXCardPreferredSize");
    getPRXCardPreferredSizeSymbolLoc_ptr = *(v27[1] + 24);
    v15 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v15)
  {
    [CPSProxCardAutoSizingView init];
  }

  v17 = *MEMORY[0x277CBF3A0];
  v18 = *(MEMORY[0x277CBF3A0] + 8);
  v19 = v15(0, v14);
  v22.receiver = self;
  v22.super_class = CPSProxCardAutoSizingView;
  return [(CPSProxCardAutoSizingView *)&v22 initWithFrame:v17, v18, v19, v20];
}

- (void)init
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PRXCardSizeClass _PRXCardPreferredSizeClassForContainerBounds(CGRect)"];
  [v0 handleFailureInFunction:v1 file:@"CPSProxCardAutoSizingView.m" lineNumber:12 description:{@"%s", dlerror()}];

  __break(1u);
}

@end
@interface SUUIFacebookPageSection
- (CGSize)cellSizeForIndexPath:(id)path;
- (SUUIFacebookPageSection)initWithPageComponent:(id)component;
- (id)_accountStore;
- (id)_facebookView;
- (id)cellForIndexPath:(id)path;
- (int64_t)_facebookAccountsExist;
- (int64_t)applyUpdateType:(int64_t)type;
- (void)_accountStoreDidChangeNotification:(id)notification;
- (void)_applyColorSchemeToFacebookView:(id)view;
- (void)_changeStatusToUserLiked:(BOOL)liked;
- (void)_finishLookupWithStatus:(id)status error:(id)error;
- (void)_reloadCollectionViewSection;
- (void)_reloadLikeStatus;
- (void)_resetState;
- (void)_toggleLikeAction:(id)action;
- (void)addImpressionsForIndexPath:(id)path toSession:(id)session;
- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path;
- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)willAppearInContext:(id)context;
@end

@implementation SUUIFacebookPageSection

- (SUUIFacebookPageSection)initWithPageComponent:(id)component
{
  v4.receiver = self;
  v4.super_class = SUUIFacebookPageSection;
  result = [(SUUIStorePageSection *)&v4 initWithPageComponent:component];
  if (result)
  {
    result->_facebookAccountsExist = -1;
  }

  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = SUUIAccountsFramework();
  [defaultCenter removeObserver:self name:*SUUIWeakLinkedSymbolForString("ACAccountStoreDidChangeNotification" object:{v4), 0}];

  likeToggleButton = [(SUUIReviewsFacebookView *)self->_facebookView likeToggleButton];
  [likeToggleButton removeTarget:self action:0 forControlEvents:64];

  v6.receiver = self;
  v6.super_class = SUUIFacebookPageSection;
  [(SUUIStorePageSection *)&v6 dealloc];
}

- (void)addImpressionsForIndexPath:(id)path toSession:(id)session
{
  sessionCopy = session;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  [sessionCopy addItemViewElement:viewElement];
}

- (int64_t)applyUpdateType:(int64_t)type
{
  if (type != 2)
  {
    [(SUUIFacebookPageSection *)self _applyColorSchemeToFacebookView:self->_facebookView];
  }

  return type;
}

- (id)cellForIndexPath:(id)path
{
  pathCopy = path;
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v7 = [collectionView dequeueReusableCellWithReuseIdentifier:@"SUUIFacebookPageSectionReuseIdentifier" forIndexPath:pathCopy];

  _facebookView = [(SUUIFacebookPageSection *)self _facebookView];
  [v7 setContentChildView:_facebookView];

  [v7 setContentInsets:{*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)}];

  return v7;
}

- (CGSize)cellSizeForIndexPath:(id)path
{
  context = [(SUUIStorePageSection *)self context];
  [context activePageWidth];
  v6 = v5;

  _facebookView = [(SUUIFacebookPageSection *)self _facebookView];
  v8 = _facebookView;
  if (_facebookView)
  {
    [_facebookView sizeThatFits:{v6, *(MEMORY[0x277CBF3A8] + 8)}];
    v10 = v9;
  }

  else
  {
    *&v10 = 79.0;
  }

  v11 = v6;
  v12 = *&v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)collectionViewWillDisplayCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession beginActiveImpressionForViewElement:viewElement];

  v9.receiver = self;
  v9.super_class = SUUIFacebookPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewWillDisplayCellForItemAtIndexPath:pathCopy];
}

- (void)collectionViewDidEndDisplayingCellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];

  context = [(SUUIStorePageSection *)self context];
  activeMetricsImpressionSession = [context activeMetricsImpressionSession];
  [activeMetricsImpressionSession endActiveImpressionForViewElement:viewElement];

  v9.receiver = self;
  v9.super_class = SUUIFacebookPageSection;
  [(SUUIStorePageSection *)&v9 collectionViewDidEndDisplayingCellForItemAtIndexPath:pathCopy];
}

- (void)willAppearInContext:(id)context
{
  contextCopy = context;
  collectionView = [contextCopy collectionView];
  [collectionView registerClass:objc_opt_class() forCellWithReuseIdentifier:@"SUUIFacebookPageSectionReuseIdentifier"];
  v6 = self->_layoutContext;
  v7 = [[SUUIViewElementLayoutContext alloc] initWithStorePageSectionContext:contextCopy previousLayoutContext:v6];
  layoutContext = self->_layoutContext;
  self->_layoutContext = v7;

  [(SUUIFacebookPageSection *)self _applyColorSchemeToFacebookView:self->_facebookView];
  [(SUUIFacebookPageSection *)self _reloadLikeStatus];
  v9.receiver = self;
  v9.super_class = SUUIFacebookPageSection;
  [(SUUIStorePageSection *)&v9 willAppearInContext:contextCopy];
}

- (void)_toggleLikeAction:(id)action
{
  actionCopy = action;
  isUserLiked = [(SUUIFacebookLikeStatus *)self->_likeStatus isUserLiked];
  v6 = isUserLiked;
  [(SUUIFacebookPageSection *)self _changeStatusToUserLiked:!isUserLiked];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __45__SUUIFacebookPageSection__toggleLikeAction___block_invoke;
  aBlock[3] = &unk_2798F88A0;
  objc_copyWeak(&v14, &location);
  v15 = v6;
  v7 = _Block_copy(aBlock);
  v8 = SUUISocialFramework();
  v9 = [SUUIWeakLinkedClassForString(&cfstr_Slfacebooksess.isa v8)];
  isUserLiked2 = [(SUUIFacebookLikeStatus *)self->_likeStatus isUserLiked];
  likeStatus = self->_likeStatus;
  if (isUserLiked2)
  {
    v12 = [(SUUIFacebookLikeStatus *)likeStatus URL];
    [v9 likeURL:v12 completion:v7];
  }

  else
  {
    v12 = [(SUUIFacebookLikeStatus *)likeStatus URL];
    [v9 unlikeURL:v12 completion:v7];
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __45__SUUIFacebookPageSection__toggleLikeAction___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __45__SUUIFacebookPageSection__toggleLikeAction___block_invoke_2;
    v3[3] = &unk_2798F8878;
    objc_copyWeak(&v4, (a1 + 32));
    v5 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], v3);
    objc_destroyWeak(&v4);
  }
}

void __45__SUUIFacebookPageSection__toggleLikeAction___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _changeStatusToUserLiked:(*(a1 + 40) & 1) == 0];
}

- (void)_accountStoreDidChangeNotification:(id)notification
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SUUIFacebookPageSection__accountStoreDidChangeNotification___block_invoke;
  block[3] = &unk_2798F5BE8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __62__SUUIFacebookPageSection__accountStoreDidChangeNotification___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 96);
  if (v2 != -1)
  {
    v3 = result;
    *(v1 + 96) = -1;
    v4 = [*(result + 32) _facebookAccountsExist];
    result = *(v3 + 32);
    if (v4 == v2)
    {
      if ((*(result + 112) & 1) == 0)
      {
        [result _resetState];
        v6 = *(v3 + 32);

        return [v6 _reloadLikeStatus];
      }
    }

    else
    {
      [result _resetState];
      v5 = *(v3 + 32);

      return [v5 _reloadCollectionViewSection];
    }
  }

  return result;
}

- (id)_accountStore
{
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v4 = SUUIAccountsFramework();
    v5 = objc_alloc_init(SUUIWeakLinkedClassForString(&cfstr_Acaccountstore.isa, v4));
    v6 = self->_accountStore;
    self->_accountStore = v5;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v8 = SUUIAccountsFramework();
    [defaultCenter addObserver:self selector:sel__accountStoreDidChangeNotification_ name:*SUUIWeakLinkedSymbolForString("ACAccountStoreDidChangeNotification" object:{v8), 0}];

    accountStore = self->_accountStore;
  }

  return accountStore;
}

- (void)_applyColorSchemeToFacebookView:(id)view
{
  if (view)
  {
    pageComponent = [(SUUIStorePageSection *)self pageComponent];
    viewElement = [pageComponent viewElement];
    style = [viewElement style];

    if (style)
    {
      context = objc_alloc_init(SUUIColorScheme);
      tintColor = [(SUUIViewElementLayoutContext *)self->_layoutContext tintColor];
      colorScheme = SUUIViewElementPlainColorWithStyle(style, tintColor);

      [(SUUIColorScheme *)context setPrimaryTextColor:colorScheme];
      [(SUUIColorScheme *)context setSecondaryTextColor:colorScheme];
      facebookView = self->_facebookView;
      v10 = context;
    }

    else
    {
      context = [(SUUIStorePageSection *)self context];
      v11 = self->_facebookView;
      colorScheme = [(SUUIColorScheme *)context colorScheme];
      facebookView = v11;
      v10 = colorScheme;
    }

    [(SUUIReviewsFacebookView *)facebookView setColorScheme:v10];
  }
}

- (void)_changeStatusToUserLiked:(BOOL)liked
{
  likedCopy = liked;
  v5 = [(SUUIFacebookLikeStatus *)self->_likeStatus copy];
  [(SUUIFacebookLikeStatus *)v5 setUserLiked:likedCopy];
  likeStatus = self->_likeStatus;
  self->_likeStatus = v5;
  v7 = v5;

  [(SUUIReviewsFacebookView *)self->_facebookView setUserLiked:likedCopy];

  [(SUUIFacebookPageSection *)self _reloadCollectionViewSection];
}

- (int64_t)_facebookAccountsExist
{
  facebookAccountsExist = self->_facebookAccountsExist;
  if (facebookAccountsExist == 255)
  {
    _accountStore = [(SUUIFacebookPageSection *)self _accountStore];
    v5 = objc_opt_class();
    v6 = SUUIAccountsFramework();
    self->_facebookAccountsExist = [v5 accountsWithAccountTypeIdentifierExist:{*SUUIWeakLinkedSymbolForString("ACAccountTypeIdentifierFacebook", v6)}] != 0;

    LOBYTE(facebookAccountsExist) = self->_facebookAccountsExist;
  }

  return facebookAccountsExist;
}

- (id)_facebookView
{
  facebookView = self->_facebookView;
  if (!facebookView)
  {
    if (self->_likeStatus)
    {
      context = [(SUUIStorePageSection *)self context];
      v5 = [SUUIReviewsFacebookView alloc];
      clientContext = [context clientContext];
      v7 = [(SUUIReviewsFacebookView *)v5 initWithClientContext:clientContext];
      v8 = self->_facebookView;
      self->_facebookView = v7;

      likeToggleButton = [(SUUIReviewsFacebookView *)self->_facebookView likeToggleButton];
      [likeToggleButton addTarget:self action:sel__toggleLikeAction_ forControlEvents:64];

      v10 = self->_facebookView;
      friendNames = [(SUUIFacebookLikeStatus *)self->_likeStatus friendNames];
      [(SUUIReviewsFacebookView *)v10 setFriendNames:friendNames];

      [(SUUIReviewsFacebookView *)self->_facebookView setUserLiked:[(SUUIFacebookLikeStatus *)self->_likeStatus isUserLiked]];
      [(SUUIFacebookPageSection *)self _applyColorSchemeToFacebookView:self->_facebookView];

      facebookView = self->_facebookView;
    }

    else
    {
      facebookView = 0;
    }
  }

  return facebookView;
}

- (void)_finishLookupWithStatus:(id)status error:(id)error
{
  statusCopy = status;
  self->_isLoadingLikeStatus = 0;
  objc_storeStrong(&self->_likeStatus, status);
  if (self->_likeStatus)
  {
    context = [(SUUIStorePageSection *)self context];
    collectionView = [context collectionView];
    v8 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
    v9 = [collectionView cellForItemAtIndexPath:v8];

    facebookView = self->_facebookView;
    if (facebookView)
    {
      friendNames = [(SUUIFacebookLikeStatus *)self->_likeStatus friendNames];
      [(SUUIReviewsFacebookView *)facebookView setFriendNames:friendNames];

      [(SUUIReviewsFacebookView *)self->_facebookView setUserLiked:[(SUUIFacebookLikeStatus *)self->_likeStatus isUserLiked]];
    }

    else if (v9)
    {
      _facebookView = [(SUUIFacebookPageSection *)self _facebookView];
      [v9 setContentChildView:_facebookView];
    }

    else
    {
      [(SUUIFacebookPageSection *)self _reloadCollectionViewSection];
    }
  }

  else if (self->_facebookAccountsExist == 1)
  {
    self->_facebookAccountsExist = 0;
    [(SUUIFacebookPageSection *)self _reloadCollectionViewSection];
  }
}

- (void)_reloadCollectionViewSection
{
  areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
  [MEMORY[0x277D75D18] setAnimationsEnabled:0];
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v6 = [MEMORY[0x277CCAA78] indexSetWithIndex:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
  [collectionView reloadSections:v6];

  v7 = MEMORY[0x277D75D18];

  [v7 setAnimationsEnabled:areAnimationsEnabled];
}

- (void)_reloadLikeStatus
{
  pageComponent = [(SUUIStorePageSection *)self pageComponent];
  viewElement = [pageComponent viewElement];
  uRLString = [viewElement URLString];

  if (uRLString)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:uRLString];
    objc_initWeak(&location, self);
    v7 = SUUISocialFramework();
    v8 = [SUUIWeakLinkedClassForString(&cfstr_Slfacebooksess.isa v7)];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__SUUIFacebookPageSection__reloadLikeStatus__block_invoke;
    v10[3] = &unk_2798FD3F0;
    v9 = v6;
    v11 = v9;
    objc_copyWeak(&v12, &location);
    [v8 fetchLikeStatusForURL:v9 flags:9 completion:v10];
    self->_isLoadingLikeStatus = 1;
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }
}

void __44__SUUIFacebookPageSection__reloadLikeStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SUUIFacebookPageSection__reloadLikeStatus__block_invoke_2;
  v9[3] = &unk_2798F64B8;
  v10 = v5;
  v11 = *(a1 + 32);
  v7 = v5;
  objc_copyWeak(&v13, (a1 + 40));
  v12 = v6;
  v8 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v9);

  objc_destroyWeak(&v13);
}

void __44__SUUIFacebookPageSection__reloadLikeStatus__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v3 = [[SUUIFacebookLikeStatus alloc] initWithURL:*(a1 + 40) likeStatusDictionary:*(a1 + 32)];
  }

  else
  {
    v3 = 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _finishLookupWithStatus:v3 error:*(a1 + 48)];
}

- (void)_resetState
{
  context = [(SUUIStorePageSection *)self context];
  collectionView = [context collectionView];
  v5 = [MEMORY[0x277CCAA70] indexPathForItem:0 inSection:{-[SUUIStorePageSection sectionIndex](self, "sectionIndex")}];
  v9 = [collectionView cellForItemAtIndexPath:v5];

  [v9 setContentChildView:0];
  likeToggleButton = [(SUUIReviewsFacebookView *)self->_facebookView likeToggleButton];
  [likeToggleButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  facebookView = self->_facebookView;
  self->_facebookView = 0;

  likeStatus = self->_likeStatus;
  self->_likeStatus = 0;
}

@end
@interface SUUIPhysicalCirclesDocumentViewController
- (SUUIPhysicalCirclesDocumentViewController)initWithPhysicalCirclesTemplateViewElement:(id)element;
- (id)_affiliationItemsWithCircleItemElements:(id)elements;
- (id)_leftFooterButtonElement;
- (id)_profileImageElement;
- (id)_rightFooterButtonElement;
- (void)_footerLeftButtonAction:(id)action;
- (void)_footerRightButtonAction:(id)action;
- (void)_loadImagesWithReason:(int64_t)reason;
- (void)_reloadFooterViewAnimated:(BOOL)animated;
- (void)_reloadInstructionsView;
- (void)_styleAttributedString:(id)string withStyle:(id)style;
- (void)artworkRequest:(id)request didLoadImage:(id)image;
- (void)dealloc;
- (void)documentDidUpdate:(id)update;
- (void)loadView;
- (void)onboardingCircles:(id)circles didRemoveAffiliationItem:(id)item;
- (void)onboardingCircles:(id)circles didSelectAffiliationItem:(id)item atIndex:(int64_t)index;
- (void)physicalCirclesDOMFeature:(id)feature didRequestAnimation:(id)animation;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SUUIPhysicalCirclesDocumentViewController

- (SUUIPhysicalCirclesDocumentViewController)initWithPhysicalCirclesTemplateViewElement:(id)element
{
  elementCopy = element;
  v10.receiver = self;
  v10.super_class = SUUIPhysicalCirclesDocumentViewController;
  v6 = [(SUUIPhysicalCirclesDocumentViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, element);
    scriptInterface = [(SUUIPhysicalCirclesTemplateViewElement *)v7->_templateElement scriptInterface];
    [scriptInterface setDelegate:v7];
  }

  return v7;
}

- (void)dealloc
{
  delegate = [(UIGestureRecognizer *)self->_interactivePopGestureRecognizer delegate];

  if (delegate == self)
  {
    [(UIGestureRecognizer *)self->_interactivePopGestureRecognizer setDelegate:0];
  }

  [(SUUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController setDelegate:0];
  leftButton = [(SUUIOnboardingFooterView *)self->_footerView leftButton];
  [leftButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  rightButton = [(SUUIOnboardingFooterView *)self->_footerView rightButton];
  [rightButton removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];

  scriptInterface = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement scriptInterface];
  [scriptInterface setDelegate:0];

  v7.receiver = self;
  v7.super_class = SUUIPhysicalCirclesDocumentViewController;
  [(SUUIViewController *)&v7 dealloc];
}

- (void)loadView
{
  v24 = objc_alloc_init(MEMORY[0x277D75D18]);
  style = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement style];
  ikBackgroundColor = [style ikBackgroundColor];
  color = [ikBackgroundColor color];

  if (!color)
  {
    color = [MEMORY[0x277D75348] whiteColor];
  }

  [v24 setBackgroundColor:color];
  [(SUUIPhysicalCirclesDocumentViewController *)self setView:v24];
  if (!self->_circlesViewController)
  {
    v6 = objc_alloc_init(SUUIOnboardingAffiliationCirclesViewController);
    circlesViewController = self->_circlesViewController;
    self->_circlesViewController = v6;

    v8 = self->_circlesViewController;
    circleItemElements = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement circleItemElements];
    v10 = [(SUUIPhysicalCirclesDocumentViewController *)self _affiliationItemsWithCircleItemElements:circleItemElements];
    [(SUUIOnboardingAffiliationCirclesViewController *)v8 setAffiliationItems:v10];

    v11 = self->_circlesViewController;
    clientContext = [(SUUIViewController *)self clientContext];
    [(SUUIOnboardingAffiliationCirclesViewController *)v11 setClientContext:clientContext];

    [(SUUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController setDelegate:self];
    [(SUUIPhysicalCirclesDocumentViewController *)self addChildViewController:self->_circlesViewController];
    [(SUUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController didMoveToParentViewController:self];
  }

  if (!self->_footerView)
  {
    v13 = objc_alloc_init(SUUIOnboardingFooterView);
    footerView = self->_footerView;
    self->_footerView = v13;

    v15 = self->_footerView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUIOnboardingFooterView *)v15 setBackgroundColor:clearColor];

    leftButton = [(SUUIOnboardingFooterView *)self->_footerView leftButton];
    [leftButton addTarget:self action:sel__footerLeftButtonAction_ forControlEvents:64];

    rightButton = [(SUUIOnboardingFooterView *)self->_footerView rightButton];
    [rightButton addTarget:self action:sel__footerRightButtonAction_ forControlEvents:64];

    [(SUUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController setFooterView:self->_footerView];
  }

  if (!self->_progressView)
  {
    v19 = objc_alloc_init(SUUIOnboardingProgressView);
    progressView = self->_progressView;
    self->_progressView = v19;

    v21 = self->_progressView;
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [(SUUIOnboardingProgressView *)v21 setBackgroundColor:clearColor2];

    [(SUUIOnboardingProgressView *)self->_progressView setFillColor:color];
    [(SUUIOnboardingProgressView *)self->_progressView sizeToFit];
    [(SUUIOnboardingFooterView *)self->_footerView setProgressView:self->_progressView];
  }

  [(SUUIPhysicalCirclesDocumentViewController *)self _reloadFooterViewAnimated:0];
  [(SUUIPhysicalCirclesDocumentViewController *)self _reloadInstructionsView];
  view = [(SUUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController view];
  [view setAutoresizingMask:18];
  [v24 bounds];
  [view setFrame:?];
  [v24 addSubview:view];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  [(SUUIResourceLoader *)self->_resourceLoader enterForeground];
  if (!self->_resourceLoader)
  {
    [(SUUIPhysicalCirclesDocumentViewController *)self _loadImagesWithReason:0];
  }

  delegate = [(UIGestureRecognizer *)self->_interactivePopGestureRecognizer delegate];

  if (delegate == self)
  {
    [(UIGestureRecognizer *)self->_interactivePopGestureRecognizer setDelegate:0];
  }

  navigationController = [(SUUIPhysicalCirclesDocumentViewController *)self navigationController];
  interactivePopGestureRecognizer = [navigationController interactivePopGestureRecognizer];
  interactivePopGestureRecognizer = self->_interactivePopGestureRecognizer;
  self->_interactivePopGestureRecognizer = interactivePopGestureRecognizer;

  v9 = self->_interactivePopGestureRecognizer;
  if (v9)
  {
    [(UIGestureRecognizer *)v9 setDelegate:self];
  }

  v10.receiver = self;
  v10.super_class = SUUIPhysicalCirclesDocumentViewController;
  [(SUUIPhysicalCirclesDocumentViewController *)&v10 viewDidAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  delegate = [(UIGestureRecognizer *)self->_interactivePopGestureRecognizer delegate];

  if (delegate == self)
  {
    [(UIGestureRecognizer *)self->_interactivePopGestureRecognizer setDelegate:0];
  }

  interactivePopGestureRecognizer = self->_interactivePopGestureRecognizer;
  self->_interactivePopGestureRecognizer = 0;

  v7.receiver = self;
  v7.super_class = SUUIPhysicalCirclesDocumentViewController;
  [(SUUIPhysicalCirclesDocumentViewController *)&v7 viewWillDisappear:disappearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = SUUIPhysicalCirclesDocumentViewController;
  [(SUUIPhysicalCirclesDocumentViewController *)&v4 viewDidDisappear:disappear];
  [(SUUIResourceLoader *)self->_resourceLoader enterBackground];
}

- (void)viewDidLayoutSubviews
{
  topLayoutGuide = [(SUUIPhysicalCirclesDocumentViewController *)self topLayoutGuide];
  [topLayoutGuide length];
  v5 = v4;

  bottomLayoutGuide = [(SUUIPhysicalCirclesDocumentViewController *)self bottomLayoutGuide];
  [bottomLayoutGuide length];
  v8 = v7;

  view = [(SUUIPhysicalCirclesDocumentViewController *)self view];
  [view bounds];
  v10 = CGRectGetHeight(v15) - v5 - v8;

  view2 = [(SUUIPhysicalCirclesDocumentViewController *)self view];
  [view2 bounds];
  Width = CGRectGetWidth(v16);

  view3 = [(SUUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController view];
  [view3 setFrame:{0.0, v5, Width, v10}];

  v14.receiver = self;
  v14.super_class = SUUIPhysicalCirclesDocumentViewController;
  [(SUUIPhysicalCirclesDocumentViewController *)&v14 viewDidLayoutSubviews];
}

- (void)artworkRequest:(id)request didLoadImage:(id)image
{
  imageCopy = image;
  v7 = MEMORY[0x277CCABB0];
  requestCopy = request;
  v9 = [v7 alloc];
  requestIdentifier = [requestCopy requestIdentifier];

  v11 = [v9 initWithUnsignedLongLong:requestIdentifier];
  _profileImageElement = [(SUUIPhysicalCirclesDocumentViewController *)self _profileImageElement];
  v13 = _profileImageElement;
  if (!_profileImageElement)
  {
    goto LABEL_5;
  }

  imageRequests = self->_imageRequests;
  resourceCacheKey = [_profileImageElement resourceCacheKey];
  v16 = [(NSMapTable *)imageRequests objectForKey:resourceCacheKey];

  if (![v16 isEqualToNumber:v11])
  {

LABEL_5:
    affiliationItems = [(SUUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController affiliationItems];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__SUUIPhysicalCirclesDocumentViewController_artworkRequest_didLoadImage___block_invoke;
    v18[3] = &unk_2798FCD00;
    v18[4] = self;
    v19 = v11;
    v20 = imageCopy;
    [affiliationItems enumerateObjectsUsingBlock:v18];

    goto LABEL_6;
  }

  [(SUUIOnboardingProgressView *)self->_progressView setImage:imageCopy];

LABEL_6:
}

void __73__SUUIPhysicalCirclesDocumentViewController_artworkRequest_didLoadImage___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(a1[4] + 1080);
  v10 = v6;
  v8 = [v6 identifier];
  v9 = [v7 objectForKey:v8];

  if ([v9 isEqualToNumber:a1[5]])
  {
    [*(a1[4] + 1064) setImage:a1[6] forAffiliationItem:v10];
    *a4 = 1;
  }
}

- (void)documentDidUpdate:(id)update
{
  updateCopy = update;
  v5 = dispatch_group_create();
  templateElement = [updateCopy templateElement];

  templateElement = self->_templateElement;
  if (templateElement != templateElement)
  {
    scriptInterface = [(SUUIPhysicalCirclesTemplateViewElement *)templateElement scriptInterface];
    [scriptInterface setDelegate:0];

    objc_storeStrong(&self->_templateElement, templateElement);
    scriptInterface2 = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement scriptInterface];
    [scriptInterface2 setDelegate:self];
  }

  [(SUUIPhysicalCirclesDocumentViewController *)self _reloadFooterViewAnimated:1];
  [(SUUIPhysicalCirclesDocumentViewController *)self _reloadInstructionsView];
  affiliationItems = [(SUUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController affiliationItems];
  circleItemElements = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement circleItemElements];
  v12 = [(SUUIPhysicalCirclesDocumentViewController *)self _affiliationItemsWithCircleItemElements:circleItemElements];

  v13 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__SUUIPhysicalCirclesDocumentViewController_documentDidUpdate___block_invoke;
  v26[3] = &unk_2798FCD28;
  v14 = v12;
  v27 = v14;
  v15 = v13;
  v28 = v15;
  v16 = v5;
  v29 = v16;
  selfCopy = self;
  [affiliationItems enumerateObjectsUsingBlock:v26];
  if ([v15 count])
  {
    dispatch_group_enter(v16);
    circlesViewController = self->_circlesViewController;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __63__SUUIPhysicalCirclesDocumentViewController_documentDidUpdate___block_invoke_3;
    v24[3] = &unk_2798F5D30;
    v25 = v16;
    [(SUUIOnboardingAffiliationCirclesViewController *)circlesViewController removeAffiliationItemsInIndexSet:v15 animated:1 completionBlock:v24];
  }

  if ([v14 count])
  {
    [(SUUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController addAffiliationItems:v14];
  }

  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __63__SUUIPhysicalCirclesDocumentViewController_documentDidUpdate___block_invoke_4;
  v22 = &unk_2798F5BE8;
  v23 = templateElement;
  v18 = templateElement;
  dispatch_group_notify(v16, MEMORY[0x277D85CD0], &v19);
  [(SUUIPhysicalCirclesDocumentViewController *)self _loadImagesWithReason:0, v19, v20, v21, v22];
}

void __63__SUUIPhysicalCirclesDocumentViewController_documentDidUpdate___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) indexOfObject:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addIndex:a3];
  }

  else
  {
    v7 = v6;
    v8 = [*(a1 + 32) objectAtIndex:v6];
    v9 = [v5 userAffinityCount];
    if (v9 != [v8 userAffinityCount])
    {
      dispatch_group_enter(*(a1 + 48));
      v10 = *(*(a1 + 56) + 1064);
      v11 = [v8 userAffinityCount];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __63__SUUIPhysicalCirclesDocumentViewController_documentDidUpdate___block_invoke_2;
      v12[3] = &unk_2798F5D30;
      v13 = *(a1 + 48);
      [v10 setUserAffinityCount:v11 forAffiliationItemAtIndex:a3 animated:1 completionBlock:v12];
    }

    [*(a1 + 32) removeObjectAtIndex:v7];
  }
}

void __63__SUUIPhysicalCirclesDocumentViewController_documentDidUpdate___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) scriptInterface];
  [v1 finishDOMUpdates];
}

- (void)onboardingCircles:(id)circles didRemoveAffiliationItem:(id)item
{
  identifier = [item identifier];
  circleItemElements = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement circleItemElements];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__SUUIPhysicalCirclesDocumentViewController_onboardingCircles_didRemoveAffiliationItem___block_invoke;
  v8[3] = &unk_2798FCD50;
  v9 = identifier;
  selfCopy = self;
  v7 = identifier;
  [circleItemElements enumerateObjectsUsingBlock:v8];
}

void __88__SUUIPhysicalCirclesDocumentViewController_onboardingCircles_didRemoveAffiliationItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  v6 = [v8 itemIdentifier];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    [*(*(a1 + 40) + 1112) dispatchRemovedEventWithChildViewElement:v8];
    *a4 = 1;
  }
}

- (void)onboardingCircles:(id)circles didSelectAffiliationItem:(id)item atIndex:(int64_t)index
{
  identifier = [item identifier];
  circleItemElements = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement circleItemElements];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __96__SUUIPhysicalCirclesDocumentViewController_onboardingCircles_didSelectAffiliationItem_atIndex___block_invoke;
  v9[3] = &unk_2798FCD78;
  v10 = identifier;
  v8 = identifier;
  [circleItemElements enumerateObjectsUsingBlock:v9];
}

void __96__SUUIPhysicalCirclesDocumentViewController_onboardingCircles_didSelectAffiliationItem_atIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 itemIdentifier];
  LODWORD(a1) = [v6 isEqualToString:*(a1 + 32)];

  if (a1)
  {
    [v7 dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
    *a4 = 1;
  }
}

- (void)physicalCirclesDOMFeature:(id)feature didRequestAnimation:(id)animation
{
  animationCopy = animation;
  animationType = [animationCopy animationType];
  if (animationType == 1)
  {
    circlesViewController = self->_circlesViewController;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __91__SUUIPhysicalCirclesDocumentViewController_physicalCirclesDOMFeature_didRequestAnimation___block_invoke_2;
    v10[3] = &unk_2798F5D30;
    v8 = &v11;
    v11 = animationCopy;
    [(SUUIOnboardingAffiliationCirclesViewController *)circlesViewController resetWithAffiliationItems:0 animated:1 completionBlock:v10];
    goto LABEL_5;
  }

  if (!animationType)
  {
    v7 = self->_circlesViewController;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __91__SUUIPhysicalCirclesDocumentViewController_physicalCirclesDOMFeature_didRequestAnimation___block_invoke;
    v12[3] = &unk_2798FCDA0;
    v8 = &v13;
    v13 = animationCopy;
    [(SUUIOnboardingAffiliationCirclesViewController *)v7 performFinishAnimationWithCompletionBlock:v12];
LABEL_5:
  }
}

- (void)_footerLeftButtonAction:(id)action
{
  _leftFooterButtonElement = [(SUUIPhysicalCirclesDocumentViewController *)self _leftFooterButtonElement];
  [_leftFooterButtonElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (void)_footerRightButtonAction:(id)action
{
  _rightFooterButtonElement = [(SUUIPhysicalCirclesDocumentViewController *)self _rightFooterButtonElement];
  [_rightFooterButtonElement dispatchEventOfType:2 canBubble:1 isCancelable:1 extraInfo:0 completionBlock:0];
}

- (id)_affiliationItemsWithCircleItemElements:(id)elements
{
  v3 = MEMORY[0x277CBEB18];
  elementsCopy = elements;
  array = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __85__SUUIPhysicalCirclesDocumentViewController__affiliationItemsWithCircleItemElements___block_invoke;
  v8[3] = &unk_2798FCD78;
  v6 = array;
  v9 = v6;
  [elementsCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __85__SUUIPhysicalCirclesDocumentViewController__affiliationItemsWithCircleItemElements___block_invoke(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [v17 circleSize];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = v3;
    v5 = objc_alloc_init(SUUIOnboardingAffiliationItem);
    v6 = [v17 itemIdentifier];
    [(SUUIOnboardingAffiliationItem *)v5 setIdentifier:v6];

    v7 = [v17 titleElement];
    v8 = [v7 text];
    v9 = [v8 string];
    [(SUUIOnboardingAffiliationItem *)v5 setTitle:v9];

    [(SUUIOnboardingAffiliationItem *)v5 setUserAffinityCount:v4];
    v10 = [v17 imageElement];
    v11 = [v10 resourceName];
    if (v11)
    {
      [(SUUIOnboardingAffiliationItem *)v5 setImageName:v11];
    }

    else
    {
      v12 = [v10 URL];
      [(SUUIOnboardingAffiliationItem *)v5 setImageURL:v12];
    }

    v13 = [v17 style];
    v14 = [v13 ikColor];
    v15 = [v14 color];
    [(SUUIOnboardingAffiliationItem *)v5 setFillColor:v15];

    v16 = [v13 imageTreatment];
    [(SUUIOnboardingAffiliationItem *)v5 setImageTreatment:v16];

    [*(a1 + 32) addObject:v5];
  }
}

- (id)_leftFooterButtonElement
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__82;
  v10 = __Block_byref_object_dispose__82;
  v11 = 0;
  footerPaletteElement = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement footerPaletteElement];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __69__SUUIPhysicalCirclesDocumentViewController__leftFooterButtonElement__block_invoke;
  v5[3] = &unk_2798F5FB8;
  v5[4] = &v6;
  [footerPaletteElement enumerateChildrenUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __69__SUUIPhysicalCirclesDocumentViewController__leftFooterButtonElement__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 elementType] == 12)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else if ([v6 elementType] != 95)
  {
    goto LABEL_5;
  }

  *a3 = 1;
LABEL_5:
}

- (void)_loadImagesWithReason:(int64_t)reason
{
  v55 = *MEMORY[0x277D85DE8];
  if (!self->_imageRequests)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    imageRequests = self->_imageRequests;
    self->_imageRequests = v4;
  }

  if (!self->_resourceLoader)
  {
    v6 = [SUUIResourceLoader alloc];
    operationQueue = [(SUUIViewController *)self operationQueue];
    clientContext = [(SUUIViewController *)self clientContext];
    v9 = [(SUUIResourceLoader *)v6 initWithOperationQueue:operationQueue clientContext:clientContext];
    resourceLoader = self->_resourceLoader;
    self->_resourceLoader = v9;
  }

  _profileImageElement = [(SUUIPhysicalCirclesDocumentViewController *)self _profileImageElement];
  v12 = _profileImageElement;
  if (_profileImageElement)
  {
    resourceCacheKey = [_profileImageElement resourceCacheKey];
    v14 = [(NSMapTable *)self->_imageRequests objectForKey:resourceCacheKey];
    v15 = v14;
    if (!v14 || !-[SUUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_resourceLoader, "trySetReason:forRequestWithIdentifier:", reason, [v14 unsignedIntegerValue]))
    {
      v16 = objc_alloc_init(SUUIArtworkRequest);
      [(SUUIResourceRequest *)v16 setCacheKey:resourceCacheKey];
      [(SUUIArtworkRequest *)v16 setDelegate:self];
      v17 = [v12 URL];
      [(SUUIArtworkRequest *)v16 setURL:v17];

      traitCollection = [(SUUIPhysicalCirclesDocumentViewController *)self traitCollection];
      userInterfaceIdiom = [traitCollection userInterfaceIdiom];

      if (userInterfaceIdiom == 1)
      {
        v20 = 120.0;
      }

      else
      {
        v20 = 78.0;
      }

      v21 = objc_alloc_init(SUUIOnboardingCircleImageDataConsumer);
      [objc_opt_class() preferredImageSizeForViewSize:{v20, v20}];
      [(SUUIOnboardingCircleImageDataConsumer *)v21 setOutputSize:?];
      [(SUUIArtworkRequest *)v16 setDataConsumer:v21];
      v22 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v16, "requestIdentifier")}];
      [(NSMapTable *)self->_imageRequests setObject:v22 forKey:resourceCacheKey];
      [(SUUIResourceLoader *)self->_resourceLoader loadResourceWithRequest:v16 reason:reason];
    }
  }

  v44 = v12;
  affiliationItems = [(SUUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController affiliationItems];
  view = [(SUUIPhysicalCirclesDocumentViewController *)self view];
  tintColor = [view tintColor];

  [(SUUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController maximumCircleDiameter];
  v26 = v25;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = affiliationItems;
  v48 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v48)
  {
    v47 = *v51;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v51 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v50 + 1) + 8 * i);
        identifier = [v28 identifier];
        v30 = [(NSMapTable *)self->_imageRequests objectForKey:identifier];
        v31 = v30;
        if (!v30 || !-[SUUIResourceLoader trySetReason:forRequestWithIdentifier:](self->_resourceLoader, "trySetReason:forRequestWithIdentifier:", reason, [v30 unsignedIntegerValue]))
        {
          v32 = objc_alloc_init(SUUIArtworkRequest);
          [(SUUIArtworkRequest *)v32 setDelegate:self];
          imageName = [v28 imageName];
          if (imageName)
          {
            [(SUUIArtworkRequest *)v32 setImageName:imageName];
          }

          else
          {
            imageURL = [v28 imageURL];
            [(SUUIArtworkRequest *)v32 setURL:imageURL];
          }

          v35 = objc_alloc_init(SUUIOnboardingCircleImageDataConsumer);
          [(SUUIOnboardingCircleImageDataConsumer *)v35 setOutputSize:v26, v26];
          imageTreatment = [v28 imageTreatment];
          v37 = [imageTreatment isEqualToString:0x286B001A0];

          if (v37)
          {
            fillColor = [v28 fillColor];
            v39 = fillColor;
            if (fillColor)
            {
              v40 = fillColor;
            }

            else
            {
              v40 = tintColor;
            }

            [(SUUIOnboardingCircleImageDataConsumer *)v35 setTintColor:v40];

            [(SUUIOnboardingCircleImageDataConsumer *)v35 setUsesSaturationFilter:1];
          }

          [(SUUIArtworkRequest *)v32 setDataConsumer:v35];
          v41 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:{-[SUUIResourceRequest requestIdentifier](v32, "requestIdentifier")}];
          v42 = self->_imageRequests;
          identifier2 = [v28 identifier];
          [(NSMapTable *)v42 setObject:v41 forKey:identifier2];

          [(SUUIResourceLoader *)self->_resourceLoader loadResourceWithRequest:v32 reason:reason];
        }
      }

      v48 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v48);
  }
}

- (id)_profileImageElement
{
  footerPaletteElement = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement footerPaletteElement];
  v3 = [footerPaletteElement firstChildForElementType:95];

  v4 = [v3 firstChildForElementType:49];

  return v4;
}

- (void)_reloadFooterViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  _leftFooterButtonElement = [(SUUIPhysicalCirclesDocumentViewController *)self _leftFooterButtonElement];
  footerView = self->_footerView;
  v26 = _leftFooterButtonElement;
  if (_leftFooterButtonElement)
  {
    buttonText = [_leftFooterButtonElement buttonText];
    string = [buttonText string];
    if (animatedCopy)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    [(SUUIOnboardingFooterView *)footerView showLeftButtonWithTitle:string animation:v9];

    leftButton = [(SUUIOnboardingFooterView *)self->_footerView leftButton];
    [leftButton setEnabled:{objc_msgSend(v26, "isEnabled")}];
  }

  else
  {
    [(SUUIOnboardingFooterView *)footerView hideLeftButtonWithAnimation:animatedCopy ^ 1];
  }

  _rightFooterButtonElement = [(SUUIPhysicalCirclesDocumentViewController *)self _rightFooterButtonElement];
  v12 = _rightFooterButtonElement;
  v13 = self->_footerView;
  if (_rightFooterButtonElement)
  {
    buttonText2 = [_rightFooterButtonElement buttonText];
    string2 = [buttonText2 string];
    if (animatedCopy)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    [(SUUIOnboardingFooterView *)v13 showRightButtonWithTitle:string2 animation:v16];

    rightButton = [(SUUIOnboardingFooterView *)self->_footerView rightButton];
    [rightButton setEnabled:{objc_msgSend(v12, "isEnabled")}];
  }

  else
  {
    [(SUUIOnboardingFooterView *)self->_footerView hideRightButtonWithAnimation:animatedCopy ^ 1];
  }

  footerPaletteElement = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement footerPaletteElement];
  v19 = [footerPaletteElement firstChildForElementType:95];

  v20 = [v19 firstChildForElementType:138];
  progressView = self->_progressView;
  [v19 value];
  [(SUUIOnboardingProgressView *)progressView setProgress:animatedCopy animated:v22];
  v23 = self->_progressView;
  text = [v20 text];
  string3 = [text string];
  [(SUUIOnboardingProgressView *)v23 setTitle:string3];
}

- (void)_reloadInstructionsView
{
  instructionsView = [(SUUIOnboardingAffiliationCirclesViewController *)self->_circlesViewController instructionsView];
  titleElement = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement titleElement];
  if (titleElement)
  {
    v4 = objc_opt_class();
    text = [titleElement text];
    string = [text string];
    v7 = [v4 titleAttributedStringWithString:string];

    style = [titleElement style];
    [(SUUIPhysicalCirclesDocumentViewController *)self _styleAttributedString:v7 withStyle:style];
  }

  else
  {
    v7 = 0;
  }

  titleLabel = [instructionsView titleLabel];
  [titleLabel setAttributedText:v7];

  subtitleElement = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement subtitleElement];
  if (subtitleElement)
  {
    v11 = objc_opt_class();
    text2 = [subtitleElement text];
    string2 = [text2 string];
    v14 = [v11 explanationAttributedStringWithString:string2];

    style2 = [subtitleElement style];
    [(SUUIPhysicalCirclesDocumentViewController *)self _styleAttributedString:v14 withStyle:style2];
  }

  else
  {
    v14 = 0;
  }

  explanationLabel = [instructionsView explanationLabel];
  [explanationLabel setAttributedText:v14];

  [instructionsView setNeedsLayout];
}

- (id)_rightFooterButtonElement
{
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x3032000000;
  v12[3] = __Block_byref_object_copy__82;
  v12[4] = __Block_byref_object_dispose__82;
  v13 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__82;
  v10 = __Block_byref_object_dispose__82;
  v11 = 0;
  footerPaletteElement = [(SUUIPhysicalCirclesTemplateViewElement *)self->_templateElement footerPaletteElement];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__SUUIPhysicalCirclesDocumentViewController__rightFooterButtonElement__block_invoke;
  v5[3] = &unk_2798FCDC8;
  v5[4] = v12;
  v5[5] = &v6;
  [footerPaletteElement enumerateChildrenUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(v12, 8);

  return v3;
}

void __70__SUUIPhysicalCirclesDocumentViewController__rightFooterButtonElement__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 elementType];
  v7 = *(*(a1 + 32) + 8);
  if (v6 == 95)
  {
    objc_storeStrong((v7 + 40), a2);
  }

  else if (*(v7 + 40) && [v8 elementType] == 12)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (void)_styleAttributedString:(id)string withStyle:(id)style
{
  stringCopy = string;
  styleCopy = style;
  v7 = SUUIViewElementFontWithStyle(styleCopy);
  if (v7)
  {
    [stringCopy addAttribute:*MEMORY[0x277D740A8] value:v7 range:{0, objc_msgSend(stringCopy, "length")}];
  }

  ikColor = [styleCopy ikColor];
  view = [(SUUIPhysicalCirclesDocumentViewController *)self view];
  tintColor = [view tintColor];
  v11 = SUUIViewElementPlainColorWithIKColor(ikColor, tintColor);

  if (v11)
  {
    [stringCopy addAttribute:*MEMORY[0x277D740C0] value:v11 range:{0, objc_msgSend(stringCopy, "length")}];
  }
}

@end
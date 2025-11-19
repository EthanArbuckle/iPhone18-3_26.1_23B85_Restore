@interface SUUICommentDocumentViewController
- (BOOL)_loadImageForURL:(id)a3 cacheKey:(id)a4 dataConsumer:(id)a5 reason:(int64_t)a6;
- (SUUICommentDocumentViewController)initWithTemplateElement:(id)a3;
- (id)_backgroundColor;
- (id)_getSelectedCommenter;
- (id)_layoutContext;
- (void)_changeCommenter;
- (void)_checkAdminStatus;
- (void)_keyboardDidHideChangeNotification:(id)a3;
- (void)_keyboardWillChangeNotification:(id)a3 accountForGuideLines:(BOOL)a4 applyKeyboardOffset:(BOOL)a5;
- (void)_keyboardWillHideNotification:(id)a3;
- (void)_keyboardWillShowNotification:(id)a3;
- (void)_layoutKeyboard;
- (void)_layoutScrollView:(double)a3;
- (void)_preloadCommenterImages;
- (void)_reloadContentSize:(double)a3;
- (void)_setSelectedCommenter:(int64_t)a3;
- (void)commentPostBarView:(id)a3 text:(id)a4 as:(id)a5;
- (void)dealloc;
- (void)documentDidUpdate:(id)a3;
- (void)loadView;
- (void)updateStackElement:(id)a3 withView:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUICommentDocumentViewController

- (SUUICommentDocumentViewController)initWithTemplateElement:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = SUUICommentDocumentViewController;
  v6 = [(SUUICommentDocumentViewController *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, a3);
    v7->_scrollNewCommentToView = [(SUUICommentTemplateViewElement *)v7->_templateElement scrollNewCommentToView];
    v8 = [v5 firstChildForElementType:132];
    stackTemplateElement = v7->_stackTemplateElement;
    v7->_stackTemplateElement = v8;

    [(SUUICommentDocumentViewController *)v7 setAutomaticallyAdjustsScrollViewInsets:0];
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v7 selector:sel__keyboardWillChangeFrameNotification_ name:*MEMORY[0x277D76C48] object:0];
    [v10 addObserver:v7 selector:sel__keyboardDidHideChangeNotification_ name:*MEMORY[0x277D76BA0] object:0];
    [v10 addObserver:v7 selector:sel__keyboardWillHideNotification_ name:*MEMORY[0x277D76C50] object:0];
    [v10 addObserver:v7 selector:sel__keyboardWillShowNotification_ name:*MEMORY[0x277D76C60] object:0];
    v11 = +[SUUIMediaSocialProfileCoordinator sharedCoordinator];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__SUUICommentDocumentViewController_initWithTemplateElement___block_invoke;
    v13[3] = &unk_2798F65A8;
    v14 = v7;
    [v11 getProfileWithOptions:0 profileBlock:v13];
  }

  return v7;
}

void __61__SUUICommentDocumentViewController_initWithTemplateElement___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = objc_alloc_init(SUUIMediaSocialAuthor);
    v5 = *(a1 + 32);
    v6 = *(v5 + 1064);
    *(v5 + 1064) = v4;

    v7 = *(*(a1 + 32) + 1064);
    v8 = [v3 profileType];
    [v7 setAuthorType:v8];

    v9 = *(*(a1 + 32) + 1064);
    v10 = [v3 identifier];
    [v9 setIdentifier:v10];

    v11 = *(*(a1 + 32) + 1064);
    v12 = [v3 name];
    [v11 setName:v12];

    v13 = *(*(a1 + 32) + 1064);
    v14 = [v3 profileImageURL];

    [v13 setThumbnailImageURL:v14];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76C48] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C50] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76BA0] object:0];
  [(SUUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:0];
  [(SUUIViewElementLayoutContext *)self->_layoutContext setParentViewController:0];
  [(SUUILayoutCache *)self->_textLayoutCache setDelegate:0];

  v4.receiver = self;
  v4.super_class = SUUICommentDocumentViewController;
  [(SUUIViewController *)&v4 dealloc];
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  stackTemplateElement = self->_stackTemplateElement;
  v15 = v3;
  if (stackTemplateElement)
  {
    [(SUUICommentDocumentViewController *)self updateStackElement:stackTemplateElement withView:v3];
    v3 = v15;
  }

  if (!self->_postView)
  {
    v5 = [SUUICommentPostBarView alloc];
    v6 = [(SUUICommentPostBarView *)v5 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    postView = self->_postView;
    self->_postView = v6;

    [(SUUICommentPostBarView *)self->_postView setDelegate:self];
    v8 = self->_postView;
    v9 = [(SUUICommentTemplateViewElement *)self->_templateElement postButtonText];
    [(SUUICommentPostBarView *)v8 setPostButtonText:v9];

    v10 = self->_postView;
    v11 = [(SUUICommentTemplateViewElement *)self->_templateElement postPlaceholderText];
    [(SUUICommentPostBarView *)v10 setPlaceholderText:v11];

    [(SUUICommentPostBarView *)self->_postView setPostButtonVisible:0];
    v12 = [(SUUICommentTemplateViewElement *)self->_templateElement asText];

    if (v12)
    {
      v13 = self->_postView;
      v14 = [(SUUICommentTemplateViewElement *)self->_templateElement asText];
      [(SUUICommentPostBarView *)v13 setAsText:v14];
    }

    [v15 addSubview:self->_postView];
    v3 = v15;
  }

  [(SUUICommentDocumentViewController *)self setView:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  templateElement = self->_templateElement;
  if (templateElement && [(SUUICommentTemplateViewElement *)templateElement showKeyboard]&& !self->_didShowKeyboard)
  {
    [(SUUICommentPostBarView *)self->_postView becomeFirstResponder];
    self->_didShowKeyboard = 1;
  }

  v6.receiver = self;
  v6.super_class = SUUICommentDocumentViewController;
  [(SUUICommentDocumentViewController *)&v6 viewDidAppear:v3];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(SUUICommentDocumentViewController *)self _layoutScrollView:0.0];
  v5.receiver = self;
  v5.super_class = SUUICommentDocumentViewController;
  [(SUUIViewController *)&v5 viewWillAppear:v3];
  [(SUUICommentDocumentViewController *)self _checkAdminStatus];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SUUIStackDocumentViewController *)self->_childViewController view];
  [v5 resignFirstResponder];
  v6.receiver = self;
  v6.super_class = SUUICommentDocumentViewController;
  [(SUUICommentDocumentViewController *)&v6 viewWillDisappear:v3];
}

- (void)viewWillLayoutSubviews
{
  [(SUUICommentDocumentViewController *)self _layoutScrollView:0.0];
  if (!self->_keyboardVisible)
  {
    [(SUUICommentDocumentViewController *)self _layoutKeyboard];
    [(SUUICommentDocumentViewController *)self _reloadContentSize:0.0];
  }

  v3.receiver = self;
  v3.super_class = SUUICommentDocumentViewController;
  [(SUUICommentDocumentViewController *)&v3 viewWillLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8.receiver = self;
  v8.super_class = SUUICommentDocumentViewController;
  v7 = a4;
  [(SUUICommentDocumentViewController *)&v8 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(SUUIStackDocumentViewController *)self->_childViewController viewWillTransitionToSize:v7 withTransitionCoordinator:width, height, v8.receiver, v8.super_class];
}

- (void)documentDidUpdate:(id)a3
{
  v9 = a3;
  v4 = [v9 templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = v4;

  v6 = [(SUUIViewElement *)self->_templateElement firstChildForElementType:132];
  childViewController = self->_childViewController;
  if (childViewController)
  {
    [(SUUIStackDocumentViewController *)childViewController documentDidUpdate:v9 withTemplate:v6];
  }

  else
  {
    v8 = [(SUUICommentDocumentViewController *)self view];
    [(SUUICommentDocumentViewController *)self updateStackElement:v6 withView:v8];

    [(SUUICommentDocumentViewController *)self _reloadContentSize:0.0];
  }
}

- (void)updateStackElement:(id)a3 withView:(id)a4
{
  v18 = a3;
  objc_storeStrong(&self->_stackTemplateElement, a3);
  v7 = a4;
  childViewController = self->_childViewController;
  if (childViewController)
  {
    v9 = [(SUUIStackDocumentViewController *)childViewController view];
    [v9 removeFromSuperview];

    [(SUUIStackDocumentViewController *)self->_childViewController removeFromParentViewController];
  }

  v10 = [[SUUIStackDocumentViewController alloc] initWithTemplateElement:self->_stackTemplateElement layoutStyle:0];
  v11 = self->_childViewController;
  self->_childViewController = v10;

  v12 = self->_childViewController;
  v13 = [(SUUIViewController *)self clientContext];
  [(SUUIViewController *)v12 setClientContext:v13];

  v14 = self->_childViewController;
  v15 = [(SUUIViewController *)self operationQueue];
  [(SUUIViewController *)v14 setOperationQueue:v15];

  v16 = [(SUUIStackDocumentViewController *)self->_childViewController view];
  [v16 setAutoresizingMask:18];
  v17 = [(SUUICommentDocumentViewController *)self _backgroundColor];
  [v16 setBackgroundColor:v17];

  [v7 bounds];
  [v16 setFrame:?];
  [(SUUICommentDocumentViewController *)self addChildViewController:self->_childViewController];
  [(SUUIStackDocumentViewController *)self->_childViewController didMoveToParentViewController:self];
  [v7 addSubview:v16];
  [v7 sendSubviewToBack:v16];
}

- (void)commentPostBarView:(id)a3 text:(id)a4 as:(id)a5
{
  v7 = a3;
  v8 = a4;
  if (self->_templateElement)
  {
    v9 = [(SUUICommentDocumentViewController *)self _getSelectedCommenter];
    v10 = [(SUUICommentDocumentViewController *)self _getSelectedCommenter];
    v11 = [v10 identifier];

    v12 = [v9 isAttributed];
    v13 = MEMORY[0x277CBEC28];
    if (v12)
    {
      v13 = MEMORY[0x277CBEC38];
    }

    v14 = v13;
    v15 = [v9 authorType];
    if (v15)
    {
      v16 = [v9 authorType];
    }

    else
    {
      v16 = &stru_286AECDE0;
    }

    v17 = objc_opt_new();
    [v17 setObject:@"post" forKey:@"type"];
    if (v8)
    {
      [v17 setObject:v8 forKey:@"comment"];
    }

    if (v11)
    {
      [v17 setObject:v11 forKey:@"commenter"];
    }

    [v17 setObject:v14 forKey:@"isAttributed"];
    [v17 setObject:v16 forKey:@"authorType"];
    templateElement = self->_templateElement;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__SUUICommentDocumentViewController_commentPostBarView_text_as___block_invoke;
    v19[3] = &unk_2798F65D0;
    v20 = v7;
    [(SUUICommentTemplateViewElement *)templateElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v17 completionBlock:v19];
  }
}

void __64__SUUICommentDocumentViewController_commentPostBarView_text_as___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__SUUICommentDocumentViewController_commentPostBarView_text_as___block_invoke_2;
  block[3] = &unk_2798F5BE8;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __64__SUUICommentDocumentViewController_commentPostBarView_text_as___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setText:&stru_286AECDE0];
  v2 = *(a1 + 32);

  return [v2 resignFirstResponder];
}

- (void)_keyboardWillShowNotification:(id)a3
{
  self->_keyboardVisible = 1;
  selectedCommenter = self->_selectedCommenter;
  v5 = a3;
  [(SUUICommentDocumentViewController *)self _setSelectedCommenter:selectedCommenter];
  [(SUUICommentPostBarView *)self->_postView setPostButtonVisible:1];
  [(SUUICommentDocumentViewController *)self _layoutKeyboard];
  [(SUUICommentDocumentViewController *)self _keyboardWillChangeNotification:v5 accountForGuideLines:0 applyKeyboardOffset:1];
}

- (void)_keyboardWillHideNotification:(id)a3
{
  postView = self->_postView;
  v5 = a3;
  [(SUUICommentPostBarView *)postView setCommenter:0];
  [(SUUICommentPostBarView *)self->_postView setPostButtonVisible:0];
  [(SUUICommentDocumentViewController *)self _layoutKeyboard];
  [(SUUICommentDocumentViewController *)self _keyboardWillChangeNotification:v5 accountForGuideLines:1 applyKeyboardOffset:0];
}

- (void)_keyboardDidHideChangeNotification:(id)a3
{
  self->_keyboardVisible = 0;
  if (self->_scrollNewCommentToView)
  {
    v5 = [(SUUIStackDocumentViewController *)self->_childViewController sectionsViewController];
    v14 = [v5 collectionView];

    [v14 contentSize];
    v7 = v6;
    v8 = [(SUUICommentDocumentViewController *)self view];
    [v8 bounds];
    v10 = v9;

    if (v7 >= v10)
    {
      [v14 contentInset];
      v12 = v11;
      [v14 bounds];
      [v14 setContentOffset:1 animated:{0.0, v12 + v7 - v13}];
    }
  }
}

- (void)_keyboardWillChangeNotification:(id)a3 accountForGuideLines:(BOOL)a4 applyKeyboardOffset:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v38 = [a3 userInfo];
  v8 = [v38 objectForKey:*MEMORY[0x277D76BB8]];
  v9 = v8;
  if (v8)
  {
    [v8 CGRectValue];
    self->_keyboardRect.origin.x = v10;
    self->_keyboardRect.origin.y = v11;
    self->_keyboardRect.size.width = v12;
    self->_keyboardRect.size.height = v13;
    v14 = [v38 objectForKey:*MEMORY[0x277D76B78]];
    [v14 doubleValue];
    v16 = v15;

    v17 = [v38 objectForKey:*MEMORY[0x277D76B70]];
    v18 = [v17 unsignedIntegerValue];

    [MEMORY[0x277D75D18] beginAnimations:0 context:0];
    [MEMORY[0x277D75D18] setAnimationCurve:v18];
    [MEMORY[0x277D75D18] setAnimationDuration:v16];
    [(SUUICommentPostBarView *)self->_postView frame];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    y = self->_keyboardRect.origin.y;
    [(SUUICommentPostBarView *)self->_postView bounds];
    if (v6)
    {
      v27 = [(SUUICommentDocumentViewController *)self presentingViewController];
      v28 = v27;
      if (v27)
      {
        v29 = v27;
      }

      else
      {
        v29 = self;
      }

      v30 = v29;

      v31 = [(SUUICommentDocumentViewController *)self view];
      [v31 bounds];
      v33 = v32 - v24;
      v34 = [(SUUICommentDocumentViewController *)v30 bottomLayoutGuide];

      [v34 length];
      v36 = v33 - v35;
    }

    else
    {
      v36 = y - v26;
    }

    [(SUUICommentPostBarView *)self->_postView setFrame:v20, v36, v22, v24];
    [MEMORY[0x277D75D18] commitAnimations];
    height = 0.0;
    if (v5)
    {
      height = self->_keyboardRect.size.height;
    }

    [(SUUICommentDocumentViewController *)self _reloadContentSize:height];
  }
}

- (id)_backgroundColor
{
  v2 = [(SUUICommentTemplateViewElement *)self->_templateElement style];
  v3 = [v2 ikBackgroundColor];
  v4 = [v3 color];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x277D75348] whiteColor];
  }

  v6 = v5;

  return v6;
}

- (void)_changeCommenter
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D75110];
  v4 = [(SUUIViewController *)self clientContext];
  v5 = [v3 alertControllerWithTitle:0 message:0 preferredStyle:SUUIUserInterfaceIdiom(v4) == 1];

  [v5 setModalPresentationStyle:7];
  v25 = [(SUUICommentTemplateViewElement *)self->_templateElement commentAsText];
  v24 = [[SUUICommentHeaderViewController alloc] initWithTitle:v25];
  v23 = [MEMORY[0x277D750F8] _actionWithContentViewController:? style:?];
  [v5 addAction:?];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = self->_commenters;
  v6 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v27 = *v30;
    v9 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        if ([v11 isMySelf])
        {
          v12 = MEMORY[0x277CCACA8];
          v13 = [v11 name];
          v14 = [(SUUICommentTemplateViewElement *)self->_templateElement myselfText];
          v15 = [v12 stringWithFormat:@"%@ (%@)", v13, v14];
        }

        else
        {
          if ([v11 isAttributed])
          {
            [v11 attributedName];
          }

          else
          {
            [v11 name];
          }
          v15 = ;
        }

        v16 = [v11 thumbnailImage];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __53__SUUICommentDocumentViewController__changeCommenter__block_invoke;
        v28[3] = &unk_2798F65F8;
        v28[4] = self;
        v17 = [SUUICommenterAction _actionWithTitle:v15 image:v16 style:0 handler:v28 shouldDismissHandler:&__block_literal_global_1];
        [v17 setIndex:v8];
        [v17 _setChecked:v8 == self->_selectedCommenter];
        [v17 _setTitleTextAlignment:4];
        v18 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
        [v17 _setTitleTextColor:v18];

        v5 = v9;
        [v9 addAction:v17];
        ++v8;
      }

      v7 = [(NSArray *)obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v7);
  }

  v19 = MEMORY[0x277D750F8];
  v20 = [MEMORY[0x277CCA8D8] mainBundle];
  v21 = [v20 localizedStringForKey:@"CANCEL" value:&stru_286AECDE0 table:0];
  v22 = [v19 actionWithTitle:v21 style:1 handler:&__block_literal_global_64];

  if (v22)
  {
    [v5 addAction:v22];
  }

  [(SUUICommentDocumentViewController *)self presentViewController:v5 animated:1 completion:0];
}

void __53__SUUICommentDocumentViewController__changeCommenter__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *(*(a1 + 32) + 1160) = [v3 index];
    [*(a1 + 32) _setSelectedCommenter:*(*(a1 + 32) + 1160)];
  }
}

- (void)_checkAdminStatus
{
  v3 = [MEMORY[0x277D69CE0] sharedCoordinator];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__SUUICommentDocumentViewController__checkAdminStatus__block_invoke;
  v4[3] = &unk_2798F6668;
  v4[4] = self;
  [v3 getAdminStatusAndWaitWithOptions:0 resultBlock:v4];
}

void __54__SUUICommentDocumentViewController__checkAdminStatus__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[SUUIMediaSocialAdminPermissionsCoordinator sharedCoordinator];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __54__SUUICommentDocumentViewController__checkAdminStatus__block_invoke_2;
    v4[3] = &unk_2798F6640;
    v4[4] = *(a1 + 32);
    [v3 getAuthorsAndWaitWithOptions:0 authorsBlock:v4];
  }
}

void __54__SUUICommentDocumentViewController__checkAdminStatus__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__SUUICommentDocumentViewController__checkAdminStatus__block_invoke_3;
  v5[3] = &unk_2798F5AF8;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

void __54__SUUICommentDocumentViewController__checkAdminStatus__block_invoke_3(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v32 = a1;
  if (*(*(a1 + 32) + 1064))
  {
    v3 = [[SUUICommenter alloc] initWithAuthor:*(*(a1 + 32) + 1064)];
    [(SUUICommenter *)v3 setIsMySelf:1];
    [v2 addObject:v3];

    a1 = v32;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v36;
      v8 = @"commentAsEntity";
      v9 = @"commentWithAttribution";
      do
      {
        v10 = 0;
        v33 = v6;
        do
        {
          if (*v36 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v35 + 1) + 8 * v10);
          v12 = [v11 permissions];
          v13 = [v12 containsObject:v8];

          if (v13)
          {
            v14 = [[SUUICommenter alloc] initWithAuthor:v11];
            [v2 addObject:v14];
          }

          v15 = [v11 permissions];
          v16 = [v15 containsObject:v9];

          if (v16)
          {
            v17 = v9;
            v18 = v8;
            v19 = v7;
            v20 = v2;
            v21 = [[SUUICommenter alloc] initWithAuthor:v11];
            [(SUUICommenter *)v21 setIsAttributed:1];
            v22 = [*(a1 + 32) clientContext];
            v23 = v22;
            if (v22)
            {
              [v22 localizedStringForKey:@"ATTRIBUTION_PERSON_%@_FROM_GROUP_%@"];
            }

            else
            {
              [SUUIClientContext localizedStringForKey:@"ATTRIBUTION_PERSON_%@_FROM_GROUP_%@" inBundles:0];
            }
            v24 = ;

            v25 = MEMORY[0x277CCACA8];
            v26 = [*(*(a1 + 32) + 1064) name];
            v27 = [v11 name];
            v28 = [v25 stringWithValidatedFormat:v24 validFormatSpecifiers:@"%@%@" error:0, v26, v27];

            a1 = v32;
            [(SUUICommenter *)v21 setAttributedName:v28];
            [v20 addObject:v21];

            v2 = v20;
            v7 = v19;
            v8 = v18;
            v9 = v17;
            v6 = v33;
          }

          ++v10;
        }

        while (v6 != v10);
        v6 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v6);
    }
  }

  v29 = *(a1 + 32);
  v30 = *(v29 + 1080);
  *(v29 + 1080) = v2;
  v31 = v2;

  [*(a1 + 32) _preloadCommenterImages];
}

- (id)_getSelectedCommenter
{
  v3 = [(NSArray *)self->_commenters count];
  if (v3)
  {
    selectedCommenter = self->_selectedCommenter;
    if (selectedCommenter >= [(NSArray *)self->_commenters count])
    {
      v3 = 0;
    }

    else
    {
      v3 = [(NSArray *)self->_commenters objectAtIndex:self->_selectedCommenter];
    }
  }

  return v3;
}

- (id)_layoutContext
{
  layoutContext = self->_layoutContext;
  if (!layoutContext)
  {
    v4 = objc_alloc_init(SUUIViewElementLayoutContext);
    v5 = self->_layoutContext;
    self->_layoutContext = v4;

    [(SUUIViewElementLayoutContext *)self->_layoutContext setArtworkRequestDelegate:self];
    v6 = self->_layoutContext;
    v7 = [(SUUIViewController *)self clientContext];
    [(SUUIViewElementLayoutContext *)v6 setClientContext:v7];

    [(SUUIViewElementLayoutContext *)self->_layoutContext setContainerViewElementType:[(SUUICommentTemplateViewElement *)self->_templateElement elementType]];
    [(SUUIViewElementLayoutContext *)self->_layoutContext setParentViewController:self];
    v8 = objc_alloc_init(SUUILayoutCache);
    textLayoutCache = self->_textLayoutCache;
    self->_textLayoutCache = v8;

    [(SUUILayoutCache *)self->_textLayoutCache setDelegate:self];
    v10 = [[SUUIViewElementTextLayoutCache alloc] initWithLayoutCache:self->_textLayoutCache];
    [(SUUIViewElementLayoutContext *)self->_layoutContext setLabelLayoutCache:v10];
    v11 = [SUUIResourceLoader alloc];
    v12 = [(SUUIViewController *)self operationQueue];
    v13 = [(SUUIViewController *)self clientContext];
    v14 = [(SUUIResourceLoader *)v11 initWithOperationQueue:v12 clientContext:v13];

    [(SUUIViewElementLayoutContext *)self->_layoutContext setResourceLoader:v14];
    layoutContext = self->_layoutContext;
  }

  return layoutContext;
}

- (void)_layoutScrollView:(double)a3
{
  v5 = [(SUUICommentDocumentViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(SUUIStackDocumentViewController *)self->_childViewController view];
  [v14 setFrame:{v7, v9, v11, v13 - a3}];
}

- (void)_layoutKeyboard
{
  v3 = [(SUUICommentDocumentViewController *)self presentingViewController];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = self;
  }

  v6 = v5;

  postView = self->_postView;
  v8 = [(SUUICommentDocumentViewController *)self view];
  [v8 bounds];
  [(SUUICommentPostBarView *)postView sizeThatFits:v9, v10];
  v12 = v11;
  v14 = v13;

  v15 = [(SUUICommentDocumentViewController *)self view];
  [v15 bounds];
  v17 = v16 - v14;
  v18 = [(SUUICommentDocumentViewController *)v6 bottomLayoutGuide];
  [v18 length];
  v20 = v17 - v19;

  v21 = self->_postView;

  [(SUUICommentPostBarView *)v21 setFrame:0.0, v20, v12, v14];
}

- (BOOL)_loadImageForURL:(id)a3 cacheKey:(id)a4 dataConsumer:(id)a5 reason:(int64_t)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [(SUUICommentDocumentViewController *)self _layoutContext];
  v14 = [v13 resourceLoader];

  v15 = objc_alloc_init(SUUIArtworkRequest);
  [(SUUIResourceRequest *)v15 setCacheKey:v11];

  [(SUUIArtworkRequest *)v15 setDataConsumer:v10];
  [(SUUIArtworkRequest *)v15 setURL:v12];

  LOBYTE(a6) = [v14 loadResourceWithRequest:v15 reason:a6];
  return a6;
}

- (void)_preloadCommenterImages
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = self->_commenters;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 thumbnailImageURL];

        if (v8)
        {
          v9 = objc_alloc_init(SUUICommentImageDataConsumer);
          [(SUUIStyledImageDataConsumer *)v9 setImageSize:25.0, 25.0];
          objc_initWeak(&location, v7);
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 3221225472;
          v12[2] = __60__SUUICommentDocumentViewController__preloadCommenterImages__block_invoke;
          v12[3] = &unk_2798F5E28;
          objc_copyWeak(&v13, &location);
          [(SUUICommentImageDataConsumer *)v9 setCompletionBlock:v12];
          v10 = [v7 thumbnailImageURL];
          v11 = [v7 thumbnailImageURL];
          [(SUUICommentDocumentViewController *)self _loadImageForURL:v10 cacheKey:v11 dataConsumer:v9 reason:1];

          objc_destroyWeak(&v13);
          objc_destroyWeak(&location);
        }
      }

      v4 = [(NSArray *)v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

void __60__SUUICommentDocumentViewController__preloadCommenterImages__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained setThumbnailImage:v5];
  }
}

- (void)_reloadContentSize:(double)a3
{
  v5 = [(SUUIStackDocumentViewController *)self->_childViewController sectionsViewController];
  v24 = [v5 collectionView];

  v6 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v8 = *(MEMORY[0x277D768C8] + 24);
  v9 = [(SUUICommentDocumentViewController *)self topLayoutGuide];
  [v9 length];
  v11 = v10;

  if (a3 <= 0.0)
  {
    v12 = [(SUUICommentDocumentViewController *)self presentingViewController];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = self;
    }

    v15 = v14;

    v16 = [(SUUICommentDocumentViewController *)v15 bottomLayoutGuide];

    [v16 length];
    a3 = v17;
  }

  else
  {
    [v24 contentOffset];
    [v24 setContentOffset:?];
  }

  postView = self->_postView;
  v19 = [(SUUICommentDocumentViewController *)self view];
  [v19 bounds];
  [(SUUICommentPostBarView *)postView sizeThatFits:v20, v21];
  v23 = v7 + a3 + v22;

  [v24 setContentInset:{v11, v6, v23, v8}];
}

- (void)_setSelectedCommenter:(int64_t)a3
{
  if ([(NSArray *)self->_commenters count]&& (selectedCommenter = self->_selectedCommenter, selectedCommenter < [(NSArray *)self->_commenters count]))
  {
    if (a3 || ([(SUUICommentTemplateViewElement *)self->_templateElement myselfText], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v6 = [(NSArray *)self->_commenters objectAtIndex:self->_selectedCommenter];
      if ([v6 isAttributed])
      {
        [v6 attributedName];
      }

      else
      {
        [v6 name];
      }
      v11 = ;

      v8 = v11;
    }

    else
    {
      v8 = [(SUUICommentTemplateViewElement *)self->_templateElement myselfText];
    }

    postView = self->_postView;
    v12 = v8;
    if (self->_keyboardVisible)
    {
      [(SUUICommentPostBarView *)postView setCommenter:v8];
    }

    else
    {
      [(SUUICommentPostBarView *)postView setCommenter:0];
      [(SUUICommentDocumentViewController *)self _layoutKeyboard];
    }
  }

  else
  {
    v7 = self->_postView;

    [(SUUICommentPostBarView *)v7 setCommenter:0];
  }
}

@end
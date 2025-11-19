@interface SUUIEditorDocumentViewController
- (SUUIEditorDocumentViewController)initWithTemplateElement:(id)a3;
- (id)_backgroundColor;
- (id)_layoutContext;
- (id)_locateFirstButtonWithType:(int64_t)a3 inChildrenOfElement:(id)a4;
- (void)_authenticateOnCompletion:(id)a3;
- (void)_doneButtonAction;
- (void)_keyboardWillChangeFrame:(id)a3;
- (void)_keyboardWillHide:(id)a3;
- (void)_keyboardWillShow:(id)a3;
- (void)_layoutEditorView;
- (void)_layoutNavigation;
- (void)_resetButtonAction;
- (void)_resetTextView;
- (void)_sendCancelEventAndDismiss;
- (void)_sendDoneEventAndDismissWithText:(id)a3;
- (void)_updateBiographyWithText:(id)a3 onCompletion:(id)a4;
- (void)_updateEditorViewInset;
- (void)dealloc;
- (void)didChangeTextInEditorTemplateView:(id)a3;
- (void)documentDidUpdate:(id)a3;
- (void)loadView;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation SUUIEditorDocumentViewController

- (SUUIEditorDocumentViewController)initWithTemplateElement:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SUUIEditorDocumentViewController;
  v6 = [(SUUIEditorDocumentViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateElement, a3);
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:v7 selector:sel__keyboardWillShow_ name:*MEMORY[0x277D76C60] object:0];
    [v8 addObserver:v7 selector:sel__keyboardWillChangeFrame_ name:*MEMORY[0x277D76C48] object:0];
    [v8 addObserver:v7 selector:sel__keyboardWillHide_ name:*MEMORY[0x277D76C50] object:0];
  }

  return v7;
}

- (void)dealloc
{
  [(SUUIViewElementLayoutContext *)self->_layoutContext setParentViewController:0];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D76C60] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C48] object:0];
  [v3 removeObserver:self name:*MEMORY[0x277D76C50] object:0];

  v4.receiver = self;
  v4.super_class = SUUIEditorDocumentViewController;
  [(SUUIViewController *)&v4 dealloc];
}

- (void)_doneButtonAction
{
  v3 = [(SUUIEditorTemplateView *)self->_editorView text];
  [(SUUIEditorTemplateView *)self->_editorView setDisabled:1];
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__SUUIEditorDocumentViewController__doneButtonAction__block_invoke;
  v5[3] = &unk_2798F6918;
  objc_copyWeak(&v8, &location);
  v4 = v3;
  v6 = v4;
  v7 = self;
  [(SUUIEditorDocumentViewController *)self _updateBiographyWithText:v4 onCompletion:v5];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __53__SUUIEditorDocumentViewController__doneButtonAction__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (a2)
  {
    [WeakRetained _sendDoneEventAndDismissWithText:*(a1 + 32)];
  }

  else
  {
    [*(*(a1 + 40) + 1072) setDisabled:0];
  }
}

- (void)_keyboardWillShow:(id)a3
{
  v4 = [a3 userInfo];
  v10 = [v4 objectForKey:*MEMORY[0x277D76BB8]];

  if (v10)
  {
    v5 = [(SUUIEditorDocumentViewController *)self view];
    [v10 CGRectValue];
    [v5 convertRect:0 fromView:?];
    self->_keyboardFrame.origin.x = v6;
    self->_keyboardFrame.origin.y = v7;
    self->_keyboardFrame.size.width = v8;
    self->_keyboardFrame.size.height = v9;

    [(SUUIEditorDocumentViewController *)self _updateEditorViewInset];
  }
}

- (void)_keyboardWillChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  v10 = [v4 objectForKey:*MEMORY[0x277D76BB8]];

  if (v10)
  {
    v5 = [(SUUIEditorDocumentViewController *)self view];
    [v10 CGRectValue];
    [v5 convertRect:0 fromView:?];
    self->_keyboardFrame.origin.x = v6;
    self->_keyboardFrame.origin.y = v7;
    self->_keyboardFrame.size.width = v8;
    self->_keyboardFrame.size.height = v9;

    [(SUUIEditorDocumentViewController *)self _updateEditorViewInset];
  }
}

- (void)_keyboardWillHide:(id)a3
{
  v4 = [a3 userInfo];
  v6 = [v4 objectForKey:*MEMORY[0x277D76BB8]];

  if (v6)
  {
    v5 = *(MEMORY[0x277CBF3A0] + 16);
    self->_keyboardFrame.origin = *MEMORY[0x277CBF3A0];
    self->_keyboardFrame.size = v5;
    [(SUUIEditorDocumentViewController *)self _updateEditorViewInset];
  }
}

- (void)documentDidUpdate:(id)a3
{
  v4 = [a3 templateElement];
  templateElement = self->_templateElement;
  self->_templateElement = v4;

  editorView = self->_editorView;
  if (editorView)
  {
    v7 = [(SUUIEditorDocumentViewController *)self _backgroundColor];
    [(SUUIViewReuseView *)editorView setBackgroundColor:v7];
  }

  [(SUUIEditorDocumentViewController *)self _layoutNavigation];
}

- (void)didChangeTextInEditorTemplateView:(id)a3
{
  if (!self->_isTextChanged)
  {
    self->_isTextChanged = 1;
    [(SUUIEditorDocumentViewController *)self _layoutNavigation];
  }
}

- (void)loadView
{
  v3 = objc_alloc_init(MEMORY[0x277D75D18]);
  editorView = self->_editorView;
  v11 = v3;
  if (!editorView)
  {
    v5 = objc_alloc_init(SUUIEditorTemplateView);
    v6 = self->_editorView;
    self->_editorView = v5;

    [(SUUIEditorTemplateView *)self->_editorView setDelegate:self];
    v7 = self->_editorView;
    v8 = [(SUUIEditorDocumentViewController *)self _backgroundColor];
    [(SUUIViewReuseView *)v7 setBackgroundColor:v8];

    [(SUUIEditorTemplateView *)self->_editorView setPreservesSuperviewLayoutMargins:1];
    v9 = self->_editorView;
    templateElement = self->_templateElement;
    [(SUUIViewElementLayoutContext *)self->_layoutContext activePageWidth];
    [(SUUIEditorTemplateView *)v9 reloadWithViewElement:templateElement width:self->_layoutContext context:?];
    v3 = v11;
    editorView = self->_editorView;
  }

  [v3 addSubview:editorView];
  [(SUUIEditorDocumentViewController *)self setView:v11];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  [(SUUIEditorDocumentViewController *)self _layoutEditorView];
  [(SUUIEditorDocumentViewController *)self _layoutNavigation];
  v5.receiver = self;
  v5.super_class = SUUIEditorDocumentViewController;
  [(SUUIViewController *)&v5 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(SUUIEditorTemplateView *)self->_editorView resignFirstResponder];
  v5.receiver = self;
  v5.super_class = SUUIEditorDocumentViewController;
  [(SUUIEditorDocumentViewController *)&v5 viewWillDisappear:v3];
}

- (void)viewWillLayoutSubviews
{
  [(SUUIEditorDocumentViewController *)self _layoutEditorView];
  [(SUUIEditorDocumentViewController *)self _layoutNavigation];
  v3.receiver = self;
  v3.super_class = SUUIEditorDocumentViewController;
  [(SUUIEditorDocumentViewController *)&v3 viewWillLayoutSubviews];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  v4.receiver = self;
  v4.super_class = SUUIEditorDocumentViewController;
  [(SUUIEditorDocumentViewController *)&v4 viewWillTransitionToSize:a4 withTransitionCoordinator:a3.width, a3.height];
}

- (void)_authenticateOnCompletion:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D69A20] defaultStore];
  v5 = [v4 activeAccount];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277D69BC8]) initWithAccount:v5];
    [v6 setPromptStyle:1];
    [v6 setShouldCreateNewSession:1];
  }

  else
  {
    v6 = [MEMORY[0x277D69BC8] contextForSignIn];
  }

  v7 = [objc_alloc(MEMORY[0x277D69A50]) initWithAuthenticationContext:v6];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SUUIEditorDocumentViewController__authenticateOnCompletion___block_invoke;
  v9[3] = &unk_2798F6940;
  v10 = v3;
  v8 = v3;
  [v7 startWithAuthenticateResponseBlock:v9];
}

void __62__SUUIEditorDocumentViewController__authenticateOnCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SUUIEditorDocumentViewController__authenticateOnCompletion___block_invoke_2;
  v5[3] = &unk_2798F6030;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);
}

uint64_t __62__SUUIEditorDocumentViewController__authenticateOnCompletion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) authenticateResponseType];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)_backgroundColor
{
  v2 = [(SUUIEditorTemplateViewElement *)self->_templateElement style];
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

- (id)_layoutContext
{
  layoutContext = self->_layoutContext;
  if (!layoutContext)
  {
    v4 = objc_alloc_init(SUUIViewElementLayoutContext);
    v5 = self->_layoutContext;
    self->_layoutContext = v4;

    v6 = self->_layoutContext;
    v7 = [(SUUIViewController *)self clientContext];
    [(SUUIViewElementLayoutContext *)v6 setClientContext:v7];

    [(SUUIViewElementLayoutContext *)self->_layoutContext setContainerViewElementType:[(SUUIEditorTemplateViewElement *)self->_templateElement elementType]];
    [(SUUIViewElementLayoutContext *)self->_layoutContext setParentViewController:self];
    layoutContext = self->_layoutContext;
  }

  return layoutContext;
}

- (void)_layoutEditorView
{
  editorView = self->_editorView;
  v3 = [(SUUIEditorDocumentViewController *)self view];
  [v3 bounds];
  [(SUUIEditorTemplateView *)editorView setFrame:?];
}

- (void)_layoutNavigation
{
  v18 = [(SUUIEditorDocumentViewController *)self navigationController];
  v3 = [v18 navigationBar];
  v4 = [v3 items];
  v5 = [v4 lastObject];

  v6 = [v5 rightBarButtonItem];
  [v6 setEnabled:self->_isTextChanged];
  [v6 setTarget:self];
  [v6 setAction:sel__doneButtonAction];
  v7 = [v5 leftBarButtonItem];
  [v7 setTarget:self];
  [v7 setAction:sel__cancelButtonAction];
  [v18 setToolbarHidden:!self->_isTextChanged];
  v8 = [v18 toolbar];
  v9 = [v8 items];
  v10 = [v9 firstObject];

  [v10 setTarget:self];
  [v10 setAction:sel__resetButtonAction];
  p_toolbarFrame = &self->_toolbarFrame;
  if (self->_isTextChanged)
  {
    v12 = [v18 toolbar];
    [v12 frame];
    p_toolbarFrame->origin.x = v13;
    p_toolbarFrame->origin.y = v14;
    p_toolbarFrame->size.width = v15;
    p_toolbarFrame->size.height = v16;
  }

  else
  {
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    p_toolbarFrame->origin = *MEMORY[0x277CBF3A0];
    self->_toolbarFrame.size = v17;
  }
}

- (id)_locateFirstButtonWithType:(int64_t)a3 inChildrenOfElement:(id)a4
{
  v5 = a4;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __83__SUUIEditorDocumentViewController__locateFirstButtonWithType_inChildrenOfElement___block_invoke;
  v8[3] = &unk_2798F6968;
  v8[4] = &v9;
  v8[5] = a3;
  [v5 enumerateChildrenUsingBlock:v8];
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __83__SUUIEditorDocumentViewController__locateFirstButtonWithType_inChildrenOfElement___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 elementType] == 12;
  v7 = v9;
  if (v6)
  {
    v8 = v9;
    if ([v8 buttonViewType] == *(a1 + 40))
    {
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a3 = 1;
    }

    v7 = v9;
  }
}

- (void)_resetButtonAction
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = [(SUUIViewElement *)self->_templateElement firstChildForElementType:31];
  v2 = [v20 title];
  v3 = [v2 text];
  v19 = [v3 string];

  v4 = [v20 message];
  v5 = [v4 text];
  v18 = [v5 string];

  v6 = [MEMORY[0x277D75110] alertControllerWithTitle:v19 message:v18 preferredStyle:1];
  [v20 buttons];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  obj = v27 = 0u;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        if ([v10 buttonViewType] == 11)
        {
          objc_initWeak(&location, self);
          v11 = MEMORY[0x277D750F8];
          v12 = [v10 buttonText];
          v13 = [v12 string];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __54__SUUIEditorDocumentViewController__resetButtonAction__block_invoke;
          v23[3] = &unk_2798F6990;
          objc_copyWeak(&v24, &location);
          v14 = [v11 actionWithTitle:v13 style:2 handler:v23];

          objc_destroyWeak(&v24);
          objc_destroyWeak(&location);
        }

        else
        {
          v15 = MEMORY[0x277D750F8];
          v16 = [v10 buttonText];
          v17 = [v16 string];
          v14 = [v15 actionWithTitle:v17 style:1 handler:0];
        }

        [v6 addAction:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  [(SUUIEditorDocumentViewController *)self presentViewController:v6 animated:1 completion:0];
}

void __54__SUUIEditorDocumentViewController__resetButtonAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _resetTextView];
}

- (void)_resetTextView
{
  editorView = self->_editorView;
  templateElement = self->_templateElement;
  [(SUUIViewElementLayoutContext *)self->_layoutContext activePageWidth];
  [(SUUIEditorTemplateView *)editorView reloadWithViewElement:templateElement width:self->_layoutContext context:?];
  self->_isTextChanged = 0;

  [(SUUIEditorDocumentViewController *)self _layoutNavigation];
}

- (void)_sendCancelEventAndDismiss
{
  v3 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"cancelButton", @"buttonIdentifier", 0}];
  templateElement = self->_templateElement;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__SUUIEditorDocumentViewController__sendCancelEventAndDismiss__block_invoke;
  v5[3] = &unk_2798F65D0;
  v5[4] = self;
  [(SUUIEditorTemplateViewElement *)templateElement dispatchEventOfType:14 canBubble:1 isCancelable:1 extraInfo:v3 completionBlock:v5];
}

- (void)_sendDoneEventAndDismissWithText:(id)a3
{
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithObjectsAndKeys:{@"doneButton", @"buttonIdentifier", v5, @"text", 0}];

  templateElement = self->_templateElement;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __69__SUUIEditorDocumentViewController__sendDoneEventAndDismissWithText___block_invoke;
  v8[3] = &unk_2798F65D0;
  v8[4] = self;
  [(SUUIEditorTemplateViewElement *)templateElement dispatchEventOfType:14 canBubble:1 isCancelable:1 extraInfo:v6 completionBlock:v8];
}

- (void)_updateBiographyWithText:(id)a3 onCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v8 = [(SUUIEditorTemplateViewElement *)self->_templateElement contentId];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277CBEAC0]);
    v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v11 = [v9 initWithObjectsAndKeys:{v10, @"SUUIMediaSocialAdminPermissionsOptionIgnoreCache", 0}];

    v12 = +[SUUIMediaSocialAdminPermissionsCoordinator sharedCoordinator];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __74__SUUIEditorDocumentViewController__updateBiographyWithText_onCompletion___block_invoke;
    v18[3] = &unk_2798F69B8;
    v19 = v8;
    v20 = &v21;
    [v12 getAuthorsAndWaitWithOptions:v11 authorsBlock:v18];
  }

  if (*(v22 + 24) == 1)
  {
    v13 = [SUUIMediaSocialUpdateProfileOperation alloc];
    v14 = [(SUUIViewController *)self clientContext];
    v15 = [(SUUIMediaSocialUpdateProfileOperation *)v13 initWithClientContext:v14];

    [(SUUIMediaSocialUpdateProfileOperation *)v15 setEntityType:@"artist"];
    [(SUUIMediaSocialUpdateProfileOperation *)v15 setIdentifier:v8];
    [(SUUIMediaSocialUpdateProfileOperation *)v15 setValue:v6 forProfileField:@"bio"];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __74__SUUIEditorDocumentViewController__updateBiographyWithText_onCompletion___block_invoke_2;
    v16[3] = &unk_2798F6A08;
    v17 = v7;
    [(SUUIMediaSocialUpdateProfileOperation *)v15 setOutputBlock:v16];
    [(SUUIMediaSocialUpdateProfileOperation *)v15 main];
  }

  _Block_object_dispose(&v21, 8);
}

void __74__SUUIEditorDocumentViewController__updateBiographyWithText_onCompletion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) longLongValue];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) identifier];
        v11 = [v10 longLongValue];

        if (v11 == v4)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void __74__SUUIEditorDocumentViewController__updateBiographyWithText_onCompletion___block_invoke_2(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__SUUIEditorDocumentViewController__updateBiographyWithText_onCompletion___block_invoke_3;
  v3[3] = &unk_2798F69E0;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __74__SUUIEditorDocumentViewController__updateBiographyWithText_onCompletion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

- (void)_updateEditorViewInset
{
  editorView = self->_editorView;
  Height = CGRectGetHeight(self->_keyboardFrame);
  v5 = Height + CGRectGetHeight(self->_toolbarFrame);

  [(SUUIEditorTemplateView *)editorView setBottomInset:v5];
}

@end
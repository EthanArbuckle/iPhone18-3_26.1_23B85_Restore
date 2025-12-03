@interface UIDocumentBrowserTransitionController
- (BOOL)isCoordinatingForURL:(id)l;
- (UIDocumentBrowserTransitionController)initWithItemURL:(id)l documentBrowserProxy:(id)proxy referenceView:(id)view;
- (UIView)targetView;
- (void)animateTransition:(id)transition;
- (void)dealloc;
- (void)doc_commonInit;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setLoadingProgress:(NSProgress *)loadingProgress;
@end

@implementation UIDocumentBrowserTransitionController

- (UIDocumentBrowserTransitionController)initWithItemURL:(id)l documentBrowserProxy:(id)proxy referenceView:(id)view
{
  lCopy = l;
  proxyCopy = proxy;
  viewCopy = view;
  if (lCopy && (v15.receiver = self, v15.super_class = UIDocumentBrowserTransitionController, v12 = [(UIDocumentBrowserTransitionController *)&v15 init], (self = v12) != 0))
  {
    objc_storeStrong(&v12->_itemURL, l);
    objc_storeStrong(&self->_serviceDocumentBrowserProxy, proxy);
    objc_storeStrong(&self->_referenceView, view);
    [(UIDocumentBrowserTransitionController *)self doc_commonInit];
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isCoordinatingForURL:(id)l
{
  lCopy = l;
  if (-[NSURL isEqual:](self->_itemURL, "isEqual:", lCopy) & 1) != 0 || (-[NSURL standardizedURL](self->_itemURL, "standardizedURL"), v5 = objc_claimAutoreleasedReturnValue(), [lCopy standardizedURL], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqual:", v6), v6, v5, (v7))
  {
    v8 = 1;
  }

  else
  {
    uRLByStandardizingPath = [(NSURL *)self->_itemURL URLByStandardizingPath];
    uRLByStandardizingPath2 = [lCopy URLByStandardizingPath];
    v8 = [uRLByStandardizingPath isEqual:uRLByStandardizingPath2];
  }

  return v8;
}

- (void)doc_commonInit
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *self;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1E57D8000, log, OS_LOG_TYPE_ERROR, "UIDocumentBrowserTransitionController: Unable to wrap url %@ with error %@", &v4, 0x16u);
}

void __55__UIDocumentBrowserTransitionController_doc_commonInit__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = MEMORY[0x1E699A450];
    v4 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v4 = *v3;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__UIDocumentBrowserTransitionController_doc_commonInit__block_invoke_cold_1(v2, v4);
    }
  }
}

void __55__UIDocumentBrowserTransitionController_doc_commonInit__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699A450];
  v5 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55__UIDocumentBrowserTransitionController_doc_commonInit__block_invoke_2_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
  }

  [*(a1 + 32) setTransitionController:v3];
  v12 = [*(a1 + 32) transitionControllerQueue];
  [v12 setSuspended:0];

  if (*(a1 + 40) == 1)
  {
    [*(*(a1 + 32) + 56) stopAccessingSecurityScopedResource];
  }
}

void __55__UIDocumentBrowserTransitionController_doc_commonInit__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E699A450];
  v5 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v5 = *v4;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __55__UIDocumentBrowserTransitionController_doc_commonInit__block_invoke_2_cold_1(v3, v5, v6, v7, v8, v9, v10, v11);
  }

  [*(a1 + 32) setTransitionController:v3];
  v12 = [*(a1 + 32) transitionControllerQueue];
  [v12 setSuspended:0];
}

- (void)setLoadingProgress:(NSProgress *)loadingProgress
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = loadingProgress;
  p_loadingProgress = &self->_loadingProgress;
  if (self->_loadingProgress != v5)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_shouldStopObservingProgress && *p_loadingProgress)
    {
      v8 = MEMORY[0x1E699A478];
      v9 = *MEMORY[0x1E699A478];
      if (!*MEMORY[0x1E699A478])
      {
        DOCInitLogging();
        v9 = *v8;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *p_loadingProgress;
        *buf = 138543362;
        v18 = v10;
        _os_log_impl(&dword_1E57D8000, v9, OS_LOG_TYPE_DEFAULT, "Progress: [Transition Controller] REMOVE fractionCompleted observer for: %{public}@", buf, 0xCu);
      }

      [*p_loadingProgress removeObserver:selfCopy forKeyPath:@"fractionCompleted"];
      [*p_loadingProgress removeObserver:selfCopy forKeyPath:@"isIndeterminate"];
      selfCopy->_shouldStopObservingProgress = 0;
    }

    objc_sync_exit(selfCopy);

    objc_storeStrong(p_loadingProgress, loadingProgress);
    transitionControllerQueue = selfCopy->_transitionControllerQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__UIDocumentBrowserTransitionController_setLoadingProgress___block_invoke;
    v16[3] = &unk_1E87829A0;
    v16[4] = selfCopy;
    [(NSOperationQueue *)transitionControllerQueue addOperationWithBlock:v16];
    if (*p_loadingProgress && ([*p_loadingProgress isFinished] & 1) == 0)
    {
      v12 = selfCopy;
      objc_sync_enter(v12);
      v13 = MEMORY[0x1E699A478];
      v14 = *MEMORY[0x1E699A478];
      if (!*MEMORY[0x1E699A478])
      {
        DOCInitLogging();
        v14 = *v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *p_loadingProgress;
        *buf = 138543362;
        v18 = v15;
        _os_log_impl(&dword_1E57D8000, v14, OS_LOG_TYPE_DEFAULT, "Progress: [Transition Controller] ADD fractionCompleted observer for: %{public}@", buf, 0xCu);
      }

      [*p_loadingProgress addObserver:v12 forKeyPath:@"fractionCompleted" options:1 context:&UIDocumentBrowserTransitionControllerKVOContext];
      [*p_loadingProgress addObserver:v12 forKeyPath:@"isIndeterminate" options:1 context:&UIDocumentBrowserTransitionControllerKVOContext];
      selfCopy->_shouldStopObservingProgress = 1;
      objc_sync_exit(v12);
    }
  }
}

void __60__UIDocumentBrowserTransitionController_setLoadingProgress___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) loadingProgress];
  v2 = [*(a1 + 32) transitionDidFinish];
  v3 = [*(a1 + 32) transitionController];
  [v5 fractionCompleted];
  [v3 setHasProgress:(v5 != 0) & ~v2 loadingFractionCompleted:objc_msgSend(v5 setIsIndeterminate:{"isIndeterminate"), v4}];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (context == &UIDocumentBrowserTransitionControllerKVOContext)
  {
    transitionController = self->_transitionController;
    transitionDidFinish = self->_transitionDidFinish;
    loadingProgress = self->_loadingProgress;
    v10 = loadingProgress != 0;
    v11 = !transitionDidFinish;
    [(NSProgress *)loadingProgress fractionCompleted:path];
    v13 = v12;
    isIndeterminate = [(NSProgress *)self->_loadingProgress isIndeterminate];

    [(DOCServiceTransitionProtocol *)transitionController setHasProgress:v10 & v11 loadingFractionCompleted:isIndeterminate setIsIndeterminate:v13];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = UIDocumentBrowserTransitionController;
    [(UIDocumentBrowserTransitionController *)&v15 observeValueForKeyPath:path ofObject:object change:change context:?];
  }
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  loadingProgress = [(UIDocumentBrowserTransitionController *)selfCopy loadingProgress];
  if (loadingProgress)
  {
    shouldStopObservingProgress = [(UIDocumentBrowserTransitionController *)selfCopy shouldStopObservingProgress];

    if (shouldStopObservingProgress)
    {
      v5 = MEMORY[0x1E699A478];
      v6 = *MEMORY[0x1E699A478];
      if (!*MEMORY[0x1E699A478])
      {
        DOCInitLogging();
        v6 = *v5;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        loadingProgress = selfCopy->_loadingProgress;
        *buf = 138543362;
        v12 = loadingProgress;
        _os_log_impl(&dword_1E57D8000, v6, OS_LOG_TYPE_DEFAULT, "Progress: [Transition Controller] REMOVE-DEALLOC fractionCompleted observer for: %{public}@", buf, 0xCu);
      }

      loadingProgress2 = [(UIDocumentBrowserTransitionController *)selfCopy loadingProgress];
      [loadingProgress2 removeObserver:selfCopy forKeyPath:@"fractionCompleted"];

      loadingProgress3 = [(UIDocumentBrowserTransitionController *)selfCopy loadingProgress];
      [loadingProgress3 removeObserver:selfCopy forKeyPath:@"isIndeterminate"];

      [(UIDocumentBrowserTransitionController *)selfCopy setShouldStopObservingProgress:0];
    }
  }

  objc_sync_exit(selfCopy);

  v10.receiver = selfCopy;
  v10.super_class = UIDocumentBrowserTransitionController;
  [(UIDocumentBrowserTransitionController *)&v10 dealloc];
}

- (void)animateTransition:(id)transition
{
  v51 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  if ([(UIDocumentBrowserTransitionController *)self encounteredUnrecoverableError])
  {
    v6 = MEMORY[0x1E699A450];
    v7 = *MEMORY[0x1E699A450];
    if (!*MEMORY[0x1E699A450])
    {
      DOCInitLogging();
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [UIDocumentBrowserTransitionController animateTransition:v7];
    }

    [transitionCopy completeTransition:1];
    goto LABEL_24;
  }

  v8 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE768]];
  v9 = [transitionCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = objc_opt_class();
      currentHandler = NSStringFromClass(v10);
      if ([currentHandler isEqualToString:@"DOCServiceBrowserViewController"])
      {
LABEL_12:

        goto LABEL_13;
      }

      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v13 isEqualToString:@"DOCServiceBrowserViewController"];

      if ((v14 & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"UIDocumentBrowserTransitionController.m" lineNumber:192 description:{@"UIDocumentBrowserTransitionController can only be used when transitioning from or to a viewController of type UIDocumentBrowserViewController. sourceViewController: %@, destinationViewController: %@", v8, v9}];
        goto LABEL_12;
      }
    }
  }

LABEL_13:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 1;
  }

  else
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v15 = [v17 isEqualToString:@"DOCServiceBrowserViewController"];
  }

  containerView = [transitionCopy containerView];
  v19 = [transitionCopy viewForKey:*MEMORY[0x1E69DE770]];
  v20 = [transitionCopy viewForKey:*MEMORY[0x1E69DE780]];
  [v20 setAutoresizingMask:18];
  [containerView bounds];
  [v20 setFrame:?];
  [v20 setAlpha:0.0];
  v34 = v9;
  if (v15)
  {
    [containerView insertSubview:v20 belowSubview:v19];
  }

  else
  {
    [containerView addSubview:v20];
  }

  v21 = MEMORY[0x1E699A450];
  v22 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v22 = *v21;
  }

  v35 = v8;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v50 = v15;
    _os_log_impl(&dword_1E57D8000, v22, OS_LOG_TYPE_INFO, "Starting transition. Presenting: %d", buf, 8u);
  }

  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __59__UIDocumentBrowserTransitionController_animateTransition___block_invoke;
  v42[3] = &unk_1E87830A8;
  v23 = containerView;
  v43 = v23;
  v44 = v19;
  v45 = v20;
  selfCopy = self;
  v47 = transitionCopy;
  v48 = v15;
  v24 = v20;
  v25 = v19;
  v26 = MEMORY[0x1E692E2E0](v42);
  v27 = self->_transitionController;
  v28 = self->_referenceView;
  transitionControllerQueue = self->_transitionControllerQueue;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __59__UIDocumentBrowserTransitionController_animateTransition___block_invoke_3;
  v36[3] = &unk_1E8783120;
  v41 = v15;
  v37 = v27;
  v38 = v28;
  v39 = v23;
  v40 = v26;
  v30 = v26;
  v31 = v23;
  v32 = v28;
  v33 = v27;
  [(NSOperationQueue *)transitionControllerQueue addOperationWithBlock:v36];

LABEL_24:
}

void __59__UIDocumentBrowserTransitionController_animateTransition___block_invoke(uint64_t a1, void *a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v13 = a2;
  v15 = *(a1 + 32);
  v14 = *(a1 + 40);
  v16 = *(a1 + 48);
  [*(a1 + 56) transitionDuration:*(a1 + 64)];
  v18 = v17;
  v19 = [*(a1 + 56) targetView];
  v20 = *(a1 + 72);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __59__UIDocumentBrowserTransitionController_animateTransition___block_invoke_2;
  v24[3] = &unk_1E8783080;
  v21 = *(a1 + 64);
  v24[4] = *(a1 + 56);
  v25 = v21;
  v26 = *(a1 + 48);
  v27 = v13;
  v22 = v13;
  LOWORD(v23) = v20;
  [DOCTransitionUtils performZoomTransitionInContainer:v15 withSourceView:v14 destinationView:v16 duration:v19 alterativeView:v22 thumbnail:a3 thumbnailStyle:v18 location:a4 presenting:a5 fadingSource:a6 completion:a7, v23, v24];
}

void __59__UIDocumentBrowserTransitionController_animateTransition___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setTransitionDidFinish:1];
  v4 = [*(a1 + 32) transitionController];
  [v4 setHasProgress:0 loadingFractionCompleted:0 setIsIndeterminate:0.0];

  [*(a1 + 40) completeTransition:a2];
  [*(a1 + 48) setAlpha:1.0];
  [*(a1 + 32) setLoadingProgress:0];
  if (*(a1 + 56))
  {
    v5 = [*(a1 + 32) transitionController];
    [v5 endTransition];
  }
}

void __59__UIDocumentBrowserTransitionController_animateTransition___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x1E699A450];
  v3 = *MEMORY[0x1E699A450];
  if (*(a1 + 32))
  {
    if (!v3)
    {
      DOCInitLogging();
      v3 = *v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E57D8000, v3, OS_LOG_TYPE_INFO, "Item has a service browser, trying to get the display information", buf, 2u);
    }

    v4 = *(a1 + 64);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __59__UIDocumentBrowserTransitionController_animateTransition___block_invoke_28;
    v11[3] = &unk_1E87830F8;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v12 = v10;
    v13 = v9;
    [v5 getDisplayInformation:v4 withCompletionBlock:v11];
  }

  else
  {
    if (!v3)
    {
      DOCInitLogging();
      v3 = *v2;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1E57D8000, v3, OS_LOG_TYPE_INFO, "No item service browser. Just adding the view.", buf, 2u);
    }

    (*(*(a1 + 56) + 16))(*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24));
  }
}

void __59__UIDocumentBrowserTransitionController_animateTransition___block_invoke_28(id *a1, void *a2)
{
  v10 = a2;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v3;
  *(&v8 + 1) = v4;
  v11 = v8;
  v12 = v7;
  v9 = v10;
  DOCRunInMainThread();
}

uint64_t __59__UIDocumentBrowserTransitionController_animateTransition___block_invoke_2_29(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E699A450];
  v3 = *MEMORY[0x1E699A450];
  if (!*MEMORY[0x1E699A450])
  {
    DOCInitLogging();
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v6 = *(a1 + 80);
    v7 = *(a1 + 88);
    v8 = *(a1 + 96);
    v9 = *(a1 + 104);
    v10 = v3;
    v22.origin.x = v6;
    v22.origin.y = v7;
    v22.size.width = v8;
    v22.size.height = v9;
    v11 = NSStringFromCGRect(v22);
    *buf = 138412802;
    v16 = v4;
    v17 = 2048;
    v18 = v5;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_1E57D8000, v10, OS_LOG_TYPE_INFO, "Display information received thumbnail: %@ style: %lu sourceRect: %@. Starting transition.", buf, 0x20u);
  }

  if (*(a1 + 32))
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__UIDocumentBrowserTransitionController_animateTransition___block_invoke_30;
    block[3] = &unk_1E87829A0;
    v14 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  [*(a1 + 48) convertRect:*(a1 + 56) toView:{*(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104)}];
  return (*(*(a1 + 64) + 16))();
}

- (UIView)targetView
{
  WeakRetained = objc_loadWeakRetained(&self->_targetView);

  return WeakRetained;
}

void __55__UIDocumentBrowserTransitionController_doc_commonInit__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1E57D8000, a2, OS_LOG_TYPE_ERROR, "Remote object proxy disconnected with error: %@", &v2, 0xCu);
}

@end
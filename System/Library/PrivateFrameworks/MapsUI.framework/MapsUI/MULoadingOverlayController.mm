@interface MULoadingOverlayController
- (MULoadingOverlayController)initWithParentView:(id)view contentView:(id)contentView;
- (void)attachLoadingOverlay;
- (void)removeLoadingOverlayAnimated:(BOOL)animated completion:(id)completion;
- (void)updateLayoutForBoundsChange;
@end

@implementation MULoadingOverlayController

- (void)updateLayoutForBoundsChange
{
  WeakRetained = objc_loadWeakRetained(&self->_parentView);
  [WeakRetained bounds];
  [(MULoadingView *)self->_loadingView setFrame:?];
}

- (void)removeLoadingOverlayAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  [(MULoadingView *)self->_loadingView endAnimatingActivityIndicatorWithError:0];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__MULoadingOverlayController_removeLoadingOverlayAnimated_completion___block_invoke;
  aBlock[3] = &unk_1E821BAC8;
  objc_copyWeak(&v17, &location);
  v7 = _Block_copy(aBlock);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __70__MULoadingOverlayController_removeLoadingOverlayAnimated_completion___block_invoke_5;
  v13 = &unk_1E8219650;
  objc_copyWeak(&v15, &location);
  v8 = completionCopy;
  v14 = v8;
  v9 = _Block_copy(&v10);
  if (animatedCopy)
  {
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v7 options:v9 animations:0.200000003 completion:{0.0, v10, v11, v12, v13}];
  }

  else
  {
    v7[2](v7);
    v9[2](v9, 1);
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __70__MULoadingOverlayController_removeLoadingOverlayAnimated_completion___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] setAlpha:0.0];
    v3 = objc_loadWeakRetained(v2 + 2);
    [v3 setHidden:0];

    v4 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_loadWeakRetained(v2 + 2);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1C5620000, v4, OS_LOG_TYPE_DEBUG, "MULoadingOverlayController: removeLoadingOverlayAnimated:completion: setting _contentView visible %@", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __70__MULoadingOverlayController_removeLoadingOverlayAnimated_completion___block_invoke_5(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[1] removeFromSuperview];
    v4 = objc_loadWeakRetained(v3 + 2);
    [v4 setHidden:0];

    v5 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_loadWeakRetained(v3 + 2);
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_DEBUG, "MULoadingOverlayController: removeLoadingOverlayAnimated:completion: setting _contentView visible %@", &v9, 0xCu);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)attachLoadingOverlay
{
  v16 = *MEMORY[0x1E69E9840];
  [(MULoadingView *)self->_loadingView removeFromSuperview];
  if (!self->_loadingView)
  {
    v3 = [MULoadingView alloc];
    v4 = [(MULoadingView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    loadingView = self->_loadingView;
    self->_loadingView = v4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_parentView);
  [WeakRetained addSubview:self->_loadingView];

  [(MULoadingOverlayController *)self updateLayoutForBoundsChange];
  v7 = objc_loadWeakRetained(&self->_contentView);
  [v7 setHidden:1];

  v8 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_loadWeakRetained(&self->_contentView);
    *buf = 138412290;
    v15 = v9;
    _os_log_impl(&dword_1C5620000, v8, OS_LOG_TYPE_DEBUG, "MULoadingOverlayController: attachLoadingOverlay setting _contentView hidden %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10 = dispatch_time(0, (self->_showAfterInterval * 1000000000.0));
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__MULoadingOverlayController_attachLoadingOverlay__block_invoke;
  block[3] = &unk_1E821BAC8;
  objc_copyWeak(&v13, buf);
  dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v13);
  objc_destroyWeak(buf);
  v11 = *MEMORY[0x1E69E9840];
}

void __50__MULoadingOverlayController_attachLoadingOverlay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] setAlpha:1.0];
    [v2[1] beginAnimatingActivityIndicator];
    WeakRetained = v2;
  }
}

- (MULoadingOverlayController)initWithParentView:(id)view contentView:(id)contentView
{
  viewCopy = view;
  contentViewCopy = contentView;
  v11.receiver = self;
  v11.super_class = MULoadingOverlayController;
  v8 = [(MULoadingOverlayController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_parentView, viewCopy);
    objc_storeWeak(&v9->_contentView, contentViewCopy);
    v9->_showAfterInterval = 0.200000003;
  }

  return v9;
}

@end
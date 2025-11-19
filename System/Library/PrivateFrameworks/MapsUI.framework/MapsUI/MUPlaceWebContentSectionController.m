@interface MUPlaceWebContentSectionController
- (BOOL)hasContent;
- (MUPlaceWebContentSectionController)initWithMapItem:(id)a3 configuration:(id)a4;
- (MUPlaceWebContentSectionControllerDelegate)webContentDelegate;
- (void)_setupWebContentViewController;
- (void)removeWebContentViewController:(id)a3 arguments:(id)a4;
- (void)webContentViewController:(id)a3 performHeightChangeWithBlock:(id)a4 animated:(BOOL)a5 completion:(id)a6;
- (void)webContentViewControllerDidStopLoading:(id)a3;
@end

@implementation MUPlaceWebContentSectionController

- (MUPlaceWebContentSectionControllerDelegate)webContentDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_webContentDelegate);

  return WeakRetained;
}

- (void)webContentViewControllerDidStopLoading:(id)a3
{
  v4 = [(MUPlaceWebContentSectionController *)self webContentDelegate];
  [v4 webContentSectionControllerDidStopLoading:self];
}

- (void)webContentViewController:(id)a3 performHeightChangeWithBlock:(id)a4 animated:(BOOL)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  objc_initWeak(&location, self);
  v12 = MEMORY[0x1E69DD250];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __112__MUPlaceWebContentSectionController_webContentViewController_performHeightChangeWithBlock_animated_completion___block_invoke;
  v18[3] = &unk_1E82194C8;
  objc_copyWeak(&v20, &location);
  v18[4] = self;
  v13 = v10;
  v19 = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __112__MUPlaceWebContentSectionController_webContentViewController_performHeightChangeWithBlock_animated_completion___block_invoke_2;
  v15[3] = &unk_1E8219650;
  objc_copyWeak(&v17, &location);
  v14 = v11;
  v16 = v14;
  [v12 _mapsui_animateWithDuration:v18 animations:v15 completion:0.3];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __112__MUPlaceWebContentSectionController_webContentViewController_performHeightChangeWithBlock_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [WeakRetained delegate];
    v4 = [v3 placeSectionControllerRequestsRootView:*(a1 + 32)];

    (*(*(a1 + 40) + 16))();
    [v4 _mapsui_layoutIfNeeded];

    WeakRetained = v5;
  }
}

void __112__MUPlaceWebContentSectionController_webContentViewController_performHeightChangeWithBlock_animated_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 placeSectionControllerRequestsLayoutChange:v4];

    (*(*(a1 + 32) + 16))();
    WeakRetained = v4;
  }
}

- (void)removeWebContentViewController:(id)a3 arguments:(id)a4
{
  self->_shouldRemoveWebContent = 1;
  v5 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v7 = 0;
    _os_log_impl(&dword_1C5620000, v5, OS_LOG_TYPE_INFO, "MUPlaceWebContentSectionController: Webmodule requested removal, will tell parent to update", v7, 2u);
  }

  v6 = [(MUPlaceSectionController *)self delegate];
  [v6 placeSectionControllerDidUpdateContent:self];
}

- (BOOL)hasContent
{
  webContentViewController = self->_webContentViewController;
  if (webContentViewController)
  {
    return [(MUWebContentViewController *)webContentViewController isLoading]|| !self->_shouldRemoveWebContent;
  }

  else
  {
    return 0;
  }
}

- (void)_setupWebContentViewController
{
  [(MUWebContentViewController *)self->_webContentViewController setDelegate:self];
  if ([(GEOWebContentModuleConfiguration *)self->_webContentConfig shouldDrawPlatter])
  {
    v3 = [(MUWebContentViewController *)self->_webContentViewController view];
    v4 = [MUPlaceSectionView insetPlatterSectionViewForContentView:v3 sectionHeaderViewModel:0 sectionFooterViewModel:0];
    sectionView = self->_sectionView;
    self->_sectionView = v4;
  }

  else
  {
    v6 = [[MUPlaceSectionView alloc] initWithStyle:0 alwaysHideSeparators:0];
    v7 = self->_sectionView;
    self->_sectionView = v6;

    v8 = self->_sectionView;
    v3 = [(MUWebContentViewController *)self->_webContentViewController view];
    [(MUPlaceSectionView *)v8 attachViewToContentView:v3];
  }

  v9 = self->_sectionView;

  [(MUPlaceSectionView *)v9 configureWithSectionController:self];
}

- (MUPlaceWebContentSectionController)initWithMapItem:(id)a3 configuration:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MUWebContentTraits);
  [(MUWebContentTraits *)v8 setVibrant:+[MUInfoCardStyle platterStyle]== 1];
  -[MUWebContentTraits setNativelyDrawingPlatter:](v8, "setNativelyDrawingPlatter:", [v7 shouldDrawPlatter]);
  v9 = [MUWebContentViewController alloc];
  v10 = [v7 url];
  v11 = [(MUWebContentViewController *)v9 initWithURL:v10 traits:v8];

  if (v11 && ([v7 url], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    v20.receiver = self;
    v20.super_class = MUPlaceWebContentSectionController;
    v13 = [(MUPlaceSectionController *)&v20 initWithMapItem:v6];
    if (v13)
    {
      v14 = MUGetPlaceCardLog();
      if (os_signpost_enabled(v14))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5620000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceWebContentSectionControllerInit", "", buf, 2u);
      }

      objc_storeStrong(&v13->_webContentConfig, a4);
      v13->_shouldRemoveWebContent = 0;
      objc_storeStrong(&v13->_webContentViewController, v11);
      [(MUPlaceWebContentSectionController *)v13 _setupWebContentViewController];
      v15 = MUGetPlaceCardLog();
      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C5620000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceWebContentSectionControllerInit", "", buf, 2u);
      }
    }

    self = v13;
    v16 = self;
  }

  else
  {
    v17 = MUGetPlaceCardLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v22 = v7;
      _os_log_impl(&dword_1C5620000, v17, OS_LOG_TYPE_FAULT, "MUPlaceWebContentSectionController: Cannot load a webmodule with config %@ because the config url is empty", buf, 0xCu);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v16;
}

@end
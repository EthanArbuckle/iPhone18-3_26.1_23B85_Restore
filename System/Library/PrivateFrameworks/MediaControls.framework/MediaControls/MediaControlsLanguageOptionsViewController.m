@interface MediaControlsLanguageOptionsViewController
- (BOOL)controller:(id)a3 shouldRetryFailedRequestWithError:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (CGSize)preferredContentSize;
- (MediaControlsLanguageOptionsViewController)initWithRouteUID:(id)a3;
- (MediaControlsLanguageOptionsViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)controller:(id)a3 defersResponseReplacement:(id)a4;
- (void)setLanguageOptionGroups:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MediaControlsLanguageOptionsViewController

- (MediaControlsLanguageOptionsViewController)initWithRouteUID:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MediaControlsLanguageOptionsViewController;
  v5 = [(MediaControlsLanguageOptionsViewController *)&v9 init];
  v6 = v5;
  if (v4 && v5)
  {
    v10[0] = v4;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    MRAVReconnaissanceSessionCreateWithEndpointFeatures();
    v8 = v6;
    MRAVReconnaissanceSessionBeginSearch();
  }

  return v6;
}

void __63__MediaControlsLanguageOptionsViewController_initWithRouteUID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    ExternalDevice = MRAVEndpointGetExternalDevice();
    v6 = [objc_alloc(MEMORY[0x1E6970450]) initWithEndpoint:a3];
    if (ExternalDevice)
    {
      v7 = [objc_alloc(MEMORY[0x1E6970488]) initWithExternalDevice:ExternalDevice];
      [v6 setConnection:v7];
    }

    v8 = objc_alloc_init(MEMORY[0x1E69B0860]);
    v9 = [MEMORY[0x1E69708B0] emptyPropertySet];
    [v8 setPlayingItemProperties:v9];

    v10 = [MEMORY[0x1E69B0850] pathWithRoute:v6 bundleID:0 playerID:0];
    [v8 setPlayerPath:v10];

    v11 = objc_alloc_init(MEMORY[0x1E6970910]);
    v12 = *(a1 + 32);
    v13 = *(v12 + 1008);
    *(v12 + 1008) = v11;

    [*(*(a1 + 32) + 1008) setDelegate:?];
    [*(*(a1 + 32) + 1008) setRequest:v8];
    [*(*(a1 + 32) + 1008) setNeedsReloadForSignificantRequestChange];
    [*(*(a1 + 32) + 1008) beginAutomaticResponseLoading];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__MediaControlsLanguageOptionsViewController_initWithRouteUID___block_invoke_2;
    block[3] = &unk_1E7663898;
    v15 = *(a1 + 32);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  CFRelease(*(a1 + 40));
}

void __63__MediaControlsLanguageOptionsViewController_initWithRouteUID___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dismissLanguageOptionsViewController:*(a1 + 32)];
}

- (void)viewDidLoad
{
  v23.receiver = self;
  v23.super_class = MediaControlsLanguageOptionsViewController;
  [(MediaControlsLanguageOptionsViewController *)&v23 viewDidLoad];
  CCUIExpandedModuleContinuousCornerRadius();
  v4 = v3;
  v5 = [(MediaControlsLanguageOptionsViewController *)self view];
  [v5 setClipsToBounds:1];

  v6 = [MEMORY[0x1E69DC888] clearColor];
  v7 = [(MediaControlsLanguageOptionsViewController *)self view];
  [v7 setBackgroundColor:v6];

  v8 = [(MediaControlsLanguageOptionsViewController *)self view];
  [v8 _setContinuousCornerRadius:v4];

  v9 = [MEMORY[0x1E6997268] controlCenterDarkMaterial];
  [v9 _setContinuousCornerRadius:v4];
  [(MediaControlsLanguageOptionsViewController *)self setMaterialView:v9];
  v10 = [(MediaControlsLanguageOptionsViewController *)self view];
  [v10 addSubview:v9];

  v11 = [v9 visualStylingProviderForCategory:1];
  [(MediaControlsLanguageOptionsViewController *)self setVisualStylingProvider:v11];

  v12 = objc_alloc(MEMORY[0x1E6970448]);
  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  v17 = [v12 initWithFrame:0 style:{*MEMORY[0x1E695F058], v14, v15, v16}];
  [v17 setSeparatorInset:{0.0, 20.0, 0.0, 0.0}];
  v18 = [MEMORY[0x1E69DC888] clearColor];
  [v17 setBackgroundColor:v18];

  v19 = [v17 headerBackgroundView];
  [v19 setHidden:1];

  v20 = [v17 footerBackgroundView];
  [v20 setHidden:1];

  [v17 setContentInset:{0.0, 0.0, 24.0, 0.0}];
  [v17 setDataSource:self];
  [v17 setDelegate:self];
  [v17 setSectionHeaderHeight:*MEMORY[0x1E69DE3D0]];
  [v17 setAllowsMultipleSelection:1];
  [v17 _setDrawsSeparatorAtTopOfSections:1];
  [v17 setScrollIndicatorInsets:{v4, 0.0, v4, 0.0}];
  v21 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v13, v14, v15, v16}];
  [v17 setTableFooterView:v21];

  [v17 registerClass:objc_opt_class() forCellReuseIdentifier:@"_LanguageOptionsCellIdentifier"];
  [v17 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"_LanguageOptionsHeaderIdentifier"];
  [(MediaControlsLanguageOptionsViewController *)self setTableView:v17];
  v22 = [(MediaControlsLanguageOptionsViewController *)self view];
  [v22 addSubview:v17];
}

- (void)setLanguageOptionGroups:(id)a3
{
  objc_storeStrong(&self->_languageOptionGroups, a3);
  if ([(MediaControlsLanguageOptionsViewController *)self isViewLoaded])
  {
    v4 = [(MediaControlsLanguageOptionsViewController *)self tableView];
    [v4 reloadData];
  }
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = MediaControlsLanguageOptionsViewController;
  [(MediaControlsLanguageOptionsViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(MediaControlsLanguageOptionsViewController *)self view];
  [v3 bounds];
  [(UIView *)self->_materialView setFrame:?];

  v4 = [(MediaControlsLanguageOptionsViewController *)self view];
  [v4 bounds];
  [(MPAVClippingTableView *)self->_tableView setFrame:?];
}

- (CGSize)preferredContentSize
{
  CCUIDefaultExpandedContentModuleWidth();
  v4 = v3;
  [(MPAVClippingTableView *)self->_tableView sizeThatFits:?];
  if (v5 < v4)
  {
    v5 = v4;
  }

  v6 = v4;
  result.height = v5;
  result.width = v6;
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"_LanguageOptionsCellIdentifier" forIndexPath:v6];
  v8 = -[NSArray objectAtIndexedSubscript:](self->_languageOptionGroups, "objectAtIndexedSubscript:", [v6 section]);
  v9 = [v8 localizedTitleForOptionAtIndex:{objc_msgSend(v6, "row")}];
  v10 = [v7 textLabel];
  [v10 setText:v9];

  v11 = [v8 indexOfSelectedOption];
  v12 = [v6 row];

  if (v11 == v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v7 setAccessoryType:v13];
  v14 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:0];
  v15 = [v7 textLabel];
  [v15 mt_replaceVisualStyling:v14];

  v16 = [v14 color];
  [v7 setTintColor:v16];

  v17 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:5];
  v18 = [v7 topSeparatorView];
  [v18 mt_replaceVisualStyling:v17];

  v19 = [v7 bottomSeparatorView];
  [v19 mt_replaceVisualStyling:v17];

  return v7;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_languageOptionGroups objectAtIndexedSubscript:a4];
  v5 = [v4 numberOfOptions];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  [v14 deselectRowAtIndexPath:v6 animated:0];
  v7 = [v14 cellForRowAtIndexPath:v6];
  [v7 setAccessoryType:3];

  v8 = -[NSArray objectAtIndexedSubscript:](self->_languageOptionGroups, "objectAtIndexedSubscript:", [v6 section]);
  v9 = [v8 indexOfSelectedOption];
  if (v9 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:v9 inSection:{objc_msgSend(v6, "section")}];
    v11 = [v14 cellForRowAtIndexPath:v10];
    [v11 setAccessoryType:0];
  }

  v12 = MEMORY[0x1E69B0848];
  v13 = [v8 changeRequestForOptionAtIndex:{objc_msgSend(v6, "row")}];
  [v12 performRequest:v13 completion:0];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  languageOptionGroups = self->_languageOptionGroups;
  v5 = a4;
  v6 = -[NSArray objectAtIndexedSubscript:](languageOptionGroups, "objectAtIndexedSubscript:", [v5 section]);
  v7 = [v6 indexOfSelectedOption];
  v8 = [v5 row];

  return v7 != v8;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = [a3 dequeueReusableHeaderFooterViewWithIdentifier:@"_LanguageOptionsHeaderIdentifier"];
  v7 = [(NSArray *)self->_languageOptionGroups objectAtIndexedSubscript:a4];
  v8 = [v7 localizedTitle];
  v9 = [v6 titleLabel];
  [v9 setText:v8];

  v10 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:0];
  v11 = [v6 titleLabel];
  [v11 mt_replaceVisualStyling:v10];

  return v6;
}

- (void)controller:(id)a3 defersResponseReplacement:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MediaControlsLanguageOptionsViewController_controller_defersResponseReplacement___block_invoke;
  block[3] = &unk_1E7664FC0;
  v12 = self;
  v13 = v7;
  v11 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __83__MediaControlsLanguageOptionsViewController_controller_defersResponseReplacement___block_invoke(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = [*(a1 + 32) response];
  v3 = [v2 tracklist];
  v4 = [v3 playingItem];
  v6 = [v4 languageOptionGroups];

  if ([v6 count])
  {
    [*(a1 + 40) setLanguageOptionGroups:v6];
    v5 = [*(a1 + 40) delegate];
    [v5 didLoadOptionsForLanguageOptionsViewController:*(a1 + 40)];
  }
}

- (BOOL)controller:(id)a3 shouldRetryFailedRequestWithError:(id)a4
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__MediaControlsLanguageOptionsViewController_controller_shouldRetryFailedRequestWithError___block_invoke;
  block[3] = &unk_1E7663898;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  return 0;
}

void __91__MediaControlsLanguageOptionsViewController_controller_shouldRetryFailedRequestWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 dismissLanguageOptionsViewController:*(a1 + 32)];
}

- (MediaControlsLanguageOptionsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
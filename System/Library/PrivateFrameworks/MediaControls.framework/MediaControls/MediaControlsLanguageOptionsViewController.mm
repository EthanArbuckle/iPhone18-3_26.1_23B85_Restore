@interface MediaControlsLanguageOptionsViewController
- (BOOL)controller:(id)controller shouldRetryFailedRequestWithError:(id)error;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (CGSize)preferredContentSize;
- (MediaControlsLanguageOptionsViewController)initWithRouteUID:(id)d;
- (MediaControlsLanguageOptionsViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)controller:(id)controller defersResponseReplacement:(id)replacement;
- (void)setLanguageOptionGroups:(id)groups;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation MediaControlsLanguageOptionsViewController

- (MediaControlsLanguageOptionsViewController)initWithRouteUID:(id)d
{
  v10[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MediaControlsLanguageOptionsViewController;
  v5 = [(MediaControlsLanguageOptionsViewController *)&v9 init];
  v6 = v5;
  if (dCopy && v5)
  {
    v10[0] = dCopy;
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
  view = [(MediaControlsLanguageOptionsViewController *)self view];
  [view setClipsToBounds:1];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view2 = [(MediaControlsLanguageOptionsViewController *)self view];
  [view2 setBackgroundColor:clearColor];

  view3 = [(MediaControlsLanguageOptionsViewController *)self view];
  [view3 _setContinuousCornerRadius:v4];

  controlCenterDarkMaterial = [MEMORY[0x1E6997268] controlCenterDarkMaterial];
  [controlCenterDarkMaterial _setContinuousCornerRadius:v4];
  [(MediaControlsLanguageOptionsViewController *)self setMaterialView:controlCenterDarkMaterial];
  view4 = [(MediaControlsLanguageOptionsViewController *)self view];
  [view4 addSubview:controlCenterDarkMaterial];

  v11 = [controlCenterDarkMaterial visualStylingProviderForCategory:1];
  [(MediaControlsLanguageOptionsViewController *)self setVisualStylingProvider:v11];

  v12 = objc_alloc(MEMORY[0x1E6970448]);
  v13 = *MEMORY[0x1E695F058];
  v14 = *(MEMORY[0x1E695F058] + 8);
  v15 = *(MEMORY[0x1E695F058] + 16);
  v16 = *(MEMORY[0x1E695F058] + 24);
  v17 = [v12 initWithFrame:0 style:{*MEMORY[0x1E695F058], v14, v15, v16}];
  [v17 setSeparatorInset:{0.0, 20.0, 0.0, 0.0}];
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [v17 setBackgroundColor:clearColor2];

  headerBackgroundView = [v17 headerBackgroundView];
  [headerBackgroundView setHidden:1];

  footerBackgroundView = [v17 footerBackgroundView];
  [footerBackgroundView setHidden:1];

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
  view5 = [(MediaControlsLanguageOptionsViewController *)self view];
  [view5 addSubview:v17];
}

- (void)setLanguageOptionGroups:(id)groups
{
  objc_storeStrong(&self->_languageOptionGroups, groups);
  if ([(MediaControlsLanguageOptionsViewController *)self isViewLoaded])
  {
    tableView = [(MediaControlsLanguageOptionsViewController *)self tableView];
    [tableView reloadData];
  }
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = MediaControlsLanguageOptionsViewController;
  [(MediaControlsLanguageOptionsViewController *)&v5 viewWillLayoutSubviews];
  view = [(MediaControlsLanguageOptionsViewController *)self view];
  [view bounds];
  [(UIView *)self->_materialView setFrame:?];

  view2 = [(MediaControlsLanguageOptionsViewController *)self view];
  [view2 bounds];
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"_LanguageOptionsCellIdentifier" forIndexPath:pathCopy];
  v8 = -[NSArray objectAtIndexedSubscript:](self->_languageOptionGroups, "objectAtIndexedSubscript:", [pathCopy section]);
  v9 = [v8 localizedTitleForOptionAtIndex:{objc_msgSend(pathCopy, "row")}];
  textLabel = [v7 textLabel];
  [textLabel setText:v9];

  indexOfSelectedOption = [v8 indexOfSelectedOption];
  v12 = [pathCopy row];

  if (indexOfSelectedOption == v12)
  {
    v13 = 3;
  }

  else
  {
    v13 = 0;
  }

  [v7 setAccessoryType:v13];
  v14 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:0];
  textLabel2 = [v7 textLabel];
  [textLabel2 mt_replaceVisualStyling:v14];

  color = [v14 color];
  [v7 setTintColor:color];

  v17 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:5];
  topSeparatorView = [v7 topSeparatorView];
  [topSeparatorView mt_replaceVisualStyling:v17];

  bottomSeparatorView = [v7 bottomSeparatorView];
  [bottomSeparatorView mt_replaceVisualStyling:v17];

  return v7;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_languageOptionGroups objectAtIndexedSubscript:section];
  numberOfOptions = [v4 numberOfOptions];

  return numberOfOptions;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  v7 = [viewCopy cellForRowAtIndexPath:pathCopy];
  [v7 setAccessoryType:3];

  v8 = -[NSArray objectAtIndexedSubscript:](self->_languageOptionGroups, "objectAtIndexedSubscript:", [pathCopy section]);
  indexOfSelectedOption = [v8 indexOfSelectedOption];
  if (indexOfSelectedOption != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696AC88] indexPathForRow:indexOfSelectedOption inSection:{objc_msgSend(pathCopy, "section")}];
    v11 = [viewCopy cellForRowAtIndexPath:v10];
    [v11 setAccessoryType:0];
  }

  v12 = MEMORY[0x1E69B0848];
  v13 = [v8 changeRequestForOptionAtIndex:{objc_msgSend(pathCopy, "row")}];
  [v12 performRequest:v13 completion:0];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  languageOptionGroups = self->_languageOptionGroups;
  pathCopy = path;
  v6 = -[NSArray objectAtIndexedSubscript:](languageOptionGroups, "objectAtIndexedSubscript:", [pathCopy section]);
  indexOfSelectedOption = [v6 indexOfSelectedOption];
  v8 = [pathCopy row];

  return indexOfSelectedOption != v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  v6 = [view dequeueReusableHeaderFooterViewWithIdentifier:@"_LanguageOptionsHeaderIdentifier"];
  v7 = [(NSArray *)self->_languageOptionGroups objectAtIndexedSubscript:section];
  localizedTitle = [v7 localizedTitle];
  titleLabel = [v6 titleLabel];
  [titleLabel setText:localizedTitle];

  v10 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:0];
  titleLabel2 = [v6 titleLabel];
  [titleLabel2 mt_replaceVisualStyling:v10];

  return v6;
}

- (void)controller:(id)controller defersResponseReplacement:(id)replacement
{
  controllerCopy = controller;
  replacementCopy = replacement;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __83__MediaControlsLanguageOptionsViewController_controller_defersResponseReplacement___block_invoke;
  block[3] = &unk_1E7664FC0;
  selfCopy = self;
  v13 = replacementCopy;
  v11 = controllerCopy;
  v8 = controllerCopy;
  v9 = replacementCopy;
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

- (BOOL)controller:(id)controller shouldRetryFailedRequestWithError:(id)error
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
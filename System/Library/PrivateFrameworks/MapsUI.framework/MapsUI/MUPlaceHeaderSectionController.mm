@interface MUPlaceHeaderSectionController
- (BOOL)headerViewShouldLayoutSubviews:(id)subviews;
- (MUPlaceHeaderSectionController)initWithPlaceItem:(id)item configuration:(id)configuration;
- (MUPlaceHeaderSectionControllerDelegate)headerDelegate;
- (id)draggableContent;
- (void)_notifyDidTapParentMapItem:(id)item;
- (void)_populateRevealedAnalyticsModule:(id)module;
- (void)_setupHeaderView;
- (void)headerView:(id)view didSelectEnclosingMapItemIdentifier:(id)identifier;
- (void)headerView:(id)view didSelectShareWithPresentationOptions:(id)options;
- (void)setCardExpansionProgress:(double)progress;
- (void)setHeaderDelegate:(id)delegate;
@end

@implementation MUPlaceHeaderSectionController

- (MUPlaceHeaderSectionControllerDelegate)headerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_headerDelegate);

  return WeakRetained;
}

- (void)_populateRevealedAnalyticsModule:(id)module
{
  headerView = self->_headerView;
  moduleCopy = module;
  viewModel = [(MUPlaceHeaderView *)headerView viewModel];
  v5 = MUHeaderRevealedModuleForViewModel(viewModel);
  [moduleCopy setTitle:v5];
}

- (id)draggableContent
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_headerView)
  {
    v3 = objc_alloc_init(MUInfoCardDraggableContent);
    [(MUInfoCardDraggableContent *)v3 setView:self->_headerView];
    mapItem = [(MUPlaceSectionController *)self mapItem];
    [(MUInfoCardDraggableContent *)v3 setDraggableContent:mapItem];

    [(MUInfoCardDraggableContent *)v3 setHeader:1];
    [(MUInfoCardDraggableContent *)v3 setAnalyticsTarget:1501];
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)_notifyDidTapParentMapItem:(id)item
{
  v4 = MEMORY[0x1E696AEC0];
  itemCopy = item;
  v6 = [v4 stringWithFormat:@"%llu", objc_msgSend(itemCopy, "_muid")];
  [(MUPlaceSectionController *)self captureInfoCardAction:6047 eventValue:v6 feedbackType:0 actionRichProviderId:0 classification:0];

  headerDelegate = [(MUPlaceHeaderSectionController *)self headerDelegate];
  [headerDelegate placeHeaderSectionController:self didTapMapItem:itemCopy];
}

- (BOOL)headerViewShouldLayoutSubviews:(id)subviews
{
  selfCopy = self;
  delegate = [(MUPlaceSectionController *)self delegate];
  LOBYTE(selfCopy) = [delegate placeSectionControllerShouldLayoutSubviews:selfCopy];

  return selfCopy;
}

- (void)headerView:(id)view didSelectShareWithPresentationOptions:(id)options
{
  optionsCopy = options;
  headerDelegate = [(MUPlaceHeaderSectionController *)self headerDelegate];
  [headerDelegate placeHeaderSectionController:self didSelectShareWithPresentationOptions:optionsCopy];
}

- (void)headerView:(id)view didSelectEnclosingMapItemIdentifier:(id)identifier
{
  viewCopy = view;
  identifierCopy = identifier;
  headerDelegate = [(MUPlaceHeaderSectionController *)self headerDelegate];

  v9 = MUGetPlaceCardLog();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
  if (headerDelegate)
  {
    if (v10)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5620000, v9, OS_LOG_TYPE_INFO, "MUPlaceHeaderSectionController: About to refine enclosing map item", buf, 2u);
    }

    objc_initWeak(buf, self);
    [(MUPlaceHeaderView *)self->_headerView beginAnimatingActivityIndicator];
    viewModel = [(MUPlaceHeaderView *)self->_headerView viewModel];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __81__MUPlaceHeaderSectionController_headerView_didSelectEnclosingMapItemIdentifier___block_invoke;
    v12[3] = &unk_1E8219D48;
    objc_copyWeak(&v13, buf);
    [viewModel refineEnclosingMapItemWithCompletion:v12];

    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v10)
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_1C5620000, v9, OS_LOG_TYPE_INFO, "MUPlaceHeaderSectionController: User tapped enclosing map item identifier but no delegate set, early return", buf, 2u);
    }
  }
}

void __81__MUPlaceHeaderSectionController_headerView_didSelectEnclosingMapItemIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = MUGetPlaceCardLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&dword_1C5620000, v7, OS_LOG_TYPE_DEBUG, "MUPlaceHeaderSectionController: Finished refining enclosing map item %@ with error %@", &v11, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _notifyDidTapParentMapItem:v5];
    [v9[9] endAnimatingActivityIndicatorWithError:v6];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setCardExpansionProgress:(double)progress
{
  if (![(MUPlaceHeaderSectionControllerConfiguration *)self->_configuration alwaysShowExpandedVerifiedBusinessHeader])
  {
    headerView = self->_headerView;

    [(MUPlaceHeaderView *)headerView setVerifiedBusinessHeaderExpansionProgress:progress];
  }
}

- (void)setHeaderDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_headerDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_headerDelegate, obj);
    [(MUPlaceHeaderView *)self->_headerView reloadTrailingConstraint];
    v5 = obj;
  }
}

- (void)_setupHeaderView
{
  v3 = objc_alloc_init(MUPlaceCoverPhotoOptions);
  [(MUPlaceCoverPhotoOptions *)v3 setShowShareButton:[(MUPlaceHeaderSectionControllerConfiguration *)self->_configuration showShareButton]];
  [(MUPlaceCoverPhotoOptions *)v3 setInsetsCoverPhoto:[(MUPlaceHeaderSectionControllerConfiguration *)self->_configuration shouldInsetRoundCoverPhoto]];
  v4 = [MUPlaceItemHeaderViewModel alloc];
  placeItem = self->_placeItem;
  isDeveloperPlaceCard = [(MUPlaceHeaderSectionControllerConfiguration *)self->_configuration isDeveloperPlaceCard];
  developerPlaceCardAuditToken = [(MUPlaceHeaderSectionControllerConfiguration *)self->_configuration developerPlaceCardAuditToken];
  v8 = [(MUPlaceItemHeaderViewModel *)v4 initWithPlaceItem:placeItem isDeveloperPlaceCard:isDeveloperPlaceCard developerPlaceCardAuditToken:developerPlaceCardAuditToken];

  objc_initWeak(&location, self);
  v9 = [MUPlaceHeaderView alloc];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__MUPlaceHeaderSectionController__setupHeaderView__block_invoke;
  v17[3] = &unk_1E821BA58;
  objc_copyWeak(&v18, &location);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__MUPlaceHeaderSectionController__setupHeaderView__block_invoke_2;
  v15[3] = &unk_1E821BA58;
  objc_copyWeak(&v16, &location);
  v10 = [(MUPlaceHeaderView *)v9 initWithViewModel:v8 coverPhotoOptions:v3 trailingConstraintProvider:v17 paddingConstraintProvider:v15];
  headerView = self->_headerView;
  self->_headerView = v10;

  [(MUPlaceHeaderView *)self->_headerView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUPlaceHeaderView *)self->_headerView setSuppressContainmentTap:[(MUPlaceHeaderSectionControllerConfiguration *)self->_configuration suppressContainmentPunchout]];
  if ([(MUPlaceHeaderSectionControllerConfiguration *)self->_configuration drawDynamicPlacecardDebugBackground])
  {
    v12 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:1.0 alpha:0.0500000007];
    [(MUPlaceHeaderView *)self->_headerView setBackgroundColor:v12];
  }

  alwaysShowExpandedVerifiedBusinessHeader = [(MUPlaceHeaderSectionControllerConfiguration *)self->_configuration alwaysShowExpandedVerifiedBusinessHeader];
  v14 = 0.0;
  if (alwaysShowExpandedVerifiedBusinessHeader)
  {
    v14 = 1.0;
  }

  [(MUPlaceHeaderView *)self->_headerView setVerifiedBusinessHeaderExpansionProgress:v14];
  [(MUPlaceHeaderView *)self->_headerView setDelegate:self];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

double __50__MUPlaceHeaderSectionController__setupHeaderView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  v3 = 0.0;
  if (WeakRetained)
  {
    v4 = [WeakRetained headerDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [v2 headerDelegate];
      [v6 placeHeaderSectionControllerRequestsTrailingConstant:v2];
      v3 = v7;
    }
  }

  return v3;
}

double __50__MUPlaceHeaderSectionController__setupHeaderView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  v3 = 0.0;
  if (WeakRetained)
  {
    v4 = [WeakRetained headerDelegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [v2 headerDelegate];
      [v6 placeHeaderSectionControllerRequestsPaddingConstant:v2];
      v3 = v7;
    }
  }

  return v3;
}

- (MUPlaceHeaderSectionController)initWithPlaceItem:(id)item configuration:(id)configuration
{
  itemCopy = item;
  configurationCopy = configuration;
  mapItem = [itemCopy mapItem];
  v15.receiver = self;
  v15.super_class = MUPlaceHeaderSectionController;
  v10 = [(MUPlaceSectionController *)&v15 initWithMapItem:mapItem];

  if (v10)
  {
    v11 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v11))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v11, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MUPlaceHeaderSectionControllerInit", "", v14, 2u);
    }

    objc_storeStrong(&v10->_placeItem, item);
    objc_storeStrong(&v10->_configuration, configuration);
    [(MUPlaceHeaderSectionController *)v10 _setupHeaderView];
    v12 = MUGetPlaceCardLog();
    if (os_signpost_enabled(v12))
    {
      *v14 = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5620000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "MUPlaceHeaderSectionControllerInit", "", v14, 2u);
    }
  }

  return v10;
}

@end
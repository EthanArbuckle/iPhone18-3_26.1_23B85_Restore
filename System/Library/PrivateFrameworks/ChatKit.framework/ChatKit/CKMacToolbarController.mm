@interface CKMacToolbarController
- (BOOL)_shouldDisAllowTouchesToPassForProviderType:(int64_t)type;
- (BOOL)_updateFrameWithPreferredHeightsForFrame:(CGRect)frame;
- (BOOL)macToolbarView:(id)view shouldAllowTouchesForPoint:(CGPoint)point andEvent:(id)event;
- (CKMacToolbarController)initWithScene:(id)scene connectingToSession:(id)session inStandaloneWindow:(BOOL)window;
- (CKMacToolbarDelegate)delegate;
- (NSString)sceneSessionIdentifier;
- (UIView)inspectorProvidedVirtualView;
- (UIView)primaryProvidedVirtualView;
- (UIView)secondaryProvidedVirtualView;
- (UIWindowScene)windowScene;
- (double)_getPreferredHeightForProviderType:(int64_t)type withDefaultHeight:(double)height;
- (id)_cachedVirtualViewForProviderType:(int64_t)type;
- (id)_providerForType:(int64_t)type;
- (id)_virtualBackgroundViewForProviderType:(int64_t)type;
- (int64_t)_providerTypeForPointInsideVirtualView:(CGPoint)view withEvent:(id)event;
- (void)_setVirtualView:(id)view forProviderType:(int64_t)type;
- (void)_sizeMetricsDidChange;
- (void)_updateBackgroundViewsRefreshingViewHeights:(BOOL)heights;
- (void)_updateVirtualViewForProviderType:(int64_t)type;
- (void)loadView;
- (void)removeItemProvider:(id)provider;
- (void)removeItemProviders;
- (void)removeVirtualViewForProvider:(id)provider;
- (void)setInspectorItemProvider:(id)provider;
- (void)setIsShowingInspector:(BOOL)inspector;
- (void)setPrimaryItemProvider:(id)provider;
- (void)setSecondaryItemProvider:(id)provider;
- (void)setShouldDrawPrimaryBlur:(BOOL)blur;
- (void)setShouldDrawSecondaryBlur:(BOOL)blur;
- (void)updateDividersForSidebarPosition:(double)position inspectorPosition:(double)inspectorPosition;
- (void)updateVirtualViewForProvider:(id)provider;
- (void)updateWithFrame:(CGRect)frame;
- (void)viewWillLayoutSubviews;
@end

@implementation CKMacToolbarController

- (CKMacToolbarController)initWithScene:(id)scene connectingToSession:(id)session inStandaloneWindow:(BOOL)window
{
  sceneCopy = scene;
  sessionCopy = session;
  v14.receiver = self;
  v14.super_class = CKMacToolbarController;
  v10 = [(CKMacToolbarController *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_windowScene, sceneCopy);
    persistentIdentifier = [sessionCopy persistentIdentifier];
    objc_storeWeak(&v11->_sceneSessionIdentifier, persistentIdentifier);

    v11->_shouldDrawPrimaryBlur = 1;
    v11->_shouldDrawSecondaryBlur = 1;
    v11->_isInStandaloneWindow = window;
  }

  return v11;
}

- (void)loadView
{
  v11.receiver = self;
  v11.super_class = CKMacToolbarController;
  [(CKMacToolbarController *)&v11 loadView];
  if (!self->_primaryVirtualBackgroundView || !self->_secondaryVirtualBackgroundView)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    primaryVirtualBackgroundView = self->_primaryVirtualBackgroundView;
    self->_primaryVirtualBackgroundView = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69DD250]);
    secondaryVirtualBackgroundView = self->_secondaryVirtualBackgroundView;
    self->_secondaryVirtualBackgroundView = v5;

    v7 = objc_alloc_init(CKMacToolbarView);
    [(CKMacToolbarView *)v7 setDelegate:self];
    [(CKMacToolbarController *)self setView:v7];
    view = [(CKMacToolbarController *)self view];
    [view addSubview:self->_primaryVirtualBackgroundView];

    view2 = [(CKMacToolbarController *)self view];
    [view2 addSubview:self->_secondaryVirtualBackgroundView];

    view3 = [(CKMacToolbarController *)self view];
    [view3 setBackgroundColor:0];
  }
}

- (void)viewWillLayoutSubviews
{
  [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:0];
  [(CKMacToolbarController *)self _updateVirtualViewForProviderType:1];
  [(CKMacToolbarController *)self _updateVirtualViewForProviderType:2];

  [(CKMacToolbarController *)self _updateVirtualViewForProviderType:3];
}

- (double)_getPreferredHeightForProviderType:(int64_t)type withDefaultHeight:(double)height
{
  v5 = [(CKMacToolbarController *)self _providerForType:type];
  if (objc_opt_respondsToSelector())
  {
    [v5 virtualToolbarPreferredHeight];
    height = v6;
  }

  return height;
}

- (void)_updateBackgroundViewsRefreshingViewHeights:(BOOL)heights
{
  if (heights)
  {
    view = [(CKMacToolbarController *)self view];
    [view frame];
    [(CKMacToolbarController *)self _updateFrameWithPreferredHeightsForFrame:?];
  }

  view2 = [(CKMacToolbarController *)self view];
  _shouldReverseLayoutDirection = [view2 _shouldReverseLayoutDirection];

  view3 = [(CKMacToolbarController *)self view];
  [view3 frame];
  v9 = v8;

  v10 = +[CKUIBehavior sharedBehaviors];
  [v10 macAppKitToolbarHeight];
  v12 = v11;

  [(CKMacToolbarController *)self preferredPrimaryHeight];
  v13 = v12;
  if (v14 != 0.0)
  {
    [(CKMacToolbarController *)self preferredPrimaryHeight];
    v13 = v15;
  }

  [(CKMacToolbarController *)self preferredSecondaryHeight];
  if (v16 != 0.0)
  {
    [(CKMacToolbarController *)self preferredSecondaryHeight];
    v12 = v17;
  }

  v18 = 0.0;
  if ([(CKMacToolbarController *)self isInStandaloneWindow])
  {
    v19 = 0.0;
  }

  else
  {
    v19 = 1.0;
  }

  [(CKMacToolbarController *)self splitViewDividerXPosition];
  if (_shouldReverseLayoutDirection)
  {
    v21 = v9;
    if (v20 > 0.0)
    {
      [(CKMacToolbarController *)self splitViewDividerXPosition];
      v21 = v22;
    }

    [(CKMacToolbarController *)self inspectorDividerXPosition];
    v24 = v23;
    [(CKMacToolbarController *)self inspectorDividerXPosition];
    v26 = v21 - v19 - v25;
    v27 = v21 + 0.0;
    v18 = v9 - v21;
  }

  else
  {
    if (v20 > 0.0)
    {
      [(CKMacToolbarController *)self splitViewDividerXPosition];
      v18 = v28;
    }

    [(CKMacToolbarController *)self inspectorDividerXPosition];
    v27 = 0.0;
    v24 = v19 + v18;
    v26 = v9 - v18 - fmax(v9 - v29, 0.0);
  }

  [(UIView *)self->_primaryVirtualBackgroundView frame];
  v35.origin.x = v27;
  v35.origin.y = 0.0;
  v35.size.width = v18;
  v35.size.height = v13;
  if (!CGRectEqualToRect(v33, v35))
  {
    [(UIView *)self->_primaryVirtualBackgroundView setFrame:v27, 0.0, v18, v13];
    [(UIView *)self->_primaryVirtualBackgroundView setNeedsLayout];
    [(UIView *)self->_primaryVirtualBackgroundView layoutIfNeeded];
  }

  [(UIView *)self->_secondaryVirtualBackgroundView frame];
  v36.origin.y = 0.0;
  v36.origin.x = v24;
  v36.size.width = v26;
  v36.size.height = v12;
  if (!CGRectEqualToRect(v34, v36))
  {
    [(UIView *)self->_secondaryVirtualBackgroundView setFrame:v24, 0.0, v26, v12];
    [(UIView *)self->_secondaryVirtualBackgroundView setNeedsLayout];
    [(UIView *)self->_secondaryVirtualBackgroundView layoutIfNeeded];
  }

  [(UIView *)self->_primaryVirtualBackgroundView setHidden:[(CKMacToolbarController *)self shouldDrawPrimaryBlur]^ 1];
  v30 = [(CKMacToolbarController *)self shouldDrawSecondaryBlur]^ 1;
  secondaryVirtualBackgroundView = self->_secondaryVirtualBackgroundView;

  [(UIView *)secondaryVirtualBackgroundView setHidden:v30];
}

- (BOOL)_updateFrameWithPreferredHeightsForFrame:(CGRect)frame
{
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = [CKUIBehavior sharedBehaviors:frame.origin.x];
  [v7 macAppKitToolbarHeight];
  v9 = v8;

  v10 = 1;
  [(CKMacToolbarController *)self _getPreferredHeightForProviderType:1 withDefaultHeight:v9];
  v12 = v11;
  [(CKMacToolbarController *)self _getPreferredHeightForProviderType:2 withDefaultHeight:v9];
  v14 = v13;
  [(CKMacToolbarController *)self _getPreferredHeightForProviderType:3 withDefaultHeight:v9];
  if (v14 >= v15)
  {
    v15 = v14;
  }

  if (v12 >= v15)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  [(CKMacToolbarController *)self preferredPrimaryHeight];
  if (v12 == v17)
  {
    [(CKMacToolbarController *)self preferredSecondaryHeight];
    v10 = v14 != v18;
  }

  [(CKMacToolbarController *)self setPreferredPrimaryHeight:v12];
  [(CKMacToolbarController *)self setPreferredSecondaryHeight:v14];
  view = [(CKMacToolbarController *)self view];
  [view frame];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = v16;
  v20 = CGRectEqualToRect(v23, v24);

  if (!v20)
  {
    view2 = [(CKMacToolbarController *)self view];
    [view2 setFrame:{x, y, width, v16}];

    return 1;
  }

  return v10;
}

- (void)setShouldDrawPrimaryBlur:(BOOL)blur
{
  if (self->_shouldDrawPrimaryBlur != blur)
  {
    self->_shouldDrawPrimaryBlur = blur;
    if ([(CKMacToolbarController *)self isViewLoaded])
    {

      [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:0];
    }
  }
}

- (void)setShouldDrawSecondaryBlur:(BOOL)blur
{
  if (self->_shouldDrawSecondaryBlur != blur)
  {
    self->_shouldDrawSecondaryBlur = blur;
    if ([(CKMacToolbarController *)self isViewLoaded])
    {

      [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:0];
    }
  }
}

- (void)setIsShowingInspector:(BOOL)inspector
{
  if (self->_isShowingInspector != inspector)
  {
    self->_isShowingInspector = inspector;
    [(CKMacToolbarController *)self reloadToolbarItems];
  }
}

- (void)updateWithFrame:(CGRect)frame
{
  if ([(CKMacToolbarController *)self _updateFrameWithPreferredHeightsForFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height])
  {
    [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:0];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:1];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:2];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:3];

    [(CKMacToolbarController *)self _sizeMetricsDidChange];
  }
}

- (void)_sizeMetricsDidChange
{
  primaryItemProvider = [(CKMacToolbarController *)self primaryItemProvider];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    primaryItemProvider2 = [(CKMacToolbarController *)self primaryItemProvider];
    [primaryItemProvider2 toolbarSizeMetricsDidChange];
  }

  secondaryItemProvider = [(CKMacToolbarController *)self secondaryItemProvider];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    secondaryItemProvider2 = [(CKMacToolbarController *)self secondaryItemProvider];
    [secondaryItemProvider2 toolbarSizeMetricsDidChange];
  }

  inspectorItemProvider = [(CKMacToolbarController *)self inspectorItemProvider];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    inspectorItemProvider2 = [(CKMacToolbarController *)self inspectorItemProvider];
    [inspectorItemProvider2 toolbarSizeMetricsDidChange];
  }
}

- (void)removeItemProviders
{
  [(CKMacToolbarController *)self setPrimaryItemProvider:0];
  [(CKMacToolbarController *)self setSecondaryItemProvider:0];
  [(CKMacToolbarController *)self setInspectorItemProvider:0];

  [(CKMacToolbarController *)self reloadToolbarItems];
}

- (void)updateDividersForSidebarPosition:(double)position inspectorPosition:(double)inspectorPosition
{
  v7 = CKFloatApproximatelyEqualToFloatWithTolerance(position, self->_splitViewDividerXPosition, 0.00000999999975);
  v8 = CKFloatApproximatelyEqualToFloatWithTolerance(inspectorPosition, self->_inspectorDividerXPosition, 0.00000999999975);
  if (!v7 || !v8)
  {
    self->_splitViewDividerXPosition = position;
    self->_inspectorDividerXPosition = inspectorPosition;
    [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:0];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:1];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:2];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:3];

    [(CKMacToolbarController *)self _sizeMetricsDidChange];
  }
}

- (void)setPrimaryItemProvider:(id)provider
{
  providerCopy = provider;
  primaryItemProvider = self->_primaryItemProvider;
  v7 = providerCopy;
  if (primaryItemProvider != providerCopy)
  {
    if (primaryItemProvider)
    {
      [(CKMacToolbarItemProvider *)primaryItemProvider providerWillBeRemovedFromToolbarController:self];
    }

    objc_storeStrong(&self->_primaryItemProvider, provider);
    [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:1];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:1];
    if (self->_primaryItemProvider)
    {
      [(CKMacToolbarController *)self reparentToolbarItemsForProvider:?];
    }
  }
}

- (void)setSecondaryItemProvider:(id)provider
{
  providerCopy = provider;
  secondaryItemProvider = self->_secondaryItemProvider;
  v7 = providerCopy;
  if (secondaryItemProvider != providerCopy)
  {
    if (secondaryItemProvider)
    {
      [(CKMacToolbarItemProvider *)secondaryItemProvider providerWillBeRemovedFromToolbarController:self];
    }

    objc_storeStrong(&self->_secondaryItemProvider, provider);
    [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:1];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:2];
    if (self->_secondaryItemProvider)
    {
      [(CKMacToolbarController *)self reparentToolbarItemsForProvider:?];
    }
  }
}

- (void)setInspectorItemProvider:(id)provider
{
  providerCopy = provider;
  inspectorItemProvider = self->_inspectorItemProvider;
  v7 = providerCopy;
  if (inspectorItemProvider != providerCopy)
  {
    if (inspectorItemProvider)
    {
      [(CKMacToolbarItemProvider *)inspectorItemProvider providerWillBeRemovedFromToolbarController:self];
    }

    objc_storeStrong(&self->_inspectorItemProvider, provider);
    [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:1];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:3];
    if (self->_inspectorItemProvider)
    {
      [(CKMacToolbarController *)self reparentToolbarItemsForProvider:?];
    }
  }
}

- (void)removeVirtualViewForProvider:(id)provider
{
  providerCopy = provider;
  primaryItemProvider = [(CKMacToolbarController *)self primaryItemProvider];

  if (primaryItemProvider == providerCopy)
  {
    primaryProvidedVirtualView = [(CKMacToolbarController *)self primaryProvidedVirtualView];
  }

  else
  {
    secondaryItemProvider = [(CKMacToolbarController *)self secondaryItemProvider];

    v6 = providerCopy;
    if (secondaryItemProvider != providerCopy)
    {
      goto LABEL_9;
    }

    primaryProvidedVirtualView = [(CKMacToolbarController *)self secondaryProvidedVirtualView];
  }

  v8 = primaryProvidedVirtualView;
  v6 = providerCopy;
  if (v8)
  {
    superview = [v8 superview];
    view = [(CKMacToolbarController *)self view];

    if (superview == view)
    {
      [v8 removeFromSuperview];
    }

    v6 = providerCopy;
  }

LABEL_9:
}

- (void)removeItemProvider:(id)provider
{
  providerCopy = provider;
  if (providerCopy)
  {
    v8 = providerCopy;
    primaryItemProvider = [(CKMacToolbarController *)self primaryItemProvider];

    if (primaryItemProvider == v8)
    {
      [(CKMacToolbarController *)self setPrimaryItemProvider:0];
    }

    else
    {
      secondaryItemProvider = [(CKMacToolbarController *)self secondaryItemProvider];

      if (secondaryItemProvider == v8)
      {
        [(CKMacToolbarController *)self setSecondaryItemProvider:0];
      }

      else
      {
        inspectorItemProvider = [(CKMacToolbarController *)self inspectorItemProvider];

        providerCopy = v8;
        if (inspectorItemProvider != v8)
        {
          goto LABEL_9;
        }

        [(CKMacToolbarController *)self setInspectorItemProvider:0];
      }
    }

    providerCopy = v8;
  }

LABEL_9:
}

- (void)updateVirtualViewForProvider:(id)provider
{
  providerCopy = provider;
  primaryItemProvider = [(CKMacToolbarController *)self primaryItemProvider];

  if (primaryItemProvider == providerCopy)
  {
    v8 = 1;
  }

  else
  {
    secondaryItemProvider = [(CKMacToolbarController *)self secondaryItemProvider];

    if (secondaryItemProvider == providerCopy)
    {
      v8 = 2;
    }

    else
    {
      inspectorItemProvider = [(CKMacToolbarController *)self inspectorItemProvider];

      v7 = providerCopy;
      if (inspectorItemProvider != providerCopy)
      {
        goto LABEL_8;
      }

      v8 = 3;
    }
  }

  [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:1];
  [(CKMacToolbarController *)self _updateVirtualViewForProviderType:v8];
  v7 = providerCopy;
LABEL_8:
}

- (void)_updateVirtualViewForProviderType:(int64_t)type
{
  v34 = [(CKMacToolbarController *)self _providerForType:?];
  v5 = [(CKMacToolbarController *)self _cachedVirtualViewForProviderType:type];
  if (v34 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    virtualView = [v34 virtualView];
  }

  else
  {
    virtualView = 0;
  }

  if (virtualView != v5)
  {
    superview = [v5 superview];
    view = [(CKMacToolbarController *)self view];

    if (superview == view)
    {
      [v5 removeFromSuperview];
    }

    [(CKMacToolbarController *)self _setVirtualView:virtualView forProviderType:type];
  }

  if (v34 && virtualView)
  {
    [virtualView frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(CKMacToolbarController *)self _virtualBackgroundViewForProviderType:type];
    [v17 frame];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    if (objc_opt_respondsToSelector())
    {
      [v34 virtualToolbarContentInsets];
      v19 = v19 + v26;
      v21 = v21 + v27;
      v23 = v23 - (v26 + v28);
      v25 = v25 - (v27 + v29);
    }

    superview2 = [virtualView superview];
    view2 = [(CKMacToolbarController *)self view];

    if (superview2 != view2)
    {
      view3 = [(CKMacToolbarController *)self view];
      [view3 addSubview:virtualView];
    }

    v36.origin.x = v10;
    v36.origin.y = v12;
    v36.size.width = v14;
    v36.size.height = v16;
    v37.origin.x = v19;
    v37.origin.y = v21;
    v37.size.width = v23;
    v37.size.height = v25;
    if (!CGRectEqualToRect(v36, v37))
    {
      [virtualView setFrame:{v19, v21, v23, v25}];
      [virtualView setNeedsLayout];
      [virtualView layoutIfNeeded];
    }

    view4 = [(CKMacToolbarController *)self view];
    [view4 bringSubviewToFront:virtualView];
  }
}

- (id)_providerForType:(int64_t)type
{
  switch(type)
  {
    case 3:
      inspectorItemProvider = [(CKMacToolbarController *)self inspectorItemProvider];
      break;
    case 2:
      inspectorItemProvider = [(CKMacToolbarController *)self secondaryItemProvider];
      break;
    case 1:
      inspectorItemProvider = [(CKMacToolbarController *)self primaryItemProvider];
      break;
    default:
      inspectorItemProvider = 0;
      break;
  }

  return inspectorItemProvider;
}

- (id)_cachedVirtualViewForProviderType:(int64_t)type
{
  switch(type)
  {
    case 3:
      inspectorProvidedVirtualView = [(CKMacToolbarController *)self inspectorProvidedVirtualView];
      break;
    case 2:
      inspectorProvidedVirtualView = [(CKMacToolbarController *)self secondaryProvidedVirtualView];
      break;
    case 1:
      inspectorProvidedVirtualView = [(CKMacToolbarController *)self primaryProvidedVirtualView];
      break;
    default:
      inspectorProvidedVirtualView = 0;
      break;
  }

  return inspectorProvidedVirtualView;
}

- (id)_virtualBackgroundViewForProviderType:(int64_t)type
{
  if (type == 2)
  {
    secondaryVirtualBackgroundView = [(CKMacToolbarController *)self secondaryVirtualBackgroundView];
  }

  else if (type == 1)
  {
    secondaryVirtualBackgroundView = [(CKMacToolbarController *)self primaryVirtualBackgroundView];
  }

  else
  {
    secondaryVirtualBackgroundView = 0;
  }

  return secondaryVirtualBackgroundView;
}

- (void)_setVirtualView:(id)view forProviderType:(int64_t)type
{
  viewCopy = view;
  switch(type)
  {
    case 3:
      v7 = viewCopy;
      [(CKMacToolbarController *)self setInspectorProvidedVirtualView:viewCopy];
      break;
    case 2:
      v7 = viewCopy;
      [(CKMacToolbarController *)self setSecondaryProvidedVirtualView:viewCopy];
      break;
    case 1:
      v7 = viewCopy;
      [(CKMacToolbarController *)self setPrimaryProvidedVirtualView:viewCopy];
      break;
    default:
      goto LABEL_8;
  }

  viewCopy = v7;
LABEL_8:
}

- (BOOL)_shouldDisAllowTouchesToPassForProviderType:(int64_t)type
{
  v3 = [(CKMacToolbarController *)self _providerForType:type];
  if (objc_opt_respondsToSelector())
  {
    itemProviderDisablesTouches = [v3 itemProviderDisablesTouches];
  }

  else
  {
    itemProviderDisablesTouches = 1;
  }

  return itemProviderDisablesTouches;
}

- (int64_t)_providerTypeForPointInsideVirtualView:(CGPoint)view withEvent:(id)event
{
  y = view.y;
  x = view.x;
  eventCopy = event;
  primaryProvidedVirtualView = [(CKMacToolbarController *)self primaryProvidedVirtualView];
  view = [(CKMacToolbarController *)self view];
  primaryProvidedVirtualView2 = [(CKMacToolbarController *)self primaryProvidedVirtualView];
  [view convertPoint:primaryProvidedVirtualView2 toView:{x, y}];
  v11 = [primaryProvidedVirtualView pointInside:eventCopy withEvent:?];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    secondaryProvidedVirtualView = [(CKMacToolbarController *)self secondaryProvidedVirtualView];
    view2 = [(CKMacToolbarController *)self view];
    secondaryProvidedVirtualView2 = [(CKMacToolbarController *)self secondaryProvidedVirtualView];
    [view2 convertPoint:secondaryProvidedVirtualView2 toView:{x, y}];
    v16 = [secondaryProvidedVirtualView pointInside:eventCopy withEvent:?];

    if (v16)
    {
      v12 = 2;
    }

    else
    {
      inspectorProvidedVirtualView = [(CKMacToolbarController *)self inspectorProvidedVirtualView];
      view3 = [(CKMacToolbarController *)self view];
      inspectorProvidedVirtualView2 = [(CKMacToolbarController *)self inspectorProvidedVirtualView];
      [view3 convertPoint:inspectorProvidedVirtualView2 toView:{x, y}];
      v20 = [inspectorProvidedVirtualView pointInside:eventCopy withEvent:?];

      if (v20)
      {
        v12 = 3;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

- (BOOL)macToolbarView:(id)view shouldAllowTouchesForPoint:(CGPoint)point andEvent:(id)event
{
  y = point.y;
  x = point.x;
  eventCopy = event;
  viewCopy = view;
  view = [(CKMacToolbarController *)self view];

  if (view == viewCopy)
  {
    v12 = ![(CKMacToolbarController *)self _shouldDisAllowTouchesToPassForProviderType:[(CKMacToolbarController *)self _providerTypeForPointInsideVirtualView:eventCopy withEvent:x, y]];
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (CKMacToolbarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSString)sceneSessionIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneSessionIdentifier);

  return WeakRetained;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

- (UIView)primaryProvidedVirtualView
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryProvidedVirtualView);

  return WeakRetained;
}

- (UIView)secondaryProvidedVirtualView
{
  WeakRetained = objc_loadWeakRetained(&self->_secondaryProvidedVirtualView);

  return WeakRetained;
}

- (UIView)inspectorProvidedVirtualView
{
  WeakRetained = objc_loadWeakRetained(&self->_inspectorProvidedVirtualView);

  return WeakRetained;
}

@end
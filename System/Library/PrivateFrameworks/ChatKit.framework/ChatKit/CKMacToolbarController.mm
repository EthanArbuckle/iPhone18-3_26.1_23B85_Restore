@interface CKMacToolbarController
- (BOOL)_shouldDisAllowTouchesToPassForProviderType:(int64_t)a3;
- (BOOL)_updateFrameWithPreferredHeightsForFrame:(CGRect)a3;
- (BOOL)macToolbarView:(id)a3 shouldAllowTouchesForPoint:(CGPoint)a4 andEvent:(id)a5;
- (CKMacToolbarController)initWithScene:(id)a3 connectingToSession:(id)a4 inStandaloneWindow:(BOOL)a5;
- (CKMacToolbarDelegate)delegate;
- (NSString)sceneSessionIdentifier;
- (UIView)inspectorProvidedVirtualView;
- (UIView)primaryProvidedVirtualView;
- (UIView)secondaryProvidedVirtualView;
- (UIWindowScene)windowScene;
- (double)_getPreferredHeightForProviderType:(int64_t)a3 withDefaultHeight:(double)a4;
- (id)_cachedVirtualViewForProviderType:(int64_t)a3;
- (id)_providerForType:(int64_t)a3;
- (id)_virtualBackgroundViewForProviderType:(int64_t)a3;
- (int64_t)_providerTypeForPointInsideVirtualView:(CGPoint)a3 withEvent:(id)a4;
- (void)_setVirtualView:(id)a3 forProviderType:(int64_t)a4;
- (void)_sizeMetricsDidChange;
- (void)_updateBackgroundViewsRefreshingViewHeights:(BOOL)a3;
- (void)_updateVirtualViewForProviderType:(int64_t)a3;
- (void)loadView;
- (void)removeItemProvider:(id)a3;
- (void)removeItemProviders;
- (void)removeVirtualViewForProvider:(id)a3;
- (void)setInspectorItemProvider:(id)a3;
- (void)setIsShowingInspector:(BOOL)a3;
- (void)setPrimaryItemProvider:(id)a3;
- (void)setSecondaryItemProvider:(id)a3;
- (void)setShouldDrawPrimaryBlur:(BOOL)a3;
- (void)setShouldDrawSecondaryBlur:(BOOL)a3;
- (void)updateDividersForSidebarPosition:(double)a3 inspectorPosition:(double)a4;
- (void)updateVirtualViewForProvider:(id)a3;
- (void)updateWithFrame:(CGRect)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation CKMacToolbarController

- (CKMacToolbarController)initWithScene:(id)a3 connectingToSession:(id)a4 inStandaloneWindow:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v14.receiver = self;
  v14.super_class = CKMacToolbarController;
  v10 = [(CKMacToolbarController *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_windowScene, v8);
    v12 = [v9 persistentIdentifier];
    objc_storeWeak(&v11->_sceneSessionIdentifier, v12);

    v11->_shouldDrawPrimaryBlur = 1;
    v11->_shouldDrawSecondaryBlur = 1;
    v11->_isInStandaloneWindow = a5;
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
    v8 = [(CKMacToolbarController *)self view];
    [v8 addSubview:self->_primaryVirtualBackgroundView];

    v9 = [(CKMacToolbarController *)self view];
    [v9 addSubview:self->_secondaryVirtualBackgroundView];

    v10 = [(CKMacToolbarController *)self view];
    [v10 setBackgroundColor:0];
  }
}

- (void)viewWillLayoutSubviews
{
  [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:0];
  [(CKMacToolbarController *)self _updateVirtualViewForProviderType:1];
  [(CKMacToolbarController *)self _updateVirtualViewForProviderType:2];

  [(CKMacToolbarController *)self _updateVirtualViewForProviderType:3];
}

- (double)_getPreferredHeightForProviderType:(int64_t)a3 withDefaultHeight:(double)a4
{
  v5 = [(CKMacToolbarController *)self _providerForType:a3];
  if (objc_opt_respondsToSelector())
  {
    [v5 virtualToolbarPreferredHeight];
    a4 = v6;
  }

  return a4;
}

- (void)_updateBackgroundViewsRefreshingViewHeights:(BOOL)a3
{
  if (a3)
  {
    v4 = [(CKMacToolbarController *)self view];
    [v4 frame];
    [(CKMacToolbarController *)self _updateFrameWithPreferredHeightsForFrame:?];
  }

  v5 = [(CKMacToolbarController *)self view];
  v6 = [v5 _shouldReverseLayoutDirection];

  v7 = [(CKMacToolbarController *)self view];
  [v7 frame];
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
  if (v6)
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

- (BOOL)_updateFrameWithPreferredHeightsForFrame:(CGRect)a3
{
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [CKUIBehavior sharedBehaviors:a3.origin.x];
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
  v19 = [(CKMacToolbarController *)self view];
  [v19 frame];
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = v16;
  v20 = CGRectEqualToRect(v23, v24);

  if (!v20)
  {
    v21 = [(CKMacToolbarController *)self view];
    [v21 setFrame:{x, y, width, v16}];

    return 1;
  }

  return v10;
}

- (void)setShouldDrawPrimaryBlur:(BOOL)a3
{
  if (self->_shouldDrawPrimaryBlur != a3)
  {
    self->_shouldDrawPrimaryBlur = a3;
    if ([(CKMacToolbarController *)self isViewLoaded])
    {

      [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:0];
    }
  }
}

- (void)setShouldDrawSecondaryBlur:(BOOL)a3
{
  if (self->_shouldDrawSecondaryBlur != a3)
  {
    self->_shouldDrawSecondaryBlur = a3;
    if ([(CKMacToolbarController *)self isViewLoaded])
    {

      [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:0];
    }
  }
}

- (void)setIsShowingInspector:(BOOL)a3
{
  if (self->_isShowingInspector != a3)
  {
    self->_isShowingInspector = a3;
    [(CKMacToolbarController *)self reloadToolbarItems];
  }
}

- (void)updateWithFrame:(CGRect)a3
{
  if ([(CKMacToolbarController *)self _updateFrameWithPreferredHeightsForFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height])
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
  v3 = [(CKMacToolbarController *)self primaryItemProvider];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(CKMacToolbarController *)self primaryItemProvider];
    [v5 toolbarSizeMetricsDidChange];
  }

  v6 = [(CKMacToolbarController *)self secondaryItemProvider];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(CKMacToolbarController *)self secondaryItemProvider];
    [v8 toolbarSizeMetricsDidChange];
  }

  v9 = [(CKMacToolbarController *)self inspectorItemProvider];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(CKMacToolbarController *)self inspectorItemProvider];
    [v11 toolbarSizeMetricsDidChange];
  }
}

- (void)removeItemProviders
{
  [(CKMacToolbarController *)self setPrimaryItemProvider:0];
  [(CKMacToolbarController *)self setSecondaryItemProvider:0];
  [(CKMacToolbarController *)self setInspectorItemProvider:0];

  [(CKMacToolbarController *)self reloadToolbarItems];
}

- (void)updateDividersForSidebarPosition:(double)a3 inspectorPosition:(double)a4
{
  v7 = CKFloatApproximatelyEqualToFloatWithTolerance(a3, self->_splitViewDividerXPosition, 0.00000999999975);
  v8 = CKFloatApproximatelyEqualToFloatWithTolerance(a4, self->_inspectorDividerXPosition, 0.00000999999975);
  if (!v7 || !v8)
  {
    self->_splitViewDividerXPosition = a3;
    self->_inspectorDividerXPosition = a4;
    [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:0];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:1];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:2];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:3];

    [(CKMacToolbarController *)self _sizeMetricsDidChange];
  }
}

- (void)setPrimaryItemProvider:(id)a3
{
  v5 = a3;
  primaryItemProvider = self->_primaryItemProvider;
  v7 = v5;
  if (primaryItemProvider != v5)
  {
    if (primaryItemProvider)
    {
      [(CKMacToolbarItemProvider *)primaryItemProvider providerWillBeRemovedFromToolbarController:self];
    }

    objc_storeStrong(&self->_primaryItemProvider, a3);
    [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:1];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:1];
    if (self->_primaryItemProvider)
    {
      [(CKMacToolbarController *)self reparentToolbarItemsForProvider:?];
    }
  }
}

- (void)setSecondaryItemProvider:(id)a3
{
  v5 = a3;
  secondaryItemProvider = self->_secondaryItemProvider;
  v7 = v5;
  if (secondaryItemProvider != v5)
  {
    if (secondaryItemProvider)
    {
      [(CKMacToolbarItemProvider *)secondaryItemProvider providerWillBeRemovedFromToolbarController:self];
    }

    objc_storeStrong(&self->_secondaryItemProvider, a3);
    [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:1];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:2];
    if (self->_secondaryItemProvider)
    {
      [(CKMacToolbarController *)self reparentToolbarItemsForProvider:?];
    }
  }
}

- (void)setInspectorItemProvider:(id)a3
{
  v5 = a3;
  inspectorItemProvider = self->_inspectorItemProvider;
  v7 = v5;
  if (inspectorItemProvider != v5)
  {
    if (inspectorItemProvider)
    {
      [(CKMacToolbarItemProvider *)inspectorItemProvider providerWillBeRemovedFromToolbarController:self];
    }

    objc_storeStrong(&self->_inspectorItemProvider, a3);
    [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:1];
    [(CKMacToolbarController *)self _updateVirtualViewForProviderType:3];
    if (self->_inspectorItemProvider)
    {
      [(CKMacToolbarController *)self reparentToolbarItemsForProvider:?];
    }
  }
}

- (void)removeVirtualViewForProvider:(id)a3
{
  v11 = a3;
  v4 = [(CKMacToolbarController *)self primaryItemProvider];

  if (v4 == v11)
  {
    v7 = [(CKMacToolbarController *)self primaryProvidedVirtualView];
  }

  else
  {
    v5 = [(CKMacToolbarController *)self secondaryItemProvider];

    v6 = v11;
    if (v5 != v11)
    {
      goto LABEL_9;
    }

    v7 = [(CKMacToolbarController *)self secondaryProvidedVirtualView];
  }

  v8 = v7;
  v6 = v11;
  if (v8)
  {
    v9 = [v8 superview];
    v10 = [(CKMacToolbarController *)self view];

    if (v9 == v10)
    {
      [v8 removeFromSuperview];
    }

    v6 = v11;
  }

LABEL_9:
}

- (void)removeItemProvider:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    v5 = [(CKMacToolbarController *)self primaryItemProvider];

    if (v5 == v8)
    {
      [(CKMacToolbarController *)self setPrimaryItemProvider:0];
    }

    else
    {
      v6 = [(CKMacToolbarController *)self secondaryItemProvider];

      if (v6 == v8)
      {
        [(CKMacToolbarController *)self setSecondaryItemProvider:0];
      }

      else
      {
        v7 = [(CKMacToolbarController *)self inspectorItemProvider];

        v4 = v8;
        if (v7 != v8)
        {
          goto LABEL_9;
        }

        [(CKMacToolbarController *)self setInspectorItemProvider:0];
      }
    }

    v4 = v8;
  }

LABEL_9:
}

- (void)updateVirtualViewForProvider:(id)a3
{
  v9 = a3;
  v4 = [(CKMacToolbarController *)self primaryItemProvider];

  if (v4 == v9)
  {
    v8 = 1;
  }

  else
  {
    v5 = [(CKMacToolbarController *)self secondaryItemProvider];

    if (v5 == v9)
    {
      v8 = 2;
    }

    else
    {
      v6 = [(CKMacToolbarController *)self inspectorItemProvider];

      v7 = v9;
      if (v6 != v9)
      {
        goto LABEL_8;
      }

      v8 = 3;
    }
  }

  [(CKMacToolbarController *)self _updateBackgroundViewsRefreshingViewHeights:1];
  [(CKMacToolbarController *)self _updateVirtualViewForProviderType:v8];
  v7 = v9;
LABEL_8:
}

- (void)_updateVirtualViewForProviderType:(int64_t)a3
{
  v34 = [(CKMacToolbarController *)self _providerForType:?];
  v5 = [(CKMacToolbarController *)self _cachedVirtualViewForProviderType:a3];
  if (v34 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v34 virtualView];
  }

  else
  {
    v6 = 0;
  }

  if (v6 != v5)
  {
    v7 = [v5 superview];
    v8 = [(CKMacToolbarController *)self view];

    if (v7 == v8)
    {
      [v5 removeFromSuperview];
    }

    [(CKMacToolbarController *)self _setVirtualView:v6 forProviderType:a3];
  }

  if (v34 && v6)
  {
    [v6 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = [(CKMacToolbarController *)self _virtualBackgroundViewForProviderType:a3];
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

    v30 = [v6 superview];
    v31 = [(CKMacToolbarController *)self view];

    if (v30 != v31)
    {
      v32 = [(CKMacToolbarController *)self view];
      [v32 addSubview:v6];
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
      [v6 setFrame:{v19, v21, v23, v25}];
      [v6 setNeedsLayout];
      [v6 layoutIfNeeded];
    }

    v33 = [(CKMacToolbarController *)self view];
    [v33 bringSubviewToFront:v6];
  }
}

- (id)_providerForType:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      v3 = [(CKMacToolbarController *)self inspectorItemProvider];
      break;
    case 2:
      v3 = [(CKMacToolbarController *)self secondaryItemProvider];
      break;
    case 1:
      v3 = [(CKMacToolbarController *)self primaryItemProvider];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (id)_cachedVirtualViewForProviderType:(int64_t)a3
{
  switch(a3)
  {
    case 3:
      v3 = [(CKMacToolbarController *)self inspectorProvidedVirtualView];
      break;
    case 2:
      v3 = [(CKMacToolbarController *)self secondaryProvidedVirtualView];
      break;
    case 1:
      v3 = [(CKMacToolbarController *)self primaryProvidedVirtualView];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (id)_virtualBackgroundViewForProviderType:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(CKMacToolbarController *)self secondaryVirtualBackgroundView];
  }

  else if (a3 == 1)
  {
    v3 = [(CKMacToolbarController *)self primaryVirtualBackgroundView];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setVirtualView:(id)a3 forProviderType:(int64_t)a4
{
  v6 = a3;
  switch(a4)
  {
    case 3:
      v7 = v6;
      [(CKMacToolbarController *)self setInspectorProvidedVirtualView:v6];
      break;
    case 2:
      v7 = v6;
      [(CKMacToolbarController *)self setSecondaryProvidedVirtualView:v6];
      break;
    case 1:
      v7 = v6;
      [(CKMacToolbarController *)self setPrimaryProvidedVirtualView:v6];
      break;
    default:
      goto LABEL_8;
  }

  v6 = v7;
LABEL_8:
}

- (BOOL)_shouldDisAllowTouchesToPassForProviderType:(int64_t)a3
{
  v3 = [(CKMacToolbarController *)self _providerForType:a3];
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 itemProviderDisablesTouches];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int64_t)_providerTypeForPointInsideVirtualView:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(CKMacToolbarController *)self primaryProvidedVirtualView];
  v9 = [(CKMacToolbarController *)self view];
  v10 = [(CKMacToolbarController *)self primaryProvidedVirtualView];
  [v9 convertPoint:v10 toView:{x, y}];
  v11 = [v8 pointInside:v7 withEvent:?];

  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v13 = [(CKMacToolbarController *)self secondaryProvidedVirtualView];
    v14 = [(CKMacToolbarController *)self view];
    v15 = [(CKMacToolbarController *)self secondaryProvidedVirtualView];
    [v14 convertPoint:v15 toView:{x, y}];
    v16 = [v13 pointInside:v7 withEvent:?];

    if (v16)
    {
      v12 = 2;
    }

    else
    {
      v17 = [(CKMacToolbarController *)self inspectorProvidedVirtualView];
      v18 = [(CKMacToolbarController *)self view];
      v19 = [(CKMacToolbarController *)self inspectorProvidedVirtualView];
      [v18 convertPoint:v19 toView:{x, y}];
      v20 = [v17 pointInside:v7 withEvent:?];

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

- (BOOL)macToolbarView:(id)a3 shouldAllowTouchesForPoint:(CGPoint)a4 andEvent:(id)a5
{
  y = a4.y;
  x = a4.x;
  v9 = a5;
  v10 = a3;
  v11 = [(CKMacToolbarController *)self view];

  if (v11 == v10)
  {
    v12 = ![(CKMacToolbarController *)self _shouldDisAllowTouchesToPassForProviderType:[(CKMacToolbarController *)self _providerTypeForPointInsideVirtualView:v9 withEvent:x, y]];
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
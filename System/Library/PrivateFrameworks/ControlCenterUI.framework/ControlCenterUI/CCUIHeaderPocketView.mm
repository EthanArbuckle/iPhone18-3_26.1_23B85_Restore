@interface CCUIHeaderPocketView
- (BOOL)hitTestedViewWantsToBlockGestures:(id)gestures;
- (BOOL)isDisplayingSensorStatus;
- (CATransform3D)contentTransformVelocity;
- (CCUIHeaderPocketView)initWithFrame:(CGRect)frame moduleInstanceManager:(id)manager;
- (CCUIHeaderPocketViewActionsDelegate)actionsDelegate;
- (CCUIHeaderPocketViewSensorAttributionDelegate)headerPocketViewDelegate;
- (CCUIModuleInstanceManager)moduleInstanceManager;
- (CCUIStatusBarDelegate)statusBarDelegate;
- (CGAffineTransform)compactScaleTransform;
- (CGAffineTransform)contentTransform;
- (CGRect)compactModeFrameForSensorView;
- (CGRect)contentBounds;
- (CGRect)sensorAttributionFrame;
- (UIEdgeInsets)edgeInsets;
- (double)_topButtonSymbolPointSize;
- (double)additionalHeightForOrientation:(int64_t)orientation;
- (double)maximumAvailableWidth;
- (double)yOriginForCompactControlForFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_configureTopButtons;
- (void)_dismissControlCenterAndLaunchGameOverlay;
- (void)_editButtonPrimaryActionTriggered;
- (void)_powerButtonPrimaryActionTriggered;
- (void)_preheatEntityIconsForAttributions:(id)attributions;
- (void)_updateAlpha;
- (void)_updateContentTransform;
- (void)addDynamicControlsViewControllerAsChildOfViewController:(id)controller;
- (void)addSensorAttributionViewControllerAsChildOfViewController:(id)controller;
- (void)dismissSensorAttributionExpandedView:(BOOL)view completion:(id)completion;
- (void)gameModeStateDidChange:(unint64_t)change;
- (void)handleCompactControlExpansionEvent;
- (void)inactiveMicrophoneAttributionChanged:(id)changed;
- (void)layoutSubviews;
- (void)presentSensorAttributionExpandedView:(BOOL)view;
- (void)removeDynamicControlsViewControllerFromParentViewController:(id)controller;
- (void)sensorAttributionsChanged:(id)changed;
- (void)setAdditionalContentAlphaMultiplier:(double)multiplier;
- (void)setAudioControlsEnabled:(BOOL)enabled videoControlsEnabled:(BOOL)controlsEnabled forBundleIdentifier:(id)identifier;
- (void)setAudioVideoModeSelectionAttribution:(id)attribution;
- (void)setBackgroundAlpha:(double)alpha;
- (void)setChevronAlpha:(double)alpha;
- (void)setChevronState:(unint64_t)state;
- (void)setCompactScaleTransform:(CGAffineTransform *)transform;
- (void)setContentAlphaMultiplier:(double)multiplier;
- (void)setContentTransform:(CGAffineTransform *)transform;
- (void)setContentTransformVelocity:(CATransform3D *)velocity;
- (void)setEdgeInsets:(UIEdgeInsets)insets;
- (void)setGameModeActivityDataProvider:(id)provider;
- (void)setMode:(unint64_t)mode orientationHint:(int64_t)hint;
- (void)setPresentationState:(unint64_t)state;
- (void)setSensorAttributionEdgeInsets:(UIEdgeInsets)insets;
- (void)setSensorStatusViewAlpha:(double)alpha;
- (void)setStatusBarAlpha:(double)alpha;
- (void)setStatusBarDelegate:(id)delegate;
- (void)setVerticalContentTranslation:(double)translation;
@end

@implementation CCUIHeaderPocketView

- (void)layoutSubviews
{
  v93 = *MEMORY[0x277D85DE8];
  v91.receiver = self;
  v91.super_class = CCUIHeaderPocketView;
  [(CCUIHeaderPocketView *)&v91 layoutSubviews];
  [(CCUIHeaderPocketView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CCUIHeaderPocketView *)self contentBounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  subviews = [(CCUIHeaderPocketView *)self subviews];
  v20 = [subviews countByEnumeratingWithState:&v87 objects:v92 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v88;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v88 != v22)
        {
          objc_enumerationMutation(subviews);
        }

        [*(*(&v87 + 1) + 8 * i) setFrame:{v12, v14, v16, v18}];
      }

      v21 = [subviews countByEnumeratingWithState:&v87 objects:v92 count:16];
    }

    while (v21);
  }

  [(UIView *)self->_headerBackgroundView setFrame:v4, v6, v8, v10];
  [(SBUIChevronView *)self->_headerChevronView sizeToFit];
  [(SBUIChevronView *)self->_headerChevronView setCenter:v12 + v16 * 0.5, 30.0];
  [(SBUIChevronView *)self->_headerChevronView setHidden:[(CCUIHeaderPocketView *)self isDisplayingSensorStatus]];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  v79 = v10;
  v80 = v8;
  v78 = v6;
  if ([currentDevice userInterfaceIdiom])
  {
    v25 = 0;
  }

  else
  {
    v25 = (self->_interfaceOrientation - 3) < 2;
  }

  v77 = v4;

  [(CCUIStatusBar *)self->_statusBar sizeThatFits:v16, v18];
  v27 = v26;
  v29 = v28;
  v30 = 0.0;
  if (v25)
  {
    v31 = CCUILandscapeGridLayoutTopMargin();
    v30 = v31 - CCUIStatusBarBaselineHeight();
  }

  v94.origin.x = v12;
  v94.origin.y = v14;
  v94.size.width = v16;
  v94.size.height = v18;
  MinX = CGRectGetMinX(v94);
  v95.origin.x = v12;
  v95.origin.y = v14;
  v95.size.width = v16;
  v95.size.height = v18;
  v33 = CGRectGetMaxY(v95) - v29 - v30;
  statusBar = self->_statusBar;
  v35 = *(MEMORY[0x277CBF2C0] + 16);
  v83 = *MEMORY[0x277CBF2C0];
  v84 = *MEMORY[0x277CBF2C0];
  v81 = *(MEMORY[0x277CBF2C0] + 32);
  v82 = v35;
  v85 = v35;
  v86 = v81;
  [(CCUIStatusBar *)statusBar setTransform:&v84];
  [(CCUIStatusBar *)self->_statusBar setFrame:MinX, v33, v27, v29];
  [(CCUIStatusBar *)self->_statusBar controlCenterApplyPrimaryContentShadow];
  statusLabelView = self->_statusLabelView;
  if (statusLabelView)
  {
    [(UIView *)statusLabelView frame];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    rect = v43;
    v96.origin.x = v77;
    v96.origin.y = v78;
    v96.size.height = v79;
    v96.size.width = v80;
    CGRectGetMaxY(v96);
    v97.origin.x = MinX;
    v97.origin.y = v33;
    v97.size.width = v27;
    v97.size.height = v29;
    CGRectGetMidY(v97);
    v98.origin.x = v38;
    v98.origin.y = v40;
    v98.size.width = v42;
    v98.size.height = rect;
    CGRectGetHeight(v98);
    UIRectCenteredYInRect();
    [(UIView *)self->_statusLabelView setFrame:?];
  }

  editButton = [(CCUIHeaderPocketView *)self editButton];
  powerButton = [(CCUIHeaderPocketView *)self powerButton];
  [(CCUIHeaderPocketView *)self _topButtonSymbolPointSize];
  v47 = v46;
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice2 userInterfaceIdiom])
  {

    v49 = v77;
  }

  else
  {
    v50 = SBFEffectiveHomeButtonType();

    v49 = v77;
    if (v50 != 2)
    {
      v59 = CCUILayoutEdgeInsetsForInterfaceOrientation(1) + -7.0;
      v100.origin.x = v77;
      v100.origin.y = v78;
      v100.size.height = v79;
      v57 = v80;
      v100.size.width = v80;
      v58 = CGRectGetMaxX(v100) + -5.0;
      v52 = 5.0;
      goto LABEL_21;
    }
  }

  CCUIEdgeInsetsRTLSwap();
  v52 = v51 + -7.0;
  CCUIEdgeInsetsRTLSwap();
  v54 = v53 + -7.0;
  currentDevice3 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice3 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v54 = v54 + 10.0;
    v52 = v52 + 6.0;
  }

  v99.origin.x = v49;
  v99.origin.y = v78;
  v99.size.height = v79;
  v57 = v80;
  v99.size.width = v80;
  v58 = CGRectGetMaxX(v99) - v54;
  v59 = 23.0;
LABEL_21:
  v60 = v47 + 14.0;
  v61 = v58 - v60;
  _shouldReverseLayoutDirection = [(CCUIHeaderPocketView *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v63 = v61;
  }

  else
  {
    v63 = v52;
  }

  if (!_shouldReverseLayoutDirection)
  {
    v52 = v61;
  }

  [editButton setFrame:{v63, v59, v60, v60}];
  [powerButton setFrame:{v52, v59, v60, v60}];
  [editButton setHidden:v25];
  [powerButton setHidden:v25];
  compactSensorAttributionControl = self->_compactSensorAttributionControl;
  v84 = v83;
  v85 = v82;
  v86 = v81;
  [(CCUISensorAttributionCompactControl *)compactSensorAttributionControl setTransform:&v84];
  v65 = self->_compactSensorAttributionControl;
  [(CCUIHeaderPocketView *)self compactModeFrameForSensorView];
  [(CCUISensorAttributionCompactControl *)v65 setFrame:?];
  [(CCUIStatusBar *)self->_statusBar _updateCompactTrailingStatusBarAvoidanceFrame];
  sensorAttributionExpandedViewController = [(CCUIHeaderPocketView *)self sensorAttributionExpandedViewController];
  view = [sensorAttributionExpandedViewController view];
  superview = [view superview];
  [superview frame];
  v70 = v69;
  v72 = v71;
  view2 = [sensorAttributionExpandedViewController view];
  [view2 setFrame:{0.0, 0.0, v70, v72}];

  dynamicControllsViewController = [(CCUIHeaderPocketView *)self dynamicControllsViewController];
  view3 = [dynamicControllsViewController view];
  v84 = v83;
  v85 = v82;
  v86 = v81;
  [view3 setTransform:&v84];
  [view3 setFrame:{0.0, self->_verticalContentTranslation + 0.0, v57, 140.0}];
  [(CCUIHeaderPocketView *)self _updateContentTransform];
}

- (CGRect)contentBounds
{
  [(CCUIHeaderPocketView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CCUIHeaderPocketView *)self edgeInsets];
  v12 = v6 + v11;
  v15 = v8 - (v13 + v14);
  v17 = v10 - (v11 + v16);
  v18 = v4 + v13;
  v19 = v12;
  v20 = v15;
  result.size.height = v17;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

- (UIEdgeInsets)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)isDisplayingSensorStatus
{
  if (CCUIFeatureEnabled())
  {
    dynamicControllsViewController = [(CCUIHeaderPocketView *)self dynamicControllsViewController];
    isDisplayingSensorAttribution = [dynamicControllsViewController isDisplayingSensorAttribution];

    return isDisplayingSensorAttribution;
  }

  else
  {
    compactSensorAttributionControl = self->_compactSensorAttributionControl;

    return [(CCUISensorAttributionCompactControl *)compactSensorAttributionControl isDisplayingSensorStatus];
  }
}

- (double)_topButtonSymbolPointSize
{
  v2 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D769D0]];
  [v2 pointSize];
  v4 = v3;

  return v4;
}

- (CGRect)compactModeFrameForSensorView
{
  CCUIEdgeInsetsRTLSwap();
  CCUIEdgeInsetsRTLSwap();
  [(CCUISensorAttributionCompactControl *)self->_compactSensorAttributionControl fixedHeight];
  [(CCUIHeaderPocketView *)self bounds];
  [(CCUIHeaderPocketView *)self bounds];
  UIRectGetCenter();
  [(CCUISensorAttributionCompactControl *)self->_compactSensorAttributionControl sizeThatFitsMaximumAllowableWidth];
  traitCollection = [(CCUIHeaderPocketView *)self traitCollection];
  [traitCollection displayScale];
  UIRectIntegralWithScale();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(CCUIHeaderPocketView *)self yOriginForCompactControlForFrame:v5, v7, v9, v11];
  v13 = v12;
  v14 = v5;
  v15 = v9;
  v16 = v11;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (void)_updateContentTransform
{
  headerChevronView = self->_headerChevronView;
  p_contentTransform = &self->_contentTransform;
  v5 = *&self->_contentTransform.c;
  v13 = *&self->_contentTransform.a;
  v14 = v5;
  v15 = *&self->_contentTransform.tx;
  [(SBUIChevronView *)headerChevronView setTransform:&v13];
  statusBar = self->_statusBar;
  v7 = *&self->_contentTransform.c;
  v13 = *&self->_contentTransform.a;
  v14 = v7;
  v15 = *&self->_contentTransform.tx;
  [(CCUIStatusBar *)statusBar setTransform:&v13];
  compactSensorAttributionControl = self->_compactSensorAttributionControl;
  v9 = *&self->_contentTransform.c;
  v13 = *&self->_contentTransform.a;
  v14 = v9;
  v15 = *&self->_contentTransform.tx;
  [(CCUISensorAttributionCompactControl *)compactSensorAttributionControl setTransform:&v13];
  dynamicControllsViewController = [(CCUIHeaderPocketView *)self dynamicControllsViewController];
  view = [dynamicControllsViewController view];
  v12 = *&p_contentTransform->c;
  v13 = *&p_contentTransform->a;
  v14 = v12;
  v15 = *&p_contentTransform->tx;
  [view setTransform:&v13];
}

- (CCUIHeaderPocketView)initWithFrame:(CGRect)frame moduleInstanceManager:(id)manager
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  managerCopy = manager;
  v16.receiver = self;
  v16.super_class = CCUIHeaderPocketView;
  height = [(CCUIHeaderPocketView *)&v16 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    objc_storeWeak(&height->_moduleInstanceManager, managerCopy);
    if ((CCUIFeatureEnabled() & 1) == 0)
    {
      v12 = [CCUISensorAttributionCompactControl alloc];
      v13 = [(CCUISensorAttributionCompactControl *)v12 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
      compactSensorAttributionControl = v11->_compactSensorAttributionControl;
      v11->_compactSensorAttributionControl = v13;

      [(CCUISensorAttributionCompactControl *)v11->_compactSensorAttributionControl setDelegate:v11];
      [(CCUIHeaderPocketView *)v11 addSubview:v11->_compactSensorAttributionControl];
    }

    [(CCUIHeaderPocketView *)v11 setChevronAlpha:1.0];
    [(CCUIHeaderPocketView *)v11 setStatusBarAlpha:1.0];
    [(CCUIHeaderPocketView *)v11 setSensorStatusViewAlpha:1.0];
    [(CCUIHeaderPocketView *)v11 setContentAlphaMultiplier:1.0];
    [(CCUIHeaderPocketView *)v11 setAdditionalContentAlphaMultiplier:1.0];
    [(CCUIHeaderPocketView *)v11 _configureTopButtons];
  }

  return v11;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  if (CCUIFeatureEnabled())
  {
    v14.receiver = self;
    v14.super_class = CCUIHeaderPocketView;
    v8 = [(CCUIHeaderPocketView *)&v14 hitTest:eventCopy withEvent:x, y];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CCUIHeaderPocketView;
    v8 = [(CCUIHeaderPocketView *)&v13 hitTest:eventCopy withEvent:x, y];

    if ([(CCUISensorAttributionCompactControl *)self->_compactSensorAttributionControl activeIndicatorsCount]>= 1)
    {
      [(CCUISensorAttributionCompactControl *)self->_compactSensorAttributionControl frame];
      v19 = CGRectInset(v18, -20.0, -20.0);
      v16.x = x;
      v16.y = y;
      if (CGRectContainsPoint(v19, v16))
      {
        v9 = self->_compactSensorAttributionControl;

        v8 = v9;
      }
    }

    eventCopy = [(CCUIHeaderPocketView *)self dynamicControllsViewController];
    view = [eventCopy view];
    [view frame];
    v17.x = x;
    v17.y = y;
    if (CGRectContainsPoint(v20, v17))
    {
      v11 = view;

      v8 = v11;
    }
  }

  return v8;
}

- (void)handleCompactControlExpansionEvent
{
  hasGameModeActivityOnly = [(CCUISensorAttributionExpandedViewController *)self->_sensorAttributionExpandedViewController hasGameModeActivityOnly];
  sensorAttributionExpandedViewController = self->_sensorAttributionExpandedViewController;
  if (hasGameModeActivityOnly)
  {
    [(CCUISensorAttributionExpandedViewController *)sensorAttributionExpandedViewController setExpanded:0 animated:1];

    [(CCUIHeaderPocketView *)self _dismissControlCenterAndLaunchGameOverlay];
  }

  else
  {

    [(CCUISensorAttributionExpandedViewController *)sensorAttributionExpandedViewController setExpanded:1 animated:1];
  }
}

- (double)maximumAvailableWidth
{
  [(CCUIHeaderPocketView *)self contentBounds];
  v3 = v2;
  CCUILayoutEdgeInsetsForInterfaceOrientation(1);
  CCUIEdgeInsetsRTLSwap();
  return v3 - v4 - v5;
}

- (BOOL)hitTestedViewWantsToBlockGestures:(id)gestures
{
  gesturesCopy = gestures;
  dynamicControllsViewController = [(CCUIHeaderPocketView *)self dynamicControllsViewController];
  view = [dynamicControllsViewController view];
  v8 = self->_compactSensorAttributionControl == gesturesCopy || view == gesturesCopy || self->_powerButton == gesturesCopy;

  return v8;
}

- (void)addSensorAttributionViewControllerAsChildOfViewController:(id)controller
{
  controllerCopy = controller;
  moduleInstanceManager = [(CCUIHeaderPocketView *)self moduleInstanceManager];
  v5 = [[CCUISensorAttributionExpandedViewController alloc] initWithModuleInstanceManager:moduleInstanceManager];
  [(CCUIHeaderPocketView *)self setSensorAttributionExpandedViewController:v5];
  view = [controllerCopy view];
  [controllerCopy bs_addChildViewController:v5 withSuperview:view];
}

- (void)addDynamicControlsViewControllerAsChildOfViewController:(id)controller
{
  controllerCopy = controller;
  if (CCUIFeatureEnabled())
  {
    v4 = [[CCUIDynamicControlsViewController alloc] initWithDelegate:self];
    [(CCUIHeaderPocketView *)self setDynamicControllsViewController:v4];
    [controllerCopy bs_addChildViewController:v4 withSuperview:self];
  }
}

- (void)removeDynamicControlsViewControllerFromParentViewController:(id)controller
{
  controllerCopy = controller;
  if (CCUIFeatureEnabled())
  {
    dynamicControllsViewController = [(CCUIHeaderPocketView *)self dynamicControllsViewController];
    [controllerCopy bs_removeChildViewController:dynamicControllsViewController];
    [(CCUIHeaderPocketView *)self setDynamicControllsViewController:0];
  }
}

- (CGRect)sensorAttributionFrame
{
  [(CCUISensorAttributionCompactControl *)self->_compactSensorAttributionControl frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setAudioVideoModeSelectionAttribution:(id)attribution
{
  objc_storeStrong(&self->_audioVideoModeSelectionAttribution, attribution);
  attributionCopy = attribution;
  displayName = [attributionCopy displayName];
  [(CCUISensorAttributionExpandedViewController *)self->_sensorAttributionExpandedViewController setAudioVideoHeaderTrailingText:displayName];
}

- (void)sensorAttributionsChanged:(id)changed
{
  v6 = CCUIFixSpecialAttributions(changed);
  [(CCUISensorAttributionCompactControl *)self->_compactSensorAttributionControl sensorAttributionsChanged:v6];
  [(CCUISensorAttributionExpandedViewController *)self->_sensorAttributionExpandedViewController sensorAttributionsChanged:v6];
  [(CCUIHeaderPocketView *)self setNeedsLayout];
  [(CCUIHeaderPocketView *)self _preheatEntityIconsForAttributions:v6];
  v4 = CCUIUniqueSensorAttributionEntitiesForSensorActivityData(v6, 1);
  dynamicControllsViewController = [(CCUIHeaderPocketView *)self dynamicControllsViewController];
  [dynamicControllsViewController sensorAttributionsChanged:v6 uniqueEntities:v4];
}

- (void)gameModeStateDidChange:(unint64_t)change
{
  [(CCUISensorAttributionCompactControl *)self->_compactSensorAttributionControl gameModeStateDidChange:change];

  [(CCUIHeaderPocketView *)self setNeedsLayout];
}

- (void)inactiveMicrophoneAttributionChanged:(id)changed
{
  changedCopy = changed;
  if (changedCopy)
  {
    v5 = changedCopy;
    v6 = [MEMORY[0x277CBEB98] setWithObject:changedCopy];
    v7 = CCUIFixSpecialAttributions(v6);
    anyObject = [v7 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  currentInactiveMicAttribution = self->_currentInactiveMicAttribution;
  self->_currentInactiveMicAttribution = anyObject;
  v10 = anyObject;

  [(CCUISensorAttributionCompactControl *)self->_compactSensorAttributionControl inactiveMicrophoneAttributionChanged:v10];

  [(CCUIHeaderPocketView *)self setNeedsLayout];
}

- (void)setGameModeActivityDataProvider:(id)provider
{
  objc_storeStrong(&self->_gameModeActivityDataProvider, provider);
  providerCopy = provider;
  [(CCUISensorAttributionExpandedViewController *)self->_sensorAttributionExpandedViewController setGameModeActivityDataProvider:providerCopy];
}

- (void)setAudioControlsEnabled:(BOOL)enabled videoControlsEnabled:(BOOL)controlsEnabled forBundleIdentifier:(id)identifier
{
  controlsEnabledCopy = controlsEnabled;
  enabledCopy = enabled;
  [(CCUIHeaderPocketView *)self setBundleIdentifierUsingAudioVideoControls:identifier];
  [(CCUISensorAttributionExpandedViewController *)self->_sensorAttributionExpandedViewController setAudioControlsEnabled:enabledCopy videoControlsEnabled:controlsEnabledCopy];

  [(CCUIHeaderPocketView *)self setNeedsLayout];
}

- (void)setSensorAttributionEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  self->_sensorAttributionEdgeInsets = insets;
  CCUIEdgeInsetsRTLSwap();
  v9 = v8;
  CCUIEdgeInsetsRTLSwap();
  v11 = v10;
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
  }

  else
  {
    v13 = self->_interfaceOrientation - 3;

    if (v13 <= 1)
    {
      window = [(CCUIHeaderPocketView *)self window];
      windowScene = [window windowScene];
      screen = [windowScene screen];

      [screen _referenceBounds];
      v11 = (v18 - v17) * 0.5;

      top = 0.0;
      v9 = v11;
      left = v11;
      bottom = 0.0;
      right = v11;
    }
  }

  if ((self->_interfaceOrientation - 3) > 1 || ([MEMORY[0x277D75418] currentDevice], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "userInterfaceIdiom"), v19, (v20 & 0xFFFFFFFFFFFFFFFBLL) == 1))
  {
    [(CCUIHeaderPocketView *)self bounds];
    v22 = v21 - v9 - v11;
  }

  else
  {
    v23 = CCUILayoutEdgeInsetsForInterfaceOrientation(self->_interfaceOrientation);
    v25 = v24;
    v27 = v26;
    [(CCUIHeaderPocketView *)self contentBounds];
    v22 = (CGRectGetWidth(v44) - v25 - v27) * 0.5;
  }

  [(CCUISensorAttributionCompactControl *)self->_compactSensorAttributionControl setMaximumAllowableWidth:v22];
  currentDevice2 = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    view = [(CCUISensorAttributionExpandedViewController *)self->_sensorAttributionExpandedViewController view];
    [(CCUIHeaderPocketView *)self bounds];
    [(CCUIHeaderPocketView *)self convertRect:view toView:?];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
    [view bounds];
    CGRectGetMaxY(v45);
    v46.origin.x = v32;
    v46.origin.y = v34;
    v46.size.width = v36;
    v46.size.height = v38;
    CGRectGetMaxY(v46);
    [view bounds];
    CGRectGetMaxX(v47);
    v48.origin.x = v32;
    v48.origin.y = v34;
    v48.size.width = v36;
    v48.size.height = v38;
    CGRectGetMaxX(v48);
    CCUIEdgeInsetsRTLSwap();
    top = v39;
    left = v40;
    bottom = v41;
    right = v42;
  }

  [(CCUISensorAttributionExpandedViewController *)self->_sensorAttributionExpandedViewController setEdgeInsets:top, left, bottom, right];

  [(CCUIHeaderPocketView *)self setNeedsLayout];
}

- (void)presentSensorAttributionExpandedView:(BOOL)view
{
  viewCopy = view;
  if (![(CCUIHeaderPocketView *)self isSensorAttributionViewControllerExpanded])
  {
    if ([(CCUISensorAttributionExpandedViewController *)self->_sensorAttributionExpandedViewController hasGameModeActivityOnly])
    {

      [(CCUIHeaderPocketView *)self _dismissControlCenterAndLaunchGameOverlay];
    }

    else
    {
      sensorAttributionExpandedViewController = self->_sensorAttributionExpandedViewController;

      [(CCUISensorAttributionExpandedViewController *)sensorAttributionExpandedViewController setExpanded:1 animated:viewCopy];
    }
  }
}

- (void)dismissSensorAttributionExpandedView:(BOOL)view completion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  if ([(CCUIHeaderPocketView *)self isSensorAttributionViewControllerExpanded])
  {
    [(CCUISensorAttributionExpandedViewController *)self->_sensorAttributionExpandedViewController setExpanded:0 animated:viewCopy];
  }

  v6 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v6 = completionCopy;
  }
}

- (void)setStatusBarDelegate:(id)delegate
{
  objc_storeWeak(&self->_statusBarDelegate, delegate);
  statusBar = self->_statusBar;
  statusBarDelegate = [(CCUIHeaderPocketView *)self statusBarDelegate];
  [(CCUIStatusBar *)statusBar setDelegate:statusBarDelegate];
}

- (void)setMode:(unint64_t)mode orientationHint:(int64_t)hint
{
  if (self->_mode == mode)
  {
    return;
  }

  self->_mode = mode;
  [(SBUIChevronView *)self->_headerChevronView removeFromSuperview];
  headerChevronView = self->_headerChevronView;
  self->_headerChevronView = 0;

  [(CCUIStatusBar *)self->_statusBar removeFromSuperview];
  statusBar = self->_statusBar;
  self->_statusBar = 0;

  mode = self->_mode;
  if (mode == 1)
  {
    v13 = 1;
    goto LABEL_6;
  }

  if (mode == 2)
  {
    v9 = objc_alloc(MEMORY[0x277D679A0]);
    blackColor = [MEMORY[0x277D75348] blackColor];
    v11 = [v9 initWithColor:blackColor];
    v12 = self->_headerChevronView;
    self->_headerChevronView = v11;

    [(SBUIChevronView *)self->_headerChevronView configureForLightStyle];
    [(CCUIHeaderPocketView *)self addSubview:self->_headerChevronView];
    v13 = 0;
LABEL_6:
    v14 = [CCUIStatusBar alloc];
    [(CCUIHeaderPocketView *)self bounds];
    v15 = [(CCUIStatusBar *)v14 initWithFrame:?];
    v16 = self->_statusBar;
    self->_statusBar = v15;

    [(CCUIStatusBar *)self->_statusBar setOrientation:hint];
    [(CCUIStatusBar *)self->_statusBar setAlignCompactAndExpandedStatusBars:v13];
    v17 = self->_statusBar;
    statusBarDelegate = [(CCUIHeaderPocketView *)self statusBarDelegate];
    [(CCUIStatusBar *)v17 setDelegate:statusBarDelegate];

    [(CCUIHeaderPocketView *)self addSubview:self->_statusBar];
  }

  [(CCUIStatusBar *)self->_statusBar prepareForPresentation];
  [(CCUIStatusBar *)self->_statusBar setNeedsLayout];
  [(CCUIStatusBar *)self->_statusBar layoutIfNeeded];
  [(CCUIHeaderPocketView *)self _updateAlpha];

  [(CCUIHeaderPocketView *)self _updateContentTransform];
}

- (void)setEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_edgeInsets.top, v3), vceqq_f64(*&self->_edgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_edgeInsets = insets;
    [(CCUIHeaderPocketView *)self setNeedsLayout];
  }
}

- (void)setBackgroundAlpha:(double)alpha
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_backgroundAlpha = alpha;
    headerBackgroundView = self->_headerBackgroundView;

    [(UIView *)headerBackgroundView setAlpha:alpha];
  }
}

- (void)setChevronAlpha:(double)alpha
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_chevronAlpha = alpha;

    [(CCUIHeaderPocketView *)self _updateAlpha];
  }
}

- (void)setStatusBarAlpha:(double)alpha
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_statusBarAlpha = alpha;

    [(CCUIHeaderPocketView *)self _updateAlpha];
  }
}

- (void)setSensorStatusViewAlpha:(double)alpha
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_sensorStatusViewAlpha = alpha;

    [(CCUIHeaderPocketView *)self _updateAlpha];
  }
}

- (void)setContentAlphaMultiplier:(double)multiplier
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_contentAlphaMultiplier = multiplier;

    [(CCUIHeaderPocketView *)self _updateAlpha];
  }
}

- (void)setAdditionalContentAlphaMultiplier:(double)multiplier
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_additionalContentAlphaMultiplier = multiplier;

    [(CCUIHeaderPocketView *)self _updateAlpha];
  }
}

- (void)setVerticalContentTranslation:(double)translation
{
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_verticalContentTranslation = translation;

    [(CCUIHeaderPocketView *)self setNeedsLayout];
  }
}

- (void)setContentTransform:(CGAffineTransform *)transform
{
  p_contentTransform = &self->_contentTransform;
  v6 = *&self->_contentTransform.c;
  *&t1.a = *&self->_contentTransform.a;
  *&t1.c = v6;
  *&t1.tx = *&self->_contentTransform.tx;
  v7 = *&transform->c;
  *&v10.a = *&transform->a;
  *&v10.c = v7;
  *&v10.tx = *&transform->tx;
  if (!CGAffineTransformEqualToTransform(&t1, &v10))
  {
    v8 = *&transform->a;
    v9 = *&transform->tx;
    *&p_contentTransform->c = *&transform->c;
    *&p_contentTransform->tx = v9;
    *&p_contentTransform->a = v8;
    [(CCUIHeaderPocketView *)self _updateContentTransform];
  }
}

- (CATransform3D)contentTransformVelocity
{
  v4 = [(CCUIStatusBar *)self->_statusBar _velocityForKey:@"transform"];
  if (v4)
  {
    v6 = v4;
    [v4 CATransform3DValue];
    v4 = v6;
  }

  else
  {
    *&retstr->m41 = 0u;
    *&retstr->m43 = 0u;
    *&retstr->m31 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m21 = 0u;
    *&retstr->m23 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m13 = 0u;
  }

  return result;
}

- (void)setContentTransformVelocity:(CATransform3D *)velocity
{
  v4 = *&velocity->m33;
  v11[4] = *&velocity->m31;
  v11[5] = v4;
  v5 = *&velocity->m43;
  v11[6] = *&velocity->m41;
  v11[7] = v5;
  v6 = *&velocity->m13;
  v11[0] = *&velocity->m11;
  v11[1] = v6;
  v7 = *&velocity->m23;
  v11[2] = *&velocity->m21;
  v11[3] = v7;
  v8 = [MEMORY[0x277CCAE60] valueWithCATransform3D:v11];
  [(SBUIChevronView *)self->_headerChevronView _setVelocity:v8 forKey:@"transform"];
  [(CCUIStatusBar *)self->_statusBar _setVelocity:v8 forKey:@"transform"];
  [(CCUISensorAttributionCompactControl *)self->_compactSensorAttributionControl _setVelocity:v8 forKey:@"transform"];
  dynamicControllsViewController = [(CCUIHeaderPocketView *)self dynamicControllsViewController];
  view = [dynamicControllsViewController view];
  [view _setVelocity:v8 forKey:@"transform"];
}

- (CGAffineTransform)compactScaleTransform
{
  result = self->_statusBar;
  if (result)
  {
    return [(CGAffineTransform *)result compactScaleTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (void)setCompactScaleTransform:(CGAffineTransform *)transform
{
  statusBar = self->_statusBar;
  v4 = *&transform->c;
  v5[0] = *&transform->a;
  v5[1] = v4;
  v5[2] = *&transform->tx;
  [(CCUIStatusBar *)statusBar setCompactScaleTransform:v5];
}

- (void)setChevronState:(unint64_t)state
{
  if (state <= 1)
  {
    [SBUIChevronView setState:"setState:animated:" animated:?];
  }
}

- (void)setPresentationState:(unint64_t)state
{
  presentationState = self->_presentationState;
  self->_presentationState = state;
  if (state == 1 && !presentationState)
  {
    [(CCUIHeaderPocketView *)self additionalHeightForOrientation:1];
    v7 = v6;
    [(CCUIStatusBar *)self->_statusBar verticalSecondaryServiceDelta];
    self->_originalSensorHeightAtPresentation = v7 - v8;
    self->_sensorStatusChangedWhileVisible = 0;
    currentInactiveMicAttribution = self->_currentInactiveMicAttribution;

    objc_storeStrong(&self->_previousInactiveMicAttribution, currentInactiveMicAttribution);
  }
}

- (double)additionalHeightForOrientation:(int64_t)orientation
{
  currentDevice2 = (orientation - 1);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (currentDevice2 < 2 || (result = 0.0, userInterfaceIdiom == 1))
  {
    presentationState = [(CCUIHeaderPocketView *)self presentationState];
    isDisplayingSensorStatus = [(CCUIHeaderPocketView *)self isDisplayingSensorStatus];
    [(CCUIStatusBar *)self->_statusBar verticalSecondaryServiceDelta];
    v14 = v13;
    CCUIReferenceScreenBounds();
    Width = CGRectGetWidth(v26);
    if (Width >= 1024.0)
    {
      currentDevice2 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] == 1)
      {
        v16 = 28.0;
        if (SBFEffectiveHomeButtonType() != 2)
        {
          goto LABEL_40;
        }
      }
    }

    CCUIReferenceScreenBounds();
    v17 = CGRectGetWidth(v27);
    if (v17 >= 1024.0 && ([MEMORY[0x277D75418] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "userInterfaceIdiom") == 1) && SBFEffectiveHomeButtonType() == 2)
    {

      v16 = 28.0;
    }

    else
    {
      CCUIReferenceScreenBounds();
      v18 = CGRectGetWidth(v28);
      if (v18 >= 834.0)
      {
        currentDevice3 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice3 userInterfaceIdiom] == 1)
        {
          v16 = 28.0;
          if (SBFEffectiveHomeButtonType() == 2)
          {
            goto LABEL_36;
          }
        }
      }

      CCUIReferenceScreenBounds();
      v19 = CGRectGetWidth(v29);
      if (v19 >= 834.0)
      {
        currentDevice4 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice4 userInterfaceIdiom] == 1)
        {
          v16 = 28.0;
          if (SBFEffectiveHomeButtonType() != 2)
          {
            goto LABEL_34;
          }
        }
      }

      currentDevice5 = [MEMORY[0x277D75418] currentDevice];
      v16 = 28.0;
      if ([currentDevice5 userInterfaceIdiom] != 1)
      {
        CCUIReferenceScreenBounds();
        v16 = 20.0;
        if (CGRectGetWidth(v30) < 430.0)
        {
          CCUIReferenceScreenBounds();
          v16 = 0.0;
          if (CGRectGetWidth(v31) < 428.0)
          {
            CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v32) < 420.0 || SBFEffectiveHomeButtonType() != 2)
            {
              CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v33) < 414.0 || (v16 = -10.0, SBFEffectiveHomeButtonType() != 2))
              {
                CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v34) >= 414.0)
                {
                  v16 = 49.5;
                }

                else
                {
                  CCUIReferenceScreenBounds();
                  v16 = 16.0;
                  if (CGRectGetWidth(v35) < 393.0)
                  {
                    CCUIReferenceScreenBounds();
                    v16 = 30.0;
                    if (CGRectGetWidth(v36) < 390.0)
                    {
                      CCUIReferenceScreenBounds();
                      if (CGRectGetWidth(v37) < 375.0 || SBFEffectiveHomeButtonType() != 2)
                      {
                        CCUIReferenceScreenBounds();
                        v16 = 0.0;
                        if (CGRectGetWidth(v38) < 375.0)
                        {
                          CCUIReferenceScreenBounds();
                          if (CGRectGetWidth(v39) < 320.0)
                          {
                            v16 = 40.0;
                          }

                          else
                          {
                            v16 = 0.0;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (v19 >= 834.0)
      {
LABEL_34:
      }

      if (v18 >= 834.0)
      {
LABEL_36:
      }

      if (v17 >= 1024.0)
      {
      }
    }

    if (Width >= 1024.0)
    {
LABEL_40:
    }

    v22 = self->_cachedIsDisplayingSensorStatus != isDisplayingSensorStatus && presentationState - 1 < 2;
    if (presentationState && presentationState != 3 && self->_cachedVerticalSecondaryServiceDelta == v14 && !v22)
    {
      return self->_cachedAdditionalHeight;
    }

    if (v22)
    {
      self->_sensorStatusChangedWhileVisible = 1;
      if (isDisplayingSensorStatus)
      {
        v23 = v16;
      }

      else
      {
        v23 = 0.0;
      }

LABEL_64:
      result = v14 + v23;
      self->_cachedVerticalSecondaryServiceDelta = v14;
      self->_cachedIsDisplayingSensorStatus = isDisplayingSensorStatus;
      self->_cachedAdditionalHeight = v14 + v23;
      return result;
    }

    if (isDisplayingSensorStatus)
    {
      v23 = v16;
    }

    else
    {
      v23 = 0.0;
    }

    if (presentationState != 3)
    {
      goto LABEL_64;
    }

    if (self->_sensorStatusChangedWhileVisible)
    {
      currentInactiveMicAttribution = self->_currentInactiveMicAttribution;
      if ((currentInactiveMicAttribution != 0) == (self->_previousInactiveMicAttribution == 0))
      {
        self->_originalSensorHeightAtPresentation = 0.0;
        if (currentInactiveMicAttribution)
        {
          v25 = self->_currentInactiveMicAttribution;
        }

        else
        {
          v25 = 0;
        }

        objc_storeStrong(&self->_previousInactiveMicAttribution, v25);
      }
    }

    else
    {
      v23 = 0.0;
    }

    return v14 + v23 + self->_originalSensorHeightAtPresentation;
  }

  return result;
}

- (void)_configureTopButtons
{
  [(CCUIHeaderPocketView *)self _topButtonSymbolPointSize];
  v3 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:2 scale:?];
  objc_initWeak(&location, self);
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:@"plus" withConfiguration:v3];
  [plainButtonConfiguration setImage:v5];
  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [plainButtonConfiguration setBaseForegroundColor:systemWhiteColor];

  v7 = MEMORY[0x277D750C8];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __44__CCUIHeaderPocketView__configureTopButtons__block_invoke;
  v19 = &unk_278381D78;
  objc_copyWeak(&v20, &location);
  v8 = [v7 actionWithHandler:&v16];
  v9 = [CCUIAccessoryButton buttonWithConfiguration:plainButtonConfiguration primaryAction:v8, v16, v17, v18, v19];

  v10 = objc_alloc_init(MEMORY[0x277D756C8]);
  [v9 addInteraction:v10];

  [v9 setShowsLargeContentViewer:1];
  [v9 setScalesLargeContentImage:1];
  [(CCUIHeaderPocketView *)self addSubview:v9];
  [(CCUIHeaderPocketView *)self setEditButton:v9];
  v11 = objc_alloc_init(CCUIPowerButton);
  v12 = [[CCUIPowerButtonGlyphView alloc] initWithSymbolConfiguration:v3];
  [(CSProminentButtonControl *)v11 setGlyphView:v12];
  [(CSProminentButtonControl *)v11 setShouldAnimateBackgroundDuringInteraction:1];
  [(CCUIPowerButton *)v11 addTarget:self action:sel__powerButtonPrimaryActionTriggered forControlEvents:0x2000];
  v13 = objc_alloc_init(MEMORY[0x277D756C8]);
  [(CCUIPowerButton *)v11 addInteraction:v13];

  [(CCUIPowerButton *)v11 setShowsLargeContentViewer:1];
  [(CCUIPowerButton *)v11 setScalesLargeContentImage:1];
  imageView = [(CCUIPowerButtonGlyphView *)v12 imageView];
  largeContentImage = [imageView largeContentImage];
  [(CCUIPowerButton *)v11 setLargeContentImage:largeContentImage];

  [(CCUIHeaderPocketView *)self addSubview:v11];
  [(CCUIHeaderPocketView *)self setPowerButton:v11];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __44__CCUIHeaderPocketView__configureTopButtons__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _editButtonPrimaryActionTriggered];
}

- (void)_editButtonPrimaryActionTriggered
{
  actionsDelegate = [(CCUIHeaderPocketView *)self actionsDelegate];
  [actionsDelegate didTriggerEditButtonPrimaryAction];
}

- (void)_powerButtonPrimaryActionTriggered
{
  actionsDelegate = [(CCUIHeaderPocketView *)self actionsDelegate];
  [actionsDelegate didTriggerPowerButtonPrimaryAction];
}

- (void)_updateAlpha
{
  v3 = self->_contentAlphaMultiplier * self->_additionalContentAlphaMultiplier;
  [(SBUIChevronView *)self->_headerChevronView setAlpha:v3 * self->_chevronAlpha];
  [(CCUIStatusBar *)self->_statusBar setAlpha:v3 * self->_statusBarAlpha];
  v4 = v3 * self->_sensorStatusViewAlpha;
  [(CCUISensorAttributionCompactControl *)self->_compactSensorAttributionControl setAlpha:v4];
  dynamicControllsViewController = [(CCUIHeaderPocketView *)self dynamicControllsViewController];
  view = [dynamicControllsViewController view];
  [view setAlpha:v4];
  [(UIButton *)self->_editButton setAlpha:v4];
  [(CCUIPowerButton *)self->_powerButton setAlpha:v4];
}

- (void)_preheatEntityIconsForAttributions:(id)attributions
{
  v15 = *MEMORY[0x277D85DE8];
  attributionsCopy = attributions;
  v4 = +[CCUISensorEntityIconCache sharedInstance];
  v5 = CCUIUniqueSensorAttributionEntitiesForSensorActivityData(attributionsCopy, 1);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 preheatImageForSensorEntity:*(*(&v10 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_dismissControlCenterAndLaunchGameOverlay
{
  mEMORY[0x277CFC828] = [MEMORY[0x277CFC828] sharedService];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __65__CCUIHeaderPocketView__dismissControlCenterAndLaunchGameOverlay__block_invoke;
  v4[3] = &unk_278382358;
  objc_copyWeak(&v5, &location);
  [mEMORY[0x277CFC828] handleControlCenterOperationType:2 completionHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __65__CCUIHeaderPocketView__dismissControlCenterAndLaunchGameOverlay__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained gameModeActivityDataProvider];
  v7 = [v2 activityData];

  v3 = [v7 allObjects];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = objc_alloc_init(CCUIGameOverlayMediator);
    v6 = [v4 bundleIdentifier];
    [(CCUIGameOverlayMediator *)v5 launchOverlayForGameBundleIdentifier:v6];
  }
}

- (double)yOriginForCompactControlForFrame:(CGRect)frame
{
  Height = CGRectGetHeight(frame);
  [(CCUIHeaderPocketView *)self contentBounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(CCUIStatusBar *)self->_statusBar sizeThatFits:v12, v14];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if (![currentDevice userInterfaceIdiom] && (self->_interfaceOrientation - 3) <= 1)
  {
    CCUILandscapeGridLayoutTopMargin();
    CCUIStatusBarBaselineHeight();
  }

  v49.origin.x = v9;
  v49.origin.y = v11;
  v49.size.width = v13;
  v49.size.height = v15;
  CGRectGetMinX(v49);
  v50.origin.x = v9;
  v50.origin.y = v11;
  v50.size.width = v13;
  v50.size.height = v15;
  CGRectGetMaxY(v50);
  if (self->_mode != 2)
  {
    v19 = Height * 0.5;
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];

    if (userInterfaceIdiom == 1)
    {
      v17 = -v19;
      goto LABEL_118;
    }

    v48 = v19;
    currentDevice3 = (self->_interfaceOrientation - 3);
    CCUIReferenceScreenBounds();
    Width = CGRectGetWidth(v58);
    v46 = Width;
    if (currentDevice3 > 1)
    {
      if (Width >= 1024.0)
      {
        currentDevice3 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice3 userInterfaceIdiom] == 1)
        {
          v24 = 30.0;
          if (SBFEffectiveHomeButtonType() != 2)
          {
            goto LABEL_116;
          }
        }
      }

      CCUIReferenceScreenBounds();
      v44 = CGRectGetWidth(v60);
      if (v44 >= 1024.0)
      {
        userInterfaceIdiom = [MEMORY[0x277D75418] currentDevice];
        if ([userInterfaceIdiom userInterfaceIdiom] == 1)
        {
          v24 = 30.0;
          if (SBFEffectiveHomeButtonType() == 2)
          {
LABEL_114:

LABEL_115:
            if (v46 < 1024.0)
            {
LABEL_117:
              v17 = v24 - v48;
              goto LABEL_118;
            }

LABEL_116:

            goto LABEL_117;
          }
        }
      }

      CCUIReferenceScreenBounds();
      v42 = CGRectGetWidth(v61);
      if (v42 < 834.0 || ([MEMORY[0x277D75418] currentDevice], currentDevice6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(currentDevice6, "userInterfaceIdiom") != 1) || (v24 = 30.0, SBFEffectiveHomeButtonType() != 2))
      {
        CCUIReferenceScreenBounds();
        v40 = CGRectGetWidth(v62);
        if (v40 >= 834.0)
        {
          currentDevice4 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice4 userInterfaceIdiom] == 1)
          {
            v24 = 30.0;
            if (SBFEffectiveHomeButtonType() != 2)
            {
LABEL_110:

LABEL_111:
              if (v42 < 834.0)
              {
                goto LABEL_113;
              }

              goto LABEL_112;
            }
          }
        }

        currentDevice5 = [MEMORY[0x277D75418] currentDevice];
        v24 = 30.0;
        if ([currentDevice5 userInterfaceIdiom] == 1)
        {
          goto LABEL_109;
        }

        CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v63) < 430.0)
        {
          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v64) >= 428.0)
          {
            goto LABEL_109;
          }

          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v65) >= 420.0 && SBFEffectiveHomeButtonType() == 2)
          {
            v24 = 66.0;
            goto LABEL_109;
          }

          CCUIReferenceScreenBounds();
          v39 = 0x4079E00000000000;
          if (CGRectGetWidth(v85) >= 414.0 && SBFEffectiveHomeButtonType() == 2)
          {
            goto LABEL_109;
          }

          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v86) >= 414.0)
          {
            goto LABEL_109;
          }

          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v87) < 393.0)
          {
            CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v88) < 390.0)
            {
              CCUIReferenceScreenBounds();
              v39 = 0x4077700000000000;
              if (CGRectGetWidth(v89) < 375.0 || SBFEffectiveHomeButtonType() != 2)
              {
                CCUIReferenceScreenBounds();
                v24 = 6.0;
                if (CGRectGetWidth(v90) < 375.0)
                {
                  CCUIReferenceScreenBounds();
                  v28 = CGRectGetWidth(v91) < 320.0;
                  v29 = 12.0;
                  v30 = 6.0;
LABEL_104:
                  if (v28)
                  {
                    v24 = v29;
                  }

                  else
                  {
                    v24 = v30;
                  }
                }
              }
            }

LABEL_109:

            if (v40 < 834.0)
            {
              goto LABEL_111;
            }

            goto LABEL_110;
          }
        }

        *&v31 = 46.0;
LABEL_108:
        v24 = *&v31;
        goto LABEL_109;
      }
    }

    else
    {
      if (Width >= 1024.0)
      {
        currentDevice3 = [MEMORY[0x277D75418] currentDevice];
        if ([currentDevice3 userInterfaceIdiom] == 1)
        {
          v24 = 0.0;
          if (SBFEffectiveHomeButtonType() != 2)
          {
            goto LABEL_116;
          }
        }
      }

      CCUIReferenceScreenBounds();
      v25 = CGRectGetWidth(v59);
      if (v25 >= 1024.0)
      {
        userInterfaceIdiom = [MEMORY[0x277D75418] currentDevice];
        if ([userInterfaceIdiom userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() == 2)
        {

          v24 = 0.0;
          goto LABEL_115;
        }
      }

      v44 = v25;
      CCUIReferenceScreenBounds();
      v42 = CGRectGetWidth(v66);
      if (v42 < 834.0 || ([MEMORY[0x277D75418] currentDevice], currentDevice6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(currentDevice6, "userInterfaceIdiom") != 1) || (v24 = 0.0, SBFEffectiveHomeButtonType() != 2))
      {
        CCUIReferenceScreenBounds();
        v27 = CGRectGetWidth(v67);
        if (v27 >= 834.0)
        {
          currentDevice4 = [MEMORY[0x277D75418] currentDevice];
          if ([currentDevice4 userInterfaceIdiom] == 1 && SBFEffectiveHomeButtonType() != 2)
          {

            v24 = 0.0;
            goto LABEL_111;
          }
        }

        v40 = v27;
        currentDevice5 = [MEMORY[0x277D75418] currentDevice];
        v24 = 0.0;
        if ([currentDevice5 userInterfaceIdiom] == 1)
        {
          goto LABEL_109;
        }

        CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v68) >= 430.0)
        {
          *&v31 = 38.0;
        }

        else
        {
          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v69) >= 428.0)
          {
            *&v31 = 36.0;
          }

          else
          {
            CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v70) >= 420.0)
            {
              v24 = 30.0;
              if (SBFEffectiveHomeButtonType() == 2)
              {
                goto LABEL_109;
              }
            }

            CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v71) < 414.0 || SBFEffectiveHomeButtonType() != 2)
            {
              CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v72) >= 414.0)
              {
                v24 = 23.5;
                goto LABEL_109;
              }

              CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v73) < 393.0)
              {
                CCUIReferenceScreenBounds();
                if (CGRectGetWidth(v74) >= 390.0)
                {
                  v24 = 20.5;
                  goto LABEL_109;
                }

                CCUIReferenceScreenBounds();
                v39 = 0x4077700000000000;
                if (CGRectGetWidth(v75) < 375.0 || (v24 = 30.0, SBFEffectiveHomeButtonType() != 2))
                {
                  CCUIReferenceScreenBounds();
                  v24 = 8.0;
                  if (CGRectGetWidth(v76) < 375.0)
                  {
                    CCUIReferenceScreenBounds();
                    v28 = CGRectGetWidth(v77) < 320.0;
                    v29 = 20.0;
                    v30 = 8.0;
                    goto LABEL_104;
                  }
                }

                goto LABEL_109;
              }
            }

            *&v31 = 34.0;
          }
        }

        goto LABEL_108;
      }
    }

LABEL_112:

LABEL_113:
    if (v44 < 1024.0)
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  v17 = 12.0;
  if ((self->_interfaceOrientation - 3) < 2)
  {
    goto LABEL_118;
  }

  CCUIReferenceScreenBounds();
  v47 = CGRectGetWidth(v51);
  if (v47 >= 1024.0)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      v17 = 30.0;
      if (SBFEffectiveHomeButtonType() != 2)
      {
        goto LABEL_92;
      }
    }
  }

  CCUIReferenceScreenBounds();
  v45 = CGRectGetWidth(v52);
  if (v45 < 1024.0 || ([MEMORY[0x277D75418] currentDevice], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "userInterfaceIdiom") != 1) || (v17 = 30.0, SBFEffectiveHomeButtonType() != 2))
  {
    CCUIReferenceScreenBounds();
    v43 = CGRectGetWidth(v53);
    if (v43 >= 834.0)
    {
      currentDevice6 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice6 userInterfaceIdiom] == 1)
      {
        v17 = 30.0;
        if (SBFEffectiveHomeButtonType() == 2)
        {
LABEL_88:

LABEL_89:
          if (v45 < 1024.0)
          {
            goto LABEL_91;
          }

          goto LABEL_90;
        }
      }
    }

    CCUIReferenceScreenBounds();
    v41 = CGRectGetWidth(v54);
    if (v41 >= 834.0)
    {
      currentDevice4 = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice4 userInterfaceIdiom] == 1)
      {
        v17 = 30.0;
        if (SBFEffectiveHomeButtonType() != 2)
        {
LABEL_86:

LABEL_87:
          if (v43 < 834.0)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }
      }
    }

    currentDevice7 = [MEMORY[0x277D75418] currentDevice];
    v17 = 30.0;
    if ([currentDevice7 userInterfaceIdiom] != 1)
    {
      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v55) >= 430.0)
      {
        goto LABEL_84;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v56) >= 428.0)
      {
        goto LABEL_85;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v57) >= 420.0 && SBFEffectiveHomeButtonType() == 2)
      {
        v17 = 66.0;
        goto LABEL_85;
      }

      CCUIReferenceScreenBounds();
      if (CGRectGetWidth(v78) < 414.0 || SBFEffectiveHomeButtonType() != 2)
      {
        CCUIReferenceScreenBounds();
        if (CGRectGetWidth(v79) < 414.0)
        {
          CCUIReferenceScreenBounds();
          if (CGRectGetWidth(v80) < 393.0)
          {
            CCUIReferenceScreenBounds();
            if (CGRectGetWidth(v81) < 390.0)
            {
              CCUIReferenceScreenBounds();
              if (CGRectGetWidth(v82) < 375.0 || SBFEffectiveHomeButtonType() != 2)
              {
                CCUIReferenceScreenBounds();
                v17 = 6.0;
                if (CGRectGetWidth(v83) < 375.0)
                {
                  CCUIReferenceScreenBounds();
                  if (CGRectGetWidth(v84) < 320.0)
                  {
                    v17 = 12.0;
                  }

                  else
                  {
                    v17 = 6.0;
                  }
                }
              }
            }

            goto LABEL_85;
          }

LABEL_84:
          v17 = 46.0;
        }
      }
    }

LABEL_85:

    if (v41 < 834.0)
    {
      goto LABEL_87;
    }

    goto LABEL_86;
  }

LABEL_90:

LABEL_91:
  if (v47 >= 1024.0)
  {
LABEL_92:
  }

LABEL_118:
  UIRectGetCenter();
  [(CCUIStatusBar *)self->_statusBar verticalSecondaryServiceDelta];
  UIRectCenteredXInRect();
  if (SBFEffectiveHomeButtonType() == 2 || ([MEMORY[0x277D75418] currentDevice], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "userInterfaceIdiom"), v32, v33))
  {
    currentDevice8 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice8 userInterfaceIdiom];

    if (userInterfaceIdiom2 == 1)
    {
      editButton = [(CCUIHeaderPocketView *)self editButton];
      [editButton frame];
      v17 = CGRectGetMaxY(v92) + 5.0;
    }

    else
    {
      UIRectCenteredAboutPoint();
      v17 = v37;
    }
  }

  return v17 + self->_verticalContentTranslation;
}

- (CCUIStatusBarDelegate)statusBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarDelegate);

  return WeakRetained;
}

- (CGAffineTransform)contentTransform
{
  v3 = *&self[15].tx;
  *&retstr->a = *&self[15].c;
  *&retstr->c = v3;
  *&retstr->tx = *&self[16].a;
  return self;
}

- (CCUIHeaderPocketViewSensorAttributionDelegate)headerPocketViewDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_headerPocketViewDelegate);

  return WeakRetained;
}

- (CCUIHeaderPocketViewActionsDelegate)actionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionsDelegate);

  return WeakRetained;
}

- (CCUIModuleInstanceManager)moduleInstanceManager
{
  WeakRetained = objc_loadWeakRetained(&self->_moduleInstanceManager);

  return WeakRetained;
}

@end
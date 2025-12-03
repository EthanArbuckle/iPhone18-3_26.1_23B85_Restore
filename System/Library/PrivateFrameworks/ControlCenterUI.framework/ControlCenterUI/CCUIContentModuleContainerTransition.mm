@interface CCUIContentModuleContainerTransition
- (CCUIContentModuleContainerViewController)viewController;
- (CGRect)contentRestOverrideFrame;
- (void)_removeMatchMoveAnimationFromTargetView:(id)view;
- (void)_setupMatchMoveAnimationWithSourceView:(id)view targetView:(id)targetView;
- (void)performTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView;
- (void)prepareTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView;
- (void)transitionDidEnd:(BOOL)end;
@end

@implementation CCUIContentModuleContainerTransition

- (void)prepareTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  containerViewCopy = containerView;
  toViewCopy = toView;
  [containerViewCopy addSubview:toViewCopy];
  [containerViewCopy bounds];
  [toViewCopy setFrame:?];

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  appearanceTransition = self->_appearanceTransition;
  [WeakRetained setExpanded:appearanceTransition];
  contentViewController = [WeakRetained contentViewController];
  if (objc_opt_respondsToSelector())
  {
    [contentViewController willTransitionToExpandedContentMode:appearanceTransition];
  }

  view = [contentViewController view];
  if (objc_opt_respondsToSelector())
  {
    [view contentModuleWillTransitionToExpandedContentMode:appearanceTransition];
  }

  sendExpandModuleTransitionNotificationForSubviews(view, appearanceTransition);
  [(CCUIContentModuleContainerTransition *)self contentRestOverrideFrame];
  if (CGRectIsEmpty(v29))
  {
    v12 = objc_loadWeakRetained(&self->_viewController);
    [v12 _contentFrameForRestState];
    v14 = v13;
    v16 = v15;
  }

  else
  {
    [(CCUIContentModuleContainerTransition *)self contentRestOverrideFrame];
    v14 = v17;
    v16 = v18;
  }

  if (appearanceTransition)
  {
    [WeakRetained _contentBoundsForExpandedState];
    v20 = v19;
    v22 = v21;
    transitionCoordinator = [WeakRetained transitionCoordinator];
    [contentViewController viewWillTransitionToSize:transitionCoordinator withTransitionCoordinator:{v20, v22}];

    [(CCUIContentModuleContainerTransition *)self _removeMatchMoveAnimationFromTargetView:containerViewCopy];
  }

  else
  {
    transitionCoordinator2 = [WeakRetained transitionCoordinator];
    [contentViewController viewWillTransitionToSize:transitionCoordinator2 withTransitionCoordinator:{v14, v16}];

    v25 = containerViewCopy;
    _contentSourceView = [WeakRetained _contentSourceView];
    [(CCUIContentModuleContainerTransition *)self _setupMatchMoveAnimationWithSourceView:_contentSourceView targetView:v25];
  }
}

- (void)performTransitionFromView:(id)view toView:(id)toView containerView:(id)containerView
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  delegate = [WeakRetained delegate];
  contentContainerView = [WeakRetained contentContainerView];
  [(CCUIContentModuleContainerTransition *)self contentRestOverrideFrame];
  if (CGRectIsEmpty(v35))
  {
    v9 = objc_loadWeakRetained(&self->_viewController);
    [v9 _contentFrameForRestState];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
  }

  else
  {
    [(CCUIContentModuleContainerTransition *)self contentRestOverrideFrame];
    v11 = v18;
    v13 = v19;
    v15 = v20;
    v17 = v21;
  }

  appearanceTransition = self->_appearanceTransition;
  v23 = *MEMORY[0x277CFC8F8];
  v24 = os_signpost_enabled(*MEMORY[0x277CFC8F8]);
  if (appearanceTransition)
  {
    if (v24)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21E9F5000, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CCUI_MODULE_PRESENTATION_BEGIN", " enableTelemetry=YES ", buf, 2u);
    }

    kdebug_trace();
    if (gSignpostListener)
    {
      [gSignpostListener didReceiveSignpost:5];
    }

    contentModule = [WeakRetained contentModule];
    [delegate contentModuleContainerViewController:WeakRetained willOpenExpandedModule:contentModule];

    v26 = MEMORY[0x277D75D18];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __87__CCUIContentModuleContainerTransition_performTransitionFromView_toView_containerView___block_invoke;
    v28[3] = &unk_278382DA8;
    v29 = contentContainerView;
    v30 = v11;
    v31 = v13;
    v32 = v15;
    v33 = v17;
    [v26 performWithoutAnimation:v28];
    [WeakRetained transitionToExpandedMode:1];
  }

  else
  {
    if (v24)
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21E9F5000, v23, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CCUI_MODULE_DISMISSAL_BEGIN", " enableTelemetry=YES ", buf, 2u);
    }

    kdebug_trace();
    if (gSignpostListener)
    {
      [gSignpostListener didReceiveSignpost:7];
    }

    [MEMORY[0x277CD9FF0] setFrameStallSkipRequest:1];
    contentModule2 = [WeakRetained contentModule];
    [delegate contentModuleContainerViewController:WeakRetained willCloseExpandedModule:contentModule2];

    [contentContainerView setFrame:{v11, v13, v15, v17}];
    [WeakRetained transitionToExpandedMode:0];
  }
}

- (void)transitionDidEnd:(BOOL)end
{
  if (end)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    contentModule = [WeakRetained contentModule];
    delegate = [WeakRetained delegate];
    [WeakRetained _didEndTransitionWithContentModuleContainerTransition:self completed:1];
    contentViewController = [WeakRetained contentViewController];
    if (objc_opt_respondsToSelector())
    {
      [contentViewController didTransitionToExpandedContentMode:self->_appearanceTransition];
    }

    backgroundViewController = [WeakRetained backgroundViewController];
    [backgroundViewController endAppearanceTransition];

    if (self->_appearanceTransition)
    {
      [WeakRetained _setDidExpandModulePreference];
      [delegate contentModuleContainerViewController:WeakRetained didOpenExpandedModule:contentModule];
      v9 = *MEMORY[0x277CFC8F8];
      if (os_signpost_enabled(*MEMORY[0x277CFC8F8]))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21E9F5000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CCUI_MODULE_PRESENTATION_END", " enableTelemetry=YES ", buf, 2u);
      }

      kdebug_trace();
      if (gSignpostListener)
      {
        [gSignpostListener didReceiveSignpost:6];
      }
    }

    else
    {
      v10 = MEMORY[0x277D75D18];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __57__CCUIContentModuleContainerTransition_transitionDidEnd___block_invoke;
      v13[3] = &unk_278381DF0;
      v11 = WeakRetained;
      v14 = v11;
      [v10 performWithoutAnimation:v13];
      [delegate contentModuleContainerViewController:v11 didCloseExpandedModule:contentModule];
      [delegate contentModuleContainerViewController:v11 didFinishInteractionWithModule:contentModule];
      v12 = *MEMORY[0x277CFC8F8];
      if (os_signpost_enabled(*MEMORY[0x277CFC8F8]))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_21E9F5000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CCUI_MODULE_DISMISSAL_END", " enableTelemetry=YES ", buf, 2u);
      }

      kdebug_trace();
      if (gSignpostListener)
      {
        [gSignpostListener didReceiveSignpost:8];
      }
    }
  }
}

void __57__CCUIContentModuleContainerTransition_transitionDidEnd___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _contentFrameForRestState];
  v3 = v2;
  v5 = v4;
  v6 = *MEMORY[0x277CBF348];
  v7 = *(MEMORY[0x277CBF348] + 8);
  v8 = [*(a1 + 32) view];
  [v8 setFrame:{v6, v7, v3, v5}];

  v9 = [*(a1 + 32) backgroundView];
  [v9 setFrame:{v6, v7, v3, v5}];

  v10 = [*(a1 + 32) contentContainerView];
  [v10 setFrame:{v6, v7, v3, v5}];
}

- (void)_setupMatchMoveAnimationWithSourceView:(id)view targetView:(id)targetView
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (view)
  {
    v5 = MEMORY[0x277CD9EE8];
    targetViewCopy = targetView;
    viewCopy = view;
    animation = [v5 animation];
    layer = [viewCopy layer];
    [animation setSourceLayer:layer];

    [animation setFillMode:*MEMORY[0x277CDA230]];
    [animation setRemovedOnCompletion:0];
    [animation setDuration:INFINITY];
    [animation setAppliesY:1];
    [animation setAppliesX:1];
    [targetViewCopy bounds];
    v11 = v10;
    v13 = v12;
    [viewCopy bounds];
    [viewCopy convertRect:targetViewCopy toView:?];
    v15 = v14;
    v17 = v16;

    v18 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v11 * 0.5 - v15, v13 * 0.5 - v17}];
    v21[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [animation setSourcePoints:v19];

    layer2 = [targetViewCopy layer];

    [layer2 addAnimation:animation forKey:@"CCUIContentModuleContainerMatchMoveAnimationKey"];
  }
}

- (void)_removeMatchMoveAnimationFromTargetView:(id)view
{
  layer = [view layer];
  [layer removeAnimationForKey:@"CCUIContentModuleContainerMatchMoveAnimationKey"];
}

- (CCUIContentModuleContainerViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

- (CGRect)contentRestOverrideFrame
{
  x = self->_contentRestOverrideFrame.origin.x;
  y = self->_contentRestOverrideFrame.origin.y;
  width = self->_contentRestOverrideFrame.size.width;
  height = self->_contentRestOverrideFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end
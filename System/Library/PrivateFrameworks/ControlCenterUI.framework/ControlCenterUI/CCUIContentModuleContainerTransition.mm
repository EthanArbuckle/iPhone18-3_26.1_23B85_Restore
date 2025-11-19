@interface CCUIContentModuleContainerTransition
- (CCUIContentModuleContainerViewController)viewController;
- (CGRect)contentRestOverrideFrame;
- (void)_removeMatchMoveAnimationFromTargetView:(id)a3;
- (void)_setupMatchMoveAnimationWithSourceView:(id)a3 targetView:(id)a4;
- (void)performTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5;
- (void)prepareTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5;
- (void)transitionDidEnd:(BOOL)a3;
@end

@implementation CCUIContentModuleContainerTransition

- (void)prepareTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5
{
  v27 = a5;
  v7 = a4;
  [v27 addSubview:v7];
  [v27 bounds];
  [v7 setFrame:?];

  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  appearanceTransition = self->_appearanceTransition;
  [WeakRetained setExpanded:appearanceTransition];
  v10 = [WeakRetained contentViewController];
  if (objc_opt_respondsToSelector())
  {
    [v10 willTransitionToExpandedContentMode:appearanceTransition];
  }

  v11 = [v10 view];
  if (objc_opt_respondsToSelector())
  {
    [v11 contentModuleWillTransitionToExpandedContentMode:appearanceTransition];
  }

  sendExpandModuleTransitionNotificationForSubviews(v11, appearanceTransition);
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
    v23 = [WeakRetained transitionCoordinator];
    [v10 viewWillTransitionToSize:v23 withTransitionCoordinator:{v20, v22}];

    [(CCUIContentModuleContainerTransition *)self _removeMatchMoveAnimationFromTargetView:v27];
  }

  else
  {
    v24 = [WeakRetained transitionCoordinator];
    [v10 viewWillTransitionToSize:v24 withTransitionCoordinator:{v14, v16}];

    v25 = v27;
    v26 = [WeakRetained _contentSourceView];
    [(CCUIContentModuleContainerTransition *)self _setupMatchMoveAnimationWithSourceView:v26 targetView:v25];
  }
}

- (void)performTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);
  v7 = [WeakRetained delegate];
  v8 = [WeakRetained contentContainerView];
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

    v25 = [WeakRetained contentModule];
    [v7 contentModuleContainerViewController:WeakRetained willOpenExpandedModule:v25];

    v26 = MEMORY[0x277D75D18];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __87__CCUIContentModuleContainerTransition_performTransitionFromView_toView_containerView___block_invoke;
    v28[3] = &unk_278382DA8;
    v29 = v8;
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
    v27 = [WeakRetained contentModule];
    [v7 contentModuleContainerViewController:WeakRetained willCloseExpandedModule:v27];

    [v8 setFrame:{v11, v13, v15, v17}];
    [WeakRetained transitionToExpandedMode:0];
  }
}

- (void)transitionDidEnd:(BOOL)a3
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained(&self->_viewController);
    v5 = [WeakRetained contentModule];
    v6 = [WeakRetained delegate];
    [WeakRetained _didEndTransitionWithContentModuleContainerTransition:self completed:1];
    v7 = [WeakRetained contentViewController];
    if (objc_opt_respondsToSelector())
    {
      [v7 didTransitionToExpandedContentMode:self->_appearanceTransition];
    }

    v8 = [WeakRetained backgroundViewController];
    [v8 endAppearanceTransition];

    if (self->_appearanceTransition)
    {
      [WeakRetained _setDidExpandModulePreference];
      [v6 contentModuleContainerViewController:WeakRetained didOpenExpandedModule:v5];
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
      [v6 contentModuleContainerViewController:v11 didCloseExpandedModule:v5];
      [v6 contentModuleContainerViewController:v11 didFinishInteractionWithModule:v5];
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

- (void)_setupMatchMoveAnimationWithSourceView:(id)a3 targetView:(id)a4
{
  v21[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v5 = MEMORY[0x277CD9EE8];
    v6 = a4;
    v7 = a3;
    v8 = [v5 animation];
    v9 = [v7 layer];
    [v8 setSourceLayer:v9];

    [v8 setFillMode:*MEMORY[0x277CDA230]];
    [v8 setRemovedOnCompletion:0];
    [v8 setDuration:INFINITY];
    [v8 setAppliesY:1];
    [v8 setAppliesX:1];
    [v6 bounds];
    v11 = v10;
    v13 = v12;
    [v7 bounds];
    [v7 convertRect:v6 toView:?];
    v15 = v14;
    v17 = v16;

    v18 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v11 * 0.5 - v15, v13 * 0.5 - v17}];
    v21[0] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:1];
    [v8 setSourcePoints:v19];

    v20 = [v6 layer];

    [v20 addAnimation:v8 forKey:@"CCUIContentModuleContainerMatchMoveAnimationKey"];
  }
}

- (void)_removeMatchMoveAnimationFromTargetView:(id)a3
{
  v3 = [a3 layer];
  [v3 removeAnimationForKey:@"CCUIContentModuleContainerMatchMoveAnimationKey"];
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
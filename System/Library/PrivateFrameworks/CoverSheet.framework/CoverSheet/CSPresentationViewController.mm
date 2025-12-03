@interface CSPresentationViewController
- (BOOL)canHostAnApp;
- (BOOL)handleAppearanceUpdateFromController:(id)controller animationSettings:(id *)settings;
- (BOOL)handleEvent:(id)event;
- (BOOL)handlesRotationIndependentOfCoverSheet;
- (BOOL)hasContent;
- (BOOL)isHostingAnApp;
- (BOOL)isPresentingContent;
- (BOOL)wouldHandleButtonEvent:(id)event;
- (CSPresentationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (CSPresentationViewControllerDelegate)presentationDelegate;
- (NSArray)contentViewControllers;
- (NSArray)presentedViewControllers;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)hostedAppSceneHandle;
- (id)hostedAppSceneHandles;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (int64_t)participantState;
- (void)_didTransitionViewController:(id)controller toPresented:(BOOL)presented;
- (void)_reflowPresentationWithAnimationSettings:(id)settings;
- (void)_updateContentViewControllersAnimated:(BOOL)animated completion:(id)completion;
- (void)_updatePresentationForViewController:(id)controller presentation:(id)presentation animated:(BOOL)animated animationSettings:(id)settings;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)aggregatePresentation:(id)presentation;
- (void)dismissContentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)dismissContentViewControllers:(id)controllers animated:(BOOL)animated completion:(id)completion;
- (void)dismissPresentationAnimated:(BOOL)animated completion:(id)completion;
- (void)presentContentViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)presentContentViewControllers:(id)controllers animated:(BOOL)animated completion:(id)completion;
- (void)rebuildEverythingForReason:(id)reason;
- (void)updatePresentationAnimated:(BOOL)animated;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation CSPresentationViewController

- (BOOL)isHostingAnApp
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_activeContentViewControllers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v7 = objc_opt_class();
          v8 = v6;
          if (v7)
          {
            v9 = (objc_opt_isKindOfClass() & 1) != 0 ? v8 : 0;
          }

          else
          {
            v9 = 0;
          }

          v10 = v9;

          isHostingAnApp = [v10 isHostingAnApp];
          if (isHostingAnApp)
          {
            LOBYTE(v3) = 1;
            goto LABEL_17;
          }
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v3;
}

- (NSArray)contentViewControllers
{
  v2 = [(NSMutableArray *)self->_contentViewControllers copy];

  return v2;
}

- (BOOL)isPresentingContent
{
  presentedViewControllers = [(CSPresentationViewController *)self presentedViewControllers];
  v3 = [presentedViewControllers count] != 0;

  return v3;
}

- (NSArray)presentedViewControllers
{
  v2 = [(NSArray *)self->_activeContentViewControllers copy];

  return v2;
}

- (int64_t)participantState
{
  v4.receiver = self;
  v4.super_class = CSPresentationViewController;
  if ([(CSCoverSheetViewControllerBase *)&v4 participantState]== 2 && ([(CSPresentationViewController *)self isPresentingContent]|| self->_transitioning))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (void)viewDidLoad
{
  view = [(CSPresentationViewController *)self view];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  [view setFrame:?];

  [view setAutoresizingMask:18];
  [view setAutoresizesSubviews:1];
  v5.receiver = self;
  v5.super_class = CSPresentationViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidLoad];
  [(CSPresentationViewController *)self _updateContentViewControllersAnimated:0 completion:0];
}

- (void)viewWillLayoutSubviews
{
  v19.receiver = self;
  v19.super_class = CSPresentationViewController;
  [(CSCoverSheetViewControllerBase *)&v19 viewWillLayoutSubviews];
  view = [(CSPresentationViewController *)self view];
  [view bounds];
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__2;
  v17[4] = __Block_byref_object_dispose__2;
  v18 = 0;
  activeContentViewControllers = self->_activeContentViewControllers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __54__CSPresentationViewController_viewWillLayoutSubviews__block_invoke;
  v10[3] = &unk_27838D390;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v12 = v17;
  v9 = view;
  v11 = v9;
  [(NSArray *)activeContentViewControllers enumerateObjectsWithOptions:2 usingBlock:v10];

  _Block_object_dispose(v17, 8);
}

- (BOOL)hasContent
{
  contentViewControllers = [(CSPresentationViewController *)self contentViewControllers];
  v3 = [contentViewControllers count] != 0;

  return v3;
}

void __54__CSPresentationViewController_viewWillLayoutSubviews__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 view];
  [v3 setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v4 = *(*(a1 + 40) + 8);
  if (*(v4 + 40))
  {
    [*(a1 + 32) insertSubview:v3 aboveSubview:?];
    v4 = *(*(a1 + 40) + 8);
  }

  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (CSPresentationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = CSPresentationViewController;
  v4 = [(CSCoverSheetViewControllerBase *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    array = [MEMORY[0x277CBEB18] array];
    contentViewControllers = v4->_contentViewControllers;
    v4->_contentViewControllers = array;
  }

  return v4;
}

- (void)presentContentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  if (controller)
  {
    animatedCopy = animated;
    controllerCopy = controller;
    v8 = MEMORY[0x277CBEA60];
    completionCopy = completion;
    controllerCopy2 = controller;
    v11 = [v8 arrayWithObjects:&controllerCopy count:1];

    [(CSPresentationViewController *)self presentContentViewControllers:v11 animated:animatedCopy completion:completionCopy, controllerCopy, v13];
  }
}

- (void)presentContentViewControllers:(id)controllers animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v35 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  completionCopy = completion;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [controllersCopy countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v20 = completionCopy;
  v11 = 0;
  v12 = *v25;
  v21 = controllersCopy;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(controllersCopy);
      }

      v14 = *(*(&v24 + 1) + 8 * i);
      if (([(NSMutableArray *)self->_contentViewControllers containsObject:v14, v20]& 1) == 0)
      {
        v15 = SBLogDashBoard();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = objc_opt_class();
          v23 = NSStringFromClass(v16);
          v17 = [MEMORY[0x277CF0C00] descriptionForObject:v14];
          v18 = NSStringFromBOOL();
          *buf = 138543874;
          v29 = v23;
          v30 = 2112;
          v31 = v17;
          v32 = 2114;
          v33 = v18;
          v19 = v18;
          _os_log_debug_impl(&dword_21EB05000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: Adding content view controller %@ (animated: %{public}@)", buf, 0x20u);

          controllersCopy = v21;
        }

        [(NSMutableArray *)self->_contentViewControllers insertObject:v14 atIndex:0];
        [v14 rebuildBehavior];
        v11 = 1;
      }
    }

    v10 = [controllersCopy countByEnumeratingWithState:&v24 objects:v34 count:16];
  }

  while (v10);
  completionCopy = v20;
  if (v11)
  {
    [(NSMutableArray *)self->_contentViewControllers sortWithOptions:16 usingComparator:&__block_literal_global_17];
    [(CSPresentationViewController *)self _updateContentViewControllersAnimated:animatedCopy completion:v20];
  }

  else
  {
LABEL_14:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

uint64_t __82__CSPresentationViewController_presentContentViewControllers_animated_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v5, "presentationPriority")}];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "presentationPriority")}];
  v8 = [v6 compare:v7];

  if (!v8)
  {
    v9 = [v4 presentationType];
    v10 = [v5 presentationType];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:v10];
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
    v8 = [v11 compare:v12];
  }

  return v8;
}

- (void)dismissContentViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  if (controller)
  {
    animatedCopy = animated;
    controllerCopy = controller;
    v8 = MEMORY[0x277CBEA60];
    completionCopy = completion;
    controllerCopy2 = controller;
    v11 = [v8 arrayWithObjects:&controllerCopy count:1];

    [(CSPresentationViewController *)self dismissContentViewControllers:v11 animated:animatedCopy completion:completionCopy, controllerCopy, v13];
  }
}

- (void)dismissContentViewControllers:(id)controllers animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v35 = *MEMORY[0x277D85DE8];
  controllersCopy = controllers;
  completionCopy = completion;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [controllersCopy countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = v9;
  v20 = completionCopy;
  v11 = 0;
  v12 = *v25;
  v21 = controllersCopy;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(controllersCopy);
      }

      v14 = *(*(&v24 + 1) + 8 * i);
      if ([(NSMutableArray *)self->_contentViewControllers containsObject:v14, v20])
      {
        v15 = SBLogDashBoard();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v16 = objc_opt_class();
          v23 = NSStringFromClass(v16);
          v17 = [MEMORY[0x277CF0C00] descriptionForObject:v14];
          v18 = NSStringFromBOOL();
          *buf = 138543874;
          v29 = v23;
          v30 = 2112;
          v31 = v17;
          v32 = 2114;
          v33 = v18;
          v19 = v18;
          _os_log_debug_impl(&dword_21EB05000, v15, OS_LOG_TYPE_DEBUG, "%{public}@: Removing content view controller %@ (animated: %{public}@)", buf, 0x20u);

          controllersCopy = v21;
        }

        [(NSMutableArray *)self->_contentViewControllers removeObject:v14];
        v11 = 1;
      }
    }

    v10 = [controllersCopy countByEnumeratingWithState:&v24 objects:v34 count:16];
  }

  while (v10);
  completionCopy = v20;
  if (v11)
  {
    [(CSPresentationViewController *)self _updateContentViewControllersAnimated:animatedCopy completion:v20];
  }

  else
  {
LABEL_14:
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)dismissPresentationAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  v7 = SBLogDashBoard();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CSPresentationViewController dismissPresentationAnimated:completion:];
  }

  [(NSMutableArray *)self->_contentViewControllers removeAllObjects];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__CSPresentationViewController_dismissPresentationAnimated_completion___block_invoke;
  v9[3] = &unk_27838BA98;
  v9[4] = self;
  v10 = completionCopy;
  v8 = completionCopy;
  [(CSPresentationViewController *)self _updateContentViewControllersAnimated:animatedCopy completion:v9];
}

uint64_t __71__CSPresentationViewController_dismissPresentationAnimated_completion___block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = CSPresentationViewController;
  objc_msgSendSuper2(&v3, sel_dismiss);
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updatePresentationAnimated:(BOOL)animated
{
  if (animated)
  {
    v4 = [MEMORY[0x277CF0B70] settingsWithDuration:0.35];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [(CSPresentationViewController *)self _reflowPresentationWithAnimationSettings:v4];
}

- (void)aggregateAppearance:(id)appearance
{
  v16 = *MEMORY[0x277D85DE8];
  appearanceCopy = appearance;
  v14.receiver = self;
  v14.super_class = CSPresentationViewController;
  [(CSCoverSheetViewControllerBase *)&v14 aggregateAppearance:appearanceCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_activeContentViewControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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

        [appearanceCopy unionAppearance:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)aggregateBehavior:(id)behavior
{
  v26 = *MEMORY[0x277D85DE8];
  behaviorCopy = behavior;
  v23.receiver = self;
  v23.super_class = CSPresentationViewController;
  [(CSCoverSheetViewControllerBase *)&v23 aggregateBehavior:behaviorCopy];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_activeContentViewControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [behaviorCopy unionBehavior:*(*(&v19 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_contentViewControllers;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [behaviorCopy addRestrictedCapabilities:{objc_msgSend(*(*(&v15 + 1) + 8 * v14++), "restrictedCapabilities", v15)}];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v24 count:16];
    }

    while (v12);
  }

  if (![(NSMutableArray *)self->_contentViewControllers count])
  {
    [behaviorCopy addRestrictedCapabilities:0x10000000];
  }
}

- (void)aggregatePresentation:(id)presentation
{
  v16 = *MEMORY[0x277D85DE8];
  presentationCopy = presentation;
  v14.receiver = self;
  v14.super_class = CSPresentationViewController;
  [(CSCoverSheetViewControllerBase *)&v14 aggregatePresentation:presentationCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_activeContentViewControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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

        [presentationCopy unionPresentation:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)rebuildEverythingForReason:(id)reason
{
  v16 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  ++self->_mutatingPresentation;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_activeContentViewControllers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) rebuildEverythingForReason:reasonCopy];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  --self->_mutatingPresentation;
  v10.receiver = self;
  v10.super_class = CSPresentationViewController;
  [(CSCoverSheetViewControllerBase *)&v10 rebuildEverythingForReason:reasonCopy];
}

- (BOOL)handleAppearanceUpdateFromController:(id)controller animationSettings:(id *)settings
{
  controllerCopy = controller;
  v7 = controllerCopy;
  if (self->_mutatingPresentation)
  {
    v8 = 0;
  }

  else
  {
    if (controllerCopy != self)
    {
      v9 = SBLogDashBoard();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [CSPresentationViewController handleAppearanceUpdateFromController:animationSettings:];
      }

      areAnimationsEnabled = [MEMORY[0x277D75D18] areAnimationsEnabled];
      v11 = *settings;
      if (areAnimationsEnabled)
      {
        if (v11)
        {
          v12 = v11;
          *settings = v11;
        }

        else
        {
          v13 = [MEMORY[0x277CF0B70] settingsWithDuration:0.35];
          *settings = v13;

          v11 = *settings;
        }
      }

      [(CSPresentationViewController *)self _reflowPresentationWithAnimationSettings:v11];
    }

    v15.receiver = self;
    v15.super_class = CSPresentationViewController;
    v8 = [(CSCoverSheetViewControllerBase *)&v15 handleAppearanceUpdateFromController:v7 animationSettings:settings]|| [(NSArray *)self->_activeContentViewControllers containsObject:v7];
  }

  return v8;
}

- (BOOL)handleEvent:(id)event
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v28.receiver = self;
  v28.super_class = CSPresentationViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v28, sel_handleEvent_, eventCopy) && ([eventCopy isConsumable] & 1) != 0)
  {
LABEL_25:
    isConsumable = [eventCopy isConsumable];
  }

  else
  {
    if ([eventCopy isConsumable])
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v5 = self->_activeContentViewControllers;
      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v36 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v25;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v25 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if ([*(*(&v24 + 1) + 8 * i) handleEvent:eventCopy])
            {

              goto LABEL_25;
            }
          }

          v7 = [(NSArray *)v5 countByEnumeratingWithState:&v24 objects:v36 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v10 = [MEMORY[0x277CBEB18] arrayWithArray:self->_contentViewControllers];
      childViewControllers = [(CSPresentationViewController *)self childViewControllers];
      [v10 removeObjectsInArray:childViewControllers];

      v12 = SBLogDashBoard();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v19 = [MEMORY[0x277CF0C00] descriptionForObject:self];
        *buf = 138543874;
        v31 = v19;
        v32 = 2114;
        v33 = eventCopy;
        v34 = 2112;
        v35 = v10;
        _os_log_debug_impl(&dword_21EB05000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ - Sending event %{public}@ to non-active content view controllers: %@", buf, 0x20u);
      }

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v5 = v10;
      v13 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v29 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v21;
        do
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v21 != v15)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v20 + 1) + 8 * j) handleEvent:{eventCopy, v20}];
          }

          v14 = [(NSArray *)v5 countByEnumeratingWithState:&v20 objects:v29 count:16];
        }

        while (v14);
      }
    }

    isConsumable = 0;
  }

  return isConsumable;
}

- (BOOL)wouldHandleButtonEvent:(id)event
{
  v16 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v14.receiver = self;
  v14.super_class = CSPresentationViewController;
  if ([(CSCoverSheetViewControllerBase *)&v14 wouldHandleButtonEvent:eventCopy])
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v6 = self->_activeContentViewControllers;
    v5 = [(NSArray *)v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v5)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v6);
          }

          if ([*(*(&v10 + 1) + 8 * i) wouldHandleButtonEvent:{eventCopy, v10}])
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [(NSArray *)v6 countByEnumeratingWithState:&v10 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  return v5;
}

- (BOOL)canHostAnApp
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_activeContentViewControllers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v7 = objc_opt_class();
          v8 = v6;
          if (v7)
          {
            v9 = (objc_opt_isKindOfClass() & 1) != 0 ? v8 : 0;
          }

          else
          {
            v9 = 0;
          }

          v10 = v9;

          canHostAnApp = [v10 canHostAnApp];
          if (canHostAnApp)
          {
            LOBYTE(v3) = 1;
            goto LABEL_17;
          }
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v3;
}

- (id)hostedAppSceneHandle
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = self->_activeContentViewControllers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v15 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v14 + 1) + 8 * v6);
      if (objc_opt_respondsToSelector())
      {
        v8 = objc_opt_class();
        v9 = v7;
        if (v8)
        {
          v10 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        hostedAppSceneHandle = [v11 hostedAppSceneHandle];

        if (hostedAppSceneHandle)
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    hostedAppSceneHandle = 0;
  }

  return hostedAppSceneHandle;
}

- (id)hostedAppSceneHandles
{
  v2 = [(NSArray *)self->_activeContentViewControllers bs_compactMap:&__block_literal_global_36];
  bs_flatten = [v2 bs_flatten];

  return bs_flatten;
}

id __53__CSPresentationViewController_hostedAppSceneHandles__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_opt_class();
    v4 = v2;
    if (v3)
    {
      if (objc_opt_isKindOfClass())
      {
        v5 = v4;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = v5;

    v6 = [v7 hostedAppSceneHandles];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (BOOL)handlesRotationIndependentOfCoverSheet
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = self->_activeContentViewControllers;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v7 = objc_opt_class();
          v8 = v6;
          if (v7)
          {
            v9 = (objc_opt_isKindOfClass() & 1) != 0 ? v8 : 0;
          }

          else
          {
            v9 = 0;
          }

          v10 = v9;

          handlesRotationIndependentOfCoverSheet = [v10 handlesRotationIndependentOfCoverSheet];
          if (handlesRotationIndependentOfCoverSheet)
          {
            LOBYTE(v3) = 1;
            goto LABEL_17;
          }
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v3;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(CSPresentationViewController *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:-[CSPresentationViewController isPresentingContent](self withName:{"isPresentingContent"), @"presentingContent"}];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(CSPresentationViewController *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(CSPresentationViewController *)self succinctDescriptionBuilder];
  if ([(CSPresentationViewController *)self isPresentingContent]|| ([(CSPresentationViewController *)self viewIfLoaded], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__CSPresentationViewController_descriptionBuilderWithMultilinePrefix___block_invoke;
    v8[3] = &unk_27838B838;
    v9 = succinctDescriptionBuilder;
    selfCopy = self;
    [v9 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v8];
  }

  return succinctDescriptionBuilder;
}

void __70__CSPresentationViewController_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CF0C00];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) valueForKey:@"presenter"];
  v5 = [v2 descriptionForObject:v4];
  v6 = [v3 appendObject:v5 withName:@"presenter"];

  v7 = *(a1 + 32);
  v8 = [*(a1 + 40) viewIfLoaded];
  v9 = [v7 appendObject:v8 withName:@"view"];

  v10 = *(a1 + 32);
  [*(a1 + 40) _appearState];
  v11 = SBFStringForAppearState();
  v12 = [v10 appendObject:v11 withName:@"appearState"];

  v13 = *(a1 + 32);
  v14 = [*(a1 + 40) presentedViewControllers];
  [v13 appendArraySection:v14 withName:@"presentedViewControllers" skipIfEmpty:1];

  v15 = *(a1 + 32);
  v16 = [*(a1 + 40) contentViewControllers];
  [v15 appendArraySection:v16 withName:@"contentViewControllers" skipIfEmpty:1];

  v17 = *(a1 + 32);
  v18 = [CSAppearance appearanceForProvider:*(a1 + 40)];
  v19 = [v17 appendObject:v18 withName:@"appearance"];

  v20 = *(a1 + 32);
  v21 = [CSBehavior behaviorForProvider:*(a1 + 40)];
  v22 = [v20 appendObject:v21 withName:@"behavior"];

  v23 = *(a1 + 32);
  v25 = [CSPresentation presentationForProvider:*(a1 + 40)];
  v24 = [v23 appendObject:v25 withName:@"presentation"];
}

- (void)_updateContentViewControllersAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v116 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  array = [MEMORY[0x277CBEB18] array];
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v7 = self->_contentViewControllers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v105 objects:v115 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v106;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v106 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v105 + 1) + 8 * v11);
      [array addObject:v12];
      if ([v12 presentationType] == 2)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v105 objects:v115 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v13 = [MEMORY[0x277CBEB58] setWithArray:self->_activeContentViewControllers];
  v14 = [MEMORY[0x277CBEB58] setWithArray:array];
  if (([v13 isEqual:v14] & 1) == 0 && -[CSPresentationViewController isViewLoaded](self, "isViewLoaded"))
  {
    ++self->_mutatingPresentation;
    ++self->_transitioning;
    [v14 minusSet:v13];
    v15 = [MEMORY[0x277CBEB98] setWithArray:array];
    [v13 minusSet:v15];

    v16 = [array copy];
    activeContentViewControllers = self->_activeContentViewControllers;
    self->_activeContentViewControllers = v16;

    v18 = [MEMORY[0x277CBEB58] set];
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke;
    v101[3] = &unk_27838D3D8;
    v79 = v18;
    v102 = v79;
    selfCopy = self;
    v104 = completionCopy;
    v19 = MEMORY[0x223D698D0](v101);
    v72 = v14;
    v20 = [v14 count];
    v21 = [v13 count];
    v67 = v19;
    v78 = [MEMORY[0x277CF0BA0] sentinelWithQueue:MEMORY[0x277D85CD0] signalCount:v20 + v21 + 1 signalHandler:v19];
    v69 = array;
    v70 = completionCopy;
    if (animatedCopy)
    {
      v22 = MEMORY[0x277CF0B70];
      v23 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C0]];
      v76 = [v22 settingsWithDuration:v23 timingFunction:0.4];

      v24 = MEMORY[0x277CF0B70];
      v25 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B0]];
      v26 = [v24 settingsWithDuration:v25 timingFunction:0.4];

      if (v26)
      {
        v73 = v26;
        v71 = v73;
LABEL_18:
        v99 = 0u;
        v100 = 0u;
        v97 = 0u;
        v98 = 0u;
        v68 = v13;
        obj = v13;
        v27 = [obj countByEnumeratingWithState:&v97 objects:v114 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v98;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v98 != v29)
              {
                objc_enumerationMutation(obj);
              }

              v31 = *(*(&v97 + 1) + 8 * i);
              v32 = SBLogDashBoard();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                v41 = objc_opt_class();
                v42 = NSStringFromClass(v41);
                v43 = [MEMORY[0x277CF0C00] descriptionForObject:v31];
                *buf = 138543618;
                v111 = v42;
                v112 = 2112;
                v113 = v43;
                _os_log_debug_impl(&dword_21EB05000, v32, OS_LOG_TYPE_DEBUG, "%{public}@: Dismissing content view controller %@", buf, 0x16u);
              }

              v33 = MEMORY[0x277CCACA8];
              appearanceIdentifier = [v31 appearanceIdentifier];
              v35 = [v33 stringWithFormat:@"Dismissing: %@", appearanceIdentifier];

              [v79 addObject:v35];
              v36 = [v76 mutableCopy];
              [v31 presentationPreferredFrameRateRange];
              [v36 setPreferredFrameRateRange:?];
              [v36 setHighFrameRateReason:{objc_msgSend(v31, "presentationFrameRateRangeReason")}];
              [v31 willTransitionToPresented:0];
              [v31 setPresenter:0];
              v92[0] = MEMORY[0x277D85DD0];
              v37 = v36 != 0;
              v92[1] = 3221225472;
              v92[2] = __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_83;
              v92[3] = &unk_27838D450;
              v92[4] = v31;
              v93 = v36;
              selfCopy2 = self;
              v38 = v78;
              v95 = v38;
              v39 = v35;
              v96 = v39;
              v40 = v36;
              if (([(CSPresentationViewController *)self bs_removeChildViewController:v31 animated:v37 transitionBlock:v92]& 1) == 0)
              {
                [v38 signalWithContext:v39];
              }
            }

            v28 = [obj countByEnumeratingWithState:&v97 objects:v114 count:16];
          }

          while (v28);
        }

        presentationCoordinateSpace = [(CSCoverSheetViewControllerBase *)self presentationCoordinateSpace];
        v45 = [CSPresentation presentationWithCoordinateSpace:presentationCoordinateSpace];

        [v45 setIdentifier:@"PresentationAggregation"];
        v91.receiver = self;
        v91.super_class = CSPresentationViewController;
        [(CSCoverSheetViewControllerBase *)&v91 aggregatePresentation:v45];
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        obja = self->_activeContentViewControllers;
        v46 = [(NSArray *)obja countByEnumeratingWithState:&v87 objects:v109 count:16];
        v14 = v72;
        if (v46)
        {
          v47 = v46;
          v48 = *v88;
          do
          {
            for (j = 0; j != v47; ++j)
            {
              if (*v88 != v48)
              {
                objc_enumerationMutation(obja);
              }

              v50 = *(*(&v87 + 1) + 8 * j);
              if ([v14 containsObject:v50])
              {
                v51 = SBLogDashBoard();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
                {
                  v61 = objc_opt_class();
                  v62 = NSStringFromClass(v61);
                  v63 = [MEMORY[0x277CF0C00] descriptionForObject:v50];
                  *buf = 138412546;
                  v111 = v62;
                  v112 = 2112;
                  v113 = v63;
                  _os_log_debug_impl(&dword_21EB05000, v51, OS_LOG_TYPE_DEBUG, "%@: Presenting content view controller %@", buf, 0x16u);
                }

                v52 = MEMORY[0x277CCACA8];
                appearanceIdentifier2 = [v50 appearanceIdentifier];
                v54 = [v52 stringWithFormat:@"Presenting: %@", appearanceIdentifier2];

                [v79 addObject:v54];
                v86[0] = MEMORY[0x277D85DD0];
                v86[1] = 3221225472;
                v86[2] = __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_93;
                v86[3] = &unk_27838B838;
                v86[4] = v50;
                v86[5] = self;
                [MEMORY[0x277D75D18] performWithoutAnimation:v86];
                v55 = [v71 mutableCopy];
                [v50 presentationPreferredFrameRateRange];
                [v55 setPreferredFrameRateRange:?];
                [v55 setHighFrameRateReason:{objc_msgSend(v50, "presentationFrameRateRangeReason")}];
                v56 = v55 != 0;
                v80[0] = MEMORY[0x277D85DD0];
                v80[1] = 3221225472;
                v80[2] = __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_2_94;
                v80[3] = &unk_27838D4A0;
                v80[4] = v50;
                v80[5] = self;
                v57 = v45;
                v85 = animatedCopy;
                v81 = v57;
                v82 = v55;
                v58 = v78;
                v83 = v58;
                v59 = v54;
                v84 = v59;
                v60 = v55;
                if (([(CSPresentationViewController *)self bs_addChildViewController:v50 animated:v56 transitionBlock:v80]& 1) == 0)
                {
                  [v58 signalWithContext:v59];
                }

                v14 = v72;
              }

              else
              {
                [(CSPresentationViewController *)self _updatePresentationForViewController:v50 presentation:v45 animated:animatedCopy animationSettings:v73];
              }
            }

            v47 = [(NSArray *)obja countByEnumeratingWithState:&v87 objects:v109 count:16];
          }

          while (v47);
        }

        [(CSPresentationViewController *)self _updatePresentationForViewController:self presentation:v45 animated:animatedCopy animationSettings:v73];
        --self->_mutatingPresentation;
        [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
        if (animatedCopy)
        {
          v64 = MEMORY[0x277CF0B70];
          v65 = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7B8]];
          v66 = [v64 settingsWithDuration:v65 timingFunction:0.4];
        }

        else
        {
          v66 = 0;
        }

        array = v69;
        completionCopy = v70;
        v13 = v68;
        [(CSCoverSheetViewControllerBase *)self updateAppearanceForController:self withAnimationSettings:v66 completion:0];
        [v78 signal];

        goto LABEL_47;
      }
    }

    else
    {
      v76 = 0;
    }

    v73 = [MEMORY[0x277CF0B70] settingsWithDuration:0.35];
    v71 = 0;
    goto LABEL_18;
  }

  [(CSCoverSheetViewControllerBase *)self updateBehaviorForController:self];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }

LABEL_47:
}

void __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isFailed])
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [*(a1 + 32) allObjects];
    v6 = [v5 componentsJoinedByString:@" "];;
    v7 = [v4 stringWithFormat:@"CSPresentationViewController: content transition completion was not called with missing signals: %@", v6];

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{v7, 0}];
  }

  else if ([v3 isComplete])
  {
    --*(*(a1 + 40) + 1072);
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))();
    }
  }

  v9 = [v3 context];
  if (v9)
  {
    v10 = SBLogDashBoard();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_cold_1();
    }

    [*(a1 + 32) removeObject:v9];
  }
}

void __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_83(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) view];
  v5 = [*(a1 + 32) presentationTransition];
  v6 = *(a1 + 40);
  if (v5 == 1)
  {
    v7 = *(a1 + 32);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_2;
    v21[3] = &unk_27838D400;
    v8 = *(a1 + 56);
    v21[4] = *(a1 + 48);
    v21[5] = v7;
    v24 = v3;
    v22 = v8;
    v23 = *(a1 + 64);
    v9 = v3;
    [v7 performCustomTransitionToVisible:0 withAnimationSettings:v6 completion:v21];

    v10 = v24;
  }

  else
  {
    v11 = MEMORY[0x277CF0D38];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_3;
    v19[3] = &unk_27838B770;
    v20 = v4;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_4;
    v14[3] = &unk_27838D428;
    v12 = *(a1 + 32);
    v14[4] = *(a1 + 48);
    v14[5] = v12;
    v15 = v20;
    v18 = v3;
    v16 = *(a1 + 56);
    v17 = *(a1 + 64);
    v13 = v3;
    [v11 animateWithSettings:v6 actions:v19 completion:v14];

    v10 = v20;
  }
}

uint64_t __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_2(uint64_t a1)
{
  if (([*(*(a1 + 32) + 1088) containsObject:*(a1 + 40)] & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
    [*(a1 + 32) _didTransitionViewController:*(a1 + 40) toPresented:0];
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return [v2 signalWithContext:v3];
}

uint64_t __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 32);

  return [v2 setUserInteractionEnabled:0];
}

uint64_t __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_4(uint64_t a1)
{
  if (([*(*(a1 + 32) + 1088) containsObject:*(a1 + 40)] & 1) == 0)
  {
    [*(a1 + 48) setAlpha:1.0];
    [*(a1 + 48) setUserInteractionEnabled:1];
    (*(*(a1 + 72) + 16))();
    [*(a1 + 32) _didTransitionViewController:*(a1 + 40) toPresented:0];
  }

  v2 = *(a1 + 56);
  v3 = *(a1 + 64);

  return [v2 signalWithContext:v3];
}

void __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_93(uint64_t a1)
{
  v3 = [*(a1 + 32) view];
  v2 = [*(a1 + 40) view];
  [v2 bounds];
  [v3 setFrame:?];

  [v3 setAutoresizingMask:18];
  [v3 setAutoresizesSubviews:1];
  [v3 setAlpha:1.0];
  [v3 layoutIfNeeded];
  [*(a1 + 32) rebuildBehavior];
  [*(a1 + 32) setPresenter:*(a1 + 40)];
  [*(a1 + 32) willTransitionToPresented:1];
}

void __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_2_94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) view];
  v5 = [*(a1 + 40) view];
  [v5 addSubview:v4];

  [*(a1 + 32) rebuildAppearance];
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  [v10 resetScrollForStaticPresentation];
  [*(a1 + 40) _updatePresentationForViewController:*(a1 + 32) presentation:*(a1 + 48) animated:*(a1 + 80) animationSettings:0];
  if ([*(a1 + 32) presentationTransition] == 1)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_3_96;
    v29[3] = &unk_27838D400;
    v19 = *(a1 + 32);
    v30 = vextq_s8(v19, v19, 8uLL);
    v33 = v3;
    v11 = *(a1 + 56);
    v31 = *(a1 + 64);
    v32 = *(a1 + 72);
    v12 = v3;
    [v19.i64[0] performCustomTransitionToVisible:1 withAnimationSettings:v11 completion:v29];

    v13 = v33;
  }

  else
  {
    v14 = MEMORY[0x277D75D18];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_4_97;
    v27[3] = &unk_27838B770;
    v15 = v4;
    v28 = v15;
    [v14 performWithoutAnimation:v27];
    v16 = MEMORY[0x277CF0D38];
    v17 = *(a1 + 56);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_5;
    v25[3] = &unk_27838B770;
    v26 = v15;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_6;
    v20[3] = &unk_27838D478;
    v21 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
    v24 = v3;
    v22 = *(a1 + 64);
    v23 = *(a1 + 72);
    v18 = v3;
    [v16 animateWithSettings:v17 actions:v25 completion:v20];

    v13 = v28;
  }
}

uint64_t __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_3_96(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1088) containsObject:*(a1 + 40)])
  {
    (*(*(a1 + 64) + 16))();
    [*(a1 + 32) _didTransitionViewController:*(a1 + 40) toPresented:1];
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return [v2 signalWithContext:v3];
}

uint64_t __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_6(uint64_t a1)
{
  if ([*(*(a1 + 32) + 1088) containsObject:*(a1 + 40)])
  {
    (*(*(a1 + 64) + 16))();
    [*(a1 + 32) _didTransitionViewController:*(a1 + 40) toPresented:1];
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);

  return [v2 signalWithContext:v3];
}

- (void)_didTransitionViewController:(id)controller toPresented:(BOOL)presented
{
  presentedCopy = presented;
  controllerCopy = controller;
  [controllerCopy didTransitionToPresented:presentedCopy];
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);
  [WeakRetained presentationViewController:self didTransitionViewController:controllerCopy toPresented:presentedCopy];
}

- (void)_reflowPresentationWithAnimationSettings:(id)settings
{
  v18 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  ++self->_mutatingPresentation;
  presentationCoordinateSpace = [(CSCoverSheetViewControllerBase *)self presentationCoordinateSpace];
  v6 = [CSPresentation presentationWithCoordinateSpace:presentationCoordinateSpace];

  [v6 setIdentifier:@"PresentationAggregation"];
  v16.receiver = self;
  v16.super_class = CSPresentationViewController;
  [(CSCoverSheetViewControllerBase *)&v16 aggregatePresentation:v6];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_activeContentViewControllers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(CSPresentationViewController *)self _updatePresentationForViewController:*(*(&v12 + 1) + 8 * v11++) presentation:v6 animationSettings:settingsCopy, v12];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  [(CSPresentationViewController *)self _updatePresentationForViewController:self presentation:v6 animationSettings:settingsCopy];
  --self->_mutatingPresentation;
}

- (void)_updatePresentationForViewController:(id)controller presentation:(id)presentation animated:(BOOL)animated animationSettings:(id)settings
{
  animatedCopy = animated;
  v79 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  presentationCopy = presentation;
  settingsCopy = settings;
  if (presentationCopy)
  {
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [CSPresentationViewController _updatePresentationForViewController:a2 presentation:self animated:? animationSettings:?];
    if (controllerCopy)
    {
      goto LABEL_3;
    }
  }

  [CSPresentationViewController _updatePresentationForViewController:a2 presentation:self animated:? animationSettings:?];
LABEL_3:
  v14 = SBLogDashBoard();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

  if (v15)
  {
    v52 = animatedCopy;
    selfCopy = self;
    v56 = settingsCopy;
    v16 = SBLogDashBoard();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v41 = objc_opt_class();
      v42 = v41;
      v43 = objc_opt_class();
      v44 = MEMORY[0x277CF0C00];
      v45 = v43;
      v46 = [v44 succinctDescriptionForObject:presentationCopy];
      *buf = 138412802;
      v74 = v41;
      v75 = 2112;
      v76 = v43;
      v77 = 2112;
      v78 = v46;
      _os_log_debug_impl(&dword_21EB05000, v16, OS_LOG_TYPE_DEBUG, "%@ updating %@ with %@", buf, 0x20u);
    }

    v58 = controllerCopy;

    v17 = MEMORY[0x277CBEB58];
    regions = [presentationCopy regions];
    v54 = [v17 setWithArray:regions];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    regions2 = [presentationCopy regions];
    v20 = [regions2 countByEnumeratingWithState:&v67 objects:v72 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v68;
      do
      {
        v23 = 0;
        do
        {
          if (*v68 != v22)
          {
            objc_enumerationMutation(regions2);
          }

          v24 = *(*(&v67 + 1) + 8 * v23);
          v25 = SBLogDashBoard();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v74 = v24;
            _os_log_debug_impl(&dword_21EB05000, v25, OS_LOG_TYPE_DEBUG, "    %@", buf, 0xCu);
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [regions2 countByEnumeratingWithState:&v67 objects:v72 count:16];
      }

      while (v21);
    }

    settingsCopy = v56;
    controllerCopy = v58;
    self = selfCopy;
    v26 = v54;
    if (!v52)
    {
      goto LABEL_16;
    }

LABEL_18:
    v27 = MEMORY[0x277CF0D38];
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __109__CSPresentationViewController__updatePresentationForViewController_presentation_animated_animationSettings___block_invoke;
    v64[3] = &unk_27838B838;
    v65 = controllerCopy;
    v66 = presentationCopy;
    [v27 animateWithSettings:settingsCopy actions:v64];

    goto LABEL_19;
  }

  v26 = 0;
  if (animatedCopy)
  {
    goto LABEL_18;
  }

LABEL_16:
  [(CSCoverSheetViewControllerBase *)controllerCopy updateForPresentation:presentationCopy];
LABEL_19:
  if (controllerCopy != self)
  {
    [presentationCopy unionPresentation:controllerCopy];
    v28 = SBLogDashBoard();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);

    if (v29)
    {
      v57 = settingsCopy;
      v59 = controllerCopy;
      v30 = MEMORY[0x277CBEB58];
      regions3 = [presentationCopy regions];
      v32 = [v30 setWithArray:regions3];

      v55 = v26;
      [v32 minusSet:v26];
      v33 = SBLogDashBoard();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v47 = objc_opt_class();
        v48 = v47;
        v49 = objc_opt_class();
        v50 = v49;
        v51 = [v32 count];
        *buf = 138412802;
        v74 = v47;
        v75 = 2112;
        v76 = v49;
        v77 = 2048;
        v78 = v51;
        _os_log_debug_impl(&dword_21EB05000, v33, OS_LOG_TYPE_DEBUG, "%@ aggregated %@ by adding %ld regions", buf, 0x20u);
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v34 = v32;
      v35 = [v34 countByEnumeratingWithState:&v60 objects:v71 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v61;
        do
        {
          v38 = 0;
          do
          {
            if (*v61 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v60 + 1) + 8 * v38);
            v40 = SBLogDashBoard();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v74 = v39;
              _os_log_debug_impl(&dword_21EB05000, v40, OS_LOG_TYPE_DEBUG, "    %@", buf, 0xCu);
            }

            ++v38;
          }

          while (v36 != v38);
          v36 = [v34 countByEnumeratingWithState:&v60 objects:v71 count:16];
        }

        while (v36);
      }

      settingsCopy = v57;
      controllerCopy = v59;
      v26 = v55;
    }
  }
}

- (CSPresentationViewControllerDelegate)presentationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_presentationDelegate);

  return WeakRetained;
}

- (void)dismissPresentationAnimated:completion:.cold.1()
{
  v5 = _SBFLoggingMethodProem();
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)handleAppearanceUpdateFromController:animationSettings:.cold.1()
{
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __81__CSPresentationViewController__updateContentViewControllersAnimated_completion___block_invoke_cold_1()
{
  v0 = objc_opt_class();
  v6 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_updatePresentationForViewController:(uint64_t)a1 presentation:(uint64_t)a2 animated:animationSettings:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSPresentationViewController.m" lineNumber:638 description:{@"Invalid parameter not satisfying: %@", @"presentation"}];
}

- (void)_updatePresentationForViewController:(uint64_t)a1 presentation:(uint64_t)a2 animated:animationSettings:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CSPresentationViewController.m" lineNumber:639 description:{@"Invalid parameter not satisfying: %@", @"viewController"}];
}

@end
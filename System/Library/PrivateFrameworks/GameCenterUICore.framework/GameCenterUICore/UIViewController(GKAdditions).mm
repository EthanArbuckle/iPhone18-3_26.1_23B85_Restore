@interface UIViewController(GKAdditions)
- (id)_gkPresentActivityViewControllerForActivityItems:()GKAdditions fromView:withCompletionHandler:;
- (uint64_t)_gkShouldRefreshContentsForDataType:()GKAdditions userInfo:;
- (uint64_t)_gkUpdateContentsWithCompletionHandlerAndError:()GKAdditions;
- (void)_gkConfigureFocusGuidesForNavigationBar:()GKAdditions;
- (void)_gkDismissActivityViewControllerAnimated:()GKAdditions;
- (void)_gkForceNextContentUpdate;
- (void)_gkHandleURLPathComponents:()GKAdditions query:;
- (void)_gkPresentActivityViewController:()GKAdditions fromView:;
- (void)_gkRefreshContentsForDataType:()GKAdditions userInfo:;
- (void)_gkResetContents;
- (void)_gkSetContentsNeedUpdateWithHandler:()GKAdditions;
@end

@implementation UIViewController(GKAdditions)

- (uint64_t)_gkUpdateContentsWithCompletionHandlerAndError:()GKAdditions
{
  if (a3)
  {
    return (*(a3 + 16))(a3, 0);
  }

  return result;
}

- (void)_gkResetContents
{
  [self _gkForceNextContentUpdate];
  presentedViewController = [self presentedViewController];
  [presentedViewController _gkResetContents];
}

- (void)_gkForceNextContentUpdate
{
  v2 = dispatch_get_current_queue();
  v3 = v2;
  if (v2 != MEMORY[0x277D85CD0])
  {
    v4 = MEMORY[0x277CCACA8];
    label = dispatch_queue_get_label(v2);
    v6 = MEMORY[0x277D85CD0];
    v7 = dispatch_queue_get_label(MEMORY[0x277D85CD0]);
    callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
    v9 = [v4 stringWithFormat:@"%s invoked on the wrong queue (got:%s expected:%s) at %@", "-[UIViewController(GKAdditions) _gkForceNextContentUpdate]", label, v7, callStackSymbols];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterUI/iOS/Framework/GKUIKitAdditions.m"];
    lastPathComponent = [v10 lastPathComponent];
    v12 = [v4 stringWithFormat:@"%@ (_actualCurrentQueue == dispatch_get_main_queue())\n[%s (%s:%d)]", v9, "-[UIViewController(GKAdditions) _gkForceNextContentUpdate]", objc_msgSend(lastPathComponent, "UTF8String"), 87];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v12}];
  }

  objc_setAssociatedObject(self, @"_gkContentUpdateHandlers", 0, 0x301);

  objc_setAssociatedObject(self, @"_gkContentRecentlyUpdated", 0, 0x301);
}

- (void)_gkSetContentsNeedUpdateWithHandler:()GKAdditions
{
  v3 = a3;
  v4 = MEMORY[0x277D85CD0];
  v5 = MEMORY[0x277D85CD0];
  v6 = v3;
  gk_dispatch_as_group();
}

- (void)_gkHandleURLPathComponents:()GKAdditions query:
{
  v14 = a3;
  v6 = a4;
  childViewControllers = [self childViewControllers];
  v8 = [childViewControllers count];

  if (v8)
  {
    childViewControllers2 = [self childViewControllers];
    presentedViewController3 = [childViewControllers2 objectAtIndex:0];

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  presentedViewController = [self presentedViewController];

  if (presentedViewController)
  {
    presentedViewController2 = [self presentedViewController];
    v13 = objc_opt_respondsToSelector();

    if (v13)
    {
      presentedViewController3 = [self presentedViewController];
LABEL_7:
      [presentedViewController3 _gkHandleURLPathComponents:v14 query:v6];
LABEL_8:
    }
  }
}

- (void)_gkDismissActivityViewControllerAnimated:()GKAdditions
{
  navigationController = [self navigationController];
  [navigationController dismissViewControllerAnimated:a3 completion:0];
}

- (void)_gkPresentActivityViewController:()GKAdditions fromView:
{
  v6 = a4;
  v7 = a3;
  popoverPresentationController = [v7 popoverPresentationController];
  [popoverPresentationController setSourceView:v6];

  navigationController = [self navigationController];
  [navigationController presentViewController:v7 animated:1 completion:0];
}

- (id)_gkPresentActivityViewControllerForActivityItems:()GKAdditions fromView:withCompletionHandler:
{
  v24[3] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __113__UIViewController_GKAdditions___gkPresentActivityViewControllerForActivityItems_fromView_withCompletionHandler___block_invoke;
  v21 = &unk_27967F000;
  selfCopy = self;
  v23 = v8;
  v9 = v8;
  v10 = a4;
  v11 = a3;
  v12 = MEMORY[0x253041B30](&v18);
  v13 = objc_alloc(objc_opt_class());
  v14 = [v13 initWithActivityItems:v11 applicationActivities:{0, v18, v19, v20, v21, selfCopy}];

  [v14 setCompletionWithItemsHandler:v12];
  v15 = *MEMORY[0x277D54708];
  v24[0] = *MEMORY[0x277D54710];
  v24[1] = v15;
  v24[2] = *MEMORY[0x277D54720];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:3];
  [v14 setExcludedActivityTypes:v16];

  [self _gkPresentActivityViewController:v14 fromView:v10];

  return v14;
}

- (void)_gkRefreshContentsForDataType:()GKAdditions userInfo:
{
  v8 = a4;
  presentedViewController = [self presentedViewController];
  v7 = presentedViewController;
  if (presentedViewController && [presentedViewController _gkShouldRefreshContentsForDataType:a3 userInfo:v8])
  {
    [v7 _gkRefreshContentsForDataType:a3 userInfo:v8];
  }

  if ([self _gkShouldRefreshContentsForDataType:a3 userInfo:v8])
  {
    [v7 _gkRefreshContentsForDataType:a3 userInfo:v8];
  }
}

- (uint64_t)_gkShouldRefreshContentsForDataType:()GKAdditions userInfo:
{
  v6 = a4;
  presentedViewController = [self presentedViewController];
  v8 = presentedViewController;
  if (presentedViewController)
  {
    v9 = [presentedViewController _gkShouldRefreshContentsForDataType:a3 userInfo:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_gkConfigureFocusGuidesForNavigationBar:()GKAdditions
{
  v52[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277D75500];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    v52[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
    [v6 setPreferredFocusEnvironments:v7];

    view = [self view];
    [view addLayoutGuide:v6];

    v9 = objc_alloc_init(MEMORY[0x277D75500]);
    v51 = v5;
    v24 = v5;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
    [v9 setPreferredFocusEnvironments:v10];

    view2 = [self view];
    [view2 addLayoutGuide:v9];

    v34 = MEMORY[0x277CCAAD0];
    leadingAnchor = [v6 leadingAnchor];
    view3 = [self view];
    leadingAnchor2 = [view3 leadingAnchor];
    v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v50[0] = v46;
    trailingAnchor = [v6 trailingAnchor];
    view4 = [self view];
    trailingAnchor2 = [view4 trailingAnchor];
    v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v50[1] = v41;
    v43 = v6;
    topAnchor = [v6 topAnchor];
    view5 = [self view];
    topAnchor2 = [view5 topAnchor];
    v37 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v50[2] = v37;
    bottomAnchor = [v6 bottomAnchor];
    view6 = [self view];
    topAnchor3 = [view6 topAnchor];
    [v5 frame];
    v32 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:v12];
    v50[3] = v32;
    leadingAnchor3 = [v9 leadingAnchor];
    view7 = [self view];
    leadingAnchor4 = [view7 leadingAnchor];
    v27 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v50[4] = v27;
    trailingAnchor3 = [v9 trailingAnchor];
    view8 = [self view];
    trailingAnchor4 = [view8 trailingAnchor];
    v13 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v50[5] = v13;
    v31 = v9;
    topAnchor4 = [v9 topAnchor];
    view9 = [self view];
    topAnchor5 = [view9 topAnchor];
    v17 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v50[6] = v17;
    bottomAnchor2 = [v9 bottomAnchor];
    view10 = [self view];
    topAnchor6 = [view10 topAnchor];
    v21 = [bottomAnchor2 constraintEqualToAnchor:topAnchor6 constant:1.0];
    v50[7] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:8];
    [v34 activateConstraints:v22];
  }
}

@end
@interface CSMagSafeAccessoryViewController
- (BOOL)handleEvent:(id)event;
- (CSMagSafeAccessoryViewController)initWithAccessory:(id)accessory;
- (void)aggregateAppearance:(id)appearance;
- (void)aggregateBehavior:(id)behavior;
- (void)performDismissalAnimationWithCompletionHandler:(id)handler;
@end

@implementation CSMagSafeAccessoryViewController

- (CSMagSafeAccessoryViewController)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v9.receiver = self;
  v9.super_class = CSMagSafeAccessoryViewController;
  v6 = [(CSMagSafeAccessoryViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_accessory, accessory);
  }

  return v7;
}

- (void)performDismissalAnimationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  accessoryView = [(CSMagSafeAccessoryViewController *)self accessoryView];
  [accessoryView performAnimation:1 completionHandler:handlerCopy];
}

- (void)aggregateAppearance:(id)appearance
{
  appearanceCopy = appearance;
  v5 = +[CSComponent statusBar];
  v6 = [v5 priority:40];
  v7 = [v6 hidden:1];
  [appearanceCopy addComponent:v7];

  v8 = +[CSComponent dateView];
  v9 = [v8 priority:40];
  v10 = [v9 hidden:1];
  [appearanceCopy addComponent:v10];

  v11 = +[CSComponent backgroundContent];
  v12 = [v11 priority:40];
  v13 = [v12 hidden:1];
  [appearanceCopy addComponent:v13];

  v14 = +[CSComponent pageContent];
  v15 = [v14 priority:40];
  v16 = [v15 hidden:1];
  [appearanceCopy addComponent:v16];

  v17 = +[CSComponent pageControl];
  v18 = [v17 priority:40];
  v19 = [v18 hidden:1];
  [appearanceCopy addComponent:v19];

  v20 = +[CSComponent proudLock];
  v21 = [v20 priority:40];
  v22 = [v21 hidden:1];
  [appearanceCopy addComponent:v22];

  v23 = +[CSComponent quickActions];
  v24 = [v23 priority:40];
  v25 = [v24 hidden:1];
  [appearanceCopy addComponent:v25];

  v26 = +[CSComponent controlCenterGrabber];
  v27 = [v26 priority:40];
  v28 = [v27 hidden:1];
  [appearanceCopy addComponent:v28];

  v29 = +[CSComponent homeAffordance];
  v30 = [v29 priority:40];
  v31 = [v30 hidden:1];
  [appearanceCopy addComponent:v31];

  v32 = +[CSComponent complicationContainer];
  v33 = [v32 priority:40];
  v34 = [v33 hidden:1];
  [appearanceCopy addComponent:v34];

  v35.receiver = self;
  v35.super_class = CSMagSafeAccessoryViewController;
  [(CSCoverSheetViewControllerBase *)&v35 aggregateAppearance:appearanceCopy];
}

- (void)aggregateBehavior:(id)behavior
{
  v10.receiver = self;
  v10.super_class = CSMagSafeAccessoryViewController;
  behaviorCopy = behavior;
  [(CSCoverSheetViewControllerBase *)&v10 aggregateBehavior:behaviorCopy];
  [behaviorCopy addRestrictedCapabilities:{4348, v10.receiver, v10.super_class}];
  [behaviorCopy setScrollingStrategy:3];
  v5 = +[CSLockScreenDomain rootSettings];
  chargingSettings = [v5 chargingSettings];
  warnForIdleDim = [chargingSettings warnForIdleDim];

  if (([(CSMagSafeAccessoryViewController *)self isStatic]& (warnForIdleDim ^ 1)) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [behaviorCopy setIdleWarnMode:v8];
  [behaviorCopy setIdleTimerMode:1];
  if ([(CSMagSafeAccessoryViewController *)self isStatic])
  {
    v9 = 15;
  }

  else
  {
    v9 = 0;
  }

  [behaviorCopy setIdleTimerDuration:v9];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = CSMagSafeAccessoryViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v8, sel_handleEvent_, eventCopy) && ([eventCopy isConsumable] & 1) != 0)
  {
    goto LABEL_11;
  }

  type = [eventCopy type];
  if (type == 28)
  {
    if (![(CSMagSafeAccessoryViewController *)self isStatic]&& ![(CSMagSafeAccessoryViewController *)self isAnimatingPresentation])
    {
      goto LABEL_10;
    }
  }

  else if (type == 25 && ![(CSMagSafeAccessoryViewController *)self isStatic])
  {
LABEL_10:
    [(CSCoverSheetViewControllerBase *)self dismiss];
LABEL_11:
    isConsumable = [eventCopy isConsumable];
    goto LABEL_12;
  }

  isConsumable = 0;
LABEL_12:

  return isConsumable;
}

@end
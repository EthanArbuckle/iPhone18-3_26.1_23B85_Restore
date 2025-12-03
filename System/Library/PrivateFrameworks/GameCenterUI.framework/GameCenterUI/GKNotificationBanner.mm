@interface GKNotificationBanner
+ (BOOL)isBannerVisible;
+ (BOOL)isWelcomeOrSignInBannerEnqueued;
+ (id)bannerViewWithTitle:(id)title image:(id)image player:(id)player message:(id)message;
+ (id)bannerViewWithTitle:(id)title image:(id)image player:(id)player message:(id)message actionMessage:(id)actionMessage;
+ (id)bannerViewWithTitle:(id)title image:(id)image player:(id)player message:(id)message actionMessage:(id)actionMessage shortBanner:(BOOL)banner;
+ (id)bannerViewWithTitle:(id)title message:(id)message actionMessage:(id)actionMessage;
+ (void)setIsWelcomeOrSignInBannerEnqueued:(BOOL)enqueued;
+ (void)showAchievementBannerWithTitle:(id)title achievementImage:(id)image message:(id)message touchHandler:(id)handler;
+ (void)showBannerWithTitle:(NSString *)title message:(NSString *)message completionHandler:(void *)completionHandler;
+ (void)showBannerWithTitle:(NSString *)title message:(NSString *)message duration:(NSTimeInterval)duration completionHandler:(void *)completionHandler;
+ (void)showBannerWithTitle:(id)title image:(id)image message:(id)message completionHandler:(id)handler;
+ (void)showBannerWithTitle:(id)title image:(id)image message:(id)message touchHandler:(id)handler;
+ (void)showBannerWithTitle:(id)title message:(id)message touchHandler:(id)handler completionHandler:(id)completionHandler;
+ (void)showBannerWithTitle:(id)title player:(id)player message:(id)message completionHandler:(id)handler;
+ (void)showBannerWithTitle:(id)title player:(id)player message:(id)message touchHandler:(id)handler;
+ (void)showWelcomeBannerWithTitle:(id)title message:(id)message touchHandler:(id)handler completionHandler:(id)completionHandler;
@end

@implementation GKNotificationBanner

+ (BOOL)isWelcomeOrSignInBannerEnqueued
{
  objc_sync_enter(@"GKNotificationBannerSyncObject");
  v2 = _isWelcomeOrSignInBannerEnqueued;
  objc_sync_exit(@"GKNotificationBannerSyncObject");
  return v2;
}

+ (void)setIsWelcomeOrSignInBannerEnqueued:(BOOL)enqueued
{
  objc_sync_enter(@"GKNotificationBannerSyncObject");
  _isWelcomeOrSignInBannerEnqueued = enqueued;

  objc_sync_exit(@"GKNotificationBannerSyncObject");
}

+ (id)bannerViewWithTitle:(id)title image:(id)image player:(id)player message:(id)message
{
  messageCopy = message;
  playerCopy = player;
  imageCopy = image;
  titleCopy = title;
  v13 = [objc_opt_class() bannerViewWithTitle:titleCopy image:imageCopy player:playerCopy message:messageCopy actionMessage:0 shortBanner:0];

  return v13;
}

+ (id)bannerViewWithTitle:(id)title image:(id)image player:(id)player message:(id)message actionMessage:(id)actionMessage
{
  actionMessageCopy = actionMessage;
  messageCopy = message;
  playerCopy = player;
  imageCopy = image;
  titleCopy = title;
  v16 = [objc_opt_class() bannerViewWithTitle:titleCopy image:imageCopy player:playerCopy message:messageCopy actionMessage:actionMessageCopy shortBanner:0];

  return v16;
}

+ (id)bannerViewWithTitle:(id)title image:(id)image player:(id)player message:(id)message actionMessage:(id)actionMessage shortBanner:(BOOL)banner
{
  bannerCopy = banner;
  titleCopy = title;
  imageCopy = image;
  playerCopy = player;
  messageCopy = message;
  actionMessageCopy = actionMessage;
  if (imageCopy)
  {
    v18 = [[GKNotificationBannerView alloc] initWithTitle:titleCopy image:imageCopy message:messageCopy useShortBanner:bannerCopy];
LABEL_5:
    v21 = v18;
    goto LABEL_6;
  }

  v19 = [GKNotificationBannerView alloc];
  v20 = v19;
  if (playerCopy)
  {
    v18 = [(GKNotificationBannerView *)v19 initWithTitle:titleCopy player:playerCopy leadingAccessoryView:0 message:messageCopy useShortBanner:bannerCopy];
    goto LABEL_5;
  }

  mEMORY[0x277D0C8C8] = [MEMORY[0x277D0C8C8] sharedTheme];
  eventIconImage = [mEMORY[0x277D0C8C8] eventIconImage];
  v21 = [(GKNotificationBannerView *)v20 initWithTitle:titleCopy image:eventIconImage message:messageCopy useShortBanner:bannerCopy];

LABEL_6:

  return v21;
}

+ (void)showWelcomeBannerWithTitle:(id)title message:(id)message touchHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  messageCopy = message;
  titleCopy = title;
  v13 = [objc_opt_class() bannerViewWithTitle:titleCopy image:0 player:0 message:messageCopy actionMessage:0 shortBanner:1];

  [v13 setTouchHandler:handlerCopy];
  [v13 setAccessibilityIdentifier:@"UIA.GameCenter.GKNotificationBannerView.WelcomeBanner"];
  [v13 showPlayerAvatarAnimationWithCompletionHandler:completionHandlerCopy];
}

+ (void)showBannerWithTitle:(id)title message:(id)message touchHandler:(id)handler completionHandler:(id)completionHandler
{
  completionHandlerCopy = completionHandler;
  handlerCopy = handler;
  messageCopy = message;
  titleCopy = title;
  v13 = [objc_opt_class() bannerViewWithTitle:titleCopy image:0 player:0 message:messageCopy];

  [v13 setTouchHandler:handlerCopy];
  [v13 showWithCompletionHandler:completionHandlerCopy];
}

+ (void)showBannerWithTitle:(NSString *)title message:(NSString *)message completionHandler:(void *)completionHandler
{
  v7 = completionHandler;
  v8 = message;
  v9 = title;
  v10 = [objc_opt_class() bannerViewWithTitle:v9 image:0 player:0 message:v8];

  [v10 showWithCompletionHandler:v7];
}

+ (void)showBannerWithTitle:(NSString *)title message:(NSString *)message duration:(NSTimeInterval)duration completionHandler:(void *)completionHandler
{
  v9 = completionHandler;
  v10 = message;
  v11 = title;
  v12 = [objc_opt_class() bannerViewWithTitle:v11 image:0 player:0 message:v10];

  [v12 setDuration:duration];
  [v12 showWithCompletionHandler:v9];
}

+ (void)showBannerWithTitle:(id)title image:(id)image message:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  imageCopy = image;
  titleCopy = title;
  v13 = [objc_opt_class() bannerViewWithTitle:titleCopy image:imageCopy player:0 message:messageCopy];

  [v13 showWithCompletionHandler:handlerCopy];
}

+ (void)showBannerWithTitle:(id)title image:(id)image message:(id)message touchHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  imageCopy = image;
  titleCopy = title;
  v13 = [objc_opt_class() bannerViewWithTitle:titleCopy image:imageCopy player:0 message:messageCopy];

  [v13 showWithTouchHandler:handlerCopy];
}

+ (void)showBannerWithTitle:(id)title player:(id)player message:(id)message completionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  playerCopy = player;
  titleCopy = title;
  v13 = [objc_opt_class() bannerViewWithTitle:titleCopy image:0 player:playerCopy message:messageCopy];

  [v13 showWithCompletionHandler:handlerCopy];
}

+ (void)showBannerWithTitle:(id)title player:(id)player message:(id)message touchHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  playerCopy = player;
  titleCopy = title;
  v13 = [objc_opt_class() bannerViewWithTitle:titleCopy image:0 player:playerCopy message:messageCopy];

  [v13 showWithTouchHandler:handlerCopy];
}

+ (BOOL)isBannerVisible
{
  v2 = +[GKNotificationBannerWindow bannerWindow];
  currentBannerViewController = [v2 currentBannerViewController];
  bannerVisible = [currentBannerViewController bannerVisible];

  return bannerVisible;
}

+ (id)bannerViewWithTitle:(id)title message:(id)message actionMessage:(id)actionMessage
{
  actionMessageCopy = actionMessage;
  messageCopy = message;
  titleCopy = title;
  v10 = [objc_opt_class() bannerViewWithTitle:titleCopy image:0 player:0 message:messageCopy actionMessage:actionMessageCopy];

  return v10;
}

+ (void)showAchievementBannerWithTitle:(id)title achievementImage:(id)image message:(id)message touchHandler:(id)handler
{
  imageCopy = image;
  handlerCopy = handler;
  if (imageCopy)
  {
    messageCopy = message;
    titleCopy = title;
    titleCopy2 = [[_TtC12GameCenterUI35AchievementBannerImageContainerView alloc] initWithAchievementImage:imageCopy];
    messageCopy2 = [[GKNotificationBannerView alloc] initWithTitle:titleCopy player:0 leadingAccessoryView:titleCopy2 message:messageCopy useShortBanner:0];

    [(GKNotificationBannerView *)messageCopy2 showWithTouchHandler:handlerCopy];
  }

  else
  {
    messageCopy2 = message;
    titleCopy2 = title;
    [objc_opt_class() showBannerWithTitle:titleCopy2 image:0 message:messageCopy2 touchHandler:handlerCopy];
  }
}

@end
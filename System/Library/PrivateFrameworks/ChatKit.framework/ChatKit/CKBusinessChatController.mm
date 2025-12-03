@interface CKBusinessChatController
- (BOOL)canShowBusinessOnboarding;
- (int64_t)preferredStatusBarStyle;
- (void)_handleAddressBookChangedNotification:(id)notification;
- (void)_updateNavigationUI;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation CKBusinessChatController

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CKBusinessChatController;
  [(CKChatController *)&v3 loadView];
  [(CKBusinessChatController *)self setupBizNavBarIfNecessary];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CKBusinessChatController;
  [(CKChatController *)&v4 viewWillDisappear:disappear];
  [(CKBusinessChatController *)self cleanUpBizNavBarIfNecessary];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = CKBusinessChatController;
  [(CKChatController *)&v3 viewDidLayoutSubviews];
  [(CKBusinessChatController *)self setupBizNavBarIfNecessary];
}

- (int64_t)preferredStatusBarStyle
{
  v3.receiver = self;
  v3.super_class = CKBusinessChatController;
  return [(CKChatController *)&v3 preferredStatusBarStyle];
}

- (void)_handleAddressBookChangedNotification:(id)notification
{
  v4.receiver = self;
  v4.super_class = CKBusinessChatController;
  [(CKChatController *)&v4 _handleAddressBookChangedNotification:notification];
  [(CKBusinessChatController *)self setupBizNavBarIfNecessary];
}

- (void)_updateNavigationUI
{
  v3.receiver = self;
  v3.super_class = CKBusinessChatController;
  [(CKChatController *)&v3 _updateNavigationUI];
  [(CKBusinessChatController *)self setupBizNavBarIfNecessary];
}

- (BOOL)canShowBusinessOnboarding
{
  conversation = [(CKCoreChatController *)self conversation];
  isMapKitBusinessConversation = [conversation isMapKitBusinessConversation];

  return isMapKitBusinessConversation;
}

@end
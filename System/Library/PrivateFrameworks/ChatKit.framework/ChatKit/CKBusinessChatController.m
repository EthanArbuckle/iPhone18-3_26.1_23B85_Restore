@interface CKBusinessChatController
- (BOOL)canShowBusinessOnboarding;
- (int64_t)preferredStatusBarStyle;
- (void)_handleAddressBookChangedNotification:(id)a3;
- (void)_updateNavigationUI;
- (void)loadView;
- (void)viewDidLayoutSubviews;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CKBusinessChatController

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = CKBusinessChatController;
  [(CKChatController *)&v3 loadView];
  [(CKBusinessChatController *)self setupBizNavBarIfNecessary];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CKBusinessChatController;
  [(CKChatController *)&v4 viewWillDisappear:a3];
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

- (void)_handleAddressBookChangedNotification:(id)a3
{
  v4.receiver = self;
  v4.super_class = CKBusinessChatController;
  [(CKChatController *)&v4 _handleAddressBookChangedNotification:a3];
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
  v2 = [(CKCoreChatController *)self conversation];
  v3 = [v2 isMapKitBusinessConversation];

  return v3;
}

@end
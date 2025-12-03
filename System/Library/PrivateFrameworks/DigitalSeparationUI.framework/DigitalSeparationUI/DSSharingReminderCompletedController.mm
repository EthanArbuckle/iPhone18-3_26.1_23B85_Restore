@interface DSSharingReminderCompletedController
- (DSNavigationDelegate)delegate;
- (DSSharingReminderCompletedController)init;
- (void)viewDidLoad;
@end

@implementation DSSharingReminderCompletedController

- (DSSharingReminderCompletedController)init
{
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"checklist"];
  v6.receiver = self;
  v6.super_class = DSSharingReminderCompletedController;
  v4 = [(DSSharingReminderCompletedController *)&v6 initWithTitle:&stru_285BA4988 detailText:&stru_285BA4988 icon:v3];

  return v4;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = DSSharingReminderCompletedController;
  [(DSOBWelcomeController *)&v24 viewDidLoad];
  delegate = [(DSSharingReminderCompletedController *)self delegate];
  unpairedComputers = [(DSSharingReminderCompletedController *)delegate unpairedComputers];
  v5 = [unpairedComputers count];

  headerView = [(DSSharingReminderCompletedController *)self headerView];
  v7 = v5 == 0;
  if (v5)
  {
    v8 = @"SHARING_REMINDER_WIFI_SYNC_TITLE_CHANGED";
  }

  else
  {
    v8 = @"SHARING_REMINDER_WIFI_SYNC_TITLE_NO_CHANGE";
  }

  if (v5)
  {
    v9 = @"SHARING_REMINDER_WIFI_SYNC_DETAIL_CHANGED";
  }

  else
  {
    v9 = @"SHARING_REMINDER_WIFI_SYNC_DETAIL_NO_CHANGE";
  }

  if (v5)
  {
    v10 = @"CONTINUE";
  }

  else
  {
    v10 = @"DONE";
  }

  if (v5)
  {
    selfCopy = delegate;
  }

  else
  {
    selfCopy = self;
  }

  if (v5)
  {
    v12 = @"DONE";
  }

  else
  {
    v12 = @"SHARING_REMINDER_EXPLORE";
  }

  if (v7)
  {
    selfCopy2 = delegate;
  }

  else
  {
    selfCopy2 = self;
  }

  v23 = selfCopy2;
  if (v7)
  {
    v14 = &selRef_done;
  }

  else
  {
    v14 = &selRef_goToCustomizeSharing;
  }

  if (v7)
  {
    v15 = &selRef_goToCustomizeSharing;
  }

  else
  {
    v15 = &selRef_done;
  }

  v16 = DSUILocStringForKey(v8);
  [headerView setTitle:v16];

  headerView2 = [(DSSharingReminderCompletedController *)self headerView];
  v18 = DSUILocStringForKey(v9);
  [headerView2 setDetailText:v18];

  v19 = DSUILocStringForKey(v10);
  v20 = [DSUIUtilities setUpBoldButtonForController:self title:v19 target:selfCopy selector:*v14];

  v21 = DSUILocStringForKey(v12);
  v22 = [DSUIUtilities setUpLinkButtonForController:self title:v21 target:v23 selector:*v15];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
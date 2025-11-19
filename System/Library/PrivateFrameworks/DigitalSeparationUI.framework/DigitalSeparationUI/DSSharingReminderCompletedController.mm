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
  v3 = [(DSSharingReminderCompletedController *)self delegate];
  v4 = [(DSSharingReminderCompletedController *)v3 unpairedComputers];
  v5 = [v4 count];

  v6 = [(DSSharingReminderCompletedController *)self headerView];
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
    v11 = v3;
  }

  else
  {
    v11 = self;
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
    v13 = v3;
  }

  else
  {
    v13 = self;
  }

  v23 = v13;
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
  [v6 setTitle:v16];

  v17 = [(DSSharingReminderCompletedController *)self headerView];
  v18 = DSUILocStringForKey(v9);
  [v17 setDetailText:v18];

  v19 = DSUILocStringForKey(v10);
  v20 = [DSUIUtilities setUpBoldButtonForController:self title:v19 target:v11 selector:*v14];

  v21 = DSUILocStringForKey(v12);
  v22 = [DSUIUtilities setUpLinkButtonForController:self title:v21 target:v23 selector:*v15];
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface FLSampleExtensionViewController
- (void)_appeared;
- (void)followUpPerformUpdateWithCompletionHandler:(id)a3;
- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5;
@end

@implementation FLSampleExtensionViewController

- (void)followUpPerformUpdateWithCompletionHandler:(id)a3
{
  v3 = a3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100000CAC;
  v6[3] = &unk_100004150;
  v7 = objc_alloc_init(FLFollowUpController);
  v8 = v3;
  v4 = v3;
  v5 = v7;
  [v5 pendingFollowUpItemsWithCompletion:v6];
}

- (void)processFollowUpItem:(id)a3 selectedAction:(id)a4 completion:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = _FLLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Extension processing item: %@ action: %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_activeItem, a3);
  objc_storeStrong(&self->_activeAction, a4);
  v13 = [v10 identifier];
  v14 = [v13 isEqualToString:@"com.followup.clear_notification_action"];

  if (v14)
  {
    v15 = objc_alloc_init(FLFollowUpController);
    [v15 clearNotificationForItem:v9 error:0];
LABEL_7:
    v11[2](v11, 1);

    goto LABEL_15;
  }

  v16 = [v10 identifier];
  v17 = [v16 isEqualToString:@"com.followup.clear_item_action"];

  if (v17)
  {
    v15 = objc_alloc_init(FLFollowUpController);
    v18 = [v9 uniqueIdentifier];
    v23 = v18;
    v19 = [NSArray arrayWithObjects:&v23 count:1];
    [v15 clearPendingFollowUpItemsWithUniqueIdentifiers:v19 error:0];

    goto LABEL_7;
  }

  v20 = [v10 label];
  v21 = [v20 isEqualToString:@"ADDED LATER"];

  if (v21)
  {
    [v10 _loadActionURL];
LABEL_14:
    v11[2](v11, 1);
    goto LABEL_15;
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  [NSThread sleepForTimeInterval:1.0];
  v22 = _FLLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v9;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Extension processed item %@", buf, 0xCu);
  }

  v11[2](v11, 0);
LABEL_15:
}

- (void)_appeared
{
  v3 = [(FLFollowUpAction *)self->_activeAction label];
  v4 = [NSNumber numberWithUnsignedInteger:[(FLFollowUpAction *)self->_activeAction eventSource]];
  v5 = [NSString stringWithFormat:@"Dismiss - %@ - %@", v3, v4];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001378;
  v11[3] = &unk_100004178;
  v11[4] = self;
  v6 = [FLAlertControllerAction actionWithTitle:v5 style:0 handler:v11];
  v12 = v6;
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v8 = [v7 mutableCopy];

  v9 = [(FLFollowUpAction *)self->_activeAction identifier];
  LODWORD(v4) = [v9 isEqualToString:@"com.followup.crash"];

  if (v4)
  {
    v10 = [FLAlertControllerAction actionWithTitle:@"Crash" style:2 handler:&stru_1000041B8];
    [v8 addObject:v10];
  }

  [FLAlertControllerHelper presentAlertWithTitle:@"Extension Alert" message:@"We are running in extension process now" actions:v8 presentingController:self];
}

@end
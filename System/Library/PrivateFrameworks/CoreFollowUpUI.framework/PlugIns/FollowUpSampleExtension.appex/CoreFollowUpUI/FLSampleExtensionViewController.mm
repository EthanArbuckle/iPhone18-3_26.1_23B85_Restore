@interface FLSampleExtensionViewController
- (void)_appeared;
- (void)followUpPerformUpdateWithCompletionHandler:(id)handler;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
@end

@implementation FLSampleExtensionViewController

- (void)followUpPerformUpdateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100000CAC;
  v6[3] = &unk_100004150;
  v7 = objc_alloc_init(FLFollowUpController);
  v8 = handlerCopy;
  v4 = handlerCopy;
  v5 = v7;
  [v5 pendingFollowUpItemsWithCompletion:v6];
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  itemCopy = item;
  actionCopy = action;
  completionCopy = completion;
  v12 = _FLLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v25 = itemCopy;
    v26 = 2112;
    v27 = actionCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Extension processing item: %@ action: %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_activeItem, item);
  objc_storeStrong(&self->_activeAction, action);
  identifier = [actionCopy identifier];
  v14 = [identifier isEqualToString:@"com.followup.clear_notification_action"];

  if (v14)
  {
    v15 = objc_alloc_init(FLFollowUpController);
    [v15 clearNotificationForItem:itemCopy error:0];
LABEL_7:
    completionCopy[2](completionCopy, 1);

    goto LABEL_15;
  }

  identifier2 = [actionCopy identifier];
  v17 = [identifier2 isEqualToString:@"com.followup.clear_item_action"];

  if (v17)
  {
    v15 = objc_alloc_init(FLFollowUpController);
    uniqueIdentifier = [itemCopy uniqueIdentifier];
    v23 = uniqueIdentifier;
    v19 = [NSArray arrayWithObjects:&v23 count:1];
    [v15 clearPendingFollowUpItemsWithUniqueIdentifiers:v19 error:0];

    goto LABEL_7;
  }

  label = [actionCopy label];
  v21 = [label isEqualToString:@"ADDED LATER"];

  if (v21)
  {
    [actionCopy _loadActionURL];
LABEL_14:
    completionCopy[2](completionCopy, 1);
    goto LABEL_15;
  }

  if (!actionCopy)
  {
    goto LABEL_14;
  }

  [NSThread sleepForTimeInterval:1.0];
  v22 = _FLLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = itemCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Extension processed item %@", buf, 0xCu);
  }

  completionCopy[2](completionCopy, 0);
LABEL_15:
}

- (void)_appeared
{
  label = [(FLFollowUpAction *)self->_activeAction label];
  v4 = [NSNumber numberWithUnsignedInteger:[(FLFollowUpAction *)self->_activeAction eventSource]];
  v5 = [NSString stringWithFormat:@"Dismiss - %@ - %@", label, v4];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100001378;
  v11[3] = &unk_100004178;
  v11[4] = self;
  v6 = [FLAlertControllerAction actionWithTitle:v5 style:0 handler:v11];
  v12 = v6;
  v7 = [NSArray arrayWithObjects:&v12 count:1];
  v8 = [v7 mutableCopy];

  identifier = [(FLFollowUpAction *)self->_activeAction identifier];
  LODWORD(v4) = [identifier isEqualToString:@"com.followup.crash"];

  if (v4)
  {
    v10 = [FLAlertControllerAction actionWithTitle:@"Crash" style:2 handler:&stru_1000041B8];
    [v8 addObject:v10];
  }

  [FLAlertControllerHelper presentAlertWithTitle:@"Extension Alert" message:@"We are running in extension process now" actions:v8 presentingController:self];
}

@end
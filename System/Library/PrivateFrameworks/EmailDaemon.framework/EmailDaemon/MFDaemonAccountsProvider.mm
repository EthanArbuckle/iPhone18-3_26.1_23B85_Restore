@interface MFDaemonAccountsProvider
- (MFDaemonAccountsProvider)initWithFocusController:(id)controller;
- (void)_handleAccountChange;
- (void)currentFocusChanged:(id)changed;
- (void)dealloc;
@end

@implementation MFDaemonAccountsProvider

- (MFDaemonAccountsProvider)initWithFocusController:(id)controller
{
  controllerCopy = controller;
  v23.receiver = self;
  v23.super_class = MFDaemonAccountsProvider;
  v5 = [(MFMailAccountsProvider *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v7 = [controllerCopy addObserver:v5 currentFocus:&v5->_currentFocus];
    focusObservationToken = v6->_focusObservationToken;
    v6->_focusObservationToken = v7;

    v9 = +[MailAccount mailAccounts];
    v10 = [(MFMailAccountsProvider *)v6 reloadWithMailAccounts:v9 currentFocus:v6->_currentFocus];

    v11 = +[MFMailMessageLibrary defaultInstance];
    mailAccounts = [(MFMailAccountsProvider *)v6 mailAccounts];
    [v11 rebuildActiveAccountsClausesAndExpressionsWithAccounts:mailAccounts];

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_attr_make_with_qos_class(v13, QOS_CLASS_UTILITY, 0);
    v15 = dispatch_queue_create("com.apple.mobilemail.DaemonAccountsProvider", v14);
    queue = v6->_queue;
    v6->_queue = v15;

    objc_initWeak(&location, v6);
    v17 = kMFMailAccountsChangedNotification;
    v18 = v6->_queue;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100051EDC;
    v20[3] = &unk_100157F48;
    objc_copyWeak(&v21, &location);
    notify_register_dispatch(v17, &v6->_accountChangeNotificationToken, v18, v20);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  notify_cancel(self->_accountChangeNotificationToken);
  v3.receiver = self;
  v3.super_class = MFDaemonAccountsProvider;
  [(MFDaemonAccountsProvider *)&v3 dealloc];
}

- (void)_handleAccountChange
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = +[MFMailMessageLibrary defaultInstance];
  [v3 prepareToRebuildActiveAccountsClausesAndExpressions];

  +[MailAccount reloadAccounts];
  +[DeliveryAccount reloadDeliveryAccounts];
  v4 = +[MailAccount mailAccounts];
  v5 = +[MFMailMessageLibrary defaultInstance];
  [v5 rebuildActiveAccountsClausesAndExpressionsWithAccounts:v4];

  currentFocus = [(MFDaemonAccountsProvider *)self currentFocus];
  v7 = [(MFMailAccountsProvider *)self reloadWithMailAccounts:v4 currentFocus:currentFocus];

  +[MessageBodyLoader accountsDidChange];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  first = [v7 first];
  mailAccounts = [first mailAccounts];

  v10 = [mailAccounts countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v10)
  {
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(mailAccounts);
        }

        [*(*(&v28 + 1) + 8 * v12) stopListeningForNotifications];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [mailAccounts countByEnumeratingWithState:&v28 objects:v35 count:16];
    }

    while (v10);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  second = [v7 second];
  mailAccounts2 = [second mailAccounts];

  v15 = [mailAccounts2 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v15)
  {
    v16 = *v25;
    do
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(mailAccounts2);
        }

        [*(*(&v24 + 1) + 8 * v17) startListeningForNotifications];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [mailAccounts2 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v15);
  }

  v32[0] = ECMailAccountsDidChangeNotificationKeyPreviousAccountIdentifiers;
  first2 = [v7 first];
  displayedAccountsIdentifiers = [first2 displayedAccountsIdentifiers];
  v33[0] = displayedAccountsIdentifiers;
  v32[1] = ECMailAccountsDidChangeNotificationKeyAccountIdentifiers;
  second2 = [v7 second];
  displayedAccountsIdentifiers2 = [second2 displayedAccountsIdentifiers];
  v33[1] = displayedAccountsIdentifiers2;
  v22 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

  v23 = +[NSNotificationCenter defaultCenter];
  [v23 postNotificationName:ECMailAccountsDidChangeNotification object:self userInfo:v22];
}

- (void)currentFocusChanged:(id)changed
{
  changedCopy = changed;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10005246C;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

@end
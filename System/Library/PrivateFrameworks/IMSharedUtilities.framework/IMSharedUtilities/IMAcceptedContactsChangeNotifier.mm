@interface IMAcceptedContactsChangeNotifier
+ (id)notifierWithBlock:(id)block;
- (IMAcceptedContactsChangeNotifier)initWithNotification:(__CFString *)notification block:(id)block;
- (void)_notifyObserver;
- (void)dealloc;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation IMAcceptedContactsChangeNotifier

+ (id)notifierWithBlock:(id)block
{
  blockCopy = block;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = qword_1ED8C9BD0;
  v13 = qword_1ED8C9BD0;
  if (!qword_1ED8C9BD0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A867A4D4;
    v9[3] = &unk_1E78261C8;
    v9[4] = &v10;
    sub_1A867A4D4(v9);
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v4)
  {
    sub_1A88C02E0();
    v8 = v7;
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v8);
  }

  v5 = [[IMAcceptedContactsChangeNotifier alloc] initWithNotification:*v4 block:blockCopy];

  return v5;
}

- (IMAcceptedContactsChangeNotifier)initWithNotification:(__CFString *)notification block:(id)block
{
  blockCopy = block;
  v12.receiver = self;
  v12.super_class = IMAcceptedContactsChangeNotifier;
  v7 = [(IMAcceptedContactsChangeNotifier *)&v12 init];
  v8 = v7;
  if (v7)
  {
    v7->_notification = notification;
    v9 = [blockCopy copy];
    notifyBlock = v8->_notifyBlock;
    v8->_notifyBlock = v9;
  }

  return v8;
}

- (void)startObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  notification = [(IMAcceptedContactsChangeNotifier *)self notification];

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1A867A360, notification, 0, 1026);
}

- (void)stopObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  notification = [(IMAcceptedContactsChangeNotifier *)self notification];

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, notification, 0);
}

- (void)_notifyObserver
{
  notifyBlock = [(IMAcceptedContactsChangeNotifier *)self notifyBlock];
  notifyBlock[2]();
}

- (void)dealloc
{
  [(IMAcceptedContactsChangeNotifier *)self stopObserving];
  v3.receiver = self;
  v3.super_class = IMAcceptedContactsChangeNotifier;
  [(IMAcceptedContactsChangeNotifier *)&v3 dealloc];
}

@end
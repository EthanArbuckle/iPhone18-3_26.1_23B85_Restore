@interface MFNanoServerMessageSender
- (MFNanoServerMessageSender)init;
- (id)_libraryMessageForMessageId:(id)id;
- (id)_messageToSendWithCompositionContext:(id)context;
- (id)_sendComposedMessage:(id)message;
- (void)_didReceiveMessageDeliveryNotification:(id)notification;
- (void)sendMessage:(id)message progressHandler:(id)handler;
@end

@implementation MFNanoServerMessageSender

- (MFNanoServerMessageSender)init
{
  v17.receiver = self;
  v17.super_class = MFNanoServerMessageSender;
  v2 = [(MFNanoServerMessageSender *)&v17 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

    v5 = dispatch_queue_create("com.apple.MFNanoServerMessageSender", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_semaphore_create(0);
    messagesDeliveredSemaphore = v2->_messagesDeliveredSemaphore;
    v2->_messagesDeliveredSemaphore = v7;

    v9 = objc_alloc_init(NSMutableSet);
    pendingMessageReferences = v2->_pendingMessageReferences;
    v2->_pendingMessageReferences = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    sentMessageReferences = v2->_sentMessageReferences;
    v2->_sentMessageReferences = v11;

    v13 = objc_alloc_init(NSMutableDictionary);
    pendingDelegateReferences = v2->_pendingDelegateReferences;
    v2->_pendingDelegateReferences = v13;

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"_didReceiveMessageDeliveryNotification:" name:@"MFDeliveryQueueProcessingFinishedNotification" object:0];
  }

  return v2;
}

- (void)sendMessage:(id)message progressHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100093F14;
  block[3] = &unk_100159BE8;
  selfCopy = self;
  v14 = handlerCopy;
  v12 = messageCopy;
  v9 = handlerCopy;
  v10 = messageCopy;
  dispatch_async(queue, block);
}

- (void)_didReceiveMessageDeliveryNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:@"sent"];

  userInfo2 = [notificationCopy userInfo];
  v8 = [userInfo2 objectForKey:@"failed"];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000954F4;
  v15[3] = &unk_100159C10;
  v15[4] = self;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100095628;
  v13[3] = &unk_100159C38;
  v9 = objc_retainBlock(v15);
  v14 = v9;
  [v6 enumerateObjectsUsingBlock:v13];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10009563C;
  v11[3] = &unk_100159C38;
  v10 = v9;
  v12 = v10;
  [v8 enumerateObjectsUsingBlock:v11];
  dispatch_semaphore_signal(self->_messagesDeliveredSemaphore);
}

- (id)_sendComposedMessage:(id)message
{
  messageCopy = message;
  v4 = [MailAccount accountThatMessageIsFrom:messageCopy includingInactive:1];
  if ([v4 restrictedFromSendingExternally])
  {
    v5 = 0;
  }

  else
  {
    [messageCopy markAsViewed];
    v6 = +[MFDeliveryQueue sharedDeliveryQueue];
    v7 = [v6 append:messageCopy];
    if (v7)
    {
      [v6 processQueueAndPlaySoundOnSuccess:0 forceAll:0];
      v15 = 0;
      v16 = &v15;
      v17 = 0x2050000000;
      v8 = qword_100185AB8;
      v18 = qword_100185AB8;
      if (!qword_100185AB8)
      {
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_1000966FC;
        v14[3] = &unk_100157290;
        v14[4] = &v15;
        sub_1000966FC(v14);
        v8 = v16[3];
      }

      v9 = v8;
      _Block_object_dispose(&v15, 8);
      defaultInstance = [v8 defaultInstance];
      headers = [messageCopy headers];
      [defaultInstance recordContactEventsForHeaders:headers recentsDomain:kMFMobileMailBundleIdentifier];

      v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@://%lld", @"x-last-sent-message", [v7 libraryID]);
      v5 = [NSURL URLWithString:v12];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)_messageToSendWithCompositionContext:(id)context
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_100094810;
  v13 = sub_100094820;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000959D0;
  v6[3] = &unk_100159C60;
  contextCopy = context;
  v8 = &v9;
  v3 = contextCopy;
  dispatch_sync(&_dispatch_main_q, v6);
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (id)_libraryMessageForMessageId:(id)id
{
  v3 = [NSURL URLWithString:id];
  mf_messageCriterion = [v3 mf_messageCriterion];
  v5 = +[MFMailMessageLibrary defaultInstance];
  v6 = [v5 messagesMatchingCriterion:mf_messageCriterion options:6144];

  firstObject = [v6 firstObject];

  return firstObject;
}

@end
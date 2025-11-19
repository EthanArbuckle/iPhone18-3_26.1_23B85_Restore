@interface MFNanoServerMessageUpdater
- (MFNanoServerMessageUpdater)init;
- (id)_libraryMessageForMessageId:(id)a3;
- (void)_addOperation:(id)a3 withMessages:(id)a4 toChangeManager:(id)a5;
- (void)moveMessages:(id)a3 toMailbox:(id)a4;
- (void)updateMessages:(id)a3;
@end

@implementation MFNanoServerMessageUpdater

- (MFNanoServerMessageUpdater)init
{
  v7.receiver = self;
  v7.super_class = MFNanoServerMessageUpdater;
  v2 = [(MFNanoServerMessageUpdater *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MFNanoServerMessageUpdater", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)updateMessages:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100096AA8;
  v7[3] = &unk_1001563D8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (void)moveMessages:(id)a3 toMailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009761C;
  block[3] = &unk_1001573C0;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(queue, block);
}

- (void)_addOperation:(id)a3 withMessages:(id)a4 toChangeManager:(id)a5
{
  v10 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [[MailMessageChangeSet alloc] initWithMessages:v7 operation:v10];
  [v8 addChange:v9];
}

- (id)_libraryMessageForMessageId:(id)a3
{
  v3 = [NSURL URLWithString:a3];
  v4 = [v3 mf_messageCriterion];
  v5 = +[MFMailMessageLibrary defaultInstance];
  v6 = [v5 messagesMatchingCriterion:v4 options:6144];

  v7 = [v6 firstObject];

  return v7;
}

@end
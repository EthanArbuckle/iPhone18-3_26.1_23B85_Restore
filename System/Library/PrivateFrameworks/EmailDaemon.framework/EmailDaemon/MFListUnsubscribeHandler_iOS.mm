@interface MFListUnsubscribeHandler_iOS
+ (id)log;
- (MFListUnsubscribeHandler_iOS)initWithOutgoingMessageRepository:(id)repository;
- (void)ignoreWithCommand:(id)command completion:(id)completion;
- (void)unsubscribeMailtoWithCommand:(id)command completion:(id)completion;
@end

@implementation MFListUnsubscribeHandler_iOS

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CE88;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_1001858D0 != -1)
  {
    dispatch_once(&qword_1001858D0, block);
  }

  v2 = qword_1001858C8;

  return v2;
}

- (MFListUnsubscribeHandler_iOS)initWithOutgoingMessageRepository:(id)repository
{
  repositoryCopy = repository;
  v9.receiver = self;
  v9.super_class = MFListUnsubscribeHandler_iOS;
  v6 = [(MFListUnsubscribeHandler_iOS *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outgoingMessageRepository, repository);
  }

  return v7;
}

- (void)ignoreWithCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  scheduler = [(MFListUnsubscribeHandler_iOS *)self scheduler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006D0AC;
  v11[3] = &unk_100158B88;
  v11[4] = self;
  v9 = commandCopy;
  v12 = v9;
  v10 = completionCopy;
  v13 = v10;
  [scheduler performBlock:v11];
}

- (void)unsubscribeMailtoWithCommand:(id)command completion:(id)completion
{
  commandCopy = command;
  completionCopy = completion;
  scheduler = [(MFListUnsubscribeHandler_iOS *)self scheduler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006D228;
  v11[3] = &unk_100158B88;
  v9 = commandCopy;
  v12 = v9;
  selfCopy = self;
  v10 = completionCopy;
  v14 = v10;
  [scheduler performBlock:v11];
}

@end
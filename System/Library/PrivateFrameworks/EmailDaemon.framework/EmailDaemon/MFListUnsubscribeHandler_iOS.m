@interface MFListUnsubscribeHandler_iOS
+ (id)log;
- (MFListUnsubscribeHandler_iOS)initWithOutgoingMessageRepository:(id)a3;
- (void)ignoreWithCommand:(id)a3 completion:(id)a4;
- (void)unsubscribeMailtoWithCommand:(id)a3 completion:(id)a4;
@end

@implementation MFListUnsubscribeHandler_iOS

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CE88;
  block[3] = &unk_1001562E8;
  block[4] = a1;
  if (qword_1001858D0 != -1)
  {
    dispatch_once(&qword_1001858D0, block);
  }

  v2 = qword_1001858C8;

  return v2;
}

- (MFListUnsubscribeHandler_iOS)initWithOutgoingMessageRepository:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MFListUnsubscribeHandler_iOS;
  v6 = [(MFListUnsubscribeHandler_iOS *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_outgoingMessageRepository, a3);
  }

  return v7;
}

- (void)ignoreWithCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFListUnsubscribeHandler_iOS *)self scheduler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006D0AC;
  v11[3] = &unk_100158B88;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 performBlock:v11];
}

- (void)unsubscribeMailtoWithCommand:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFListUnsubscribeHandler_iOS *)self scheduler];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10006D228;
  v11[3] = &unk_100158B88;
  v9 = v6;
  v12 = v9;
  v13 = self;
  v10 = v7;
  v14 = v10;
  [v8 performBlock:v11];
}

@end
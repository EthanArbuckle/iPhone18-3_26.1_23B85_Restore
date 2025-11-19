@interface PDFieldDetectorManager
- (void)dealloc;
- (void)receivedSecureFieldEntranceEventWithProperties:(id)a3;
- (void)receivedSecureFieldExitEvent;
@end

@implementation PDFieldDetectorManager

- (void)dealloc
{
  PDNFSecureXPCUnregisterFieldDetectObserver(self);
  v3.receiver = self;
  v3.super_class = PDFieldDetectorManager;
  [(PDFieldDetectorManager *)&v3 dealloc];
}

- (void)receivedSecureFieldEntranceEventWithProperties:(id)a3
{
  v4 = a3;
  v5 = sub_100191AB0();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005C82DC;
  v7[3] = &unk_10083C420;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)receivedSecureFieldExitEvent
{
  v3 = sub_100191AB0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100191EC4;
  block[3] = &unk_10083C470;
  block[4] = self;
  dispatch_async(v3, block);
}

@end
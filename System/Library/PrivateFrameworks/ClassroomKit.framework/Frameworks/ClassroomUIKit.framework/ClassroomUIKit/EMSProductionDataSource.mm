@interface EMSProductionDataSource
- (void)clearSignInHistoryOperationDidFinishWithOperation:(id)a3;
- (void)daemonProxy:(id)a3 didReceiveNotificationWithName:(id)a4 userInfo:(id)a5;
- (void)fetchSignInHistoryOperationDidFinishWithOperation:(id)a3;
- (void)removeSignInHistoryOperationDidFinishWithOperation:(id)a3;
@end

@implementation EMSProductionDataSource

- (void)fetchSignInHistoryOperationDidFinishWithOperation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24366DF10(v4);
}

- (void)removeSignInHistoryOperationDidFinishWithOperation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_243670328(v4);
}

- (void)clearSignInHistoryOperationDidFinishWithOperation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_243670660(v4);
}

- (void)daemonProxy:(id)a3 didReceiveNotificationWithName:(id)a4 userInfo:(id)a5
{
  v5 = sub_2436CBD38();
  v7 = v6;
  v8 = *MEMORY[0x277CFA5F8];
  if (v5 == sub_2436CBD38() && v7 == v9)
  {
    v13 = self;

    goto LABEL_8;
  }

  v11 = sub_2436CC2E8();
  v12 = self;

  if (v11)
  {
LABEL_8:
    sub_24366DE24();
  }
}

@end
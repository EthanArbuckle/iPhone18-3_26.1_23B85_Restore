@interface EMSProductionDataSource
- (void)clearSignInHistoryOperationDidFinishWithOperation:(id)operation;
- (void)daemonProxy:(id)proxy didReceiveNotificationWithName:(id)name userInfo:(id)info;
- (void)fetchSignInHistoryOperationDidFinishWithOperation:(id)operation;
- (void)removeSignInHistoryOperationDidFinishWithOperation:(id)operation;
@end

@implementation EMSProductionDataSource

- (void)fetchSignInHistoryOperationDidFinishWithOperation:(id)operation
{
  operationCopy = operation;
  selfCopy = self;
  sub_24366DF10(operationCopy);
}

- (void)removeSignInHistoryOperationDidFinishWithOperation:(id)operation
{
  operationCopy = operation;
  selfCopy = self;
  sub_243670328(operationCopy);
}

- (void)clearSignInHistoryOperationDidFinishWithOperation:(id)operation
{
  operationCopy = operation;
  selfCopy = self;
  sub_243670660(operationCopy);
}

- (void)daemonProxy:(id)proxy didReceiveNotificationWithName:(id)name userInfo:(id)info
{
  v5 = sub_2436CBD38();
  v7 = v6;
  v8 = *MEMORY[0x277CFA5F8];
  if (v5 == sub_2436CBD38() && v7 == v9)
  {
    selfCopy = self;

    goto LABEL_8;
  }

  v11 = sub_2436CC2E8();
  selfCopy2 = self;

  if (v11)
  {
LABEL_8:
    sub_24366DE24();
  }
}

@end
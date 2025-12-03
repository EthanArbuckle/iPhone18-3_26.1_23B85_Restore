@interface MFTrashCompactor
- (MFTrashCompactor)init;
- (void)emptyTrashForAccount:(id)account;
@end

@implementation MFTrashCompactor

- (MFTrashCompactor)init
{
  v8.receiver = self;
  v8.super_class = MFTrashCompactor;
  v2 = [(MFTrashCompactor *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    emptiedTrashTimestamps = v2->_emptiedTrashTimestamps;
    v2->_emptiedTrashTimestamps = v3;

    v5 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.mail.TrashCompactor.scheduler" qualityOfService:17];
    scheduler = v2->_scheduler;
    v2->_scheduler = v5;
  }

  return v2;
}

- (void)emptyTrashForAccount:(id)account
{
  accountCopy = account;
  uniqueID = [accountCopy uniqueID];
  if (uniqueID)
  {
    scheduler = [(MFTrashCompactor *)self scheduler];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100099B2C;
    v7[3] = &unk_1001573C0;
    v7[4] = self;
    v8 = uniqueID;
    v9 = accountCopy;
    [scheduler performBlock:v7];
  }
}

@end
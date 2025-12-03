@interface PSDToolConnection
- (id)services;
- (void)cancelSyncSession;
- (void)getOrderedActivityInfosWithCompletion:(id)completion;
@end

@implementation PSDToolConnection

- (id)services
{
  v2 = PSYGetClientListDirectory();
  v3 = sub_1000188E8(v2);

  return v3;
}

- (void)getOrderedActivityInfosWithCompletion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    services = [(PSDToolConnection *)self services];
    (*(completion + 2))(completionCopy, services);
  }
}

- (void)cancelSyncSession
{
  v2 = +[PSDScheduler sharedScheduler];
  [v2 cancelSyncSession];
}

@end
@interface PSDToolConnection
- (id)services;
- (void)cancelSyncSession;
- (void)getOrderedActivityInfosWithCompletion:(id)a3;
@end

@implementation PSDToolConnection

- (id)services
{
  v2 = PSYGetClientListDirectory();
  v3 = sub_1000188E8(v2);

  return v3;
}

- (void)getOrderedActivityInfosWithCompletion:(id)a3
{
  if (a3)
  {
    v5 = a3;
    v6 = [(PSDToolConnection *)self services];
    (*(a3 + 2))(v5, v6);
  }
}

- (void)cancelSyncSession
{
  v2 = +[PSDScheduler sharedScheduler];
  [v2 cancelSyncSession];
}

@end
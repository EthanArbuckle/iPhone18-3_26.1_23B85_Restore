@interface CALNDataAccessExpressSharedConnection
+ (id)sharedConnection;
- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)a3 accountID:(id)a4 queue:(id)a5 completionBlock:(id)a6;
- (void)respondToSharedCalendarInvite:(int64_t)a3 forCalendarWithID:(id)a4 accountID:(id)a5 queue:(id)a6 completionBlock:(id)a7;
@end

@implementation CALNDataAccessExpressSharedConnection

+ (id)sharedConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CALNDataAccessExpressSharedConnection_sharedConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedConnection_onceToken != -1)
  {
    dispatch_once(&sharedConnection_onceToken, block);
  }

  v2 = sharedConnection_sharedConnection;

  return v2;
}

uint64_t __57__CALNDataAccessExpressSharedConnection_sharedConnection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedConnection_sharedConnection = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (void)respondToSharedCalendarInvite:(int64_t)a3 forCalendarWithID:(id)a4 accountID:(id)a5 queue:(id)a6 completionBlock:(id)a7
{
  v11 = MEMORY[0x277D03928];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = [v11 sharedConnection];
  [v16 respondToSharedCalendarInvite:a3 forCalendarWithID:v15 accountID:v14 queue:v13 completionBlock:v12];
}

- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)a3 accountID:(id)a4 queue:(id)a5 completionBlock:(id)a6
{
  v9 = MEMORY[0x277D03928];
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [v9 sharedConnection];
  [v14 reportSharedCalendarInviteAsJunkForCalendarWithID:v13 accountID:v12 queue:v11 completionBlock:v10];
}

@end
@interface CALNDataAccessExpressSharedConnection
+ (id)sharedConnection;
- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block;
- (void)respondToSharedCalendarInvite:(int64_t)invite forCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block;
@end

@implementation CALNDataAccessExpressSharedConnection

+ (id)sharedConnection
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CALNDataAccessExpressSharedConnection_sharedConnection__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)respondToSharedCalendarInvite:(int64_t)invite forCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v11 = MEMORY[0x277D03928];
  blockCopy = block;
  queueCopy = queue;
  iDCopy = iD;
  dCopy = d;
  sharedConnection = [v11 sharedConnection];
  [sharedConnection respondToSharedCalendarInvite:invite forCalendarWithID:dCopy accountID:iDCopy queue:queueCopy completionBlock:blockCopy];
}

- (void)reportSharedCalendarInviteAsJunkForCalendarWithID:(id)d accountID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v9 = MEMORY[0x277D03928];
  blockCopy = block;
  queueCopy = queue;
  iDCopy = iD;
  dCopy = d;
  sharedConnection = [v9 sharedConnection];
  [sharedConnection reportSharedCalendarInviteAsJunkForCalendarWithID:dCopy accountID:iDCopy queue:queueCopy completionBlock:blockCopy];
}

@end
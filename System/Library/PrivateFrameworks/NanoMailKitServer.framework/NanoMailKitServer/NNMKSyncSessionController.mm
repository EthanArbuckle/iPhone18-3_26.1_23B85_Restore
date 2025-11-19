@interface NNMKSyncSessionController
- (NNMKSyncSessionController)init;
- (unint64_t)standaloneStateForAccountId:(id)a3;
- (void)deleteStandaloneStateForAccountId:(id)a3;
- (void)updateStandaloneState:(unint64_t)a3 forAccountId:(id)a4;
@end

@implementation NNMKSyncSessionController

- (NNMKSyncSessionController)init
{
  v16.receiver = self;
  v16.super_class = NNMKSyncSessionController;
  v2 = [(NNMKSyncSessionController *)&v16 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    messageIdsToIgnoreStatusUpdates = v2->_messageIdsToIgnoreStatusUpdates;
    v2->_messageIdsToIgnoreStatusUpdates = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    notificationPayloadAcks = v2->_notificationPayloadAcks;
    v2->_notificationPayloadAcks = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    syncingAccountIdentityByUsername = v2->_syncingAccountIdentityByUsername;
    v2->_syncingAccountIdentityByUsername = v7;

    v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [v9 objectForKey:@"kSessionControllerStandaloneState"];
    v11 = [v10 mutableCopy];
    standaloneStateByAccountId = v2->_standaloneStateByAccountId;
    v2->_standaloneStateByAccountId = v11;

    if (!v2->_standaloneStateByAccountId)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = v2->_standaloneStateByAccountId;
      v2->_standaloneStateByAccountId = v13;
    }
  }

  return v2;
}

- (unint64_t)standaloneStateForAccountId:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_standaloneStateByAccountId objectForKeyedSubscript:a3];
  v4 = [v3 unsignedIntegerValue];

  return v4;
}

- (void)updateStandaloneState:(unint64_t)a3 forAccountId:(id)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedInteger:a3];
  [(NSMutableDictionary *)self->_standaloneStateByAccountId setObject:v8 forKeyedSubscript:v7];

  v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v9 setObject:self->_standaloneStateByAccountId forKey:@"kSessionControllerStandaloneState"];
}

- (void)deleteStandaloneStateForAccountId:(id)a3
{
  if (a3)
  {
    [(NSMutableDictionary *)self->_standaloneStateByAccountId removeObjectForKey:?];
    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v4 setObject:self->_standaloneStateByAccountId forKey:@"kSessionControllerStandaloneState"];
  }
}

@end
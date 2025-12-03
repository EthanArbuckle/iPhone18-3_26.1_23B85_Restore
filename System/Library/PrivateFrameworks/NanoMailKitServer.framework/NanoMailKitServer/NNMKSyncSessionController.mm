@interface NNMKSyncSessionController
- (NNMKSyncSessionController)init;
- (unint64_t)standaloneStateForAccountId:(id)id;
- (void)deleteStandaloneStateForAccountId:(id)id;
- (void)updateStandaloneState:(unint64_t)state forAccountId:(id)id;
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

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v10 = [standardUserDefaults objectForKey:@"kSessionControllerStandaloneState"];
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

- (unint64_t)standaloneStateForAccountId:(id)id
{
  v3 = [(NSMutableDictionary *)self->_standaloneStateByAccountId objectForKeyedSubscript:id];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)updateStandaloneState:(unint64_t)state forAccountId:(id)id
{
  v6 = MEMORY[0x277CCABB0];
  idCopy = id;
  v8 = [v6 numberWithUnsignedInteger:state];
  [(NSMutableDictionary *)self->_standaloneStateByAccountId setObject:v8 forKeyedSubscript:idCopy];

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults setObject:self->_standaloneStateByAccountId forKey:@"kSessionControllerStandaloneState"];
}

- (void)deleteStandaloneStateForAccountId:(id)id
{
  if (id)
  {
    [(NSMutableDictionary *)self->_standaloneStateByAccountId removeObjectForKey:?];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setObject:self->_standaloneStateByAccountId forKey:@"kSessionControllerStandaloneState"];
  }
}

@end
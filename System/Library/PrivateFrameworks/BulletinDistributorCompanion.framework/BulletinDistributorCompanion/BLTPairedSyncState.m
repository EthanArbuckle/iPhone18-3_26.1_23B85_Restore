@interface BLTPairedSyncState
+ (id)sharedInstance;
- (void)leaveState:(unint64_t)a3;
- (void)setInitialSyncComplete:(BOOL)a3;
- (void)setState:(unint64_t)a3;
@end

@implementation BLTPairedSyncState

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__BLTPairedSyncState_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance___sharedInstance;

  return v2;
}

uint64_t __36__BLTPairedSyncState_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance___sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (void)setState:(unint64_t)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_state != a3)
  {
    v5 = objc_alloc_init(BLTPairedSyncStateChangedInfo);
    [(BLTPairedSyncStateChangedInfo *)v5 setOldState:self->_state];
    [(BLTPairedSyncStateChangedInfo *)v5 setNewState:a3];
    self->_state = a3;
    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = @"info";
    v10[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [v6 postNotificationName:@"BLTPairedSyncStateChanged" object:self userInfo:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setInitialSyncComplete:(BOOL)a3
{
  if (self->_initialSyncComplete != a3)
  {
    self->_initialSyncComplete = a3;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"BLTPairedSyncStateInitialSyncCompleteChanged" object:self];
  }
}

- (void)leaveState:(unint64_t)a3
{
  if (self->_state <= a3)
  {
    [(BLTPairedSyncState *)self setState:a3 + 1];
  }
}

@end
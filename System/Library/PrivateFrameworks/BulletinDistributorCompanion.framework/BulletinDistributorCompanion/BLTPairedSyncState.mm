@interface BLTPairedSyncState
+ (id)sharedInstance;
- (void)leaveState:(unint64_t)state;
- (void)setInitialSyncComplete:(BOOL)complete;
- (void)setState:(unint64_t)state;
@end

@implementation BLTPairedSyncState

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__BLTPairedSyncState_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (void)setState:(unint64_t)state
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (self->_state != state)
  {
    v5 = objc_alloc_init(BLTPairedSyncStateChangedInfo);
    [(BLTPairedSyncStateChangedInfo *)v5 setOldState:self->_state];
    [(BLTPairedSyncStateChangedInfo *)v5 setNewState:state];
    self->_state = state;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = @"info";
    v10[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    [defaultCenter postNotificationName:@"BLTPairedSyncStateChanged" object:self userInfo:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)setInitialSyncComplete:(BOOL)complete
{
  if (self->_initialSyncComplete != complete)
  {
    self->_initialSyncComplete = complete;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"BLTPairedSyncStateInitialSyncCompleteChanged" object:self];
  }
}

- (void)leaveState:(unint64_t)state
{
  if (self->_state <= state)
  {
    [(BLTPairedSyncState *)self setState:state + 1];
  }
}

@end
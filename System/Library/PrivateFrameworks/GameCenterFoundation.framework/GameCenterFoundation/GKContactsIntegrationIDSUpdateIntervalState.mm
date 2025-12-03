@interface GKContactsIntegrationIDSUpdateIntervalState
+ (id)secureCodedPropertyKeys;
- (id)initUpdateIntervalHandleCount:(unint64_t)count updateIntervalStartTime:(id)time;
@end

@implementation GKContactsIntegrationIDSUpdateIntervalState

- (id)initUpdateIntervalHandleCount:(unint64_t)count updateIntervalStartTime:(id)time
{
  timeCopy = time;
  v11.receiver = self;
  v11.super_class = GKContactsIntegrationIDSUpdateIntervalState;
  v8 = [(GKContactsIntegrationIDSUpdateIntervalState *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_updateIntervalHandleCount = count;
    objc_storeStrong(&v8->_updateIntervalStartTime, time);
  }

  return v9;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken != -1)
  {
    +[GKContactsIntegrationIDSUpdateIntervalState secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys;

  return v3;
}

void __70__GKContactsIntegrationIDSUpdateIntervalState_secureCodedPropertyKeys__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"updateIntervalHandleCount";
  v3[1] = @"updateIntervalStartTime";
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys;
  secureCodedPropertyKeys_sSecureCodedKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end
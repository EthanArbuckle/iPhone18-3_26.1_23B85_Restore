@interface GKContactsIntegrationState
+ (id)secureCodedPropertyKeys;
- (id)initCohortStates:(id)a3 controllerState:(unint64_t)a4 idsUpdateIntervalState:(id)a5 settings:(id)a6;
@end

@implementation GKContactsIntegrationState

- (id)initCohortStates:(id)a3 controllerState:(unint64_t)a4 idsUpdateIntervalState:(id)a5 settings:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = GKContactsIntegrationState;
  v14 = [(GKContactsIntegrationState *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_cohortState, a3);
    v15->_controllerState = a4;
    objc_storeStrong(&v15->_idsUpdateIntervalState, a5);
    objc_storeStrong(&v15->_settings, a6);
  }

  return v15;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_80 != -1)
  {
    +[GKContactsIntegrationState secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_79;

  return v3;
}

void __53__GKContactsIntegrationState_secureCodedPropertyKeys__block_invoke()
{
  v4[4] = *MEMORY[0x277D85DE8];
  v3[0] = @"cohortState";
  v4[0] = objc_opt_class();
  v3[1] = @"controllerState";
  v4[1] = objc_opt_class();
  v3[2] = @"idsUpdateIntervalState";
  v4[2] = objc_opt_class();
  v3[3] = @"settings";
  v4[3] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:4];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_79;
  secureCodedPropertyKeys_sSecureCodedKeys_79 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end
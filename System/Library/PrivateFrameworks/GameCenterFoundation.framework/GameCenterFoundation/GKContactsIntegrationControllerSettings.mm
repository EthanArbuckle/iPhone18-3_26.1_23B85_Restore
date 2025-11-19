@interface GKContactsIntegrationControllerSettings
+ (id)allBagKeys;
+ (id)secureCodedPropertyKeys;
- (GKContactsIntegrationControllerSettings)initWithBagValues:(id)a3;
- (double)expirationTimeForCohort:(int)a3;
@end

@implementation GKContactsIntegrationControllerSettings

- (GKContactsIntegrationControllerSettings)initWithBagValues:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = GKContactsIntegrationControllerSettings;
  v5 = [(GKContactsIntegrationControllerSettings *)&v14 init];
  if (v5)
  {
    v5->_localSyncLimit = [v4 unsignedIntegerValueFromKey:@"gk-contactid-local-sync-limit" defaultValue:1000];
    v5->_localBatchFetchSize = [v4 unsignedIntegerValueFromKey:@"gk-contactid-local-batch-fetch-size" defaultValue:100];
    v5->_idsV2BatchFetchSize = [v4 unsignedIntegerValueFromKey:@"gk-contactid-ids-v2-batch-fetch-size" defaultValue:20];
    v5->_idsV2FetchSize = [v4 unsignedIntegerValueFromKey:@"gk-contactid-ids-v2-fetch-size" defaultValue:20];
    [v4 doubleValueFromKey:@"gk-contactid-ids-update-interval-sec" defaultValue:18030.0];
    v5->_idsUpdateInterval = v6;
    [v4 doubleValueFromKey:@"gk-contactid-ids-expiration-opted-in-sec" defaultValue:604800.0];
    v5->_idsExpirationTimeOptedIn = v7;
    [v4 doubleValueFromKey:@"gk-contactid-ids-expiration-opted-out-sec" defaultValue:604800.0];
    v5->_idsExpirationTimeOptedOut = v8;
    [v4 doubleValueFromKey:@"gk-contactid-ids-expiration-not-set-sec" defaultValue:86400.0];
    v5->_idsExpirationTimeNotSet = v9;
    [v4 doubleValueFromKey:@"gk-contactid-ids-expiration-unknown-sec" defaultValue:86400.0];
    v5->_idsExpirationTimeUnknown = v10;
    v5->_allowUpdates = [v4 unsignedIntegerValueFromKey:@"gk-contactid-allow-updates" defaultValue:1] == 1;
    v5->_allowUpdatesWithoutFriends = [v4 unsignedIntegerValueFromKey:@"gk-contactid-allow-updates-without-friends" defaultValue:1] == 1;
    v5->_notificationCoalescingWaitTime = 7.0;
    [v4 doubleValueFromKey:@"gk-contactid-ids-v2-batch-fetch-delay-sec" defaultValue:3.0];
    v5->_idsBatchFetchDelayInterval = v11;
    [v4 doubleValueFromKey:@"gk-contactid-ids-v2-batch-fetch-jitter-sec" defaultValue:0.0];
    v5->_idsBatchFetchJitterInterval = v12;
  }

  return v5;
}

+ (id)allBagKeys
{
  if (allBagKeys_onceToken != -1)
  {
    +[GKContactsIntegrationControllerSettings allBagKeys];
  }

  v3 = allBagKeys_bagKeys;

  return v3;
}

void __53__GKContactsIntegrationControllerSettings_allBagKeys__block_invoke()
{
  v3[13] = *MEMORY[0x277D85DE8];
  v3[0] = @"gk-contactid-ids-update-interval-sec";
  v3[1] = @"gk-contactid-ids-v2-batch-fetch-size";
  v3[2] = @"gk-contactid-local-batch-fetch-size";
  v3[3] = @"gk-contactid-ids-v2-fetch-size";
  v3[4] = @"gk-contactid-ids-expiration-opted-in-sec";
  v3[5] = @"gk-contactid-ids-expiration-opted-out-sec";
  v3[6] = @"gk-contactid-ids-expiration-not-set-sec";
  v3[7] = @"gk-contactid-ids-expiration-unknown-sec";
  v3[8] = @"gk-contactid-allow-updates";
  v3[9] = @"gk-contactid-ids-v2-batch-fetch-delay-sec";
  v3[10] = @"gk-contactid-ids-v2-batch-fetch-jitter-sec";
  v3[11] = @"gk-contactid-local-sync-limit";
  v3[12] = @"gk-contactid-allow-updates-without-friends";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:13];
  v1 = allBagKeys_bagKeys;
  allBagKeys_bagKeys = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (double)expirationTimeForCohort:(int)a3
{
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        [(GKContactsIntegrationControllerSettings *)self idsExpirationTimeOptedOut];
        return result;
      }

      goto LABEL_8;
    }

    [(GKContactsIntegrationControllerSettings *)self idsExpirationTimeOptedIn];
  }

  else
  {
    if (a3 != -1)
    {
      if (a3 == 1)
      {
        [(GKContactsIntegrationControllerSettings *)self idsExpirationTimeNotSet];
        return result;
      }

LABEL_8:
      [(GKContactsIntegrationControllerSettings *)self idsExpirationTimeUnknown];
      return result;
    }

    return 0.0;
  }

  return result;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_2 != -1)
  {
    +[GKContactsIntegrationControllerSettings secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_2;

  return v3;
}

void __66__GKContactsIntegrationControllerSettings_secureCodedPropertyKeys__block_invoke()
{
  v4[10] = *MEMORY[0x277D85DE8];
  v3[0] = @"idsV2FetchSize";
  v4[0] = objc_opt_class();
  v3[1] = @"idsV2BatchFetchSize";
  v4[1] = objc_opt_class();
  v3[2] = @"localSyncLimit";
  v4[2] = objc_opt_class();
  v3[3] = @"localBatchFetchSize";
  v4[3] = objc_opt_class();
  v3[4] = @"idsUpdateInterval";
  v4[4] = objc_opt_class();
  v3[5] = @"idsBatchFetchJitterInterval";
  v4[5] = objc_opt_class();
  v3[6] = @"idsBatchFetchDelayInterval";
  v4[6] = objc_opt_class();
  v3[7] = @"notificationCoalescingWaitTime";
  v4[7] = objc_opt_class();
  v3[8] = @"allowUpdates";
  v4[8] = objc_opt_class();
  v3[9] = @"allowUpdatesWithoutFriends";
  v4[9] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:10];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_2;
  secureCodedPropertyKeys_sSecureCodedKeys_2 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end
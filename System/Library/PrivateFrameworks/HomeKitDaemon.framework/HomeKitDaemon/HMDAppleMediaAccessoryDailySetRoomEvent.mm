@interface HMDAppleMediaAccessoryDailySetRoomEvent
+ (id)filterToAllowedRoomName:(id)a3;
+ (id)localizedStringForRoomName:(id)a3;
- (HMDAppleMediaAccessoryDailySetRoomEvent)initWithCurrentRoom:(id)a3 previousRoom:(id)a4;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDAppleMediaAccessoryDailySetRoomEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(HMDAppleMediaAccessoryDailySetRoomEvent *)self currentRoom];
  v5 = [HMDAppleMediaAccessoryDailySetRoomEvent filterToAllowedRoomName:v4];
  [v3 setObject:v5 forKeyedSubscript:@"CurrentRoom"];

  v6 = [(HMDAppleMediaAccessoryDailySetRoomEvent *)self previousRoom];
  v7 = [HMDAppleMediaAccessoryDailySetRoomEvent filterToAllowedRoomName:v6];
  [v3 setObject:v7 forKeyedSubscript:@"PreviousRoom"];

  v8 = [v3 copy];

  return v8;
}

- (HMDAppleMediaAccessoryDailySetRoomEvent)initWithCurrentRoom:(id)a3 previousRoom:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDAppleMediaAccessoryDailySetRoomEvent;
  v9 = [(HMMLogEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_currentRoom, a3);
    objc_storeStrong(&v10->_previousRoom, a4);
  }

  return v10;
}

+ (id)localizedStringForRoomName:(id)a3
{
  v3 = a3;
  v4 = [v3 uppercaseString];
  v5 = [v4 stringByReplacingOccurrencesOfString:@" " withString:@"_"];

  v6 = [@"ROOM_NAME_" stringByAppendingString:v5];

  v7 = HMDLocalizedStringForKey(v6);
  if ([v7 isEqualToString:v6])
  {
    v8 = v3;
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;

  return v8;
}

+ (id)filterToAllowedRoomName:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (filterToAllowedRoomName__onceToken == -1)
  {
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    dispatch_once(&filterToAllowedRoomName__onceToken, &__block_literal_global_62972);
    if (v5)
    {
LABEL_3:
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v6 = filterToAllowedRoomName__allowedRoomNames;
      v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v25;
LABEL_5:
        v10 = 0;
        while (1)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v24 + 1) + 8 * v10);
          v12 = [a1 localizedStringForRoomName:v11];
          if ([v5 isEqualToString:v12] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", v11))
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
            if (v8)
            {
              goto LABEL_5;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v6 = filterToAllowedRoomName__allowedRoomNames;
        v13 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (!v13)
        {
          v16 = @"User Defined";
          goto LABEL_23;
        }

        v14 = v13;
        v15 = *v21;
        v16 = @"User Defined";
LABEL_14:
        v17 = 0;
        while (1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * v17);
          v12 = [a1 localizedStringForRoomName:{v11, v20}];
          if ([v5 containsString:v12] & 1) != 0 || (objc_msgSend(v5, "containsString:", v11))
          {
            break;
          }

          if (v14 == ++v17)
          {
            v14 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v14)
            {
              goto LABEL_14;
            }

            goto LABEL_23;
          }
        }
      }

      v16 = v11;

LABEL_23:
      goto LABEL_27;
    }
  }

  v16 = @"User Defined";
LABEL_27:

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

void __67__HMDAppleMediaAccessoryDailySetRoomEvent_filterToAllowedRoomName___block_invoke()
{
  v0 = filterToAllowedRoomName__allowedRoomNames;
  filterToAllowedRoomName__allowedRoomNames = &unk_283E75710;
}

@end
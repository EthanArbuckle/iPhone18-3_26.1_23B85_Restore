@interface IMAssistantCoreTelephonySubscriptionsDefaultDataSource
+ (id)sharedInstance;
- (BOOL)deviceHasMultipleSubscriptions;
- (id)bestSenderIdentityForChatWithHandleIDs:(id)ds;
- (id)handleIDForSenderIdentity:(id)identity;
- (id)simIDForSenderIdentity:(id)identity;
- (id)subscriptionContextForSenderIdentity:(id)identity;
@end

@implementation IMAssistantCoreTelephonySubscriptionsDefaultDataSource

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547BB04C;
  block[3] = &unk_279786A78;
  block[4] = self;
  if (qword_27F610F70 != -1)
  {
    dispatch_once(&qword_27F610F70, block);
  }

  v2 = qword_27F610F68;

  return v2;
}

- (BOOL)deviceHasMultipleSubscriptions
{
  HasMultipleSubscriptions = IMSharedHelperDeviceHasMultipleSubscriptions();
  if (HasMultipleSubscriptions)
  {
    v3 = MEMORY[0x277CBDB08];

    LOBYTE(HasMultipleSubscriptions) = MEMORY[0x2821F9670](v3, sel_deviceSupportsGemini);
  }

  return HasMultipleSubscriptions;
}

- (id)bestSenderIdentityForChatWithHandleIDs:(id)ds
{
  v3 = MEMORY[0x277D1AB88];
  dsCopy = ds;
  sharedInstance = [v3 sharedInstance];
  v6 = [sharedInstance bestSenderIdentityForHandleIDs:dsCopy];

  return v6;
}

- (id)handleIDForSenderIdentity:(id)identity
{
  v3 = [(IMAssistantCoreTelephonySubscriptionsDefaultDataSource *)self subscriptionContextForSenderIdentity:identity];
  phoneNumber = [v3 phoneNumber];

  return phoneNumber;
}

- (id)simIDForSenderIdentity:(id)identity
{
  v3 = [(IMAssistantCoreTelephonySubscriptionsDefaultDataSource *)self subscriptionContextForSenderIdentity:identity];
  labelID = [v3 labelID];

  return labelID;
}

- (id)subscriptionContextForSenderIdentity:(id)identity
{
  v22 = *MEMORY[0x277D85DE8];
  accountUUID = [identity accountUUID];
  uUIDString = [accountUUID UUIDString];

  mEMORY[0x277D1A908] = [MEMORY[0x277D1A908] sharedInstance];
  ctSubscriptionInfo = [mEMORY[0x277D1A908] ctSubscriptionInfo];
  subscriptions = [ctSubscriptionInfo subscriptions];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = subscriptions;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = *v18;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        labelID = [v12 labelID];
        v14 = [uUIDString isEqualToString:labelID];

        if (v14)
        {
          v9 = v12;
          goto LABEL_11;
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

@end
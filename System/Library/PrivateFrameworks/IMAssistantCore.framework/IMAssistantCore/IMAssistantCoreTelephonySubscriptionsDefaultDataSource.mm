@interface IMAssistantCoreTelephonySubscriptionsDefaultDataSource
+ (id)sharedInstance;
- (BOOL)deviceHasMultipleSubscriptions;
- (id)bestSenderIdentityForChatWithHandleIDs:(id)a3;
- (id)handleIDForSenderIdentity:(id)a3;
- (id)simIDForSenderIdentity:(id)a3;
- (id)subscriptionContextForSenderIdentity:(id)a3;
@end

@implementation IMAssistantCoreTelephonySubscriptionsDefaultDataSource

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547BB04C;
  block[3] = &unk_279786A78;
  block[4] = a1;
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

- (id)bestSenderIdentityForChatWithHandleIDs:(id)a3
{
  v3 = MEMORY[0x277D1AB88];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 bestSenderIdentityForHandleIDs:v4];

  return v6;
}

- (id)handleIDForSenderIdentity:(id)a3
{
  v3 = [(IMAssistantCoreTelephonySubscriptionsDefaultDataSource *)self subscriptionContextForSenderIdentity:a3];
  v4 = [v3 phoneNumber];

  return v4;
}

- (id)simIDForSenderIdentity:(id)a3
{
  v3 = [(IMAssistantCoreTelephonySubscriptionsDefaultDataSource *)self subscriptionContextForSenderIdentity:a3];
  v4 = [v3 labelID];

  return v4;
}

- (id)subscriptionContextForSenderIdentity:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a3 accountUUID];
  v4 = [v3 UUIDString];

  v5 = [MEMORY[0x277D1A908] sharedInstance];
  v6 = [v5 ctSubscriptionInfo];
  v7 = [v6 subscriptions];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v7;
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
        v13 = [v12 labelID];
        v14 = [v4 isEqualToString:v13];

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
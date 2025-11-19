@interface IMCTXPCServiceSubscriptionInfo
- (BOOL)__im_containsPhoneNumber:(id)a3;
- (BOOL)__im_hasMultipleSubscriptions;
- (BOOL)__im_onlyHasActiveSlots;
- (IMCTXPCServiceSubscriptionInfo)initWithSubscriptionInfo:(id)a3;
- (NSArray)phoneNumbersOfActiveSubscriptions;
- (id)__imSIMIDForSubscriptionSlot:(int64_t)a3;
- (id)__im_contactPreferredSubscriptionContextForChatHandleIDs:(id)a3;
- (id)__im_labelForPhoneNumber:(id)a3 simID:(id)a4;
- (id)__im_phoneNumberForSlotID:(int64_t)a3;
- (id)__im_phoneNumberForSlotIDOrDefault:(int64_t)a3;
- (id)__im_preferredDataSubscriptionContext;
- (id)__im_preferredSubscriptionContext;
- (id)__im_subscriptionContextForForSimID:(id)a3;
- (id)__im_subscriptionContextForForSimID:(id)a3 phoneNumber:(id)a4;
- (id)__im_subscriptionContextForForSlotID:(int64_t)a3;
- (id)__im_subscriptionContextForPhoneNumber:(id)a3;
- (id)__im_subscriptionContextForPhoneNumberOrDefault:(id)a3;
- (id)__im_subscriptionContextForSenderIdentity:(id)a3;
- (id)__im_subscriptionContextOrDefaultForForSimID:(id)a3 phoneNumber:(id)a4;
- (id)__im_subscriptionContextOrDefaultForForSlotID:(int64_t)a3;
- (id)__im_subscriptionsWithMMSSupport;
- (id)__im_subscriptionsWithRCSSupport;
- (id)__im_switchSubscriptionContextFromPhoneNumber:(id)a3 simID:(id)a4;
- (id)__im_switchSubscriptionContextFromSubscriptionContext:(id)a3;
- (id)allSubscriptions;
- (id)description;
- (id)preferredOrDefaultSubscriptionContext;
- (id)subscriptions;
- (int64_t)__imSlotIDSForPhoneNumber:(id)a3;
@end

@implementation IMCTXPCServiceSubscriptionInfo

- (id)subscriptions
{
  v3 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptionInfo];
  v4 = [v3 subscriptionsInUse];
  v5 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptionFilterPredicate];
  v6 = [v4 filteredArrayUsingPredicate:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  return v8;
}

- (id)allSubscriptions
{
  v3 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptionInfo];
  v4 = [v3 subscriptions];
  v5 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptionFilterPredicate];
  v6 = [v4 filteredArrayUsingPredicate:v5];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x1E695E0F0];
  }

  v9 = v8;

  return v8;
}

- (BOOL)__im_hasMultipleSubscriptions
{
  v2 = [(IMCTXPCServiceSubscriptionInfo *)self allSubscriptions];
  v3 = [v2 count] == 2;

  return v3;
}

- (BOOL)__im_onlyHasActiveSlots
{
  v2 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v3 = [v2 count] == 2;

  return v3;
}

- (id)__im_subscriptionsWithRCSSupport
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = +[IMCTRCSUtilitiesManager sharedManager];
        v10 = [v8 phoneNumber];
        v11 = [v8 labelID];
        v12 = [v9 supportedForPhoneNumber:v10 simID:v11];

        if (v12)
        {
          [v14 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v14;
}

- (id)preferredOrDefaultSubscriptionContext
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(IMCTXPCServiceSubscriptionInfo *)self __im_preferredSubscriptionContext];
  if (!v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 phoneNumber];
          if ([v10 length])
          {

LABEL_14:
            v3 = v9;
            goto LABEL_15;
          }

          v11 = [v9 labelID];
          v12 = [v11 length];

          if (v12)
          {
            goto LABEL_14;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v3 = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v3 = 0;
    }

LABEL_15:
  }

  return v3;
}

- (id)__im_preferredSubscriptionContext
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 phoneNumber];
        v9 = [v8 length];
        if (v9 || ([v7 labelID], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "length")))
        {
          v10 = [v7 userDefaultVoice];
          v11 = [v10 BOOLValue];

          if (v9)
          {

            if (v11)
            {
              goto LABEL_17;
            }
          }

          else
          {

            if (v11)
            {
LABEL_17:
              v4 = v7;
              goto LABEL_18;
            }
          }
        }

        else
        {
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v5 = [v4 __im_logCTXPCServiceSubscriptionContext];
  v6 = [(IMCTXPCServiceSubscriptionInfo *)self allSubscriptions];
  v7 = [v6 __im_logCTXPCServiceSubscriptionContext];
  v8 = [v3 stringWithFormat:@"IMCTXPCServiceSubscriptionInfo: activeSubscriptions %@ allSubscriptions: %@", v5, v7];

  return v8;
}

- (IMCTXPCServiceSubscriptionInfo)initWithSubscriptionInfo:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IMCTXPCServiceSubscriptionInfo;
  v6 = [(IMCTXPCServiceSubscriptionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionInfo, a3);
  }

  return v7;
}

- (id)__im_subscriptionsWithMMSSupport
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 phoneNumber];
        v11 = [v9 labelID];
        v12 = [IMCTSMSUtilities IMMMSSupportedAndConfiguredForPhoneNumber:v10 simID:v11];

        if (v12)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)__im_containsPhoneNumber:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 phoneNumber];
          if ([v10 length])
          {
            v11 = [v9 phoneNumber];
            v12 = MEMORY[0x1AC570E30](v11, v4);

            if (v12)
            {
              LOBYTE(v6) = 1;
              goto LABEL_19;
            }
          }

          else
          {
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v6);
    }

LABEL_19:
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v20 = v4;
        v21 = 2112;
        v22 = self;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Phone number given is nil %@ so cannot check if context %@ contains it", buf, 0x16u);
      }
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (NSArray)phoneNumbersOfActiveSubscriptions
{
  v25 = *MEMORY[0x1E69E9840];
  phoneNumbersOfActiveSubscriptions = self->_phoneNumbersOfActiveSubscriptions;
  if (!phoneNumbersOfActiveSubscriptions)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v6 = [v4 initWithCapacity:{objc_msgSend(v5, "count")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 phoneNumber];
          if ([v13 length])
          {
            v14 = [v12 phoneNumber];
            v15 = IMChatCanonicalIDSIDsForAddress(v14);
            v16 = [v15 _stripFZIDPrefix];

            if (v16)
            {
              v17 = v16;
            }

            else
            {
              v17 = v13;
            }

            [(NSArray *)v6 addObject:v17];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v9);
    }

    v18 = self->_phoneNumbersOfActiveSubscriptions;
    self->_phoneNumbersOfActiveSubscriptions = v6;

    phoneNumbersOfActiveSubscriptions = self->_phoneNumbersOfActiveSubscriptions;
  }

  return phoneNumbersOfActiveSubscriptions;
}

- (id)__im_preferredDataSubscriptionContext
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 phoneNumber];
        v9 = [v8 length];
        if (v9 || ([v7 labelID], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "length")))
        {
          v10 = [v7 userDataPreferred];
          v11 = [v10 BOOLValue];

          if (v9)
          {

            if (v11)
            {
              goto LABEL_17;
            }
          }

          else
          {

            if (v11)
            {
LABEL_17:
              v4 = v7;
              goto LABEL_18;
            }
          }
        }

        else
        {
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v4;
}

- (id)__im_switchSubscriptionContextFromSubscriptionContext:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    goto LABEL_14;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (!v6)
  {

LABEL_14:
    v7 = [(IMCTXPCServiceSubscriptionInfo *)self preferredOrDefaultSubscriptionContext];
    goto LABEL_15;
  }

  v7 = 0;
  v8 = *v16;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v15 + 1) + 8 * i);
      v11 = [v10 slotID];
      if (v11 != [v4 slotID])
      {
        v12 = v10;

        v7 = v12;
      }
    }

    v6 = [v5 countByEnumeratingWithState:&v15 objects:v23 count:16];
  }

  while (v6);

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v4;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Found context to switch to %@ from %@", buf, 0x16u);
    }
  }

  return v7;
}

- (id)__im_switchSubscriptionContextFromPhoneNumber:(id)a3 simID:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(IMCTXPCServiceSubscriptionInfo *)self __im_subscriptionContextForForSimID:v7 phoneNumber:v6];
  v9 = [(IMCTXPCServiceSubscriptionInfo *)self __im_switchSubscriptionContextFromSubscriptionContext:v8];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Found context to switch to %@ from phone number %@ simID %@", &v12, 0x20u);
    }
  }

  return v9;
}

- (id)__im_phoneNumberForSlotID:(int64_t)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 slotID] == a3)
        {
          v11 = [v9 phoneNumber];
          v12 = IMChatCanonicalIDSIDsForAddress(v11);
          v10 = [v12 _stripFZIDPrefix];

          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)__im_phoneNumberForSlotIDOrDefault:(int64_t)a3
{
  v4 = [(IMCTXPCServiceSubscriptionInfo *)self __im_phoneNumberForSlotID:a3];
  if (![v4 length])
  {
    v5 = [(IMCTXPCServiceSubscriptionInfo *)self preferredOrDefaultSubscriptionContext];
    v6 = [v5 phoneNumber];
    v7 = IMChatCanonicalIDSIDsForAddress(v6);
    v8 = [v7 _stripFZIDPrefix];

    v4 = v8;
  }

  return v4;
}

- (id)__im_labelForPhoneNumber:(id)a3 simID:(id)a4
{
  v4 = [(IMCTXPCServiceSubscriptionInfo *)self __im_subscriptionContextForForSimID:a4 phoneNumber:a3];
  v5 = [v4 label];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v4 label];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)__imSlotIDSForPhoneNumber:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v6 = 0;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = [v10 phoneNumber];
            *buf = 138412546;
            v21 = v12;
            v22 = 2112;
            v23 = v4;
            _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "getSlotFromContextInfo: comparing %@ with current number %@", buf, 0x16u);
          }
        }

        if (v4)
        {
          v13 = [v10 phoneNumber];
          v14 = IMSharedHelperAreObjectsLogicallySame(v13, v4);

          if (v14)
          {
            v6 = [v10 slotID];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }

  return v6;
}

- (id)__imSIMIDForSubscriptionSlot:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v14;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 slotID] == a3)
          {
            v11 = [v10 labelID];

            v7 = v11;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)__im_subscriptionContextForForSlotID:(int64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 slotID] == a3)
          {
            v9 = v8;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Given an unknown slot", v12, 2u);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (id)__im_subscriptionContextOrDefaultForForSlotID:(int64_t)a3
{
  v4 = [(IMCTXPCServiceSubscriptionInfo *)self __im_subscriptionContextForForSlotID:a3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(IMCTXPCServiceSubscriptionInfo *)self preferredOrDefaultSubscriptionContext];
  }

  v7 = v6;

  return v7;
}

- (id)__im_subscriptionContextForPhoneNumber:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 phoneNumber];
          if ([v10 length])
          {
            v11 = [v9 phoneNumber];
            v12 = MEMORY[0x1AC570E30](v11, v4);

            if (v12)
            {
              v6 = v9;
              goto LABEL_19;
            }
          }

          else
          {
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v6);
    }

LABEL_19:
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Phone number given is nil %@ ", buf, 0xCu);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (id)__im_subscriptionContextForForSimID:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          v10 = [v9 labelID];
          if ([v10 length])
          {
            v11 = [v9 labelID];
            v12 = [v11 isEqualToString:v4];

            if (v12)
            {
              v6 = v9;
              goto LABEL_19;
            }
          }

          else
          {
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
      }

      while (v6);
    }

LABEL_19:
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v20 = v4;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "SIM ID given is nil %@ ", buf, 0xCu);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (id)__im_subscriptionContextForPhoneNumberOrDefault:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = self;
    v5 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v6)
    {
      v7 = *v19;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        if (MEMORY[0x1AC570A50](v4))
        {
          v10 = [v9 phoneNumber];
          if ([v10 length])
          {
            v11 = MEMORY[0x1E69A51E8];
            v12 = [v9 phoneNumber];
            LOBYTE(v11) = [v11 isPhoneNumber:v12 equivalentToExistingPhoneNumber:v4];

            if (v11)
            {
              v13 = v9;

              self = v17;
              if (v13)
              {
                goto LABEL_20;
              }

              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        if (v6 == ++v8)
        {
          v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    self = v17;
  }

LABEL_16:
  v13 = [(IMCTXPCServiceSubscriptionInfo *)self preferredOrDefaultSubscriptionContext];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [v13 phoneNumber];
      *buf = 138412546;
      v23 = v4;
      v24 = 2112;
      v25 = v15;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Phone number given is nil %@ or no context was found, defaulting to preferred %@", buf, 0x16u);
    }
  }

LABEL_20:

  return v13;
}

- (id)__im_subscriptionContextForForSimID:(id)a3 phoneNumber:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v30 = a4;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v37 = v6;
      v38 = 2112;
      v39 = v30;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Trying to find subscription context for simID %@ phoneNumber %@", buf, 0x16u);
    }
  }

  if ([v30 length] || objc_msgSend(v6, "length"))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
        *buf = 138412290;
        v37 = v9;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Attempting to identify matching context from subscriptions: %@", buf, 0xCu);
      }
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v11 = 0;
    v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v12)
    {
      v14 = *v32;
      *&v13 = 138412290;
      v29 = v13;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v32 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          v17 = [v16 phoneNumber];
          if ([v17 length] && objc_msgSend(v30, "length"))
          {
            v18 = [v16 phoneNumber];
            v19 = MEMORY[0x1AC570E30](v18, v30);
          }

          else
          {
            v19 = 0;
          }

          if ([v6 length])
          {
            v20 = [v16 labelID];
            v21 = [v20 isEqualToString:v6];

            if (v19)
            {
              goto LABEL_32;
            }

            if (v21)
            {
              v22 = v16;

              if (IMOSLoggingEnabled())
              {
                v23 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = v29;
                  v37 = v22;
                  _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "Found a SIM ID match to subscription: %@", buf, 0xCu);
                }
              }

              v11 = v22;
            }
          }

          else if (v19)
          {
LABEL_32:
            v12 = v16;
            if (IMOSLoggingEnabled())
            {
              v24 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
              {
                *buf = v29;
                v37 = v12;
                _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "Found a phone number match to subscription: %@", buf, 0xCu);
              }
            }

            goto LABEL_36;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_36:
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A85E5000, v28, OS_LOG_TYPE_INFO, "Phone number and SIM ID were both empty", buf, 2u);
      }
    }

    v11 = 0;
    v12 = 0;
  }

  if (v12)
  {
    v25 = v12;
  }

  else
  {
    v25 = v11;
  }

  v26 = v25;

  return v25;
}

- (id)__im_subscriptionContextOrDefaultForForSimID:(id)a3 phoneNumber:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(IMCTXPCServiceSubscriptionInfo *)self __im_subscriptionContextForForSimID:v6 phoneNumber:v7];
  if (!v8)
  {
    v8 = [(IMCTXPCServiceSubscriptionInfo *)self preferredOrDefaultSubscriptionContext];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = [v8 phoneNumber];
        v11 = [v8 labelID];
        v13 = 138412546;
        v14 = v10;
        v15 = 2112;
        v16 = v11;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Phone number given and simID are nil, defaulting to preferred phoneNumber %@ simID %@", &v13, 0x16u);
      }
    }
  }

  return v8;
}

- (id)__im_subscriptionContextForSenderIdentity:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([IMSenderIdentityManager isTUSenderIdentity:v4 equalToSubscriptionContext:v9])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)__im_contactPreferredSubscriptionContextForChatHandleIDs:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Trying to find contact-preferred subscription context for chat handle IDs %@", &v12, 0xCu);
    }
  }

  if ([v4 count])
  {
    v6 = [(IMCTXPCServiceSubscriptionInfo *)self _senderIdentityManager];
    v7 = [v6 bestSenderIdentityForHandleIDs:v4];

    if (v7)
    {
      v8 = [(IMCTXPCServiceSubscriptionInfo *)self __im_subscriptionContextForSenderIdentity:v7];
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v12 = 138412546;
          v13 = v8;
          v14 = 2112;
          v15 = v4;
          _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Found contact preferred context %@ for handleIDs %@", &v12, 0x16u);
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "No chat handle IDs to search for", &v12, 2u);
      }
    }

    v8 = 0;
  }

  return v8;
}

@end
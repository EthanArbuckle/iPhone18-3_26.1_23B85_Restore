@interface IMCTXPCServiceSubscriptionInfo
- (BOOL)__im_containsPhoneNumber:(id)number;
- (BOOL)__im_hasMultipleSubscriptions;
- (BOOL)__im_onlyHasActiveSlots;
- (IMCTXPCServiceSubscriptionInfo)initWithSubscriptionInfo:(id)info;
- (NSArray)phoneNumbersOfActiveSubscriptions;
- (id)__imSIMIDForSubscriptionSlot:(int64_t)slot;
- (id)__im_contactPreferredSubscriptionContextForChatHandleIDs:(id)ds;
- (id)__im_labelForPhoneNumber:(id)number simID:(id)d;
- (id)__im_phoneNumberForSlotID:(int64_t)d;
- (id)__im_phoneNumberForSlotIDOrDefault:(int64_t)default;
- (id)__im_preferredDataSubscriptionContext;
- (id)__im_preferredSubscriptionContext;
- (id)__im_subscriptionContextForForSimID:(id)d;
- (id)__im_subscriptionContextForForSimID:(id)d phoneNumber:(id)number;
- (id)__im_subscriptionContextForForSlotID:(int64_t)d;
- (id)__im_subscriptionContextForPhoneNumber:(id)number;
- (id)__im_subscriptionContextForPhoneNumberOrDefault:(id)default;
- (id)__im_subscriptionContextForSenderIdentity:(id)identity;
- (id)__im_subscriptionContextOrDefaultForForSimID:(id)d phoneNumber:(id)number;
- (id)__im_subscriptionContextOrDefaultForForSlotID:(int64_t)d;
- (id)__im_subscriptionsWithMMSSupport;
- (id)__im_subscriptionsWithRCSSupport;
- (id)__im_switchSubscriptionContextFromPhoneNumber:(id)number simID:(id)d;
- (id)__im_switchSubscriptionContextFromSubscriptionContext:(id)context;
- (id)allSubscriptions;
- (id)description;
- (id)preferredOrDefaultSubscriptionContext;
- (id)subscriptions;
- (int64_t)__imSlotIDSForPhoneNumber:(id)number;
@end

@implementation IMCTXPCServiceSubscriptionInfo

- (id)subscriptions
{
  subscriptionInfo = [(IMCTXPCServiceSubscriptionInfo *)self subscriptionInfo];
  subscriptionsInUse = [subscriptionInfo subscriptionsInUse];
  subscriptionFilterPredicate = [(IMCTXPCServiceSubscriptionInfo *)self subscriptionFilterPredicate];
  v6 = [subscriptionsInUse filteredArrayUsingPredicate:subscriptionFilterPredicate];
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
  subscriptionInfo = [(IMCTXPCServiceSubscriptionInfo *)self subscriptionInfo];
  subscriptions = [subscriptionInfo subscriptions];
  subscriptionFilterPredicate = [(IMCTXPCServiceSubscriptionInfo *)self subscriptionFilterPredicate];
  v6 = [subscriptions filteredArrayUsingPredicate:subscriptionFilterPredicate];
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
  allSubscriptions = [(IMCTXPCServiceSubscriptionInfo *)self allSubscriptions];
  v3 = [allSubscriptions count] == 2;

  return v3;
}

- (BOOL)__im_onlyHasActiveSlots
{
  subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v3 = [subscriptions count] == 2;

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
  subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v4 = [subscriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(subscriptions);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = +[IMCTRCSUtilitiesManager sharedManager];
        phoneNumber = [v8 phoneNumber];
        labelID = [v8 labelID];
        v12 = [v9 supportedForPhoneNumber:phoneNumber simID:labelID];

        if (v12)
        {
          [v14 addObject:v8];
        }
      }

      v5 = [subscriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v14;
}

- (id)preferredOrDefaultSubscriptionContext
{
  v19 = *MEMORY[0x1E69E9840];
  __im_preferredSubscriptionContext = [(IMCTXPCServiceSubscriptionInfo *)self __im_preferredSubscriptionContext];
  if (!__im_preferredSubscriptionContext)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v5 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(subscriptions);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          phoneNumber = [v9 phoneNumber];
          if ([phoneNumber length])
          {

LABEL_14:
            __im_preferredSubscriptionContext = v9;
            goto LABEL_15;
          }

          labelID = [v9 labelID];
          v12 = [labelID length];

          if (v12)
          {
            goto LABEL_14;
          }
        }

        v6 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
        __im_preferredSubscriptionContext = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      __im_preferredSubscriptionContext = 0;
    }

LABEL_15:
  }

  return __im_preferredSubscriptionContext;
}

- (id)__im_preferredSubscriptionContext
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v4 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(subscriptions);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        phoneNumber = [v7 phoneNumber];
        v9 = [phoneNumber length];
        if (v9 || ([v7 labelID], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "length")))
        {
          userDefaultVoice = [v7 userDefaultVoice];
          bOOLValue = [userDefaultVoice BOOLValue];

          if (v9)
          {

            if (bOOLValue)
            {
              goto LABEL_17;
            }
          }

          else
          {

            if (bOOLValue)
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

      v4 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
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
  subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  __im_logCTXPCServiceSubscriptionContext = [subscriptions __im_logCTXPCServiceSubscriptionContext];
  allSubscriptions = [(IMCTXPCServiceSubscriptionInfo *)self allSubscriptions];
  __im_logCTXPCServiceSubscriptionContext2 = [allSubscriptions __im_logCTXPCServiceSubscriptionContext];
  v8 = [v3 stringWithFormat:@"IMCTXPCServiceSubscriptionInfo: activeSubscriptions %@ allSubscriptions: %@", __im_logCTXPCServiceSubscriptionContext, __im_logCTXPCServiceSubscriptionContext2];

  return v8;
}

- (IMCTXPCServiceSubscriptionInfo)initWithSubscriptionInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = IMCTXPCServiceSubscriptionInfo;
  v6 = [(IMCTXPCServiceSubscriptionInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionInfo, info);
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
  subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v5 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(subscriptions);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        phoneNumber = [v9 phoneNumber];
        labelID = [v9 labelID];
        v12 = [IMCTSMSUtilities IMMMSSupportedAndConfiguredForPhoneNumber:phoneNumber simID:labelID];

        if (v12)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)__im_containsPhoneNumber:(id)number
{
  v24 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  if ([numberCopy length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v6 = [subscriptions countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(subscriptions);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          phoneNumber = [v9 phoneNumber];
          if ([phoneNumber length])
          {
            phoneNumber2 = [v9 phoneNumber];
            v12 = MEMORY[0x1AC570E30](phoneNumber2, numberCopy);

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

        v6 = [subscriptions countByEnumeratingWithState:&v15 objects:v23 count:16];
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
        v20 = numberCopy;
        v21 = 2112;
        selfCopy = self;
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
    subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v6 = [v4 initWithCapacity:{objc_msgSend(subscriptions, "count")}];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    subscriptions2 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v8 = [subscriptions2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(subscriptions2);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          phoneNumber = [v12 phoneNumber];
          if ([phoneNumber length])
          {
            phoneNumber2 = [v12 phoneNumber];
            v15 = IMChatCanonicalIDSIDsForAddress(phoneNumber2);
            _stripFZIDPrefix = [v15 _stripFZIDPrefix];

            if (_stripFZIDPrefix)
            {
              v17 = _stripFZIDPrefix;
            }

            else
            {
              v17 = phoneNumber;
            }

            [(NSArray *)v6 addObject:v17];
          }
        }

        v9 = [subscriptions2 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
  subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v4 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(subscriptions);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        phoneNumber = [v7 phoneNumber];
        v9 = [phoneNumber length];
        if (v9 || ([v7 labelID], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "length")))
        {
          userDataPreferred = [v7 userDataPreferred];
          bOOLValue = [userDataPreferred BOOLValue];

          if (v9)
          {

            if (bOOLValue)
            {
              goto LABEL_17;
            }
          }

          else
          {

            if (bOOLValue)
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

      v4 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)__im_switchSubscriptionContextFromSubscriptionContext:(id)context
{
  v24 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    goto LABEL_14;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v6 = [subscriptions countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (!v6)
  {

LABEL_14:
    preferredOrDefaultSubscriptionContext = [(IMCTXPCServiceSubscriptionInfo *)self preferredOrDefaultSubscriptionContext];
    goto LABEL_15;
  }

  preferredOrDefaultSubscriptionContext = 0;
  v8 = *v16;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v16 != v8)
      {
        objc_enumerationMutation(subscriptions);
      }

      v10 = *(*(&v15 + 1) + 8 * i);
      slotID = [v10 slotID];
      if (slotID != [contextCopy slotID])
      {
        v12 = v10;

        preferredOrDefaultSubscriptionContext = v12;
      }
    }

    v6 = [subscriptions countByEnumeratingWithState:&v15 objects:v23 count:16];
  }

  while (v6);

  if (!preferredOrDefaultSubscriptionContext)
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
      v20 = preferredOrDefaultSubscriptionContext;
      v21 = 2112;
      v22 = contextCopy;
      _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Found context to switch to %@ from %@", buf, 0x16u);
    }
  }

  return preferredOrDefaultSubscriptionContext;
}

- (id)__im_switchSubscriptionContextFromPhoneNumber:(id)number simID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  dCopy = d;
  v8 = [(IMCTXPCServiceSubscriptionInfo *)self __im_subscriptionContextForForSimID:dCopy phoneNumber:numberCopy];
  v9 = [(IMCTXPCServiceSubscriptionInfo *)self __im_switchSubscriptionContextFromSubscriptionContext:v8];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = numberCopy;
      v16 = 2112;
      v17 = dCopy;
      _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Found context to switch to %@ from phone number %@ simID %@", &v12, 0x20u);
    }
  }

  return v9;
}

- (id)__im_phoneNumberForSlotID:(int64_t)d
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v5 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(subscriptions);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 slotID] == d)
        {
          phoneNumber = [v9 phoneNumber];
          v12 = IMChatCanonicalIDSIDsForAddress(phoneNumber);
          _stripFZIDPrefix = [v12 _stripFZIDPrefix];

          goto LABEL_11;
        }
      }

      v6 = [subscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  _stripFZIDPrefix = 0;
LABEL_11:

  return _stripFZIDPrefix;
}

- (id)__im_phoneNumberForSlotIDOrDefault:(int64_t)default
{
  v4 = [(IMCTXPCServiceSubscriptionInfo *)self __im_phoneNumberForSlotID:default];
  if (![v4 length])
  {
    preferredOrDefaultSubscriptionContext = [(IMCTXPCServiceSubscriptionInfo *)self preferredOrDefaultSubscriptionContext];
    phoneNumber = [preferredOrDefaultSubscriptionContext phoneNumber];
    v7 = IMChatCanonicalIDSIDsForAddress(phoneNumber);
    _stripFZIDPrefix = [v7 _stripFZIDPrefix];

    v4 = _stripFZIDPrefix;
  }

  return v4;
}

- (id)__im_labelForPhoneNumber:(id)number simID:(id)d
{
  v4 = [(IMCTXPCServiceSubscriptionInfo *)self __im_subscriptionContextForForSimID:d phoneNumber:number];
  label = [v4 label];
  v6 = [label length];

  if (v6)
  {
    label2 = [v4 label];
  }

  else
  {
    label2 = 0;
  }

  return label2;
}

- (int64_t)__imSlotIDSForPhoneNumber:(id)number
{
  v25 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  slotID = 0;
  v7 = [subscriptions countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(subscriptions);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            phoneNumber = [v10 phoneNumber];
            *buf = 138412546;
            v21 = phoneNumber;
            v22 = 2112;
            v23 = numberCopy;
            _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "getSlotFromContextInfo: comparing %@ with current number %@", buf, 0x16u);
          }
        }

        if (numberCopy)
        {
          phoneNumber2 = [v10 phoneNumber];
          v14 = IMSharedHelperAreObjectsLogicallySame(phoneNumber2, numberCopy);

          if (v14)
          {
            slotID = [v10 slotID];
          }
        }
      }

      v7 = [subscriptions countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v7);
  }

  return slotID;
}

- (id)__imSIMIDForSubscriptionSlot:(int64_t)slot
{
  v18 = *MEMORY[0x1E69E9840];
  if (slot)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v5 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(subscriptions);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 slotID] == slot)
          {
            labelID = [v10 labelID];

            v7 = labelID;
          }
        }

        v6 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)__im_subscriptionContextForForSlotID:(int64_t)d
{
  v18 = *MEMORY[0x1E69E9840];
  if (d)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v5 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(subscriptions);
          }

          v8 = *(*(&v13 + 1) + 8 * i);
          if ([v8 slotID] == d)
          {
            v9 = v8;
            goto LABEL_12;
          }
        }

        v5 = [subscriptions countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (id)__im_subscriptionContextOrDefaultForForSlotID:(int64_t)d
{
  v4 = [(IMCTXPCServiceSubscriptionInfo *)self __im_subscriptionContextForForSlotID:d];
  v5 = v4;
  if (v4)
  {
    preferredOrDefaultSubscriptionContext = v4;
  }

  else
  {
    preferredOrDefaultSubscriptionContext = [(IMCTXPCServiceSubscriptionInfo *)self preferredOrDefaultSubscriptionContext];
  }

  v7 = preferredOrDefaultSubscriptionContext;

  return v7;
}

- (id)__im_subscriptionContextForPhoneNumber:(id)number
{
  v22 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  if ([numberCopy length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v6 = [subscriptions countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(subscriptions);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          phoneNumber = [v9 phoneNumber];
          if ([phoneNumber length])
          {
            phoneNumber2 = [v9 phoneNumber];
            v12 = MEMORY[0x1AC570E30](phoneNumber2, numberCopy);

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

        v6 = [subscriptions countByEnumeratingWithState:&v15 objects:v21 count:16];
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
        v20 = numberCopy;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Phone number given is nil %@ ", buf, 0xCu);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (id)__im_subscriptionContextForForSimID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([dCopy length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v6 = [subscriptions countByEnumeratingWithState:&v15 objects:v21 count:16];
    if (v6)
    {
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(subscriptions);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          labelID = [v9 labelID];
          if ([labelID length])
          {
            labelID2 = [v9 labelID];
            v12 = [labelID2 isEqualToString:dCopy];

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

        v6 = [subscriptions countByEnumeratingWithState:&v15 objects:v21 count:16];
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
        v20 = dCopy;
        _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "SIM ID given is nil %@ ", buf, 0xCu);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (id)__im_subscriptionContextForPhoneNumberOrDefault:(id)default
{
  v27 = *MEMORY[0x1E69E9840];
  defaultCopy = default;
  if ([defaultCopy length])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    selfCopy = self;
    subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v6 = [subscriptions countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v6)
    {
      v7 = *v19;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(subscriptions);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        if (MEMORY[0x1AC570A50](defaultCopy))
        {
          phoneNumber = [v9 phoneNumber];
          if ([phoneNumber length])
          {
            v11 = MEMORY[0x1E69A51E8];
            phoneNumber2 = [v9 phoneNumber];
            LOBYTE(v11) = [v11 isPhoneNumber:phoneNumber2 equivalentToExistingPhoneNumber:defaultCopy];

            if (v11)
            {
              preferredOrDefaultSubscriptionContext = v9;

              self = selfCopy;
              if (preferredOrDefaultSubscriptionContext)
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
          v6 = [subscriptions countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    self = selfCopy;
  }

LABEL_16:
  preferredOrDefaultSubscriptionContext = [(IMCTXPCServiceSubscriptionInfo *)self preferredOrDefaultSubscriptionContext];
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      phoneNumber3 = [preferredOrDefaultSubscriptionContext phoneNumber];
      *buf = 138412546;
      v23 = defaultCopy;
      v24 = 2112;
      v25 = phoneNumber3;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Phone number given is nil %@ or no context was found, defaulting to preferred %@", buf, 0x16u);
    }
  }

LABEL_20:

  return preferredOrDefaultSubscriptionContext;
}

- (id)__im_subscriptionContextForForSimID:(id)d phoneNumber:(id)number
{
  v40 = *MEMORY[0x1E69E9840];
  dCopy = d;
  numberCopy = number;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v37 = dCopy;
      v38 = 2112;
      v39 = numberCopy;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Trying to find subscription context for simID %@ phoneNumber %@", buf, 0x16u);
    }
  }

  if ([numberCopy length] || objc_msgSend(dCopy, "length"))
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
        *buf = 138412290;
        v37 = subscriptions;
        _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "Attempting to identify matching context from subscriptions: %@", buf, 0xCu);
      }
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    subscriptions2 = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
    v11 = 0;
    v12 = [subscriptions2 countByEnumeratingWithState:&v31 objects:v35 count:16];
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
            objc_enumerationMutation(subscriptions2);
          }

          v16 = *(*(&v31 + 1) + 8 * i);
          phoneNumber = [v16 phoneNumber];
          if ([phoneNumber length] && objc_msgSend(numberCopy, "length"))
          {
            phoneNumber2 = [v16 phoneNumber];
            v19 = MEMORY[0x1AC570E30](phoneNumber2, numberCopy);
          }

          else
          {
            v19 = 0;
          }

          if ([dCopy length])
          {
            labelID = [v16 labelID];
            v21 = [labelID isEqualToString:dCopy];

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

        v12 = [subscriptions2 countByEnumeratingWithState:&v31 objects:v35 count:16];
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

- (id)__im_subscriptionContextOrDefaultForForSimID:(id)d phoneNumber:(id)number
{
  v17 = *MEMORY[0x1E69E9840];
  dCopy = d;
  numberCopy = number;
  preferredOrDefaultSubscriptionContext = [(IMCTXPCServiceSubscriptionInfo *)self __im_subscriptionContextForForSimID:dCopy phoneNumber:numberCopy];
  if (!preferredOrDefaultSubscriptionContext)
  {
    preferredOrDefaultSubscriptionContext = [(IMCTXPCServiceSubscriptionInfo *)self preferredOrDefaultSubscriptionContext];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        phoneNumber = [preferredOrDefaultSubscriptionContext phoneNumber];
        labelID = [preferredOrDefaultSubscriptionContext labelID];
        v13 = 138412546;
        v14 = phoneNumber;
        v15 = 2112;
        v16 = labelID;
        _os_log_impl(&dword_1A85E5000, v9, OS_LOG_TYPE_INFO, "Phone number given and simID are nil, defaulting to preferred phoneNumber %@ simID %@", &v13, 0x16u);
      }
    }
  }

  return preferredOrDefaultSubscriptionContext;
}

- (id)__im_subscriptionContextForSenderIdentity:(id)identity
{
  v16 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subscriptions = [(IMCTXPCServiceSubscriptionInfo *)self subscriptions];
  v6 = [subscriptions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(subscriptions);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([IMSenderIdentityManager isTUSenderIdentity:identityCopy equalToSubscriptionContext:v9])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [subscriptions countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)__im_contactPreferredSubscriptionContextForChatHandleIDs:(id)ds
{
  v16 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = dsCopy;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Trying to find contact-preferred subscription context for chat handle IDs %@", &v12, 0xCu);
    }
  }

  if ([dsCopy count])
  {
    _senderIdentityManager = [(IMCTXPCServiceSubscriptionInfo *)self _senderIdentityManager];
    v7 = [_senderIdentityManager bestSenderIdentityForHandleIDs:dsCopy];

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
          v15 = dsCopy;
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
@interface BSCoreTelephonyUtilities
- (BSCoreTelephonyUtilities)init;
- (CTXPCServiceSubscriptionInfo)subscriptionInfo;
- (id)defaultSubscriptionContextFromSubscriptionInfo;
- (id)subscriptionContextForSimID:(id)d;
- (id)subscriptionsFromInfo:(id)info;
- (void)activeSubscriptionsDidChange;
- (void)dualSimCapabilityDidChange;
- (void)subscriptionInfoDidChange;
@end

@implementation BSCoreTelephonyUtilities

- (BSCoreTelephonyUtilities)init
{
  v10.receiver = self;
  v10.super_class = BSCoreTelephonyUtilities;
  v2 = [(BSCoreTelephonyUtilities *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.businessservicesd.coretelephony", 0);
    coreTelephonyQueue = v2->_coreTelephonyQueue;
    v2->_coreTelephonyQueue = v3;

    v5 = [objc_alloc(MEMORY[0x277CC37B0]) initWithQueue:v2->_coreTelephonyQueue];
    coreTelephonyClient = v2->_coreTelephonyClient;
    v2->_coreTelephonyClient = v5;

    [(CoreTelephonyClient *)v2->_coreTelephonyClient setDelegate:v2];
    v7 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    lock = v2->_lock;
    v2->_lock = v7;
  }

  return v2;
}

- (id)subscriptionsFromInfo:(id)info
{
  subscriptionsInUse = [info subscriptionsInUse];
  subscriptionFilterPredicate = [(BSCoreTelephonyUtilities *)self subscriptionFilterPredicate];
  v6 = [subscriptionsInUse filteredArrayUsingPredicate:subscriptionFilterPredicate];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = v8;

  return v8;
}

- (CTXPCServiceSubscriptionInfo)subscriptionInfo
{
  [(NSLock *)self->_lock lock];
  v3 = self->_subscriptionInfo;
  [(NSLock *)self->_lock unlock];
  if (!v3)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v8 = 0;
    v3 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v8];
    v5 = v8;
    if (v5 || !v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_2155AF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to get subscription info from CoreTelephony", v7, 2u);
        if (!v3)
        {
          goto LABEL_7;
        }
      }

      else if (!v3)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    [(NSLock *)self->_lock lock];
    objc_storeStrong(&self->_subscriptionInfo, v3);
    [(NSLock *)self->_lock unlock];
    goto LABEL_7;
  }

LABEL_8:

  return v3;
}

- (id)subscriptionContextForSimID:(id)d
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy length])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    subscriptionInfo = [(BSCoreTelephonyUtilities *)self subscriptionInfo];
    v6 = [(BSCoreTelephonyUtilities *)self subscriptionsFromInfo:subscriptionInfo];

    v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          labelID = [v11 labelID];
          if ([labelID length])
          {
            labelID2 = [v11 labelID];
            v14 = [labelID2 isEqualToString:dCopy];

            if (v14)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v24 = v11;
                v25 = 2112;
                v26 = dCopy;
                _os_log_debug_impl(&dword_2155AF000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Found subscription context %@ for SIM ID: %@ ", buf, 0x16u);
              }

              v15 = v11;

              goto LABEL_20;
            }
          }

          else
          {
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v24 = dCopy;
    _os_log_error_impl(&dword_2155AF000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "SIM ID given is nil %@ ", buf, 0xCu);
  }

  v15 = 0;
LABEL_20:

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)defaultSubscriptionContextFromSubscriptionInfo
{
  v41 = *MEMORY[0x277D85DE8];
  subscriptionInfo = [(BSCoreTelephonyUtilities *)self subscriptionInfo];
  v5 = [(BSCoreTelephonyUtilities *)self subscriptionsFromInfo:subscriptionInfo];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v35 + 1) + 8 * v10);
        phoneNumber = [v11 phoneNumber];
        v13 = [phoneNumber length];
        if (v13 || ([v11 labelID], v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v2, "length")))
        {
          userDefaultVoice = [v11 userDefaultVoice];
          bOOLValue = [userDefaultVoice BOOLValue];

          if (!v13)
          {
          }

          if (bOOLValue)
          {
            v17 = v11;

            v18 = v17;
            v19 = v18;
            if (v18)
            {
              goto LABEL_31;
            }

            goto LABEL_17;
          }
        }

        else
        {
        }

        ++v10;
      }

      while (v8 != v10);
      v16 = [v6 countByEnumeratingWithState:&v35 objects:v40 count:16];
      v8 = v16;
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = v6;
  v21 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v32;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v31 + 1) + 8 * i);
        phoneNumber2 = [v25 phoneNumber];
        if ([phoneNumber2 length])
        {

LABEL_29:
          v19 = v25;
          goto LABEL_30;
        }

        labelID = [v25 labelID];
        v28 = [labelID length];

        if (v28)
        {
          goto LABEL_29;
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v31 objects:v39 count:16];
      v19 = 0;
      if (v22)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

LABEL_30:

  v18 = 0;
LABEL_31:

  v29 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)subscriptionInfoDidChange
{
  [(NSLock *)self->_lock lock];
  subscriptionInfo = self->_subscriptionInfo;
  self->_subscriptionInfo = 0;

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)activeSubscriptionsDidChange
{
  [(NSLock *)self->_lock lock];
  subscriptionInfo = self->_subscriptionInfo;
  self->_subscriptionInfo = 0;

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)dualSimCapabilityDidChange
{
  [(NSLock *)self->_lock lock];
  subscriptionInfo = self->_subscriptionInfo;
  self->_subscriptionInfo = 0;

  lock = self->_lock;

  [(NSLock *)lock unlock];
}

@end
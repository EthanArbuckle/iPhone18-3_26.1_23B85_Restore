@interface CHContactChangeManager
- (BOOL)processingNotification;
- (CHContactChangeManager)initWithSpotlightIndexManager:(id)manager featureFlags:(id)flags;
- (CHSpotlightIndexManager)spotlightIndexManager;
- (void)addAcceptedIntroductionsNotifier;
- (void)contactStoreDidChange:(id)change;
- (void)fetchContacts;
- (void)fetchContactsAfterDelay;
- (void)handleAcceptedContactsChanged;
- (void)setCurrentHistoryToken:(id)token;
- (void)setProcessingNotification:(BOOL)notification;
- (void)triggerReindexingForReason:(unint64_t)reason;
- (void)updateCurrentHistoryToken;
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitDropEverythingEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation CHContactChangeManager

- (CHContactChangeManager)initWithSpotlightIndexManager:(id)manager featureFlags:(id)flags
{
  managerCopy = manager;
  flagsCopy = flags;
  v17.receiver = self;
  v17.super_class = CHContactChangeManager;
  v8 = [(CHContactChangeManager *)&v17 initWithName:"CHContactChangeManager"];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_spotlightIndexManager, managerCopy);
    contactStore = [managerCopy contactStore];
    contactStore = v9->_contactStore;
    v9->_contactStore = contactStore;

    objc_storeStrong(&v9->_featureFlags, flags);
    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = [v12 valueForKey:@"kCHLastFetchedContactHistoryToken"];
    currentHistoryToken = v9->_currentHistoryToken;
    v9->_currentHistoryToken = v13;

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v9 selector:"contactStoreDidChange:" name:CNContactStoreDidChangeNotification object:0];

    [(CHContactChangeManager *)v9 fetchContactsAfterDelay];
    [(CHContactChangeManager *)v9 addAcceptedIntroductionsNotifier];
  }

  return v9;
}

- (void)setCurrentHistoryToken:(id)token
{
  tokenCopy = token;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled]&& self->_currentHistoryToken != tokenCopy)
  {
    objc_storeStrong(&self->_currentHistoryToken, token);
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setValue:tokenCopy forKey:@"kCHLastFetchedContactHistoryToken"];
  }
}

- (BOOL)processingNotification
{
  os_unfair_lock_lock(&self->_accessorLock);
  processingNotification = self->_processingNotification;
  os_unfair_lock_unlock(&self->_accessorLock);
  return processingNotification;
}

- (void)setProcessingNotification:(BOOL)notification
{
  notificationCopy = notification;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_processingNotification != notificationCopy)
  {
    self->_processingNotification = notificationCopy;
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)contactStoreDidChange:(id)change
{
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    logHandle = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Contacts store reported a change", v5, 2u);
    }

    [(CHContactChangeManager *)self fetchContactsAfterDelay];
  }
}

- (void)fetchContactsAfterDelay
{
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    if (![(CHContactChangeManager *)self processingNotification])
    {
      [(CHContactChangeManager *)self setProcessingNotification:1];
      v3 = dispatch_time(0, 5000000000);
      queue = [(CHContactChangeManager *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100009F3C;
      block[3] = &unk_100050FA0;
      block[4] = self;
      dispatch_after(v3, queue, block);
    }
  }
}

- (void)fetchContacts
{
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    logHandle = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Fetching contacts from CNContactStore", buf, 2u);
    }

    currentHistoryToken = [(CHContactChangeManager *)self currentHistoryToken];

    if (currentHistoryToken)
    {
      v5 = objc_alloc_init(CNChangeHistoryFetchRequest);
      currentHistoryToken2 = [(CHContactChangeManager *)self currentHistoryToken];
      [v5 setStartingToken:currentHistoryToken2];

      v41[0] = CNContactEmailAddressesKey;
      v41[1] = CNContactPhoneNumbersKey;
      v7 = [NSArray arrayWithObjects:v41 count:2];
      [v5 setAdditionalContactKeyDescriptors:v7];

      contactStore = [(CHContactChangeManager *)self contactStore];
      v37 = 0;
      v9 = [contactStore countForFetchRequest:v5 error:&v37];
      v10 = v37;

      if (v9)
      {
        value = [v9 value];
        unsignedIntegerValue = [value unsignedIntegerValue];

        if (unsignedIntegerValue < 0x65)
        {
          value2 = [v9 value];
          unsignedIntegerValue2 = [value2 unsignedIntegerValue];

          if (unsignedIntegerValue2)
          {

            contactStore2 = [(CHContactChangeManager *)self contactStore];
            v36 = 0;
            v24 = [contactStore2 executeFetchRequest:v5 error:&v36];
            v10 = v36;

            [(CHContactChangeManager *)self setProcessingNotification:0];
            if (v24)
            {
              currentHistoryToken3 = [v24 currentHistoryToken];
              [(CHContactChangeManager *)self setCurrentHistoryToken:currentHistoryToken3];

              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              value3 = [v24 value];
              v27 = [value3 countByEnumeratingWithState:&v32 objects:v38 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v33;
                do
                {
                  for (i = 0; i != v28; i = i + 1)
                  {
                    if (*v33 != v29)
                    {
                      objc_enumerationMutation(value3);
                    }

                    [*(*(&v32 + 1) + 8 * i) acceptEventVisitor:self];
                  }

                  v28 = [value3 countByEnumeratingWithState:&v32 objects:v38 count:16];
                }

                while (v28);
              }
            }

            else
            {
              value3 = [(CHContactChangeManager *)self logHandle];
              if (os_log_type_enabled(value3, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v40 = v10;
                _os_log_impl(&_mh_execute_header, value3, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Could not fetch Change History from CNContactStore error: %{public}@", buf, 0xCu);
              }
            }
          }

          else
          {
            logHandle2 = [(CHContactChangeManager *)self logHandle];
            if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Contact store count is 0, no need to reindex", buf, 2u);
            }

            [(CHContactChangeManager *)self setProcessingNotification:0];
          }

          goto LABEL_33;
        }

        logHandle3 = [(CHContactChangeManager *)self logHandle];
        if (os_log_type_enabled(logHandle3, OS_LOG_TYPE_DEFAULT))
        {
          value4 = [v9 value];
          unsignedIntegerValue3 = [value4 unsignedIntegerValue];
          *buf = 134217984;
          v40 = unsignedIntegerValue3;
          _os_log_impl(&_mh_execute_header, logHandle3, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Contact store count: %lu is greater than threshold, triggering a full reindex", buf, 0xCu);
        }

        currentHistoryToken4 = [v9 currentHistoryToken];
        [(CHContactChangeManager *)self setCurrentHistoryToken:currentHistoryToken4];

        selfCopy2 = self;
        v18 = 64;
      }

      else
      {
        logHandle4 = [(CHContactChangeManager *)self logHandle];
        if (os_log_type_enabled(logHandle4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v40 = v10;
          _os_log_impl(&_mh_execute_header, logHandle4, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Could not fetch Change History Count from CNContactStore error: %{public}@, triggering a full reindex", buf, 0xCu);
        }

        selfCopy2 = self;
        v18 = 32;
      }

      [(CHContactChangeManager *)selfCopy2 triggerReindexingForReason:v18];
LABEL_33:

      return;
    }

    logHandle5 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(logHandle5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, logHandle5, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: currentHistoryToken is nil , triggering a full reindex", buf, 2u);
    }

    [(CHContactChangeManager *)self triggerReindexingForReason:16];
  }
}

- (void)triggerReindexingForReason:(unint64_t)reason
{
  [(CHContactChangeManager *)self setNeedsDeferredReindexingForReason:reason];

  [(CHContactChangeManager *)self setProcessingNotification:0];
}

- (void)visitDropEverythingEvent:(id)event
{
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    logHandle = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Handling a Drop Everything change history event", v5, 2u);
    }

    [(CHContactChangeManager *)self setNeedsDeferredReindexingForReason:128];
  }
}

- (void)visitAddContactEvent:(id)event
{
  eventCopy = event;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    logHandle = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Handling a Add Contact change history event", &v14, 2u);
    }

    contact = [eventCopy contact];
    v7 = objc_retainBlock(ch_allPhoneNumberLastFourDigits);
    v16[0] = v7;
    v8 = objc_retainBlock(ch_allEmails);
    v16[1] = v8;
    v9 = [NSArray arrayWithObjects:v16 count:2];
    v10 = [contact handlesIncluding:v9];

    logHandle2 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138739971;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Updating calls for handle IDs: %{sensitive}@", &v14, 0xCu);
    }

    if (v10)
    {
      spotlightIndexManager = [(CHContactChangeManager *)self spotlightIndexManager];

      if (spotlightIndexManager)
      {
        spotlightIndexManager2 = [(CHContactChangeManager *)self spotlightIndexManager];
        [spotlightIndexManager2 updateCallsHavingHandles:v10 orContactIdentifier:0];
      }

      else
      {
        spotlightIndexManager2 = [(CHContactChangeManager *)self logHandle];
        if (os_log_type_enabled(spotlightIndexManager2, OS_LOG_TYPE_ERROR))
        {
          sub_1000328A0();
        }
      }
    }
  }
}

- (void)visitUpdateContactEvent:(id)event
{
  eventCopy = event;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    logHandle = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Handling a Update Contact change history event", &v15, 2u);
    }

    contact = [eventCopy contact];
    v7 = objc_retainBlock(ch_allPhoneNumberLastFourDigits);
    v17[0] = v7;
    v8 = objc_retainBlock(ch_allEmails);
    v17[1] = v8;
    v9 = [NSArray arrayWithObjects:v17 count:2];
    v10 = [contact handlesIncluding:v9];

    logHandle2 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(logHandle2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138739971;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, logHandle2, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Updating calls for handle IDs: %{sensitive}@", &v15, 0xCu);
    }

    if (v10)
    {
      spotlightIndexManager = [(CHContactChangeManager *)self spotlightIndexManager];

      if (spotlightIndexManager)
      {
        spotlightIndexManager2 = [(CHContactChangeManager *)self spotlightIndexManager];
        identifier = [contact identifier];
        [spotlightIndexManager2 updateCallsHavingHandles:v10 orContactIdentifier:identifier];
      }

      else
      {
        spotlightIndexManager2 = [(CHContactChangeManager *)self logHandle];
        if (os_log_type_enabled(spotlightIndexManager2, OS_LOG_TYPE_ERROR))
        {
          sub_1000328A0();
        }
      }
    }
  }
}

- (void)visitDeleteContactEvent:(id)event
{
  eventCopy = event;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    logHandle = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Handling a Delete Contact change history event", v9, 2u);
    }

    contactIdentifier = [eventCopy contactIdentifier];
    if (contactIdentifier)
    {
      spotlightIndexManager = [(CHContactChangeManager *)self spotlightIndexManager];

      if (spotlightIndexManager)
      {
        spotlightIndexManager2 = [(CHContactChangeManager *)self spotlightIndexManager];
        [spotlightIndexManager2 updateCallsHavingHandles:0 orContactIdentifier:contactIdentifier];
      }

      else
      {
        spotlightIndexManager2 = [(CHContactChangeManager *)self logHandle];
        if (os_log_type_enabled(spotlightIndexManager2, OS_LOG_TYPE_ERROR))
        {
          sub_1000328A0();
        }
      }
    }
  }
}

- (void)updateCurrentHistoryToken
{
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    logHandle = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, logHandle, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Updating current history token", v6, 2u);
    }

    contactStore = [(CHContactChangeManager *)self contactStore];
    currentHistoryToken = [contactStore currentHistoryToken];
    [(CHContactChangeManager *)self setCurrentHistoryToken:currentHistoryToken];
  }
}

- (void)addAcceptedIntroductionsNotifier
{
  objc_initWeak(&location, self);
  v5 = _NSConcreteStackBlock;
  v6 = 3221225472;
  v7 = sub_10000AC04;
  v8 = &unk_100050FC8;
  objc_copyWeak(&v9, &location);
  v3 = [CNCoreRecentsChangeNotifier acceptedIntroductionsNotifierWithBlock:&v5];
  acceptedIntroductionsNotifier = self->_acceptedIntroductionsNotifier;
  self->_acceptedIntroductionsNotifier = v3;

  [(CNCoreRecentsChangeNotifier *)self->_acceptedIntroductionsNotifier startObserving:v5];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)handleAcceptedContactsChanged
{
  spotlightIndexManager = [(CHContactChangeManager *)self spotlightIndexManager];

  if (spotlightIndexManager)
  {
    spotlightIndexManager2 = [(CHContactChangeManager *)self spotlightIndexManager];
    [spotlightIndexManager2 updateCallsForAcceptedContacts];
  }

  else
  {
    logHandle = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_ERROR))
    {
      sub_1000328A0();
    }
  }
}

- (CHSpotlightIndexManager)spotlightIndexManager
{
  WeakRetained = objc_loadWeakRetained(&self->_spotlightIndexManager);

  return WeakRetained;
}

@end
@interface CHContactChangeManager
- (BOOL)processingNotification;
- (CHContactChangeManager)initWithSpotlightIndexManager:(id)a3 featureFlags:(id)a4;
- (CHSpotlightIndexManager)spotlightIndexManager;
- (void)addAcceptedIntroductionsNotifier;
- (void)contactStoreDidChange:(id)a3;
- (void)fetchContacts;
- (void)fetchContactsAfterDelay;
- (void)handleAcceptedContactsChanged;
- (void)setCurrentHistoryToken:(id)a3;
- (void)setProcessingNotification:(BOOL)a3;
- (void)triggerReindexingForReason:(unint64_t)a3;
- (void)updateCurrentHistoryToken;
- (void)visitAddContactEvent:(id)a3;
- (void)visitDeleteContactEvent:(id)a3;
- (void)visitDropEverythingEvent:(id)a3;
- (void)visitUpdateContactEvent:(id)a3;
@end

@implementation CHContactChangeManager

- (CHContactChangeManager)initWithSpotlightIndexManager:(id)a3 featureFlags:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CHContactChangeManager;
  v8 = [(CHContactChangeManager *)&v17 initWithName:"CHContactChangeManager"];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_spotlightIndexManager, v6);
    v10 = [v6 contactStore];
    contactStore = v9->_contactStore;
    v9->_contactStore = v10;

    objc_storeStrong(&v9->_featureFlags, a4);
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

- (void)setCurrentHistoryToken:(id)a3
{
  v6 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled]&& self->_currentHistoryToken != v6)
  {
    objc_storeStrong(&self->_currentHistoryToken, a3);
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setValue:v6 forKey:@"kCHLastFetchedContactHistoryToken"];
  }
}

- (BOOL)processingNotification
{
  os_unfair_lock_lock(&self->_accessorLock);
  processingNotification = self->_processingNotification;
  os_unfair_lock_unlock(&self->_accessorLock);
  return processingNotification;
}

- (void)setProcessingNotification:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_processingNotification != v3)
  {
    self->_processingNotification = v3;
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)contactStoreDidChange:(id)a3
{
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v4 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Contacts store reported a change", v5, 2u);
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
      v4 = [(CHContactChangeManager *)self queue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100009F3C;
      block[3] = &unk_100050FA0;
      block[4] = self;
      dispatch_after(v3, v4, block);
    }
  }
}

- (void)fetchContacts
{
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v3 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Fetching contacts from CNContactStore", buf, 2u);
    }

    v4 = [(CHContactChangeManager *)self currentHistoryToken];

    if (v4)
    {
      v5 = objc_alloc_init(CNChangeHistoryFetchRequest);
      v6 = [(CHContactChangeManager *)self currentHistoryToken];
      [v5 setStartingToken:v6];

      v41[0] = CNContactEmailAddressesKey;
      v41[1] = CNContactPhoneNumbersKey;
      v7 = [NSArray arrayWithObjects:v41 count:2];
      [v5 setAdditionalContactKeyDescriptors:v7];

      v8 = [(CHContactChangeManager *)self contactStore];
      v37 = 0;
      v9 = [v8 countForFetchRequest:v5 error:&v37];
      v10 = v37;

      if (v9)
      {
        v11 = [v9 value];
        v12 = [v11 unsignedIntegerValue];

        if (v12 < 0x65)
        {
          v21 = [v9 value];
          v22 = [v21 unsignedIntegerValue];

          if (v22)
          {

            v23 = [(CHContactChangeManager *)self contactStore];
            v36 = 0;
            v24 = [v23 executeFetchRequest:v5 error:&v36];
            v10 = v36;

            [(CHContactChangeManager *)self setProcessingNotification:0];
            if (v24)
            {
              v25 = [v24 currentHistoryToken];
              [(CHContactChangeManager *)self setCurrentHistoryToken:v25];

              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              v26 = [v24 value];
              v27 = [v26 countByEnumeratingWithState:&v32 objects:v38 count:16];
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
                      objc_enumerationMutation(v26);
                    }

                    [*(*(&v32 + 1) + 8 * i) acceptEventVisitor:self];
                  }

                  v28 = [v26 countByEnumeratingWithState:&v32 objects:v38 count:16];
                }

                while (v28);
              }
            }

            else
            {
              v26 = [(CHContactChangeManager *)self logHandle];
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v40 = v10;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Could not fetch Change History from CNContactStore error: %{public}@", buf, 0xCu);
              }
            }
          }

          else
          {
            v31 = [(CHContactChangeManager *)self logHandle];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Contact store count is 0, no need to reindex", buf, 2u);
            }

            [(CHContactChangeManager *)self setProcessingNotification:0];
          }

          goto LABEL_33;
        }

        v13 = [(CHContactChangeManager *)self logHandle];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v9 value];
          v15 = [v14 unsignedIntegerValue];
          *buf = 134217984;
          v40 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Contact store count: %lu is greater than threshold, triggering a full reindex", buf, 0xCu);
        }

        v16 = [v9 currentHistoryToken];
        [(CHContactChangeManager *)self setCurrentHistoryToken:v16];

        v17 = self;
        v18 = 64;
      }

      else
      {
        v20 = [(CHContactChangeManager *)self logHandle];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v40 = v10;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Could not fetch Change History Count from CNContactStore error: %{public}@, triggering a full reindex", buf, 0xCu);
        }

        v17 = self;
        v18 = 32;
      }

      [(CHContactChangeManager *)v17 triggerReindexingForReason:v18];
LABEL_33:

      return;
    }

    v19 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: currentHistoryToken is nil , triggering a full reindex", buf, 2u);
    }

    [(CHContactChangeManager *)self triggerReindexingForReason:16];
  }
}

- (void)triggerReindexingForReason:(unint64_t)a3
{
  [(CHContactChangeManager *)self setNeedsDeferredReindexingForReason:a3];

  [(CHContactChangeManager *)self setProcessingNotification:0];
}

- (void)visitDropEverythingEvent:(id)a3
{
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v4 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Handling a Drop Everything change history event", v5, 2u);
    }

    [(CHContactChangeManager *)self setNeedsDeferredReindexingForReason:128];
  }
}

- (void)visitAddContactEvent:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v5 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Handling a Add Contact change history event", &v14, 2u);
    }

    v6 = [v4 contact];
    v7 = objc_retainBlock(ch_allPhoneNumberLastFourDigits);
    v16[0] = v7;
    v8 = objc_retainBlock(ch_allEmails);
    v16[1] = v8;
    v9 = [NSArray arrayWithObjects:v16 count:2];
    v10 = [v6 handlesIncluding:v9];

    v11 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138739971;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Updating calls for handle IDs: %{sensitive}@", &v14, 0xCu);
    }

    if (v10)
    {
      v12 = [(CHContactChangeManager *)self spotlightIndexManager];

      if (v12)
      {
        v13 = [(CHContactChangeManager *)self spotlightIndexManager];
        [v13 updateCallsHavingHandles:v10 orContactIdentifier:0];
      }

      else
      {
        v13 = [(CHContactChangeManager *)self logHandle];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000328A0();
        }
      }
    }
  }
}

- (void)visitUpdateContactEvent:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v5 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Handling a Update Contact change history event", &v15, 2u);
    }

    v6 = [v4 contact];
    v7 = objc_retainBlock(ch_allPhoneNumberLastFourDigits);
    v17[0] = v7;
    v8 = objc_retainBlock(ch_allEmails);
    v17[1] = v8;
    v9 = [NSArray arrayWithObjects:v17 count:2];
    v10 = [v6 handlesIncluding:v9];

    v11 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138739971;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Updating calls for handle IDs: %{sensitive}@", &v15, 0xCu);
    }

    if (v10)
    {
      v12 = [(CHContactChangeManager *)self spotlightIndexManager];

      if (v12)
      {
        v13 = [(CHContactChangeManager *)self spotlightIndexManager];
        v14 = [v6 identifier];
        [v13 updateCallsHavingHandles:v10 orContactIdentifier:v14];
      }

      else
      {
        v13 = [(CHContactChangeManager *)self logHandle];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1000328A0();
        }
      }
    }
  }
}

- (void)visitDeleteContactEvent:(id)a3
{
  v4 = a3;
  if ([(CHFeatureFlags *)self->_featureFlags callHistorySearchEnabled])
  {
    v5 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Handling a Delete Contact change history event", v9, 2u);
    }

    v6 = [v4 contactIdentifier];
    if (v6)
    {
      v7 = [(CHContactChangeManager *)self spotlightIndexManager];

      if (v7)
      {
        v8 = [(CHContactChangeManager *)self spotlightIndexManager];
        [v8 updateCallsHavingHandles:0 orContactIdentifier:v6];
      }

      else
      {
        v8 = [(CHContactChangeManager *)self logHandle];
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
    v3 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CHContactChangeManager: Updating current history token", v6, 2u);
    }

    v4 = [(CHContactChangeManager *)self contactStore];
    v5 = [v4 currentHistoryToken];
    [(CHContactChangeManager *)self setCurrentHistoryToken:v5];
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
  v3 = [(CHContactChangeManager *)self spotlightIndexManager];

  if (v3)
  {
    v5 = [(CHContactChangeManager *)self spotlightIndexManager];
    [v5 updateCallsForAcceptedContacts];
  }

  else
  {
    v4 = [(CHContactChangeManager *)self logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
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
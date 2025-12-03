@interface INCExtensionTransaction
+ (void)initialize;
- (INCExtensionRequest)request;
- (INCExtensionTransaction)initWithIntent:(id)intent donateInteraction:(BOOL)interaction groupIdentifier:(id)identifier;
- (NSUserActivity)currentUserActivity;
- (id)description;
- (id)userActivityWithIdentifier:(id)identifier;
- (void)_addUserActivities:(id)activities;
- (void)_setCurrentIntent:(id)intent;
- (void)_updateCurrentUserActivityForType:(int64_t)type intent:(id)intent intentResponse:(id)response;
- (void)setState:(id)state;
@end

@implementation INCExtensionTransaction

- (INCExtensionRequest)request
{
  request = self->_request;
  if (!request)
  {
    v4 = [INCExtensionRequest alloc];
    identifier = [(INIntent *)self->_currentIntent identifier];
    v6 = [(INCExtensionRequest *)v4 initWithIdentifier:identifier];
    v7 = self->_request;
    self->_request = v6;

    request = self->_request;
  }

  return request;
}

- (NSUserActivity)currentUserActivity
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__INCExtensionTransaction_currentUserActivity__block_invoke;
  v5[3] = &unk_2797E75E8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_addUserActivities:(id)activities
{
  v30 = *MEMORY[0x277D85DE8];
  activitiesCopy = activities;
  v5 = MEMORY[0x277CD38C8];
  v6 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    *buf = 136315394;
    v24 = "[INCExtensionTransaction _addUserActivities:]";
    v25 = 2048;
    v26 = [activitiesCopy count];
    _os_log_impl(&dword_255503000, v7, OS_LOG_TYPE_INFO, "%s Adding %tu user activities...", buf, 0x16u);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = activitiesCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v20;
    *&v10 = 136315650;
    v18 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        _intentsIdentifier = [v14 _intentsIdentifier];
        if (_intentsIdentifier)
        {
          [(NSMutableDictionary *)self->_userActivitiesByIdentifier setObject:v14 forKey:_intentsIdentifier];
          v16 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
          {
            *buf = v18;
            v24 = "[INCExtensionTransaction _addUserActivities:]";
            v25 = 2112;
            v26 = v14;
            v27 = 2112;
            v28 = _intentsIdentifier;
            _os_log_impl(&dword_255503000, v16, OS_LOG_TYPE_INFO, "%s Added user activity %@ with identifier %@.", buf, 0x20u);
          }
        }
      }

      v11 = [v8 countByEnumeratingWithState:&v19 objects:v29 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_updateCurrentUserActivityForType:(int64_t)type intent:(id)intent intentResponse:(id)response
{
  v49 = *MEMORY[0x277D85DE8];
  intentCopy = intent;
  responseCopy = response;
  userActivity = [responseCopy userActivity];
  _intents_copy = [userActivity _intents_copy];

  if (!_intents_copy)
  {
    currentUserActivity = [(INCExtensionTransaction *)self currentUserActivity];
    if (currentUserActivity)
    {
      _intents_copy = currentUserActivity;
    }

    else
    {
      v14 = objc_alloc(MEMORY[0x277CC1EF0]);
      _className = [intentCopy _className];
      _intents_copy = [v14 initWithActivityType:_className];
    }
  }

  _init = [objc_alloc(MEMORY[0x277CD3D58]) _init];
  objc_storeStrong(&_init[*MEMORY[0x277CD4400]], intent);
  objc_storeStrong(&_init[*MEMORY[0x277CD4408]], response);
  groupIdentifier = [(INCExtensionTransaction *)self groupIdentifier];
  [_init setGroupIdentifier:groupIdentifier];

  [_init setIntentHandlingStatus:{objc_msgSend(responseCopy, "_intentHandlingStatus")}];
  if (type <= 4)
  {
    [_init setIntentHandlingStatus:5];
    goto LABEL_21;
  }

  if (type != 5)
  {
    v21 = *MEMORY[0x277CD38C8];
    if (!os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v22 = MEMORY[0x277CCABB0];
    v23 = v21;
    v24 = [v22 numberWithInteger:type];
    *buf = 136315394;
    v44 = "[INCExtensionTransaction _updateCurrentUserActivityForType:intent:intentResponse:]";
    v45 = 2112;
    v46 = v24;
    _os_log_error_impl(&dword_255503000, v23, OS_LOG_TYPE_ERROR, "%s Unknown INCExtensionTransactionStateType %@", buf, 0x16u);

LABEL_20:
    goto LABEL_21;
  }

  _intentResponseCode = [responseCopy _intentResponseCode];
  if (_intentResponseCode > 8)
  {
    goto LABEL_21;
  }

  v19 = _intentResponseCode;
  if (((1 << _intentResponseCode) & 0x163) != 0)
  {
    v20 = *MEMORY[0x277CD38C8];
    if (!os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  donateInteraction = [(INCExtensionTransaction *)self donateInteraction];
  v20 = *MEMORY[0x277CD38C8];
  v26 = os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO);
  if (!donateInteraction)
  {
    if (!v26)
    {
      goto LABEL_21;
    }

LABEL_19:
    v30 = MEMORY[0x277CCABB0];
    v23 = v20;
    v31 = [v30 numberWithInteger:v19];
    identifier = [_init identifier];
    *buf = 136315650;
    v44 = "[INCExtensionTransaction _updateCurrentUserActivityForType:intent:intentResponse:]";
    v45 = 2112;
    v46 = v31;
    v47 = 2112;
    v48 = identifier;
    _os_log_impl(&dword_255503000, v23, OS_LOG_TYPE_INFO, "%s _intentResponseCode = %@, NOT donating interaction with identifier %@", buf, 0x20u);

    goto LABEL_20;
  }

  if (v26)
  {
    v27 = MEMORY[0x277CCABB0];
    v28 = v20;
    v29 = [v27 numberWithInteger:v19];
    *buf = 136315650;
    v44 = "[INCExtensionTransaction _updateCurrentUserActivityForType:intent:intentResponse:]";
    v45 = 2112;
    v46 = v29;
    v47 = 2112;
    v48 = _init;
    _os_log_impl(&dword_255503000, v28, OS_LOG_TYPE_INFO, "%s _intentResponseCode = %@, donating interaction %@", buf, 0x20u);
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __83__INCExtensionTransaction__updateCurrentUserActivityForType_intent_intentResponse___block_invoke;
  v41[3] = &unk_2797E7FA0;
  v42 = _init;
  [v42 donateInteractionWithCompletion:v41];

LABEL_21:
  queue = self->_queue;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __83__INCExtensionTransaction__updateCurrentUserActivityForType_intent_intentResponse___block_invoke_11;
  v37[3] = &unk_2797E7730;
  v38 = _intents_copy;
  v39 = _init;
  selfCopy = self;
  v34 = _init;
  v35 = _intents_copy;
  dispatch_sync(queue, v37);

  v36 = *MEMORY[0x277D85DE8];
}

void __83__INCExtensionTransaction__updateCurrentUserActivityForType_intent_intentResponse___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CD38C8];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v7 = [v5 identifier];
      v10 = 136315650;
      v11 = "[INCExtensionTransaction _updateCurrentUserActivityForType:intent:intentResponse:]_block_invoke";
      v12 = 2112;
      v13 = v7;
      v14 = 2112;
      v15 = v3;
      _os_log_error_impl(&dword_255503000, v6, OS_LOG_TYPE_ERROR, "%s Unable to donate interaction with identifier %@, error %@", &v10, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 32);
    v6 = v4;
    v7 = [v8 identifier];
    v10 = 136315394;
    v11 = "[INCExtensionTransaction _updateCurrentUserActivityForType:intent:intentResponse:]_block_invoke";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_255503000, v6, OS_LOG_TYPE_INFO, "%s Successfully donated interaction with identifier %@", &v10, 0x16u);
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __83__INCExtensionTransaction__updateCurrentUserActivityForType_intent_intentResponse___block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) _setInteraction:*(a1 + 40) donate:0];
  v2 = *(a1 + 32);
  v3 = (*(a1 + 48) + 32);

  objc_storeStrong(v3, v2);
}

- (void)setState:(id)state
{
  v23 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  objc_storeStrong(&self->_state, state);
  v6 = MEMORY[0x277CD38C8];
  v7 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[INCExtensionTransaction setState:]";
    v19 = 2112;
    v20 = stateCopy;
    _os_log_impl(&dword_255503000, v7, OS_LOG_TYPE_INFO, "%s state = %@", &v17, 0x16u);
  }

  if (stateCopy)
  {
    type = [stateCopy type];
    if (type - 1 >= 5)
    {
      v12 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        v14 = v12;
        if (type > 5)
        {
          v15 = 0;
        }

        else
        {
          v15 = off_2797E7798[type];
        }

        v16 = v15;
        v17 = 136315650;
        v18 = "[INCExtensionTransaction setState:]";
        v19 = 2048;
        v20 = type;
        v21 = 2112;
        v22 = v16;
        _os_log_error_impl(&dword_255503000, v14, OS_LOG_TYPE_ERROR, "%s %ld (%@) is not an expected state type and therefore not handled.", &v17, 0x20u);
      }
    }

    else
    {
      intent = [stateCopy intent];
      intentResponse = [stateCopy intentResponse];
      [(INCExtensionTransaction *)self _setCurrentIntent:intent];
      [(INCExtensionTransaction *)self _setCurrentIntentResponse:intentResponse];
      [(INCExtensionTransaction *)self _updateCurrentUserActivityForType:type intent:intent intentResponse:intentResponse];
      userActivities = [stateCopy userActivities];
      [(INCExtensionTransaction *)self _addUserActivities:userActivities];

      if (type == 5 && [(INCExtensionTransaction *)self shouldResetRequestAfterHandle])
      {
        [(INCExtensionRequest *)self->_request reset];
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setCurrentIntent:(id)intent
{
  intentCopy = intent;
  currentIntent = self->_currentIntent;
  p_currentIntent = &self->_currentIntent;
  if (currentIntent != intentCopy)
  {
    v8 = intentCopy;
    objc_storeStrong(p_currentIntent, intent);
    intentCopy = v8;
  }
}

- (id)userActivityWithIdentifier:(id)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v5 = [(NSMutableDictionary *)self->_userActivitiesByIdentifier objectForKey:identifierCopy];
  v6 = *MEMORY[0x277CD38C8];
  v7 = os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_INFO);
  if (!v5)
  {
    if (v7)
    {
      v10 = 136315394;
      v11 = "[INCExtensionTransaction userActivityWithIdentifier:]";
      v12 = 2112;
      v13 = identifierCopy;
      _os_log_impl(&dword_255503000, v6, OS_LOG_TYPE_INFO, "%s Unable to find user activity with identifier %@", &v10, 0x16u);
    }

    goto LABEL_7;
  }

  if (v7)
  {
    v10 = 136315650;
    v11 = "[INCExtensionTransaction userActivityWithIdentifier:]";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = identifierCopy;
    _os_log_impl(&dword_255503000, v6, OS_LOG_TYPE_INFO, "%s Found user activity %@ with identifier %@.", &v10, 0x20u);
  }

LABEL_8:

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (INCExtensionTransaction)initWithIntent:(id)intent donateInteraction:(BOOL)interaction groupIdentifier:(id)identifier
{
  intentCopy = intent;
  identifierCopy = identifier;
  v21.receiver = self;
  v21.super_class = INCExtensionTransaction;
  v11 = [(INCExtensionTransaction *)&v21 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_currentIntent, intent);
    v12->_donateInteraction = interaction;
    v13 = [identifierCopy copy];
    groupIdentifier = v12->_groupIdentifier;
    v12->_groupIdentifier = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    userActivitiesByIdentifier = v12->_userActivitiesByIdentifier;
    v12->_userActivitiesByIdentifier = v15;

    v12->_shouldResetRequestAfterHandle = 1;
    v17 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v18 = dispatch_queue_create("com.apple.intents.INCExtensionTransaction.internal-queue", v17);
    queue = v12->_queue;
    v12->_queue = v18;
  }

  return v12;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = INCExtensionTransaction;
  v4 = [(INCExtensionTransaction *)&v11 description];
  identifier = [(INIntent *)self->_currentIntent identifier];
  currentIntent = self->_currentIntent;
  currentUserActivity = self->_currentUserActivity;
  allKeys = [(NSMutableDictionary *)self->_userActivitiesByIdentifier allKeys];
  v9 = [v3 stringWithFormat:@"%@ {identifier = %@, currentIntent = %@, currentUserActivity = %@, userActivitiesIdentifiers = %@}", v4, identifier, currentIntent, currentUserActivity, allKeys];

  return v9;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    INLogInitIfNeeded();
  }
}

@end
@interface IAMImpressionManager
- (BOOL)_endImpressionForMessageWithIdentifier:(id)identifier fromTargetWithIdentifier:(id)withIdentifier displayEndTime:(id)time;
- (BOOL)_startImpressionForMessageEntry:(id)entry fromTargetWithIdentifier:(id)identifier displayStartTime:(id)time;
- (IAMImpressionManager)init;
- (IAMImpressionManagerDelegate)delegate;
- (void)_reportImpression:(id)impression;
- (void)_reportImpressionEventWithDictionary:(id)dictionary;
- (void)_transitionToActiveState;
- (void)_transitionToInactiveState;
- (void)dealloc;
- (void)messageEntry:(id)entry didAppearFromTargetWithIdentifier:(id)identifier atTime:(id)time;
- (void)messageWithIdentifier:(id)identifier didDisappearFromTargetWithIdentifier:(id)withIdentifier atTime:(id)time;
@end

@implementation IAMImpressionManager

- (IAMImpressionManager)init
{
  v11.receiver = self;
  v11.super_class = IAMImpressionManager;
  v2 = [(IAMImpressionManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = objc_opt_new();
    activeImpressionForMessageIdentifierFromTargetIdentifier = v3->_activeImpressionForMessageIdentifierFromTargetIdentifier;
    v3->_activeImpressionForMessageIdentifierFromTargetIdentifier = v4;

    v6 = objc_opt_new();
    inactiveImpressionForMessageIdentifierFromTargetIdentifier = v3->_inactiveImpressionForMessageIdentifierFromTargetIdentifier;
    v3->_inactiveImpressionForMessageIdentifierFromTargetIdentifier = v6;

    os_unfair_lock_lock(&v3->_lock);
    mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
    v3->_isApplicationActive = [mEMORY[0x277D75128] applicationState] == 0;

    os_unfair_lock_unlock(&v3->_lock);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleApplicationDidBecomeActive name:*MEMORY[0x277D76648] object:0];
    [defaultCenter addObserver:v3 selector:sel__handleApplicationWillResignActive name:*MEMORY[0x277D76768] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76648] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76768] object:0];

  v4.receiver = self;
  v4.super_class = IAMImpressionManager;
  [(IAMImpressionManager *)&v4 dealloc];
}

- (void)messageEntry:(id)entry didAppearFromTargetWithIdentifier:(id)identifier atTime:(id)time
{
  v18 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  identifierCopy = identifier;
  if (![(IAMImpressionManager *)self _startImpressionForMessageEntry:entryCopy fromTargetWithIdentifier:identifierCopy displayStartTime:time])
  {
    v10 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      applicationMessage = [entryCopy applicationMessage];
      identifier = [applicationMessage identifier];
      v14 = 138543618;
      v15 = identifier;
      v16 = 2114;
      v17 = identifierCopy;
      _os_log_impl(&dword_254AF4000, v10, OS_LOG_TYPE_DEFAULT, "Appearance has already been reported for message with identifier = %{public}@ from target with identifier = %{public}@", &v14, 0x16u);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)messageWithIdentifier:(id)identifier didDisappearFromTargetWithIdentifier:(id)withIdentifier atTime:(id)time
{
  v16 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  if (![(IAMImpressionManager *)self _endImpressionForMessageWithIdentifier:identifierCopy fromTargetWithIdentifier:withIdentifierCopy displayEndTime:time])
  {
    v10 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543618;
      v13 = identifierCopy;
      v14 = 2114;
      v15 = withIdentifierCopy;
      _os_log_impl(&dword_254AF4000, v10, OS_LOG_TYPE_DEFAULT, "Appearance of message with identifier = %{public}@ has not previously been reported from target with identifier = %{public}@", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_startImpressionForMessageEntry:(id)entry fromTargetWithIdentifier:(id)identifier displayStartTime:(id)time
{
  entryCopy = entry;
  identifierCopy = identifier;
  timeCopy = time;
  os_unfair_lock_lock(&self->_lock);
  v11 = 16;
  if (self->_isApplicationActive)
  {
    v11 = 8;
  }

  v12 = *(&self->super.isa + v11);
  applicationMessage = [entryCopy applicationMessage];
  identifier = [applicationMessage identifier];

  v15 = [v12 objectForKeyedSubscript:identifier];
  if (!v15)
  {
    v15 = objc_opt_new();
    [v12 setObject:v15 forKeyedSubscript:identifier];
  }

  v16 = [v15 objectForKeyedSubscript:identifierCopy];

  if (!v16)
  {
    v17 = [objc_alloc(MEMORY[0x277D1B2B8]) initWithMessageEntry:entryCopy targetIdentifier:identifierCopy];
    v18 = v17;
    if (self->_isApplicationActive)
    {
      [v17 setDisplayStartTime:timeCopy];
    }

    [v15 setObject:v18 forKeyedSubscript:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v16 == 0;
}

- (BOOL)_endImpressionForMessageWithIdentifier:(id)identifier fromTargetWithIdentifier:(id)withIdentifier displayEndTime:(id)time
{
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  timeCopy = time;
  os_unfair_lock_lock(&self->_lock);
  v11 = 16;
  if (self->_isApplicationActive)
  {
    v11 = 8;
  }

  v12 = *(&self->super.isa + v11);
  v13 = [v12 objectForKeyedSubscript:identifierCopy];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKeyedSubscript:withIdentifierCopy];
    v16 = v15 != 0;
    if (v15)
    {
      [v14 removeObjectForKey:withIdentifierCopy];
      if (![v14 count])
      {
        [v12 removeObjectForKey:identifierCopy];
      }

      if (self->_isApplicationActive)
      {
        [v15 setDisplayEndTime:timeCopy];
        [(IAMImpressionManager *)self _reportImpression:v15];
      }
    }
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v16;
}

- (void)_transitionToActiveState
{
  v28 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  os_unfair_lock_lock(&self->_lock);
  self->_isApplicationActive = 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_inactiveImpressionForMessageIdentifierFromTargetIdentifier;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->_inactiveImpressionForMessageIdentifierFromTargetIdentifier objectForKeyedSubscript:*(*(&v22 + 1) + 8 * v7)];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            v12 = 0;
            do
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [v8 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v12)];
              [v13 setDisplayStartTime:date];
              [v13 setDisplayEndTime:0];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  objc_storeStrong(&self->_activeImpressionForMessageIdentifierFromTargetIdentifier, self->_inactiveImpressionForMessageIdentifierFromTargetIdentifier);
  v14 = objc_opt_new();
  inactiveImpressionForMessageIdentifierFromTargetIdentifier = self->_inactiveImpressionForMessageIdentifierFromTargetIdentifier;
  self->_inactiveImpressionForMessageIdentifierFromTargetIdentifier = v14;

  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_transitionToInactiveState
{
  v28 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  os_unfair_lock_lock(&self->_lock);
  self->_isApplicationActive = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_activeImpressionForMessageIdentifierFromTargetIdentifier;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [(NSMutableDictionary *)self->_activeImpressionForMessageIdentifierFromTargetIdentifier objectForKeyedSubscript:*(*(&v22 + 1) + 8 * v7)];
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v19;
          do
          {
            v12 = 0;
            do
            {
              if (*v19 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = [v8 objectForKeyedSubscript:*(*(&v18 + 1) + 8 * v12)];
              [v13 setDisplayEndTime:date];
              [(IAMImpressionManager *)self _reportImpression:v13];

              ++v12;
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }

  objc_storeStrong(&self->_inactiveImpressionForMessageIdentifierFromTargetIdentifier, self->_activeImpressionForMessageIdentifierFromTargetIdentifier);
  v14 = objc_opt_new();
  activeImpressionForMessageIdentifierFromTargetIdentifier = self->_activeImpressionForMessageIdentifierFromTargetIdentifier;
  self->_activeImpressionForMessageIdentifierFromTargetIdentifier = v14;

  os_unfair_lock_unlock(&self->_lock);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_reportImpression:(id)impression
{
  v21 = *MEMORY[0x277D85DE8];
  impressionCopy = impression;
  displayStartTime = [impressionCopy displayStartTime];

  if (!displayStartTime)
  {
    v12 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      messageIdentifier = [impressionCopy messageIdentifier];
      targetIdentifier = [impressionCopy targetIdentifier];
      v17 = 138543618;
      v18 = messageIdentifier;
      v19 = 2114;
      v20 = targetIdentifier;
      v15 = "Impression for message with identifier = %{public}@ from target with identifier = %{public}@ could not be reported without a display start time";
LABEL_12:
      _os_log_impl(&dword_254AF4000, v12, OS_LOG_TYPE_ERROR, v15, &v17, 0x16u);
    }

LABEL_13:

    goto LABEL_14;
  }

  displayEndTime = [impressionCopy displayEndTime];

  if (!displayEndTime)
  {
    v12 = IAMLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      messageIdentifier = [impressionCopy messageIdentifier];
      targetIdentifier = [impressionCopy targetIdentifier];
      v17 = 138543618;
      v18 = messageIdentifier;
      v19 = 2114;
      v20 = targetIdentifier;
      v15 = "Impression for message with identifier = %{public}@ from target with identifier = %{public}@ could not be reported without a display end time";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  delegate = [(IAMImpressionManager *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(IAMImpressionManager *)self delegate];
    messageEntry = [impressionCopy messageEntry];
    [delegate2 impressionManager:self impressionDidEndForMessageEntry:messageEntry];
  }

  reportableMetricsEventDictionary = [impressionCopy reportableMetricsEventDictionary];
  if (reportableMetricsEventDictionary)
  {
    [(IAMImpressionManager *)self _reportImpressionEventWithDictionary:reportableMetricsEventDictionary];
  }

LABEL_14:
  v16 = *MEMORY[0x277D85DE8];
}

- (void)_reportImpressionEventWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  delegate = [(IAMImpressionManager *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(IAMImpressionManager *)self delegate];
    [delegate2 impressionManager:self shouldReportImpressionEventWithDictionary:dictionaryCopy];
  }
}

- (IAMImpressionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
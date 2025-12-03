@interface HTProcessTerminationSettings
+ (HTProcessTerminationSettings)sharedSettings;
- (BOOL)_removeTrackedSubReason:(unint64_t)reason forReason:(unint64_t)forReason;
- (BOOL)_setTrackedReasons:(unint64_t)reasons propagatingSubReasons:(BOOL)subReasons;
- (BOOL)_setTrackedSubReasons:(unint64_t)reasons forReason:(unint64_t)reason;
- (BOOL)_trackAllDefaultReasons;
- (HTProcessTerminationSettings)init;
- (HTProcessTerminationSettings)initWithDefaults:(id)defaults;
- (NSArray)trackedProcessNames;
- (unint64_t)allReasonsValue;
- (unint64_t)allSubReasonsValueForReason:(unint64_t)reason;
- (unint64_t)trackedReasons;
- (unint64_t)trackedSubReasonsForReason:(unint64_t)reason;
- (void)addTrackedProcessNamed:(id)named;
- (void)addTrackedReason:(unint64_t)reason;
- (void)addTrackedSubReason:(unint64_t)reason forReason:(unint64_t)forReason;
- (void)removeTrackedProcessNamed:(id)named;
- (void)removeTrackedReason:(unint64_t)reason;
- (void)removeTrackedSubReason:(unint64_t)reason forReason:(unint64_t)forReason;
- (void)setDisplayTerminationsInHUD:(BOOL)d;
- (void)setForceQuitDetectionEnabled:(BOOL)enabled;
- (void)setForceQuitDetectionThreshold:(int64_t)threshold;
- (void)setTrackedProcessNames:(id)names;
- (void)setTrackedReasons:(unint64_t)reasons;
- (void)setTrackedSubReasons:(unint64_t)reasons forReason:(unint64_t)reason;
- (void)trackAllReasons;
- (void)trackAllSubReasonsForReason:(unint64_t)reason;
@end

@implementation HTProcessTerminationSettings

+ (HTProcessTerminationSettings)sharedSettings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HTProcessTerminationSettings_sharedSettings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedSettings_onceToken != -1)
  {
    dispatch_once(&sharedSettings_onceToken, block);
  }

  v2 = sharedSettings_sharedInstance;

  return v2;
}

uint64_t __46__HTProcessTerminationSettings_sharedSettings__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedSettings_sharedInstance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (HTProcessTerminationSettings)init
{
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277D0FA18]];
  v5 = [(HTProcessTerminationSettings *)self initWithDefaults:v4];

  return v5;
}

- (HTProcessTerminationSettings)initWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v9.receiver = self;
  v9.super_class = HTProcessTerminationSettings;
  v6 = [(HTProcessTerminationSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaults, defaults);
  }

  return v7;
}

- (void)setForceQuitDetectionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(HTProcessTerminationSettings *)self isForceQuitDetectionEnabled]!= enabled)
  {
    defaults = self->_defaults;
    if (enabledCopy)
    {
      [(NSUserDefaults *)defaults setBool:1 forKey:*MEMORY[0x277D0FA70]];
    }

    else
    {
      [(NSUserDefaults *)defaults removeObjectForKey:*MEMORY[0x277D0FA70]];
    }

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (void)setForceQuitDetectionThreshold:(int64_t)threshold
{
  if ([(HTProcessTerminationSettings *)self forceQuitDetectionThreshold]!= threshold)
  {
    defaults = self->_defaults;
    if (threshold == 3000)
    {
      [(NSUserDefaults *)defaults removeObjectForKey:*MEMORY[0x277D0FA78]];
    }

    else
    {
      [(NSUserDefaults *)defaults setInteger:threshold forKey:*MEMORY[0x277D0FA78]];
    }

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (void)setDisplayTerminationsInHUD:(BOOL)d
{
  dCopy = d;
  if ([(HTProcessTerminationSettings *)self displayTerminationsInHUD]!= d)
  {
    defaults = self->_defaults;
    if (dCopy)
    {
      [(NSUserDefaults *)defaults setBool:1 forKey:*MEMORY[0x277D0FB18]];
      v6 = [(NSUserDefaults *)self->_defaults objectForKey:*MEMORY[0x277D0FB10]];

      if (!v6)
      {
        [(HTProcessTerminationSettings *)self _setTracksCriticalProcesses:1];
      }

      v7 = [(NSUserDefaults *)self->_defaults objectForKey:*MEMORY[0x277D0FB28]];

      if (!v7)
      {
        [(HTProcessTerminationSettings *)self _trackAllDefaultReasons];
      }
    }

    else
    {
      [(NSUserDefaults *)defaults removeObjectForKey:*MEMORY[0x277D0FB18]];
    }

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (NSArray)trackedProcessNames
{
  v2 = [(NSUserDefaults *)self->_defaults objectForKey:*MEMORY[0x277D0FB20]];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  v5 = v4;

  return v4;
}

- (void)setTrackedProcessNames:(id)names
{
  namesCopy = names;
  trackedProcessNames = [(HTProcessTerminationSettings *)self trackedProcessNames];
  v5 = [trackedProcessNames isEqual:namesCopy];

  if ((v5 & 1) == 0)
  {
    v6 = [namesCopy count];
    defaults = self->_defaults;
    if (v6)
    {
      v8 = [MEMORY[0x277CBEB70] orderedSetWithArray:namesCopy];
      array = [v8 array];
      [(NSUserDefaults *)defaults setObject:array forKey:*MEMORY[0x277D0FB20]];
    }

    else
    {
      [(NSUserDefaults *)self->_defaults removeObjectForKey:*MEMORY[0x277D0FB20]];
    }

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (void)addTrackedProcessNamed:(id)named
{
  namedCopy = named;
  trackedProcessNames = [(HTProcessTerminationSettings *)self trackedProcessNames];
  v5 = [trackedProcessNames mutableCopy];

  if (([v5 containsObject:namedCopy] & 1) == 0)
  {
    [v5 addObject:namedCopy];
    [(HTProcessTerminationSettings *)self setTrackedProcessNames:v5];
  }
}

- (void)removeTrackedProcessNamed:(id)named
{
  namedCopy = named;
  trackedProcessNames = [(HTProcessTerminationSettings *)self trackedProcessNames];
  v7 = [trackedProcessNames mutableCopy];

  v6 = [v7 indexOfObject:namedCopy];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 removeObjectAtIndex:v6];
    [(HTProcessTerminationSettings *)self setTrackedProcessNames:v7];
  }
}

- (unint64_t)trackedReasons
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:*MEMORY[0x277D0FB28]];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  if (unsignedLongLongValue != 1)
  {
    return unsignedLongLongValue;
  }

  return [(HTProcessTerminationSettings *)self allReasonsValue];
}

- (void)setTrackedReasons:(unint64_t)reasons
{
  if ([(HTProcessTerminationSettings *)self _setTrackedReasons:reasons propagatingSubReasons:1])
  {

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (BOOL)_setTrackedReasons:(unint64_t)reasons propagatingSubReasons:(BOOL)subReasons
{
  subReasonsCopy = subReasons;
  v24 = *MEMORY[0x277D85DE8];
  trackedReasons = [(HTProcessTerminationSettings *)self trackedReasons];
  if (trackedReasons != reasons)
  {
    if (reasons == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(HTProcessTerminationSettings *)self allReasonsValue]== reasons ? 1 : reasons;
    }

    defaults = self->_defaults;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
    [(NSUserDefaults *)defaults setObject:v10 forKey:*MEMORY[0x277D0FB28]];

    if (subReasonsCopy)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      availableReasons = [(HTProcessTerminationSettings *)self availableReasons];
      v12 = [availableReasons countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(availableReasons);
            }

            unsignedLongLongValue = [*(*(&v19 + 1) + 8 * i) unsignedLongLongValue];
            if (reasons == 1 || (unsignedLongLongValue & reasons) == unsignedLongLongValue)
            {
              [(HTProcessTerminationSettings *)self _trackAllSubReasonsForReason:unsignedLongLongValue];
            }

            else
            {
              [(HTProcessTerminationSettings *)self _setTrackedSubReasons:0 forReason:unsignedLongLongValue];
            }
          }

          v13 = [availableReasons countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }
    }
  }

  result = trackedReasons != reasons;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (unint64_t)allReasonsValue
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = allReasonsValue_allReasons;
  if (!allReasonsValue_allReasons)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    availableReasons = [(HTProcessTerminationSettings *)self availableReasons];
    v4 = [availableReasons countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(availableReasons);
          }

          unsignedLongLongValue = [*(*(&v11 + 1) + 8 * v7) unsignedLongLongValue];
          allReasonsValue_allReasons |= unsignedLongLongValue;
          ++v7;
        }

        while (v5 != v7);
        v5 = [availableReasons countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v2 = allReasonsValue_allReasons;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)addTrackedReason:(unint64_t)reason
{
  if ([(HTProcessTerminationSettings *)self _addTrackedReason:reason propagatingSubReasons:1])
  {

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (void)removeTrackedReason:(unint64_t)reason
{
  if ([(HTProcessTerminationSettings *)self _removeTrackedReason:reason])
  {

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (void)trackAllReasons
{
  if ([(HTProcessTerminationSettings *)self _trackAllReasons])
  {

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (BOOL)_trackAllDefaultReasons
{
  v3 = [(HTProcessTerminationSettings *)self _setTrackedReasons:1 propagatingSubReasons:1];
  v4 = [(HTProcessTerminationSettings *)self _removeTrackedSubReason:1024 forReason:2];
  v5 = [(HTProcessTerminationSettings *)self _removeTrackedSubReason:0x40000 forReason:2];
  return [(HTProcessTerminationSettings *)self _removeTrackedSubReason:0x8000 forReason:2]|| v5 || v4 || v3;
}

- (unint64_t)allSubReasonsValueForReason:(unint64_t)reason
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(HTProcessTerminationSettings *)self availableSubReasonsForReason:reason, 0];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 |= [*(*(&v11 + 1) + 8 * i) unsignedLongLongValue];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (unint64_t)trackedSubReasonsForReason:(unint64_t)reason
{
  reason = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%llu", *MEMORY[0x277D0FB28], reason];
  v6 = [(NSUserDefaults *)self->_defaults objectForKey:reason];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  if (unsignedLongLongValue == 1)
  {
    unsignedLongLongValue = [(HTProcessTerminationSettings *)self allSubReasonsValueForReason:reason];
  }

  return unsignedLongLongValue;
}

- (void)setTrackedSubReasons:(unint64_t)reasons forReason:(unint64_t)reason
{
  if ([(HTProcessTerminationSettings *)self _setTrackedSubReasons:reasons forReason:reason])
  {

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (BOOL)_setTrackedSubReasons:(unint64_t)reasons forReason:(unint64_t)reason
{
  if ([(HTProcessTerminationSettings *)self trackedSubReasonsForReason:reason]== reasons)
  {
    return 0;
  }

  v7 = [(HTProcessTerminationSettings *)self availableSubReasonsForReason:reason];
  v8 = [v7 count];

  if (!v8)
  {
    return 0;
  }

  if (reasons == 1)
  {
    reasonsCopy = 1;
  }

  else if ([(HTProcessTerminationSettings *)self allSubReasonsValueForReason:reason]== reasons)
  {
    reasonsCopy = 1;
  }

  else
  {
    reasonsCopy = reasons;
  }

  reason = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%llu", *MEMORY[0x277D0FB28], reason];
  defaults = self->_defaults;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:reasonsCopy];
  [(NSUserDefaults *)defaults setObject:v13 forKey:reason];

  trackedReasons = [(HTProcessTerminationSettings *)self trackedReasons];
  v15 = trackedReasons & reason;
  if (reasons)
  {
    if (trackedReasons != 1 && !v15)
    {
      [(HTProcessTerminationSettings *)self _addTrackedReason:reason propagatingSubReasons:0];
    }
  }

  else if (trackedReasons == 1 || v15 == reason)
  {
    [(HTProcessTerminationSettings *)self _removeTrackedReason:reason propagatingSubReasons:0];
  }

  return 1;
}

- (void)addTrackedSubReason:(unint64_t)reason forReason:(unint64_t)forReason
{
  v6 = [(HTProcessTerminationSettings *)self trackedSubReasonsForReason:forReason]| reason;

  [(HTProcessTerminationSettings *)self setTrackedSubReasons:v6 forReason:forReason];
}

- (void)removeTrackedSubReason:(unint64_t)reason forReason:(unint64_t)forReason
{
  if ([(HTProcessTerminationSettings *)self _removeTrackedSubReason:reason forReason:forReason])
  {

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (BOOL)_removeTrackedSubReason:(unint64_t)reason forReason:(unint64_t)forReason
{
  v6 = [(HTProcessTerminationSettings *)self trackedSubReasonsForReason:forReason]& ~reason;

  return [(HTProcessTerminationSettings *)self _setTrackedSubReasons:v6 forReason:forReason];
}

- (void)trackAllSubReasonsForReason:(unint64_t)reason
{
  if ([(HTProcessTerminationSettings *)self _trackAllSubReasonsForReason:reason])
  {

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

@end
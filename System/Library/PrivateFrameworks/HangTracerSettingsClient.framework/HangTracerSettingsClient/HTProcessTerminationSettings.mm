@interface HTProcessTerminationSettings
+ (HTProcessTerminationSettings)sharedSettings;
- (BOOL)_removeTrackedSubReason:(unint64_t)a3 forReason:(unint64_t)a4;
- (BOOL)_setTrackedReasons:(unint64_t)a3 propagatingSubReasons:(BOOL)a4;
- (BOOL)_setTrackedSubReasons:(unint64_t)a3 forReason:(unint64_t)a4;
- (BOOL)_trackAllDefaultReasons;
- (HTProcessTerminationSettings)init;
- (HTProcessTerminationSettings)initWithDefaults:(id)a3;
- (NSArray)trackedProcessNames;
- (unint64_t)allReasonsValue;
- (unint64_t)allSubReasonsValueForReason:(unint64_t)a3;
- (unint64_t)trackedReasons;
- (unint64_t)trackedSubReasonsForReason:(unint64_t)a3;
- (void)addTrackedProcessNamed:(id)a3;
- (void)addTrackedReason:(unint64_t)a3;
- (void)addTrackedSubReason:(unint64_t)a3 forReason:(unint64_t)a4;
- (void)removeTrackedProcessNamed:(id)a3;
- (void)removeTrackedReason:(unint64_t)a3;
- (void)removeTrackedSubReason:(unint64_t)a3 forReason:(unint64_t)a4;
- (void)setDisplayTerminationsInHUD:(BOOL)a3;
- (void)setForceQuitDetectionEnabled:(BOOL)a3;
- (void)setForceQuitDetectionThreshold:(int64_t)a3;
- (void)setTrackedProcessNames:(id)a3;
- (void)setTrackedReasons:(unint64_t)a3;
- (void)setTrackedSubReasons:(unint64_t)a3 forReason:(unint64_t)a4;
- (void)trackAllReasons;
- (void)trackAllSubReasonsForReason:(unint64_t)a3;
@end

@implementation HTProcessTerminationSettings

+ (HTProcessTerminationSettings)sharedSettings
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HTProcessTerminationSettings_sharedSettings__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (HTProcessTerminationSettings)initWithDefaults:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HTProcessTerminationSettings;
  v6 = [(HTProcessTerminationSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_defaults, a3);
  }

  return v7;
}

- (void)setForceQuitDetectionEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(HTProcessTerminationSettings *)self isForceQuitDetectionEnabled]!= a3)
  {
    defaults = self->_defaults;
    if (v3)
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

- (void)setForceQuitDetectionThreshold:(int64_t)a3
{
  if ([(HTProcessTerminationSettings *)self forceQuitDetectionThreshold]!= a3)
  {
    defaults = self->_defaults;
    if (a3 == 3000)
    {
      [(NSUserDefaults *)defaults removeObjectForKey:*MEMORY[0x277D0FA78]];
    }

    else
    {
      [(NSUserDefaults *)defaults setInteger:a3 forKey:*MEMORY[0x277D0FA78]];
    }

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (void)setDisplayTerminationsInHUD:(BOOL)a3
{
  v3 = a3;
  if ([(HTProcessTerminationSettings *)self displayTerminationsInHUD]!= a3)
  {
    defaults = self->_defaults;
    if (v3)
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

- (void)setTrackedProcessNames:(id)a3
{
  v10 = a3;
  v4 = [(HTProcessTerminationSettings *)self trackedProcessNames];
  v5 = [v4 isEqual:v10];

  if ((v5 & 1) == 0)
  {
    v6 = [v10 count];
    defaults = self->_defaults;
    if (v6)
    {
      v8 = [MEMORY[0x277CBEB70] orderedSetWithArray:v10];
      v9 = [v8 array];
      [(NSUserDefaults *)defaults setObject:v9 forKey:*MEMORY[0x277D0FB20]];
    }

    else
    {
      [(NSUserDefaults *)self->_defaults removeObjectForKey:*MEMORY[0x277D0FB20]];
    }

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (void)addTrackedProcessNamed:(id)a3
{
  v6 = a3;
  v4 = [(HTProcessTerminationSettings *)self trackedProcessNames];
  v5 = [v4 mutableCopy];

  if (([v5 containsObject:v6] & 1) == 0)
  {
    [v5 addObject:v6];
    [(HTProcessTerminationSettings *)self setTrackedProcessNames:v5];
  }
}

- (void)removeTrackedProcessNamed:(id)a3
{
  v4 = a3;
  v5 = [(HTProcessTerminationSettings *)self trackedProcessNames];
  v7 = [v5 mutableCopy];

  v6 = [v7 indexOfObject:v4];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v7 removeObjectAtIndex:v6];
    [(HTProcessTerminationSettings *)self setTrackedProcessNames:v7];
  }
}

- (unint64_t)trackedReasons
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:*MEMORY[0x277D0FB28]];
  v4 = [v3 unsignedLongLongValue];

  if (v4 != 1)
  {
    return v4;
  }

  return [(HTProcessTerminationSettings *)self allReasonsValue];
}

- (void)setTrackedReasons:(unint64_t)a3
{
  if ([(HTProcessTerminationSettings *)self _setTrackedReasons:a3 propagatingSubReasons:1])
  {

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (BOOL)_setTrackedReasons:(unint64_t)a3 propagatingSubReasons:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v7 = [(HTProcessTerminationSettings *)self trackedReasons];
  if (v7 != a3)
  {
    if (a3 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = [(HTProcessTerminationSettings *)self allReasonsValue]== a3 ? 1 : a3;
    }

    defaults = self->_defaults;
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
    [(NSUserDefaults *)defaults setObject:v10 forKey:*MEMORY[0x277D0FB28]];

    if (v4)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v11 = [(HTProcessTerminationSettings *)self availableReasons];
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v19 + 1) + 8 * i) unsignedLongLongValue];
            if (a3 == 1 || (v16 & a3) == v16)
            {
              [(HTProcessTerminationSettings *)self _trackAllSubReasonsForReason:v16];
            }

            else
            {
              [(HTProcessTerminationSettings *)self _setTrackedSubReasons:0 forReason:v16];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v13);
      }
    }
  }

  result = v7 != a3;
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
    v3 = [(HTProcessTerminationSettings *)self availableReasons];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v11 + 1) + 8 * v7) unsignedLongLongValue];
          allReasonsValue_allReasons |= v8;
          ++v7;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v2 = allReasonsValue_allReasons;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)addTrackedReason:(unint64_t)a3
{
  if ([(HTProcessTerminationSettings *)self _addTrackedReason:a3 propagatingSubReasons:1])
  {

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (void)removeTrackedReason:(unint64_t)a3
{
  if ([(HTProcessTerminationSettings *)self _removeTrackedReason:a3])
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

- (unint64_t)allSubReasonsValueForReason:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(HTProcessTerminationSettings *)self availableSubReasonsForReason:a3, 0];
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

- (unint64_t)trackedSubReasonsForReason:(unint64_t)a3
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%llu", *MEMORY[0x277D0FB28], a3];
  v6 = [(NSUserDefaults *)self->_defaults objectForKey:v5];
  v7 = [v6 unsignedLongLongValue];

  if (v7 == 1)
  {
    v7 = [(HTProcessTerminationSettings *)self allSubReasonsValueForReason:a3];
  }

  return v7;
}

- (void)setTrackedSubReasons:(unint64_t)a3 forReason:(unint64_t)a4
{
  if ([(HTProcessTerminationSettings *)self _setTrackedSubReasons:a3 forReason:a4])
  {

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (BOOL)_setTrackedSubReasons:(unint64_t)a3 forReason:(unint64_t)a4
{
  if ([(HTProcessTerminationSettings *)self trackedSubReasonsForReason:a4]== a3)
  {
    return 0;
  }

  v7 = [(HTProcessTerminationSettings *)self availableSubReasonsForReason:a4];
  v8 = [v7 count];

  if (!v8)
  {
    return 0;
  }

  if (a3 == 1)
  {
    v9 = 1;
  }

  else if ([(HTProcessTerminationSettings *)self allSubReasonsValueForReason:a4]== a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = a3;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%llu", *MEMORY[0x277D0FB28], a4];
  defaults = self->_defaults;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v9];
  [(NSUserDefaults *)defaults setObject:v13 forKey:v11];

  v14 = [(HTProcessTerminationSettings *)self trackedReasons];
  v15 = v14 & a4;
  if (a3)
  {
    if (v14 != 1 && !v15)
    {
      [(HTProcessTerminationSettings *)self _addTrackedReason:a4 propagatingSubReasons:0];
    }
  }

  else if (v14 == 1 || v15 == a4)
  {
    [(HTProcessTerminationSettings *)self _removeTrackedReason:a4 propagatingSubReasons:0];
  }

  return 1;
}

- (void)addTrackedSubReason:(unint64_t)a3 forReason:(unint64_t)a4
{
  v6 = [(HTProcessTerminationSettings *)self trackedSubReasonsForReason:a4]| a3;

  [(HTProcessTerminationSettings *)self setTrackedSubReasons:v6 forReason:a4];
}

- (void)removeTrackedSubReason:(unint64_t)a3 forReason:(unint64_t)a4
{
  if ([(HTProcessTerminationSettings *)self _removeTrackedSubReason:a3 forReason:a4])
  {

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

- (BOOL)_removeTrackedSubReason:(unint64_t)a3 forReason:(unint64_t)a4
{
  v6 = [(HTProcessTerminationSettings *)self trackedSubReasonsForReason:a4]& ~a3;

  return [(HTProcessTerminationSettings *)self _setTrackedSubReasons:v6 forReason:a4];
}

- (void)trackAllSubReasonsForReason:(unint64_t)a3
{
  if ([(HTProcessTerminationSettings *)self _trackAllSubReasonsForReason:a3])
  {

    [(HTProcessTerminationSettings *)self applySettings];
  }
}

@end
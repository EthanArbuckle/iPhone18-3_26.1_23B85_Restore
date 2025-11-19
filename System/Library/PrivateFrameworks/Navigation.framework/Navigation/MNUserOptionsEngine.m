@interface MNUserOptionsEngine
+ (id)sharedInstance;
- (MNUserOptionsEngine)init;
- (NSString)currentVoiceLanguage;
- (id)localizedStringForKey:(id)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)update:(id)a3;
@end

@implementation MNUserOptionsEngine

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_7232);
  }

  v3 = sharedInstance_engine;

  return v3;
}

- (id)localizedStringForKey:(id)a3
{
  v27[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E696AAE8] _navigationBundle];
    v6 = [(MNUserOptionsEngine *)self currentVoiceLanguage];
    if ([v6 length])
    {
      v7 = MEMORY[0x1E696AAE8];
      v8 = [v5 localizations];
      v27[0] = v6;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
      v10 = [v7 preferredLocalizationsFromArray:v8 forPreferences:v9];

      v11 = [v10 firstObject];
      v12 = [v5 localizedStringForKey:v4 value:&stru_1F4EB6B70 table:@"Navigation" localization:v11];
      v13 = GetAudioLogForMNUserOptionsEngineCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v21 = 138412802;
        v22 = v4;
        v23 = 2112;
        v24 = v6;
        v25 = 2112;
        v26 = v11;
        _os_log_impl(&dword_1D311E000, v13, OS_LOG_TYPE_INFO, "⒰ trying to find key: %@, language: %@, canonical language identifier: %@", &v21, 0x20u);
      }

      if (v12)
      {
        if ([v12 isEqualToString:v4])
        {
          v14 = GetAudioLogForMNUserOptionsEngineCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v21 = 138412802;
            v22 = v4;
            v23 = 2112;
            v24 = v6;
            v25 = 2112;
            v26 = v11;
            _os_log_impl(&dword_1D311E000, v14, OS_LOG_TYPE_ERROR, "⒰ a string for key wasn't found : key: %@, language: %@, canonical language identifier: %@", &v21, 0x20u);
          }
        }

        v15 = v12;
      }

      else
      {
        v16 = _MNLocalizedStringFromThisBundle(v4);
        v17 = v16;
        if (v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v4;
        }

        v15 = v18;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)update:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if ([(MNUserOptions *)self->_options isEqual:v4])
    {
      v5 = GetAudioLogForMNUserOptionsEngineCategory();
      if (os_log_type_enabled(&v5->super, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1D311E000, &v5->super, OS_LOG_TYPE_INFO, "ⓤ Ignoring options update; they are unchanged", &v11, 2u);
      }
    }

    else
    {
      v5 = self->_options;
      v6 = [v4 copy];
      options = self->_options;
      self->_options = v6;

      v8 = GetAudioLogForMNUserOptionsEngineCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = self->_options;
        v11 = 138412546;
        v12 = v5;
        v13 = 2112;
        v14 = v9;
        _os_log_impl(&dword_1D311E000, v8, OS_LOG_TYPE_INFO, "ⓤ Notifying observers with old options : %@ and new options : %@", &v11, 0x16u);
      }

      [(GEOObserverHashTable *)self->_observers userOptionsEngine:self didChangeFrom:v5 to:self->_options];
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unregisterObserver:(id)a3
{
  [(GEOObserverHashTable *)self->_observers unregisterObserver:a3];
  if (([(GEOObserverHashTable *)self->_observers hasObservers]& 1) == 0)
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)registerObserver:(id)a3
{
  v9 = a3;
  if ([v9 conformsToProtocol:&unk_1F4F024C0])
  {
    observers = self->_observers;
    if (!observers)
    {
      v5 = objc_alloc(MEMORY[0x1E69A22D8]);
      v6 = MNNavigationQueue();
      v7 = [v5 initWithProtocol:&unk_1F4F024C0 queue:v6];
      v8 = self->_observers;
      self->_observers = v7;

      observers = self->_observers;
    }

    [(GEOObserverHashTable *)observers registerObserver:v9];
  }
}

- (NSString)currentVoiceLanguage
{
  navSessionLanguage = self->_navSessionLanguage;
  if (navSessionLanguage)
  {
    v3 = navSessionLanguage;
  }

  else
  {
    v3 = +[MNVoiceLanguageUtil systemDefaultVoiceLanguage];
  }

  return v3;
}

- (MNUserOptionsEngine)init
{
  v7.receiver = self;
  v7.super_class = MNUserOptionsEngine;
  v2 = [(MNUserOptionsEngine *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    options = v2->_options;
    v2->_options = v3;

    v5 = v2;
  }

  return v2;
}

void __37__MNUserOptionsEngine_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_engine;
  sharedInstance_engine = v0;
}

@end
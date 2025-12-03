@interface CRKDefaultSettingsUIVisibilityProvider
- (BOOL)isAnyCourseActiveInEnrollmentController:(id)controller;
- (CRKDefaultSettingsUIVisibilityProvider)init;
- (void)connectToDaemon;
- (void)enrollmentControllerDidUpdateSettingsUIVisibility:(id)visibility;
- (void)migrateOldUserDefaultsValues;
- (void)updatePaneStatus;
- (void)updatePreviouslyVisibleDefaultWithValue:(BOOL)value;
- (void)updateVisibilityState;
@end

@implementation CRKDefaultSettingsUIVisibilityProvider

- (CRKDefaultSettingsUIVisibilityProvider)init
{
  v6.receiver = self;
  v6.super_class = CRKDefaultSettingsUIVisibilityProvider;
  v2 = [(CRKDefaultSettingsUIVisibilityProvider *)&v6 init];
  if (v2)
  {
    v3 = [[CRKUserDefaultsObject alloc] initWithKey:@"ClassroomSettingsUIPreviouslyVisible"];
    mUIPreviouslyVisible = v2->mUIPreviouslyVisible;
    v2->mUIPreviouslyVisible = v3;

    [(CRKDefaultSettingsUIVisibilityProvider *)v2 migrateOldUserDefaultsValues];
    [(CRKDefaultSettingsUIVisibilityProvider *)v2 updateVisibilityState];
  }

  return v2;
}

- (void)migrateOldUserDefaultsValues
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [&unk_285672910 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(&unk_285672910);
        }

        v8 = [[CRKUserDefaultsObject alloc] initWithKey:*(*(&v11 + 1) + 8 * i)];
        value = [(CRKUserDefaultsObject *)v8 value];
        bOOLValue = [value BOOLValue];

        v5 |= bOOLValue;
        [(CRKUserDefaultsObject *)v8 setValue:0];
      }

      v4 = [&unk_285672910 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
    if (v5)
    {
      [(CRKDefaultSettingsUIVisibilityProvider *)self updatePreviouslyVisibleDefaultWithValue:1];
    }
  }
}

- (void)updatePreviouslyVisibleDefaultWithValue:(BOOL)value
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEC38];
  if (!value)
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = _CRKLogSettings_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[CRKDefaultSettingsUIVisibilityProvider updatePreviouslyVisibleDefaultWithValue:]";
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}s] %{public}@", &v7, 0x16u);
  }

  [(CRKUserDefaultsObject *)self->mUIPreviouslyVisible setValue:v5];
}

- (void)updateVisibilityState
{
  v13 = *MEMORY[0x277D85DE8];
  settingsUIVisible = [(CRKCourseEnrollmentController *)self->mEnrollmentController settingsUIVisible];
  if ([settingsUIVisible BOOLValue])
  {
    bOOLValue = 1;
  }

  else
  {
    value = [(CRKUserDefaultsObject *)self->mUIPreviouslyVisible value];
    bOOLValue = [value BOOLValue];
  }

  v6 = _CRKLogSettings_0();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (bOOLValue)
    {
      v7 = @"YES";
    }

    v8 = v7;
    v9 = 136446466;
    v10 = "[CRKDefaultSettingsUIVisibilityProvider updateVisibilityState]";
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_243550000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}s] %{public}@", &v9, 0x16u);
  }

  if (bOOLValue != [(CRKDefaultSettingsUIVisibilityProvider *)self settingsUIVisible])
  {
    [(CRKDefaultSettingsUIVisibilityProvider *)self setSettingsUIVisible:bOOLValue];
  }
}

- (void)updatePaneStatus
{
  if ([(CRKDefaultSettingsUIVisibilityProvider *)self isAnyCourseActiveInEnrollmentController:self->mEnrollmentController])
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v3 localizedStringForKey:@"connected.status" value:@"Connected" table:0];
  }

  else
  {
    v7 = &stru_285643BE8;
  }

  paneStatus = [(CRKDefaultSettingsUIVisibilityProvider *)self paneStatus];
  if (paneStatus | v7)
  {
    paneStatus2 = [(CRKDefaultSettingsUIVisibilityProvider *)self paneStatus];
    v6 = [paneStatus2 isEqual:v7];

    if ((v6 & 1) == 0)
    {
      [(CRKDefaultSettingsUIVisibilityProvider *)self setPaneStatus:v7];
    }
  }
}

- (BOOL)isAnyCourseActiveInEnrollmentController:(id)controller
{
  v14 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  courses = [controllerCopy courses];
  v5 = [courses countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(courses);
        }

        if ([controllerCopy isCourseActive:*(*(&v9 + 1) + 8 * i)])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [courses countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)connectToDaemon
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __57__CRKDefaultSettingsUIVisibilityProvider_connectToDaemon__block_invoke;
  v2[3] = &unk_278DC10F0;
  v2[4] = self;
  [MEMORY[0x277CBEB88] cat_performBlockOnMainRunLoop:v2];
}

uint64_t __57__CRKDefaultSettingsUIVisibilityProvider_connectToDaemon__block_invoke(uint64_t a1)
{
  v2 = +[CRKCourseEnrollmentController sharedEnrollmentController];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  [*(*(a1 + 32) + 16) addEnrollmentObserver:?];
  v5 = *(a1 + 32);

  return [v5 updatePaneStatus];
}

- (void)enrollmentControllerDidUpdateSettingsUIVisibility:(id)visibility
{
  v15 = *MEMORY[0x277D85DE8];
  visibilityCopy = visibility;
  v5 = _CRKLogSettings_0();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    settingsUIVisible = [visibilityCopy settingsUIVisible];
    bOOLValue = [settingsUIVisible BOOLValue];
    v8 = @"NO";
    if (bOOLValue)
    {
      v8 = @"YES";
    }

    v9 = v8;
    v11 = 136446466;
    v12 = "[CRKDefaultSettingsUIVisibilityProvider enrollmentControllerDidUpdateSettingsUIVisibility:]";
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}s] %{public}@", &v11, 0x16u);
  }

  settingsUIVisible2 = [visibilityCopy settingsUIVisible];
  -[CRKDefaultSettingsUIVisibilityProvider updatePreviouslyVisibleDefaultWithValue:](self, "updatePreviouslyVisibleDefaultWithValue:", [settingsUIVisible2 BOOLValue]);

  [(CRKDefaultSettingsUIVisibilityProvider *)self updateVisibilityState];
}

@end
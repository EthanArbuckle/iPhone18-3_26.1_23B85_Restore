@interface DBSceneWorkspaceAssertionManager
- (DBSceneWorkspaceAssertionManager)init;
- (void)_updateRunningInCarPlayAssertionIfNecessaryForScene:(id)scene;
- (void)invalidate;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation DBSceneWorkspaceAssertionManager

- (DBSceneWorkspaceAssertionManager)init
{
  v6.receiver = self;
  v6.super_class = DBSceneWorkspaceAssertionManager;
  v2 = [(DBSceneWorkspaceAssertionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assertions = v2->_assertions;
    v2->_assertions = v3;
  }

  return v2;
}

- (void)invalidate
{
  assertions = [(DBSceneWorkspaceAssertionManager *)self assertions];
  [assertions enumerateKeysAndObjectsUsingBlock:&__block_literal_global_3];
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsDiff = [settings settingsDiff];
  v7 = [settingsDiff containsProperty:sel_isForeground];

  if (v7)
  {
    [(DBSceneWorkspaceAssertionManager *)self _updateRunningInCarPlayAssertionIfNecessaryForScene:sceneCopy];
  }
}

- (void)_updateRunningInCarPlayAssertionIfNecessaryForScene:(id)scene
{
  v33 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  identifier = [sceneCopy identifier];
  settings = [sceneCopy settings];
  isForeground = [settings isForeground];

  if (identifier)
  {
    assertions = [(DBSceneWorkspaceAssertionManager *)self assertions];
    v9 = [assertions objectForKey:identifier];

    v10 = DBLogForCategory(8uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = identifier;
      _os_log_impl(&dword_248146000, v10, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] Evaluating assertion for %@{public}.", buf, 0xCu);
    }

    v11 = DBLogForCategory(8uLL);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (isForeground)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] App is foreground, assertion needed.", buf, 2u);
      }

      if (v9)
      {
        if ([v9 isValid])
        {
          assertions5 = DBLogForCategory(8uLL);
          if (os_log_type_enabled(assertions5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_248146000, assertions5, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] Assertion already exists.", buf, 2u);
          }

LABEL_31:

          goto LABEL_36;
        }

        [v9 invalidate];
        assertions2 = [(DBSceneWorkspaceAssertionManager *)self assertions];
        [assertions2 removeObjectForKey:identifier];
      }

      v17 = DBLogForCategory(8uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v17, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] Assertion does not exist, creating.", buf, 2u);
      }

      clientHandle = [sceneCopy clientHandle];
      processHandle = [clientHandle processHandle];

      if (!processHandle)
      {
        assertions5 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(assertions5, OS_LOG_TYPE_ERROR))
        {
          [DBSceneWorkspaceAssertionManager _updateRunningInCarPlayAssertionIfNecessaryForScene:assertions5];
        }

        goto LABEL_31;
      }

      v19 = MEMORY[0x277D47008];
      identity = [processHandle identity];
      v21 = [v19 targetWithProcessIdentity:identity];

      v22 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.carplay" name:@"RenderUI"];
      v30 = v22;
      v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];

      v24 = [objc_alloc(MEMORY[0x277D46DB8]) initWithExplanation:@"Foreground CarPlay App" target:v21 attributes:v23];
      v29 = 0;
      [v24 acquireWithError:&v29];
      v25 = v29;
      if (v25)
      {
        v26 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [(DBSceneWorkspaceAssertionManager *)v25 _updateRunningInCarPlayAssertionIfNecessaryForScene:v26];
        }

        assertions3 = [(DBSceneWorkspaceAssertionManager *)self assertions];
        [assertions3 removeObjectForKey:identifier];
      }

      else
      {
        assertions4 = [(DBSceneWorkspaceAssertionManager *)self assertions];
        [assertions4 setObject:v24 forKey:identifier];

        assertions3 = DBLogForCategory(8uLL);
        if (os_log_type_enabled(assertions3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_248146000, assertions3, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] Successfully acquired assertion.", buf, 2u);
        }
      }
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, v11, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] App is not foreground, no assertion needed.", buf, 2u);
      }

      processHandle = DBLogForCategory(8uLL);
      v15 = os_log_type_enabled(processHandle, OS_LOG_TYPE_DEFAULT);
      if (v9)
      {
        if (v15)
        {
          *buf = 0;
          _os_log_impl(&dword_248146000, processHandle, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] Invalidating assertion.", buf, 2u);
        }

        [v9 invalidate];
        assertions5 = [(DBSceneWorkspaceAssertionManager *)self assertions];
        [assertions5 removeObjectForKey:identifier];
        goto LABEL_31;
      }

      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_248146000, processHandle, OS_LOG_TYPE_DEFAULT, "[CarPlayUI Assertion] No assertion to remove.", buf, 2u);
      }
    }

    goto LABEL_36;
  }

  v9 = DBLogForCategory(8uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [DBSceneWorkspaceAssertionManager _updateRunningInCarPlayAssertionIfNecessaryForScene:v9];
  }

LABEL_36:
}

- (void)_updateRunningInCarPlayAssertionIfNecessaryForScene:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_248146000, a2, OS_LOG_TYPE_ERROR, "[CarPlayUI Assertion] Error acquiring assertion: %{public}@.", &v2, 0xCu);
}

@end
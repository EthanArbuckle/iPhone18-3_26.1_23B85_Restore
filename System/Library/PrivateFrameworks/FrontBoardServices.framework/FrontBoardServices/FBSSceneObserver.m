@interface FBSSceneObserver
- (BOOL)isEqual:(id)a3;
- (FBSSceneObserver)initWithComponent:(id)a3 extension:(Class)a4;
- (FBSSceneObserver)initWithObserver:(id)a3;
- (id)_matchesActions:(id *)a1;
- (id)observer;
- (id)scene:(id)a3 handleActions:(id)a4;
- (id)scene:(id)a3 handlePrivateActions:(id)a4;
- (uint64_t)_matchesClientDiff:(uint64_t)a1;
- (uint64_t)_matchesDiff:(uint64_t)a1;
- (void)actionClasses:(id)a3;
- (void)actionHandler:(id)a3;
- (void)actions:(Class)a3;
- (void)clientSettingNames:(id)a3;
- (void)clientSettings:(SEL)a3;
- (void)clientUpdateHandler:(id)a3;
- (void)invalidate;
- (void)invalidationHandler:(id)a3;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 didUpdateHostHandle:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)sceneWillInvalidate:(id)a3;
- (void)settingNames:(id)a3;
- (void)settings:(SEL)a3;
- (void)updateHandler:(id)a3;
@end

@implementation FBSSceneObserver

- (id)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)invalidate
{
  [(FBSSceneComponent *)self->_component invalidate];
  component = self->_component;
  self->_component = 0;

  objc_storeWeak(&self->_observer, 0);
  settingsHandler = self->_settingsHandler;
  self->_settingsHandler = 0;

  clintSettingsHandler = self->_clintSettingsHandler;
  self->_clintSettingsHandler = 0;

  actionHandler = self->_actionHandler;
  self->_actionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  *&self->_respondsToSettings = 0;
}

- (FBSSceneObserver)initWithObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [FBSSceneObserver initWithObserver:a2];
  }

  v6 = v5;
  v7 = [(FBSSceneObserver *)self init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_observer, v6);
    v8->_observerAddress = v6;
    v8->_respondsToHostHandle = objc_opt_respondsToSelector() & 1;
    v8->_respondsToSettings = objc_opt_respondsToSelector() & 1;
    v8->_respondsToClientSettings = objc_opt_respondsToSelector() & 1;
    v8->_respondsToActions = objc_opt_respondsToSelector() & 1;
    v8->_respondsToInvalidate = objc_opt_respondsToSelector() & 1;
  }

  return v8;
}

- (FBSSceneObserver)initWithComponent:(id)a3 extension:(Class)a4
{
  v7 = a3;
  v8 = [(FBSSceneObserver *)self initWithObserver:v7];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_component, a3);
    v9->_extension = a4;
    v9->_respondsToPrivateActions = objc_opt_respondsToSelector() & 1;
  }

  return v9;
}

- (void)scene:(id)a3 didUpdateHostHandle:(id)a4
{
  if (self->_respondsToHostHandle)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(FBSSceneObserver *)self observer];
    [v9 scene:v8 didUpdateHostHandle:v7];
  }
}

- (void)sceneWillInvalidate:(id)a3
{
  v4 = a3;
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    v7 = v4;
    invalidationHandler = invalidationHandler[2]();
  }

  else
  {
    if (!self->_respondsToInvalidate)
    {
      goto LABEL_6;
    }

    v7 = v4;
    v6 = [(FBSSceneObserver *)self observer];
    [v6 sceneWillInvalidate:v7];
  }

  v4 = v7;
LABEL_6:

  MEMORY[0x1EEE66BB8](invalidationHandler, v4);
}

- (id)scene:(id)a3 handlePrivateActions:(id)a4
{
  v6 = a3;
  v7 = a4;
  component = self->_component;
  if (component && self->_respondsToPrivateActions)
  {
    v9 = [(FBSSceneComponent *)component handlePrivateActions:v7];
  }

  else
  {
    v9 = [(FBSSceneObserver *)self scene:v6 handleActions:v7];
  }

  v10 = v9;

  return v10;
}

- (void)settings:(SEL)a3
{
  v5 = [MEMORY[0x1E695DFA8] set];
  if (a3)
  {
    v9 = &v10;
    do
    {
      v6 = NSStringFromSelector(a3);
      [v5 addObject:v6];

      v7 = v9++;
      a3 = *v7;
    }

    while (*v7);
  }

  v8 = [v5 allObjects];
  [(FBSSceneObserver *)self settingNames:v8];
}

- (void)clientSettings:(SEL)a3
{
  v5 = [MEMORY[0x1E695DFA8] set];
  if (a3)
  {
    v9 = &v10;
    do
    {
      v6 = NSStringFromSelector(a3);
      [v5 addObject:v6];

      v7 = v9++;
      a3 = *v7;
    }

    while (*v7);
  }

  v8 = [v5 allObjects];
  [(FBSSceneObserver *)self clientSettingNames:v8];
}

- (void)actions:(Class)a3
{
  v5 = [MEMORY[0x1E695DFA8] set];
  if (a3)
  {
    v8 = &v9;
    do
    {
      [v5 addObject:a3];
      v6 = v8++;
      a3 = *v6;
    }

    while (*v6);
  }

  v7 = [v5 allObjects];
  [(FBSSceneObserver *)self actionClasses:v7];
}

- (void)settingNames:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = NSSelectorFromString(v12);
        if (!v13)
        {
          [(FBSSceneObserver *)v12 settingNames:a2];
        }

        v14 = v13;
        v15 = objc_opt_class();
        v16 = FBSSettingForExtensionSelector(v15, v14);
        if (!v16)
        {
          [(FBSSceneObserver *)v14 settingNames:a2];
        }

        v17 = v16;
        [v6 addObject:{v16, v20}];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v18 = [v6 count];
  if (v18)
  {
    v18 = [v6 copy];
  }

  settings = self->_settings;
  self->_settings = v18;
}

- (void)clientSettingNames:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = NSSelectorFromString(v12);
        if (!v13)
        {
          [(FBSSceneObserver *)v12 clientSettingNames:a2];
        }

        v14 = v13;
        v15 = objc_opt_class();
        v16 = FBSSettingForExtensionSelector(v15, v14);
        if (!v16)
        {
          [(FBSSceneObserver *)v14 clientSettingNames:a2];
        }

        v17 = v16;
        [v6 addObject:{v16, v20}];
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  v18 = [v6 count];
  if (v18)
  {
    v18 = [v6 copy];
  }

  clientSettings = self->_clientSettings;
  self->_clientSettings = v18;
}

- (void)actionClasses:(id)a3
{
  v6 = a3;
  v4 = [v6 count];
  if (v4)
  {
    v4 = [v6 copy];
  }

  actions = self->_actions;
  self->_actions = v4;
}

- (void)updateHandler:(id)a3
{
  v4 = [a3 copy];
  settingsHandler = self->_settingsHandler;
  self->_settingsHandler = v4;

  MEMORY[0x1EEE66BB8](v4, settingsHandler);
}

- (void)clientUpdateHandler:(id)a3
{
  v4 = [a3 copy];
  clintSettingsHandler = self->_clintSettingsHandler;
  self->_clintSettingsHandler = v4;

  MEMORY[0x1EEE66BB8](v4, clintSettingsHandler);
}

- (void)actionHandler:(id)a3
{
  v4 = [a3 copy];
  actionHandler = self->_actionHandler;
  self->_actionHandler = v4;

  MEMORY[0x1EEE66BB8](v4, actionHandler);
}

- (void)invalidationHandler:(id)a3
{
  v4 = [a3 copy];
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v4;

  MEMORY[0x1EEE66BB8](v4, invalidationHandler);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && v4->_observerAddress == self->_observerAddress)
    {
      WeakRetained = objc_loadWeakRetained(&v4->_observer);
      v7 = objc_loadWeakRetained(&self->_observer);
      v8 = WeakRetained == v7;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (uint64_t)_matchesDiff:(uint64_t)a1
{
  v3 = a2;
  if (a1 && (*(a1 + 64) || *(a1 + 97) == 1))
  {
    if (*(a1 + 40))
    {
      OUTLINED_FUNCTION_3_5();
      v5 = v4;
      OUTLINED_FUNCTION_2_4();
      v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        v8 = *v12;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if (([(FBSSettingsDiff *)v3 _containsSetting:?]& 1) != 0)
            {
              v7 = 1;
              goto LABEL_15;
            }
          }

          OUTLINED_FUNCTION_2_4();
          v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_matchesClientDiff:(uint64_t)a1
{
  v3 = a2;
  if (a1 && (*(a1 + 72) || *(a1 + 98) == 1))
  {
    if (*(a1 + 48))
    {
      OUTLINED_FUNCTION_3_5();
      v5 = v4;
      OUTLINED_FUNCTION_2_4();
      v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        v8 = *v12;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v5);
            }

            if (([(FBSSettingsDiff *)v3 _containsSetting:?]& 1) != 0)
            {
              v7 = 1;
              goto LABEL_15;
            }
          }

          OUTLINED_FUNCTION_2_4();
          v7 = [v5 countByEnumeratingWithState:? objects:? count:?];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_matchesActions:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (a1[10] || *(a1 + 99) == 1)
    {
      if (a1[7])
      {
        OUTLINED_FUNCTION_3_5();
        OUTLINED_FUNCTION_2_4();
        v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
        if (v5)
        {
          v6 = v5;
          v7 = 0;
          v8 = *v14;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v14 != v8)
              {
                objc_enumerationMutation(v4);
              }

              v10 = *(v13 + 8 * i);
              if ([a1[7] containsObject:objc_opt_class()])
              {
                if (!v7)
                {
                  v7 = [MEMORY[0x1E695DFA8] set];
                }

                [v7 addObject:v10];
              }
            }

            OUTLINED_FUNCTION_2_4();
            v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v6);
        }

        else
        {
          v7 = 0;
        }

        if ([v7 count])
        {
          v11 = v7;
        }

        else
        {
          v11 = 0;
        }

        a1 = v11;
      }

      else
      {
        a1 = v3;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v6 settingsDiff];
  v8 = [(FBSSceneObserver *)self _matchesDiff:v7];

  if (v8)
  {
    settingsHandler = self->_settingsHandler;
    if (settingsHandler)
    {
      settingsHandler[2](settingsHandler, v16, v6);
    }

    else if (self->_respondsToSettings)
    {
      v10 = [(FBSSceneObserver *)self observer];
      [v10 scene:v16 didUpdateSettings:v6];
    }
  }

  v11 = [v6 transitionContext];
  v12 = [v11 actions];
  if ([v12 count])
  {
    v13 = [v11 actions];
    v14 = [(FBSSceneObserver *)self scene:v16 handleActions:v13];

    if ([v14 count])
    {
      v15 = [v12 mutableCopy];
      [v15 minusSet:v14];
      [v11 setActions:v15];
    }
  }
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [v6 settingsDiff];
  v8 = [(FBSSceneObserver *)self _matchesClientDiff:v7];

  if (v8)
  {
    clintSettingsHandler = self->_clintSettingsHandler;
    if (clintSettingsHandler)
    {
      clintSettingsHandler[2](clintSettingsHandler, v11, v6);
    }

    else if (self->_respondsToClientSettings)
    {
      v10 = [(FBSSceneObserver *)self observer];
      [v10 scene:v11 didUpdateClientSettings:v6];
    }
  }
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v6 = a3;
  v7 = [(FBSSceneObserver *)&self->super.isa _matchesActions:a4];
  if (![v7 count])
  {
    goto LABEL_6;
  }

  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    v9 = actionHandler[2](actionHandler, v6, v7);
    goto LABEL_7;
  }

  if (self->_respondsToActions)
  {
    v10 = [(FBSSceneObserver *)self observer];
    v9 = [v10 scene:v6 handleActions:v7];
  }

  else
  {
LABEL_6:
    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (void)initWithObserver:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"observer != ((void *)0)", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)settingNames:(const char *)a1 .cold.1(const char *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v13 = NSStringFromSelector(a1);
  v4 = [v3 stringWithFormat:@"No known setting for selector: %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)settingNames:(uint64_t)a1 .cold.2(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No known selector for setting name: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a1, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)clientSettingNames:(const char *)a1 .cold.1(const char *a1, const char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v13 = NSStringFromSelector(a1);
  v4 = [v3 stringWithFormat:@"No known setting for selector: %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)clientSettingNames:(uint64_t)a1 .cold.2(uint64_t a1, const char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No known selector for setting name: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, a1, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

@end
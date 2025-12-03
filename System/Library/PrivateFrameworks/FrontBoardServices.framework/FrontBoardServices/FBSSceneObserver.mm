@interface FBSSceneObserver
- (BOOL)isEqual:(id)equal;
- (FBSSceneObserver)initWithComponent:(id)component extension:(Class)extension;
- (FBSSceneObserver)initWithObserver:(id)observer;
- (id)_matchesActions:(id *)actions;
- (id)observer;
- (id)scene:(id)scene handleActions:(id)actions;
- (id)scene:(id)scene handlePrivateActions:(id)actions;
- (uint64_t)_matchesClientDiff:(uint64_t)diff;
- (uint64_t)_matchesDiff:(uint64_t)diff;
- (void)actionClasses:(id)classes;
- (void)actionHandler:(id)handler;
- (void)actions:(Class)actions;
- (void)clientSettingNames:(id)names;
- (void)clientSettings:(SEL)settings;
- (void)clientUpdateHandler:(id)handler;
- (void)invalidate;
- (void)invalidationHandler:(id)handler;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)scene:(id)scene didUpdateHostHandle:(id)handle;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneWillInvalidate:(id)invalidate;
- (void)settingNames:(id)names;
- (void)settings:(SEL)settings;
- (void)updateHandler:(id)handler;
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

- (FBSSceneObserver)initWithObserver:(id)observer
{
  observerCopy = observer;
  if (!observerCopy)
  {
    [FBSSceneObserver initWithObserver:a2];
  }

  v6 = observerCopy;
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

- (FBSSceneObserver)initWithComponent:(id)component extension:(Class)extension
{
  componentCopy = component;
  v8 = [(FBSSceneObserver *)self initWithObserver:componentCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_component, component);
    v9->_extension = extension;
    v9->_respondsToPrivateActions = objc_opt_respondsToSelector() & 1;
  }

  return v9;
}

- (void)scene:(id)scene didUpdateHostHandle:(id)handle
{
  if (self->_respondsToHostHandle)
  {
    handleCopy = handle;
    sceneCopy = scene;
    observer = [(FBSSceneObserver *)self observer];
    [observer scene:sceneCopy didUpdateHostHandle:handleCopy];
  }
}

- (void)sceneWillInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    v7 = invalidateCopy;
    invalidationHandler = invalidationHandler[2]();
  }

  else
  {
    if (!self->_respondsToInvalidate)
    {
      goto LABEL_6;
    }

    v7 = invalidateCopy;
    observer = [(FBSSceneObserver *)self observer];
    [observer sceneWillInvalidate:v7];
  }

  invalidateCopy = v7;
LABEL_6:

  MEMORY[0x1EEE66BB8](invalidationHandler, invalidateCopy);
}

- (id)scene:(id)scene handlePrivateActions:(id)actions
{
  sceneCopy = scene;
  actionsCopy = actions;
  component = self->_component;
  if (component && self->_respondsToPrivateActions)
  {
    v9 = [(FBSSceneComponent *)component handlePrivateActions:actionsCopy];
  }

  else
  {
    v9 = [(FBSSceneObserver *)self scene:sceneCopy handleActions:actionsCopy];
  }

  v10 = v9;

  return v10;
}

- (void)settings:(SEL)settings
{
  v5 = [MEMORY[0x1E695DFA8] set];
  if (settings)
  {
    v9 = &v10;
    do
    {
      v6 = NSStringFromSelector(settings);
      [v5 addObject:v6];

      v7 = v9++;
      settings = *v7;
    }

    while (*v7);
  }

  allObjects = [v5 allObjects];
  [(FBSSceneObserver *)self settingNames:allObjects];
}

- (void)clientSettings:(SEL)settings
{
  v5 = [MEMORY[0x1E695DFA8] set];
  if (settings)
  {
    v9 = &v10;
    do
    {
      v6 = NSStringFromSelector(settings);
      [v5 addObject:v6];

      v7 = v9++;
      settings = *v7;
    }

    while (*v7);
  }

  allObjects = [v5 allObjects];
  [(FBSSceneObserver *)self clientSettingNames:allObjects];
}

- (void)actions:(Class)actions
{
  v5 = [MEMORY[0x1E695DFA8] set];
  if (actions)
  {
    v8 = &v9;
    do
    {
      [v5 addObject:actions];
      v6 = v8++;
      actions = *v6;
    }

    while (*v6);
  }

  allObjects = [v5 allObjects];
  [(FBSSceneObserver *)self actionClasses:allObjects];
}

- (void)settingNames:(id)names
{
  v25 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v6 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = namesCopy;
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

- (void)clientSettingNames:(id)names
{
  v25 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  v6 = [MEMORY[0x1E695DFA8] set];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = namesCopy;
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

- (void)actionClasses:(id)classes
{
  classesCopy = classes;
  v4 = [classesCopy count];
  if (v4)
  {
    v4 = [classesCopy copy];
  }

  actions = self->_actions;
  self->_actions = v4;
}

- (void)updateHandler:(id)handler
{
  v4 = [handler copy];
  settingsHandler = self->_settingsHandler;
  self->_settingsHandler = v4;

  MEMORY[0x1EEE66BB8](v4, settingsHandler);
}

- (void)clientUpdateHandler:(id)handler
{
  v4 = [handler copy];
  clintSettingsHandler = self->_clintSettingsHandler;
  self->_clintSettingsHandler = v4;

  MEMORY[0x1EEE66BB8](v4, clintSettingsHandler);
}

- (void)actionHandler:(id)handler
{
  v4 = [handler copy];
  actionHandler = self->_actionHandler;
  self->_actionHandler = v4;

  MEMORY[0x1EEE66BB8](v4, actionHandler);
}

- (void)invalidationHandler:(id)handler
{
  v4 = [handler copy];
  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = v4;

  MEMORY[0x1EEE66BB8](v4, invalidationHandler);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && equalCopy->_observerAddress == self->_observerAddress)
    {
      WeakRetained = objc_loadWeakRetained(&equalCopy->_observer);
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

- (uint64_t)_matchesDiff:(uint64_t)diff
{
  v3 = a2;
  if (diff && (*(diff + 64) || *(diff + 97) == 1))
  {
    if (*(diff + 40))
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

- (uint64_t)_matchesClientDiff:(uint64_t)diff
{
  v3 = a2;
  if (diff && (*(diff + 72) || *(diff + 98) == 1))
  {
    if (*(diff + 48))
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

- (id)_matchesActions:(id *)actions
{
  v3 = a2;
  v4 = v3;
  if (actions)
  {
    if (actions[10] || *(actions + 99) == 1)
    {
      if (actions[7])
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
              if ([actions[7] containsObject:objc_opt_class()])
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

        actions = v11;
      }

      else
      {
        actions = v3;
      }
    }

    else
    {
      actions = 0;
    }
  }

  return actions;
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v8 = [(FBSSceneObserver *)self _matchesDiff:settingsDiff];

  if (v8)
  {
    settingsHandler = self->_settingsHandler;
    if (settingsHandler)
    {
      settingsHandler[2](settingsHandler, sceneCopy, settingsCopy);
    }

    else if (self->_respondsToSettings)
    {
      observer = [(FBSSceneObserver *)self observer];
      [observer scene:sceneCopy didUpdateSettings:settingsCopy];
    }
  }

  transitionContext = [settingsCopy transitionContext];
  actions = [transitionContext actions];
  if ([actions count])
  {
    actions2 = [transitionContext actions];
    v14 = [(FBSSceneObserver *)self scene:sceneCopy handleActions:actions2];

    if ([v14 count])
    {
      v15 = [actions mutableCopy];
      [v15 minusSet:v14];
      [transitionContext setActions:v15];
    }
  }
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v8 = [(FBSSceneObserver *)self _matchesClientDiff:settingsDiff];

  if (v8)
  {
    clintSettingsHandler = self->_clintSettingsHandler;
    if (clintSettingsHandler)
    {
      clintSettingsHandler[2](clintSettingsHandler, sceneCopy, settingsCopy);
    }

    else if (self->_respondsToClientSettings)
    {
      observer = [(FBSSceneObserver *)self observer];
      [observer scene:sceneCopy didUpdateClientSettings:settingsCopy];
    }
  }
}

- (id)scene:(id)scene handleActions:(id)actions
{
  sceneCopy = scene;
  v7 = [(FBSSceneObserver *)&self->super.isa _matchesActions:actions];
  if (![v7 count])
  {
    goto LABEL_6;
  }

  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    v9 = actionHandler[2](actionHandler, sceneCopy, v7);
    goto LABEL_7;
  }

  if (self->_respondsToActions)
  {
    observer = [(FBSSceneObserver *)self observer];
    v9 = [observer scene:sceneCopy handleActions:v7];
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
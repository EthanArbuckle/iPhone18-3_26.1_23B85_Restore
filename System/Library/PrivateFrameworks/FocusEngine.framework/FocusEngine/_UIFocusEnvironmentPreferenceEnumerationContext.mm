@interface _UIFocusEnvironmentPreferenceEnumerationContext
- (BOOL)_isAllowedToPreferEnvironment:(id)environment;
- (BOOL)isLeafPreference;
- (BOOL)isPreferredByItself;
- (BOOL)prefersNothingFocused;
- (NSArray)preferredEnvironments;
- (UIFocusEnvironment)preferringEnvironment;
- (_UIFocusEnvironmentPreferenceEnumerationContext)init;
- (_UIFocusEnvironmentPreferenceEnumerationContext)initWithFocusEnvironment:(id)environment enumerationMode:(int64_t)mode;
- (_UIFocusEnvironmentPreferenceEnumerationContextDelegate)delegate;
- (id)_inferPreferencesForEnvironment:(id)environment;
- (id)_startLogging;
- (void)_invalidatePreferredEnvironments;
- (void)_reportInferredPreferredFocusEnvironment:(id)environment;
- (void)_resolvePreferredFocusEnvironments;
- (void)popEnvironment;
- (void)pushEnvironment:(id)environment;
@end

@implementation _UIFocusEnvironmentPreferenceEnumerationContext

- (_UIFocusEnvironmentPreferenceEnumerationContext)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:72 description:@"-init is not a valid initializer for this class. Use -initWithFocusEnvironment:enumerationMode: instead."];

  return 0;
}

- (_UIFocusEnvironmentPreferenceEnumerationContext)initWithFocusEnvironment:(id)environment enumerationMode:(int64_t)mode
{
  environmentCopy = environment;
  if (!environmentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"focusEnvironment"}];
  }

  v31.receiver = self;
  v31.super_class = _UIFocusEnvironmentPreferenceEnumerationContext;
  v8 = [(_UIFocusEnvironmentPreferenceEnumerationContext *)&v31 init];
  if (v8)
  {
    if (mode && dyld_program_sdk_at_least())
    {
      v9 = objc_opt_new();
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__2;
      v29 = __Block_byref_object_dispose__2;
      v30 = 0;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __92___UIFocusEnvironmentPreferenceEnumerationContext_initWithFocusEnvironment_enumerationMode___block_invoke;
      v22[3] = &unk_279014870;
      v10 = v9;
      v23 = v10;
      v24 = &v25;
      _UIFocusEnvironmentEnumerateAncestorEnvironments(environmentCopy, v22);
      objc_storeStrong(&v8->_preferredEnvironmentsMap, v9);
      v11 = v26[5];
      if (v11 && v11 != environmentCopy)
      {
        preferredSubtree = v8->_preferredSubtree;
        v8->_preferredSubtree = environmentCopy;
        v13 = environmentCopy;

        environmentCopy = v26[5];
      }

      _Block_object_dispose(&v25, 8);
    }

    objc_storeStrong(&v8->_environment, environmentCopy);
    v14 = [UIFocusSystem focusSystemForEnvironment:environmentCopy];
    focusSystem = v8->_focusSystem;
    v8->_focusSystem = v14;

    objc_storeStrong(&v8->_lastPrimaryPreferredEnvironment, environmentCopy);
    v16 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{environmentCopy, 0}];
    visitedEnvironmentStack = v8->_visitedEnvironmentStack;
    v8->_visitedEnvironmentStack = v16;

    v8->_hasNeverPoppedInPreferredSubtree = 1;
    v18 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    allVisitedEnvironments = v8->_allVisitedEnvironments;
    v8->_allVisitedEnvironments = v18;

    [(NSHashTable *)v8->_allVisitedEnvironments addObject:environmentCopy];
  }

  return v8;
}

- (BOOL)isLeafPreference
{
  preferredEnvironments = [(_UIFocusEnvironmentPreferenceEnumerationContext *)self preferredEnvironments];
  v3 = [preferredEnvironments count] == 0;

  return v3;
}

- (BOOL)isPreferredByItself
{
  environment = self->_environment;
  preferringEnvironment = [(_UIFocusEnvironmentPreferenceEnumerationContext *)self preferringEnvironment];
  LOBYTE(environment) = environment == preferringEnvironment;

  return environment;
}

- (UIFocusEnvironment)preferringEnvironment
{
  v2 = self->_visitedEnvironmentStack;
  v3 = [(NSMutableArray *)v2 count];
  if (v3 < 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(NSMutableArray *)v2 objectAtIndex:v3 - 2];
  }

  return v4;
}

- (NSArray)preferredEnvironments
{
  if (!self->_hasResolvedPreferredFocusEnvironments)
  {
    [(_UIFocusEnvironmentPreferenceEnumerationContext *)self _resolvePreferredFocusEnvironments];
  }

  cachedPreferredEnvironments = self->_cachedPreferredEnvironments;

  return cachedPreferredEnvironments;
}

- (BOOL)prefersNothingFocused
{
  if (dyld_program_sdk_at_least())
  {
    return 0;
  }

  else
  {
    if (!self->_hasResolvedPreferredFocusEnvironments)
    {
      [(_UIFocusEnvironmentPreferenceEnumerationContext *)self _resolvePreferredFocusEnvironments];
    }

    return self->_cachedPrefersNothingFocused;
  }
}

- (void)_invalidatePreferredEnvironments
{
  cachedPreferredEnvironments = self->_cachedPreferredEnvironments;
  self->_cachedPreferredEnvironments = 0;

  self->_cachedPrefersNothingFocused = 0;
  self->_hasResolvedPreferredFocusEnvironments = 0;
}

- (void)_resolvePreferredFocusEnvironments
{
  v31 = *MEMORY[0x277D85DE8];
  if ([(_UIFocusEnvironmentPreferenceEnumerationContext *)self isPreferredByItself])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = WeakRetained;
    if (WeakRetained && ![WeakRetained _shouldInferDefaultPreferenceForEnvironmentInContext:self])
    {
      v5 = 0;
    }

    else
    {
      v5 = [(_UIFocusEnvironmentPreferenceEnumerationContext *)self _inferPreferencesForEnvironment:self->_environment];
    }

    if (v5)
    {
      v15 = v5;
    }

    else
    {
      v15 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&self->_cachedPreferredEnvironments, v15);
    self->_cachedPrefersNothingFocused = 0;
  }

  else
  {
    v29 = 0;
    v6 = [(NSMapTable *)self->_preferredEnvironmentsMap objectForKey:self->_environment];
    v7 = [v6 mutableCopy];

    if (!v7)
    {
      v8 = _UIFocusEnvironmentEffectivePreferredFocusEnvironments(self->_environment, &v29);
      v7 = [v8 mutableCopy];
    }

    if ([(NSMutableArray *)self->_visitedEnvironmentStack count]== 1)
    {
      v9 = self->_environment;
      v10 = [UIFocusSystem focusSystemForEnvironment:v9];
      _topEnvironment = [v10 _topEnvironment];
      v12 = _topEnvironment;
      v13 = 0;
      if (_topEnvironment && _topEnvironment != v10)
      {
        if (!_UIFocusEnvironmentIsAncestorOfEnvironment(v9, _topEnvironment) || ([v10 focusedItem], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 == v12))
        {
          v13 = 0;
        }

        else
        {
          v13 = v12;
        }
      }

      if (v13 && v13 != self->_environment && [(_UIFocusEnvironmentPreferenceEnumerationContext *)self _isAllowedToPreferEnvironment:v13])
      {
        [v7 insertObject:v13 atIndex:0];
      }
    }

    if (self->_preferredSubtree && [(NSMutableArray *)self->_visitedEnvironmentStack count]== 1)
    {
      [v7 addObject:self->_preferredSubtree];
    }

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = v7;
    v18 = [v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v26;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v26 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v25 + 1) + 8 * i);
          if ([(_UIFocusEnvironmentPreferenceEnumerationContext *)self _isAllowedToPreferEnvironment:v22, v25])
          {
            [v16 addObject:v22];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v19);
    }

    v23 = [v16 copy];
    cachedPreferredEnvironments = self->_cachedPreferredEnvironments;
    self->_cachedPreferredEnvironments = v23;

    self->_cachedPrefersNothingFocused = v29;
  }

  self->_hasResolvedPreferredFocusEnvironments = 1;
}

- (id)_inferPreferencesForEnvironment:(id)environment
{
  v12[1] = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v5 = self->_focusSystem;
  if (!v5)
  {
    v10 = MEMORY[0x277CBEBF8];
    goto LABEL_13;
  }

  v6 = _UIFocusEnvironmentPreferredFocusMapContainer(environmentCopy);
  if (v6)
  {
    v7 = [[_UIFocusMap alloc] initWithFocusSystem:v5 rootContainer:v6 coordinateSpace:0 searchInfo:0 ignoresRootContainerClippingRect:0];
    v8 = [(_UIFocusMap *)v7 _inferredDefaultFocusItemInEnvironment:environmentCopy];
    v9 = v8;
    if (v8)
    {
      if (v8 != environmentCopy && [(_UIFocusEnvironmentPreferenceEnumerationContext *)self _isAllowedToPreferEnvironment:v8])
      {
        [(_UIFocusEnvironmentPreferenceEnumerationContext *)self _reportInferredPreferredFocusEnvironment:v9];
        v12[0] = v9;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      [(_UIFocusEnvironmentPreferenceEnumerationContext *)self _reportInferredPreferredFocusEnvironment:0];
    }

    v10 = MEMORY[0x277CBEBF8];
    goto LABEL_11;
  }

  v10 = MEMORY[0x277CBEBF8];
LABEL_12:

LABEL_13:

  return v10;
}

- (BOOL)_isAllowedToPreferEnvironment:(id)environment
{
  v26 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  if (self->_environment == environmentCopy)
  {
    LODWORD(v5) = ![(_UIFocusEnvironmentPreferenceEnumerationContext *)self isPreferredByItself];
  }

  else if ([(NSMutableArray *)self->_visitedEnvironmentStack containsObject:environmentCopy])
  {
    v5 = logger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      environment = self->_environment;
      if (environment)
      {
        v9 = MEMORY[0x277CCACA8];
        environmentCopy2 = environment;
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        environmentCopy2 = [v9 stringWithFormat:@"<%@: %p>", v12, environmentCopy2];
      }

      else
      {
        environmentCopy2 = @"(nil)";
      }

      v13 = environmentCopy2;
      v14 = environmentCopy;
      if (v14)
      {
        v16 = MEMORY[0x277CCACA8];
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v15 = [v16 stringWithFormat:@"<%@: %p>", v18, v14];
      }

      else
      {
        v15 = @"(nil)";
      }

      visitedEnvironmentStack = self->_visitedEnvironmentStack;
      *buf = 138412802;
      v21 = v13;
      v22 = 2112;
      v23 = v15;
      v24 = 2112;
      v25 = visitedEnvironmentStack;
      _os_log_error_impl(&dword_24B885000, v5, OS_LOG_TYPE_ERROR, "Loop in preferred focus environment chain. %@ prefers %@, which is already on the stack: %@", buf, 0x20u);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)pushEnvironment:(id)environment
{
  environmentCopy = environment;
  v19 = environmentCopy;
  if (!environmentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:350 description:{@"Invalid parameter not satisfying: %@", @"environment"}];

    environmentCopy = 0;
  }

  if (self->_environment != environmentCopy)
  {
    objc_storeStrong(&self->_environment, environment);
    if (self->_hasNeverPoppedInPreferredSubtree)
    {
      objc_storeStrong(&self->_lastPrimaryPreferredEnvironment, environment);
    }

    preferredSubtree = self->_preferredSubtree;
    environmentCopy = v19;
    if (preferredSubtree)
    {
      if (!self->_preferredSubtreeEntryPoint)
      {
        v8 = _UIFocusEnvironmentFirstCommonAncestor(preferredSubtree, v19);
        v9 = self->_preferredSubtree;

        environmentCopy = v19;
        if (v8 == v9)
        {
          objc_storeStrong(&self->_preferredSubtreeEntryPoint, environment);
          environmentCopy = v19;
        }
      }
    }
  }

  if (self->_debugStack)
  {
    lastObject = [(NSMutableArray *)self->_visitedEnvironmentStack lastObject];

    environmentCopy = v19;
    if (lastObject != v19)
    {
      v11 = MEMORY[0x277D817A0];
      v12 = v19;
      if (v19)
      {
        v13 = MEMORY[0x277CCACA8];
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v16 = [v13 stringWithFormat:@"<%@: %p>", v15, v12];
      }

      else
      {
        v16 = @"(nil)";
      }

      v17 = [v11 messageWithString:v16];

      [(_UIDebugLogStack *)self->_debugStack pushNode:v17];
      environmentCopy = v19;
    }
  }

  [(NSMutableArray *)self->_visitedEnvironmentStack addObject:environmentCopy];
  [(NSHashTable *)self->_allVisitedEnvironments addObject:v19];
  [(_UIFocusEnvironmentPreferenceEnumerationContext *)self _invalidatePreferredEnvironments];
}

- (void)popEnvironment
{
  if ([(NSMutableArray *)self->_visitedEnvironmentStack count]!= 1)
  {
    lastObject = [(NSMutableArray *)self->_visitedEnvironmentStack lastObject];
    [(NSMutableArray *)self->_visitedEnvironmentStack removeLastObject];
    lastObject2 = [(NSMutableArray *)self->_visitedEnvironmentStack lastObject];

    if (lastObject2 != lastObject)
    {
      popNode = [(_UIDebugLogStack *)self->_debugStack popNode];
    }

    lastObject3 = [(NSMutableArray *)self->_visitedEnvironmentStack lastObject];
    environment = self->_environment;
    self->_environment = lastObject3;

    [(_UIFocusEnvironmentPreferenceEnumerationContext *)self _invalidatePreferredEnvironments];
    if ([(_UIFocusEnvironmentPreferenceEnumerationContext *)self isInPreferredSubtree])
    {
      self->_hasNeverPoppedInPreferredSubtree = 0;
    }

    if (self->_preferredSubtree)
    {
      preferredSubtreeEntryPoint = self->_preferredSubtreeEntryPoint;
      if (preferredSubtreeEntryPoint == lastObject)
      {
        self->_preferredSubtreeEntryPoint = 0;
      }
    }
  }
}

- (id)_startLogging
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_debugStack)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusEnvironmentPreferenceEnumerator.m" lineNumber:417 description:@"Logging already in progress. Starting to log again would cause an undefined state."];
  }

  v3 = objc_opt_new();
  debugStack = self->_debugStack;
  self->_debugStack = v3;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_visitedEnvironmentStack;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = MEMORY[0x277D817A0];
        if (v10)
        {
          v12 = MEMORY[0x277CCACA8];
          v13 = v10;
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v16 = [v12 stringWithFormat:@"<%@: %p>", v15, v13, v22];
        }

        else
        {
          v16 = @"(nil)";
        }

        v17 = [v11 messageWithString:v16];

        [(_UIDebugLogStack *)self->_debugStack pushNode:v17];
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  rootNode = [(_UIDebugLogStack *)self->_debugStack rootNode];

  return rootNode;
}

- (void)_reportInferredPreferredFocusEnvironment:(id)environment
{
  environmentCopy = environment;
  debugStack = self->_debugStack;
  if (debugStack)
  {
    v15 = environmentCopy;
    v6 = [MEMORY[0x277D81798] messageWithString:@"No more preferred environments. Trying to infer environment from visual layout..."];
    [(_UIDebugLogStack *)debugStack addMessage:v6];

    v7 = self->_debugStack;
    v8 = MEMORY[0x277D81798];
    if (v15)
    {
      v9 = MEMORY[0x277CCACA8];
      v10 = v15;
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v9 stringWithFormat:@"<%@: %p>", v12, v10];

      v14 = [v8 messageWithFormat:@"Found environment: %@", v13];
      [(_UIDebugLogStack *)v7 addMessage:v14];
    }

    else
    {
      v13 = [MEMORY[0x277D81798] messageWithStyle:3 string:@"No focusable items found."];
      [(_UIDebugLogStack *)v7 addMessage:v13];
    }

    environmentCopy = v15;
  }
}

- (_UIFocusEnvironmentPreferenceEnumerationContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
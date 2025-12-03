@interface FigCaptureProprietaryDefaults
- (FigCaptureProprietaryDefaults)initWithDefaultsChangedHandler:(id)handler;
- (id)objectForKey:(id)key;
- (id)objectsForWildcardKey:(id)key;
- (id)setObject:(id)object forWildcardKey:(id)key;
- (void)dealloc;
- (void)observeChangesForKey:(id)key;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)sendNotificationOfNewTransientValue:(id)value forKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)stopObservingChangesForKey:(id)key;
@end

@implementation FigCaptureProprietaryDefaults

- (FigCaptureProprietaryDefaults)initWithDefaultsChangedHandler:(id)handler
{
  if (!handler)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Need a non-nil defaultsChangedHandler" userInfo:0]);
  }

  v6.receiver = self;
  v6.super_class = FigCaptureProprietaryDefaults;
  v4 = [(FigCaptureProprietaryDefaults *)&v6 init];
  if (v4)
  {
    v4->_videoUserDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.cameracapture"];
    v4->_audioUserDefaults = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.coreaudio"];
    v4->_defaultsChangedHandler = [handler copy];
    v4->_lock._os_unfair_lock_opaque = 0;
  }

  return v4;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [-[NSMutableSet allObjects](self->_observedKeys "allObjects")];
  os_unfair_lock_unlock(&self->_lock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 hasPrefix:@"AUVoiceIOClients"])
        {
          v9 = 16;
        }

        else
        {
          v9 = 8;
        }

        [*(&self->super.isa + v9) removeObserver:self forKeyPath:v8 context:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v5);
  }

  v10.receiver = self;
  v10.super_class = FigCaptureProprietaryDefaults;
  [(FigCaptureProprietaryDefaults *)&v10 dealloc];
}

- (id)objectForKey:(id)key
{
  if (key)
  {
    if (self)
    {
      v5 = [key hasPrefix:@"AUVoiceIOClients"];
      v6 = 8;
      if (v5)
      {
        v6 = 16;
      }

      v7 = *(&self->super.isa + v6);
    }

    else
    {
      v7 = 0;
    }

    return [v7 valueForKey:key];
  }

  else
  {
    [FigCaptureProprietaryDefaults objectForKey:];
    return 0;
  }
}

- (void)setObject:(id)object forKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_lock);
    self->_changingDefaultsMyself = 1;
    v7 = [key hasPrefix:@"AUVoiceIOClients"];
    v8 = 8;
    if (v7)
    {
      v8 = 16;
    }

    [*(&self->super.isa + v8) setObject:object forKey:key];
    self->_changingDefaultsMyself = 0;

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [FigCaptureProprietaryDefaults setObject:forKey:];
  }
}

- (id)objectsForWildcardKey:(id)key
{
  if (key)
  {
    [(FigCaptureProprietaryDefaults *)self objectsForWildcardKey:key, v4, &v5];
    return v5;
  }

  else
  {
    [FigCaptureProprietaryDefaults objectsForWildcardKey:];
    return 0;
  }
}

uint64_t __55__FigCaptureProprietaryDefaults_objectsForWildcardKey___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = fnmatch([*(a1 + 32) UTF8String], objc_msgSend(a2, "UTF8String"), 16);
  if (!result)
  {
    v7 = *(a1 + 40);

    return [v7 setObject:a3 forKeyedSubscript:a2];
  }

  return result;
}

- (id)setObject:(id)object forWildcardKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_lock);
    self->_changingDefaultsMyself = 1;
    v7 = [key hasPrefix:@"AUVoiceIOClients"];
    v8 = 8;
    if (v7)
    {
      v8 = 16;
    }

    v9 = *(&self->super.isa + v8);
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
    dictionaryRepresentation = [v9 dictionaryRepresentation];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __58__FigCaptureProprietaryDefaults_setObject_forWildcardKey___block_invoke;
    v13[3] = &unk_1E7991CC8;
    v13[4] = key;
    v13[5] = v9;
    v13[6] = object;
    v13[7] = v10;
    [dictionaryRepresentation enumerateKeysAndObjectsUsingBlock:v13];
    if (![v10 count] && (objc_msgSend(key, "containsString:", @"*") & 1) == 0)
    {
      [v9 setObject:object forKey:key];
      [v10 addObject:key];
    }

    self->_changingDefaultsMyself = 0;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [FigCaptureProprietaryDefaults setObject:forWildcardKey:];
    return 0;
  }

  return v10;
}

uint64_t __58__FigCaptureProprietaryDefaults_setObject_forWildcardKey___block_invoke(uint64_t a1, void *a2)
{
  result = fnmatch([*(a1 + 32) UTF8String], objc_msgSend(a2, "UTF8String"), 16);
  if (!result)
  {
    [*(a1 + 40) setObject:*(a1 + 48) forKey:a2];
    v5 = *(a1 + 56);

    return [v5 addObject:a2];
  }

  return result;
}

- (void)observeChangesForKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_lock);
    observedKeys = self->_observedKeys;
    if (!observedKeys)
    {
      observedKeys = objc_alloc_init(MEMORY[0x1E695DFA8]);
      self->_observedKeys = observedKeys;
    }

    [(NSMutableSet *)observedKeys addObject:key];
    os_unfair_lock_unlock(&self->_lock);
    v6 = [key hasPrefix:@"AUVoiceIOClients"];
    v7 = 8;
    if (v6)
    {
      v7 = 16;
    }

    v8 = *(&self->super.isa + v7);

    [v8 addObserver:self forKeyPath:key options:3 context:0];
  }

  else
  {
    [FigCaptureProprietaryDefaults observeChangesForKey:];
  }
}

- (void)stopObservingChangesForKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSMutableSet *)self->_observedKeys containsObject:key];
    [(NSMutableSet *)self->_observedKeys removeObject:key];
    os_unfair_lock_unlock(&self->_lock);
    if (v5)
    {
      v6 = [key hasPrefix:@"AUVoiceIOClients"];
      v7 = 8;
      if (v6)
      {
        v7 = 16;
      }

      v8 = *(&self->super.isa + v7);

      [v8 removeObserver:self forKeyPath:key context:0];
    }
  }

  else
  {
    [FigCaptureProprietaryDefaults stopObservingChangesForKey:];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (!self->_changingDefaultsMyself)
  {
    os_unfair_lock_lock(&self->_lock);
    v9 = [(NSMutableSet *)self->_observedKeys containsObject:path];
    os_unfair_lock_unlock(&self->_lock);
    if (v9)
    {
      [change objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      [change objectForKeyedSubscript:*MEMORY[0x1E696A500]];
      v10 = *(self->_defaultsChangedHandler + 2);

      v10();
    }
  }
}

- (void)sendNotificationOfNewTransientValue:(id)value forKey:(id)key
{
  if (key)
  {
    os_unfair_lock_lock(&self->_lock);
    (*(self->_defaultsChangedHandler + 2))();

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [FigCaptureProprietaryDefaults sendNotificationOfNewTransientValue:forKey:];
  }
}

- (uint64_t)objectForKey:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)setObject:forKey:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)objectsForWildcardKey:(void *)a3 .cold.1(char *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  if (a1)
  {
    v8 = [a2 hasPrefix:@"AUVoiceIOClients"];
    v9 = 8;
    if (v8)
    {
      v9 = 16;
    }

    v7 = *&v7[v9];
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  *a4 = v10;
  v11 = [v7 dictionaryRepresentation];
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __55__FigCaptureProprietaryDefaults_objectsForWildcardKey___block_invoke;
  a3[3] = &unk_1E7991CA0;
  a3[4] = a2;
  a3[5] = v10;
  return [v11 enumerateKeysAndObjectsUsingBlock:a3];
}

- (uint64_t)objectsForWildcardKey:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)setObject:forWildcardKey:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)observeChangesForKey:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)stopObservingChangesForKey:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)sendNotificationOfNewTransientValue:forKey:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end
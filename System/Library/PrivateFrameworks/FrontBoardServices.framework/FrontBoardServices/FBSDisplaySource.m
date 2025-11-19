@interface FBSDisplaySource
- (FBSDisplaySource)init;
- (id)_transformDisplaysIfNecessaryFromDisplayConfiguration:(uint64_t)a1;
- (id)connectedConfigurations;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)initWithDisplay:(char)a3 alwaysConnected:(uint64_t)a4 triggers:(void *)a5 monitor:;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (uint64_t)displayID;
- (void)_callOutQueue_postToObservers:(uint64_t)a3 includeBookendObserver:(void *)a4 connected:;
- (void)_callOutQueue_postToObservers:(uint64_t)a3 includeBookendObserver:(void *)a4 disconnected:;
- (void)_callOutQueue_postToObservers:(uint64_t)a3 includeBookendObserver:(void *)a4 updated:;
- (void)_lock_noteConnected;
- (void)_lock_noteDisconnecting;
- (void)_lock_noteUpdatedForTransformInvalidation:(uint64_t)a1;
- (void)_lock_setAttachment:(const os_unfair_lock *)a1;
- (void)_lock_setRawConfiguration:(uint64_t)a1;
- (void)_lock_setRawReportedConfiguration:(void *)a3 effectiveReportedConfigurations:;
- (void)_updateForInitialization:(int)a3 forTransformInvalidation:;
- (void)dealloc;
- (void)invalidate;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setAllowsUnknown:(uint64_t)a1;
- (void)updateTransforms;
@end

@implementation FBSDisplaySource

- (id)connectedConfigurations
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 92));
    v2 = *(a1 + 80);
    os_unfair_lock_unlock((a1 + 92));
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_lock_noteConnected
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = [a1 debugDescription];
  v4 = [v3 stringWithFormat:@"rawConfiguration cannot be nil : %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_5_2();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_not_owner(&self->_updateTransformsLock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    self->_lock_invalidated = 1;
    objc_storeWeak(&self->_lock_monitor, 0);
    os_unfair_lock_unlock(&self->_lock);
    if (self->_observing)
    {
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"tag" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"availableModes" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"connectionSeed" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"uniqueId" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"name" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"deviceName" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"processId" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"currentMode" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"preferredMode" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"cloningSupported" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"overscanned" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"overscanAdjustment" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"overscanAmounts" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"supportsExtendedColors" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"currentOrientation" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"latency" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"frame" context:self];
      [(CADisplay *)self->_display removeObserver:self forKeyPath:@"bounds" context:self];
    }

    v3 = BKLogDisplay();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      displayID = self->_displayID;
      instanceID = self->_instanceID;
      v6[0] = 67109376;
      v6[1] = displayID;
      v7 = 1024;
      v8 = instanceID;
      _os_log_impl(&dword_1A2DBB000, v3, OS_LOG_TYPE_DEFAULT, "[FBSDisplaySource %u-%u] did invalidate", v6, 0xEu);
    }
  }
}

- (void)dealloc
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invalidate must be called before deallocing"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __39__FBSDisplaySource__lock_noteConnected__block_invoke_3(uint64_t a1)
{
  [(FBSDisplaySource *)*(a1 + 32) _callOutQueue_postToObservers:*(a1 + 56) includeBookendObserver:*(a1 + 48) connected:?];
  if (*(a1 + 57) == 1)
  {
    OUTLINED_FUNCTION_18_1();

    [FBSDisplaySource _updateForInitialization:forTransformInvalidation:];
  }
}

- (FBSDisplaySource)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ is not allowed on %@", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    v16 = 2048;
    v17 = self;
    v18 = 2114;
    v19 = @"FBSDisplaySource.m";
    v20 = 1024;
    v21 = 78;
    v22 = 2114;
    v23 = v8;
    _os_log_error_impl(&dword_1A2DBB000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
}

- (id)initWithDisplay:(char)a3 alwaysConnected:(uint64_t)a4 triggers:(void *)a5 monitor:
{
  v10 = a2;
  v11 = a5;
  v12 = v11;
  if (a1)
  {
    if (!v10)
    {
      [FBSDisplaySource initWithDisplay:? alwaysConnected:? triggers:? monitor:?];
    }

    if (!v11)
    {
      [FBSDisplaySource initWithDisplay:? alwaysConnected:? triggers:? monitor:?];
    }

    v13 = [v11 callOutQueue];
    if (!v13)
    {
      [FBSDisplaySource initWithDisplay:? alwaysConnected:? triggers:? monitor:?];
    }

    v14 = v13;
    v18.receiver = a1;
    v18.super_class = FBSDisplaySource;
    v15 = objc_msgSendSuper2(&v18, sel_init);
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 1, a2);
      *(v16 + 120) = a3;
      *(v16 + 100) = [v10 displayId];
      objc_storeStrong((v16 + 24), v14);
      *(v16 + 104) = atomic_fetch_add_explicit(&initWithDisplay_alwaysConnected_triggers_monitor____instanceCounter, 1u, memory_order_relaxed) + 1;
      *(v16 + 88) = 0;
      objc_storeWeak((v16 + 16), v12);
      *(v16 + 92) = 0;
      *(v16 + 96) = 0;
      *(v16 + 121) = a4 != 0;
      *(v16 + 122) = a4 & 1;
      if (a4)
      {
        [*(v16 + 8) addObserver:v16 forKeyPath:@"tag" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"availableModes" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"connectionSeed" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"uniqueId" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"name" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"deviceName" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"processId" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"currentMode" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"preferredMode" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"cloningSupported" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"overscanned" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"overscanAdjustment" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"overscanAmounts" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"supportsExtendedColors" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"currentOrientation" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"latency" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"frame" options:0 context:v16];
        [*(v16 + 8) addObserver:v16 forKeyPath:@"bounds" options:0 context:v16];
      }

      [(FBSDisplaySource *)v16 _updateForInitialization:0 forTransformInvalidation:?];
    }

    a1 = v16;
  }

  return a1;
}

- (void)_updateForInitialization:(int)a3 forTransformInvalidation:
{
  if (a1)
  {
    v6 = [*(a1 + 8) immutableCopy];
    os_unfair_lock_lock((a1 + 88));
    if ((*(a1 + 125) & 1) != 0 || (*(a1 + 123) & 1) == 0 && !a2)
    {
      goto LABEL_39;
    }

    if (*(a1 + 120) != 1)
    {
      v7 = [v6 tag];
      v8 = [v6 availableModes];
      v9 = *(a1 + 32);
      if (!v7 || ![v8 count])
      {
        [(FBSDisplaySource *)a1 _lock_setRawConfiguration:?];
        goto LABEL_19;
      }

      if (v9)
      {
        v10 = [v9 identity];
        v11 = [v10 connectionSeed];
        if (v11 == [v6 connectionSeed] && (v12 = objc_msgSend(v9, "seed"), v12 == objc_msgSend(v6, "seed")))
        {
          v13 = [v9 tags];

          if (v13 == v7 && !a3)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }
      }

      v14 = [[FBSDisplayConfiguration alloc] _initWithImmutableDisplay:v6 originalDisplay:*(a1 + 8) assertIfInvalid:1];
      v15 = v14;
      if (!v14 || [v14 isMainDisplay])
      {
        v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we failed to make a non-main display for %@ -> created raw configuration: %@", v6, v15];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBSDisplaySource _updateForInitialization:? forTransformInvalidation:?];
        }

        [v24 UTF8String];
        _bs_set_crash_log_message();
      }

      [(FBSDisplaySource *)a1 _lock_setRawConfiguration:v15];

LABEL_19:
      v16 = *(a1 + 32);
      if (v16 && ([v16 isHiddenDisplay] & 1) == 0)
      {
        v17 = *(a1 + 108);
        if (v17 == 3 || v17 == 1)
        {
          [*(a1 + 40) identity];
          objc_claimAutoreleasedReturnValue();
          [*(a1 + 32) identity];
          objc_claimAutoreleasedReturnValue();
          BSEqualObjects();
        }

        if (v17 || (*(a1 + 124) & 1) == 0 && [*(a1 + 32) type] == 7)
        {
          goto LABEL_36;
        }

        [(FBSDisplaySource *)a1 _lock_noteConnected];
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        *(a1 + 40) = v18;
      }

      else
      {
        if ((*(a1 + 108) | 2) != 3)
        {
          goto LABEL_36;
        }

        [(FBSDisplaySource *)a1 _lock_noteDisconnecting];
        v19 = *(a1 + 40);
        *(a1 + 40) = 0;
      }

LABEL_36:
      goto LABEL_37;
    }

    v8 = [[FBSDisplayConfiguration alloc] _initWithImmutableDisplay:v6 originalDisplay:*(a1 + 8) assertIfInvalid:1];
    if (([v8 isMainDisplay] & 1) == 0)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"we failed to make a main display for %@ - created raw configuration=%@", v6, v8];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBSDisplaySource _updateForInitialization:? forTransformInvalidation:?];
      }

      [v25 UTF8String];
      _bs_set_crash_log_message();
    }

    [(FBSDisplaySource *)a1 _lock_setRawConfiguration:v8];
    v20 = *(a1 + 108);
    if (v20 <= 2)
    {
      if (v20)
      {
        if (v20 == 1)
        {
          goto LABEL_45;
        }
      }

      else
      {
        [FBSDisplaySource _updateForInitialization:a1 forTransformInvalidation:?];
      }
    }

    else
    {
      if (v20 == 3)
      {
        [(FBSDisplaySource *)a1 _lock_noteUpdatedForTransformInvalidation:a3];
        goto LABEL_37;
      }

      if (v20 == 4)
      {
LABEL_45:
        v21 = MEMORY[0x1E696AEC0];
        v22 = [a1 debugDescription];
        v23 = [v21 stringWithFormat:@"mainDisplay cannot debounce nor disconnect : %@", v22];

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [FBSDisplaySource _updateForInitialization:? forTransformInvalidation:?];
        }

        [v23 UTF8String];
        _bs_set_crash_log_message();
      }
    }

LABEL_37:

    if (a2)
    {
      *(a1 + 123) = 1;
    }

LABEL_39:
    os_unfair_lock_unlock((a1 + 88));
  }
}

- (id)succinctDescription
{
  v2 = [(FBSDisplaySource *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [off_1E76BC9B0 builderWithObject:self];
  os_unfair_lock_lock(&self->_externallyVisibleLock);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u-%u", self->_displayID, self->_instanceID];
  [v3 appendString:v4 withName:@"instance"];

  v5 = FBSDisplayAttachmentDescription(self->_evlock_attachment);
  [v3 appendString:v5 withName:@"attachment"];

  evlock_rawConfiguration = self->_evlock_rawConfiguration;
  if (evlock_rawConfiguration)
  {
    v7 = [(FBSDisplayConfiguration *)evlock_rawConfiguration succinctDescription];
    v8 = [v3 appendObject:v7 withName:@"rawConfig"];

    v9 = [(NSSet *)self->_evlock_reportedEffectiveConfigurations count];
    evlock_reportedEffectiveConfigurations = self->_evlock_reportedEffectiveConfigurations;
    if (v9 == 1)
    {
      v11 = [(NSSet *)evlock_reportedEffectiveConfigurations anyObject];
      v12 = [v11 succinctDescription];
      v13 = [v3 appendObject:v12 withName:@"effectiveConfig"];
    }

    else
    {
      v11 = [(NSSet *)evlock_reportedEffectiveConfigurations allObjects];
      [v3 appendArraySection:v11 withName:@"effectiveConfigs" skipIfEmpty:1];
    }
  }

  os_unfair_lock_unlock(&self->_externallyVisibleLock);

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(FBSDisplaySource *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [off_1E76BC9B0 builderWithObject:self];
  os_unfair_lock_lock(&self->_externallyVisibleLock);
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u-%u", self->_displayID, self->_instanceID];
  [v4 appendString:v5 withName:@"instance"];

  v6 = FBSDisplayAttachmentDescription(self->_evlock_attachment);
  [v4 appendString:v6 withName:@"attachment"];

  evlock_rawConfiguration = self->_evlock_rawConfiguration;
  if (evlock_rawConfiguration)
  {
    v8 = [v4 appendObject:evlock_rawConfiguration withName:@"rawConfig"];
    v9 = [(NSSet *)self->_evlock_reportedEffectiveConfigurations count];
    evlock_reportedEffectiveConfigurations = self->_evlock_reportedEffectiveConfigurations;
    if (v9 == 1)
    {
      v11 = [(NSSet *)evlock_reportedEffectiveConfigurations anyObject];
      v12 = [v11 succinctDescription];
      v13 = [v4 appendObject:v12 withName:@"effectiveConfig"];
    }

    else
    {
      v11 = [(NSSet *)evlock_reportedEffectiveConfigurations allObjects];
      [v4 appendArraySection:v11 withName:@"effectiveConfigs" skipIfEmpty:1];
    }
  }

  os_unfair_lock_unlock(&self->_externallyVisibleLock);

  return v4;
}

- (void)_lock_setRawReportedConfiguration:(void *)a3 effectiveReportedConfigurations:
{
  v8 = a2;
  v5 = a3;
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 22);
    v6 = v8;
    if (v8 | v5)
    {
      if (!v8 || (v7 = [v5 count], v6 = v8, !v7))
      {
        [FBSDisplaySource _lock_setRawReportedConfiguration:? effectiveReportedConfigurations:?];
      }
    }

    [(FBSDisplaySource *)v6 _lock_setRawReportedConfiguration:a1 effectiveReportedConfigurations:v5];
  }
}

- (void)_lock_noteUpdatedForTransformInvalidation:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 88));
    v4 = *(a1 + 32);
    if (!v4)
    {
      [(FBSDisplaySource *)a1 _lock_noteUpdatedForTransformInvalidation:?];
    }

    v5 = v4;
    v6 = [v5 identity];
    v7 = *(a1 + 100);
    if (v7 != [v6 displayID])
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"displayID must be consistent : expected=%u rawConfiguration=%@", *(a1 + 100), *(a1 + 32)];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        [FBSDisplaySource _lock_noteUpdatedForTransformInvalidation:?];
      }

      [v11 UTF8String];
      _bs_set_crash_log_message();
    }

    if (*(a1 + 108) != 3)
    {
      [(FBSDisplaySource *)a1 _lock_noteUpdatedForTransformInvalidation:?];
    }

    v8 = *(a1 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__FBSDisplaySource__lock_noteUpdatedForTransformInvalidation___block_invoke;
    block[3] = &unk_1E76BFC20;
    block[4] = a1;
    v13 = v6;
    v14 = v5;
    v15 = sel__lock_noteUpdatedForTransformInvalidation_;
    v16 = a2;
    v9 = v5;
    v10 = v6;
    dispatch_async(v8, block);
  }
}

- (void)_lock_noteDisconnecting
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = [a1 debugDescription];
  v4 = [v3 stringWithFormat:@"reported configuration cannot be nil : %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_5_2();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (id)_transformDisplaysIfNecessaryFromDisplayConfiguration:(uint64_t)a1
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 88));
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v5 = [WeakRetained transformer];

    os_unfair_lock_unlock((a1 + 88));
    if (v5)
    {
      os_unfair_lock_lock((a1 + 96));
      v6 = [v5 transformDisplayConfiguration:v3];
      os_unfair_lock_unlock((a1 + 96));
      if ([v3 isMainDisplay])
      {
        v7 = [v6 objectsPassingTest:&__block_literal_global_34];
        if ([v7 count] != 1)
        {
          [FBSDisplaySource _transformDisplaysIfNecessaryFromDisplayConfiguration:?];
        }
      }

      else
      {
        if (![v6 count])
        {
          [(FBSDisplaySource *)v3 _transformDisplaysIfNecessaryFromDisplayConfiguration:?];
        }

        v7 = [MEMORY[0x1E695DFA8] set];
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v6 = v6;
        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = 0;
          v11 = *v17;
          do
          {
            v12 = 0;
            v13 = v10;
            do
            {
              if (*v17 != v11)
              {
                objc_enumerationMutation(v6);
              }

              v14 = *(*(&v16 + 1) + 8 * v12);
              if ([v14 isMainDisplay])
              {
                [(FBSDisplaySource *)v3 _transformDisplaysIfNecessaryFromDisplayConfiguration:?];
              }

              v10 = [v14 identity];

              if ([v7 containsObject:v10])
              {
                [(FBSDisplaySource *)v10 _transformDisplaysIfNecessaryFromDisplayConfiguration:?];
              }

              [v7 addObject:v10];
              ++v12;
              v13 = v10;
            }

            while (v9 != v12);
            v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
          }

          while (v9);
        }
      }
    }

    else
    {
      v6 = [MEMORY[0x1E695DFD8] setWithObject:v3];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __39__FBSDisplaySource__lock_noteConnected__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 88));
  v3 = *v2;
  if ((*v2)[27]._os_unfair_lock_opaque == 1 && *(a1 + 56) == v3[29]._os_unfair_lock_opaque)
  {
    v4 = *(a1 + 40);
    v5 = [*&v3[8]._os_unfair_lock_opaque identity];
    LOBYTE(v4) = [v4 isEqual:v5];

    if ((v4 & 1) == 0)
    {
      __39__FBSDisplaySource__lock_noteConnected__block_invoke_cold_1(v2, (a1 + 40), a1);
    }

    __39__FBSDisplaySource__lock_noteConnected__block_invoke_cold_2(v2);
  }

  else
  {

    os_unfair_lock_unlock(&v3[22]);
  }
}

void __62__FBSDisplaySource__lock_noteUpdatedForTransformInvalidation___block_invoke(uint64_t a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = a1 + 32;
  os_unfair_lock_lock((*(a1 + 32) + 88));
  [*(*v1 + 48) identity];
  objc_claimAutoreleasedReturnValue();
  BSEqualObjects();
}

void __62__FBSDisplaySource__lock_noteUpdatedForTransformInvalidation___block_invoke_161(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identity];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __62__FBSDisplaySource__lock_noteUpdatedForTransformInvalidation___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 identity];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __43__FBSDisplaySource__lock_noteDisconnecting__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 88));
  v3 = *v2;
  if (!*(*v2 + 48))
  {
    __43__FBSDisplaySource__lock_noteDisconnecting__block_invoke_cold_2(v3, a1);
  }

  __43__FBSDisplaySource__lock_noteDisconnecting__block_invoke_cold_1(v3, v2);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = BKLogDisplay();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    displayID = self->_displayID;
    instanceID = self->_instanceID;
    v11[0] = 67109634;
    v11[1] = displayID;
    v12 = 1024;
    v13 = instanceID;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1A2DBB000, v8, OS_LOG_TYPE_DEFAULT, "[FBSDisplaySource %u-%u] KVO: did change %@", v11, 0x18u);
  }

  [(FBSDisplaySource *)self _updateForInitialization:0 forTransformInvalidation:?];
}

- (void)setAllowsUnknown:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 88));
    if (*(a1 + 124) == a2)
    {

      os_unfair_lock_unlock((a1 + 88));
    }

    else
    {
      *(a1 + 124) = a2;
      os_unfair_lock_unlock((a1 + 88));
      OUTLINED_FUNCTION_18_1();

      [(FBSDisplaySource *)v4 _updateForInitialization:v5 forTransformInvalidation:v6];
    }
  }
}

- (void)updateTransforms
{
  if (a1)
  {
    os_unfair_lock_assert_not_owner((a1 + 96));
    if (*(a1 + 121) == 1)
    {

      [(FBSDisplaySource *)a1 _updateForInitialization:1 forTransformInvalidation:?];
    }
  }
}

- (void)_lock_setAttachment:(const os_unfair_lock *)a1
{
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 22);
    a1[27]._os_unfair_lock_opaque = a2;
    os_unfair_lock_lock(&a1[23]);
    a1[28]._os_unfair_lock_opaque = a1[27]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(&a1[23]);
  }
}

- (void)_lock_setRawConfiguration:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    os_unfair_lock_assert_owner((a1 + 88));
    v4 = [v3 copy];

    v5 = *(a1 + 32);
    *(a1 + 32) = v4;

    os_unfair_lock_lock((a1 + 92));
    objc_storeStrong((a1 + 64), *(a1 + 32));
    os_unfair_lock_unlock((a1 + 92));
    v6 = BKLogDisplay();
    if (OUTLINED_FUNCTION_31_0(v6))
    {
      v12 = [*(a1 + 32) debugDescription];
      OUTLINED_FUNCTION_28_0();
      _os_log_debug_impl(v7, v8, v9, v10, v11, 0x18u);
    }
  }
}

- (void)_callOutQueue_postToObservers:(uint64_t)a3 includeBookendObserver:(void *)a4 connected:
{
  v6 = a2;
  v7 = a4;
  if (a1)
  {
    BSDispatchQueueAssert();
  }
}

void __39__FBSDisplaySource__lock_noteConnected__block_invoke_148(uint64_t a1)
{
  v11 = [(FBSDisplaySource *)*(a1 + 32) _transformDisplaysIfNecessaryFromDisplayConfiguration:?];
  os_unfair_lock_lock((*(a1 + 32) + 88));
  [(FBSDisplaySource *)*(a1 + 32) _lock_setAttachment:?];
  [(FBSDisplaySource *)*(a1 + 32) _lock_setRawReportedConfiguration:v11 effectiveReportedConfigurations:?];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v3 = [WeakRetained canPostToBookendObserver];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(v4 + 32);
  os_unfair_lock_unlock((v4 + 88));
  v7 = *(a1 + 32);
  if ((*(v7 + 120) & 1) == 0)
  {
    [(FBSDisplaySource *)v7 _callOutQueue_postToObservers:v3 includeBookendObserver:v11 connected:?];
  }

  if (v5 != v6)
  {
    OUTLINED_FUNCTION_18_1();
    [(FBSDisplaySource *)v8 _updateForInitialization:v9 forTransformInvalidation:v10];
  }
}

- (void)_callOutQueue_postToObservers:(uint64_t)a3 includeBookendObserver:(void *)a4 disconnected:
{
  v6 = a2;
  v7 = a4;
  if (a1)
  {
    BSDispatchQueueAssert();
  }
}

- (void)_callOutQueue_postToObservers:(uint64_t)a3 includeBookendObserver:(void *)a4 updated:
{
  v6 = a2;
  v7 = a4;
  if (a1)
  {
    BSDispatchQueueAssert();
  }
}

- (uint64_t)displayID
{
  if (result)
  {
    return *(result + 100);
  }

  return result;
}

- (void)initWithDisplay:(char *)a1 alwaysConnected:triggers:monitor:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"callOutQueue", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithDisplay:(char *)a1 alwaysConnected:triggers:monitor:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"monitor", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)initWithDisplay:(char *)a1 alwaysConnected:triggers:monitor:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"display", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_updateForInitialization:(const char *)a1 forTransformInvalidation:.cold.1(const char *a1)
{
  NSStringFromSelector(a1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (void)_updateForInitialization:(const char *)a1 forTransformInvalidation:.cold.2(const char *a1)
{
  NSStringFromSelector(a1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (void)_updateForInitialization:(const char *)a1 forTransformInvalidation:.cold.3(const char *a1)
{
  NSStringFromSelector(a1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (void)_updateForInitialization:(uint64_t)a1 forTransformInvalidation:.cold.4(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = BKLogDisplay();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 100);
    v4 = *(a1 + 104);
    v5 = [*(a1 + 32) succinctDescription];
    v6[0] = 67109634;
    v6[1] = v3;
    v7 = 1024;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1A2DBB000, v2, OS_LOG_TYPE_DEFAULT, "[FBSDisplaySource %u-%u] silently connecting raw configuration: %{public}@", v6, 0x18u);
  }

  [(FBSDisplaySource *)a1 _lock_noteConnected];
}

- (void)_lock_setRawReportedConfiguration:(char *)a1 effectiveReportedConfigurations:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Raw and effective configurations must be consistent with nullability"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_lock_setRawReportedConfiguration:(void *)a3 effectiveReportedConfigurations:.cold.2(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 copy];
  v6 = *(a2 + 48);
  *(a2 + 48) = v5;

  v7 = [a3 copy];
  v8 = *(a2 + 56);
  *(a2 + 56) = v7;

  os_unfair_lock_lock((a2 + 92));
  objc_storeStrong((a2 + 72), *(a2 + 48));
  objc_storeStrong((a2 + 80), *(a2 + 56));

  os_unfair_lock_unlock((a2 + 92));
}

- (void)_lock_noteUpdatedForTransformInvalidation:(const char *)a1 .cold.1(const char *a1)
{
  NSStringFromSelector(a1);
  objc_claimAutoreleasedReturnValue();
  v2 = OUTLINED_FUNCTION_10();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v4, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v5, v6, v7, v8, v9);
}

- (void)_lock_noteUpdatedForTransformInvalidation:(void *)a1 .cold.2(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = [a1 debugDescription];
  v4 = [v3 stringWithFormat:@"attachment must be connected : %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_5_2();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_lock_noteUpdatedForTransformInvalidation:(void *)a1 .cold.3(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = [a1 debugDescription];
  v4 = [v3 stringWithFormat:@"raw configuration cannot be nil : %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_5_2();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_transformDisplaysIfNecessaryFromDisplayConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Transformed displays may not return the same display identity multiple times: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v4 = OUTLINED_FUNCTION_12();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, a1, v12, v13);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_transformDisplaysIfNecessaryFromDisplayConfiguration:(void *)a1 .cold.2(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = [a1 succinctDescription];
  v4 = [v3 stringWithFormat:@"May not transform a non-main display (%@) into a main display."];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_5_2();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_transformDisplaysIfNecessaryFromDisplayConfiguration:(void *)a1 .cold.3(void *a1, char *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v12 = [a1 succinctDescription];
  v4 = [v3 stringWithFormat:@"Cannot suppress a display currently by transforming display configurations from: %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    v5 = OUTLINED_FUNCTION_5_2();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_transformDisplaysIfNecessaryFromDisplayConfiguration:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Transformed display configurations must have one and only one mainRootDisplay."];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_12();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, 2u);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __39__FBSDisplaySource__lock_noteConnected__block_invoke_cold_1(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v13 = *(*a1 + 32);
  v14 = *a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identity of debounced raw configuration must be consistent : configuration=%@ original=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a3 + 48));
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

void __39__FBSDisplaySource__lock_noteConnected__block_invoke_cold_2(const os_unfair_lock **a1)
{
  [(FBSDisplaySource *)*a1 _lock_setAttachment:?];
  v6 = *&(*a1)[8]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(&(*a1)[22]);
  if (v6)
  {
    v2 = [(FBSDisplaySource *)*a1 _transformDisplaysIfNecessaryFromDisplayConfiguration:v6];
    os_unfair_lock_lock(&(*a1)[22]);
    [(FBSDisplaySource *)*a1 _lock_setAttachment:?];
    [(FBSDisplaySource *)*a1 _lock_setRawReportedConfiguration:v6 effectiveReportedConfigurations:v2];
    WeakRetained = objc_loadWeakRetained(&(*a1)[4]);
    v4 = [WeakRetained canPostToBookendObserver];
    v5 = *&(*a1)[8]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(&(*a1)[22]);
    if (LOBYTE((*a1)[30]._os_unfair_lock_opaque) != 1)
    {
      [(FBSDisplaySource *)*a1 _callOutQueue_postToObservers:v4 includeBookendObserver:v2 connected:?];
    }

    if (v6 != v5)
    {
      OUTLINED_FUNCTION_18_1();
      [FBSDisplaySource _updateForInitialization:forTransformInvalidation:];
    }
  }
}

void __62__FBSDisplaySource__lock_noteUpdatedForTransformInvalidation___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v12 = *(*a1 + 48);
  v13 = *(a2 + 48);
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rawConfiguration.identity must match on update : old=%@ new=%@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(*(a2 + 56));
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

void __43__FBSDisplaySource__lock_noteDisconnecting__block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  os_unfair_lock_unlock((*a2 + 88));
  -[FBSDisplaySource _callOutQueue_postToObservers:includeBookendObserver:disconnected:](*a2, WeakRetained, [WeakRetained canPostToBookendObserver], v4);
  os_unfair_lock_lock((*a2 + 88));
  [(FBSDisplaySource *)*a2 _lock_setAttachment:?];
  [(FBSDisplaySource *)*a2 _lock_setRawReportedConfiguration:0 effectiveReportedConfigurations:?];
  os_unfair_lock_unlock((*a2 + 88));
  OUTLINED_FUNCTION_18_1();
  [(FBSDisplaySource *)v5 _updateForInitialization:v6 forTransformInvalidation:v7];
}

void __43__FBSDisplaySource__lock_noteDisconnecting__block_invoke_cold_2(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v13 = [a1 debugDescription];
  v4 = [v3 stringWithFormat:@"reported configuration cannot be nil : %@"];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(*(a2 + 40));
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14, v15);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
}

@end
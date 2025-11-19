@interface ITAttentionAwareIdleTimer
- (ITAttentionAwareIdleTimer)init;
- (ITAttentionAwareIdleTimer)initWithConfigurationIdentifier:(id)a3 delegate:(id)a4;
- (ITAttentionAwareIdleTimer)initWithConfigurationIdentifier:(id)a3 delegate:(id)a4 calloutQueue:(id)a5;
- (ITAttentionAwarenessContext)_context;
- (ITIdleTimerDelegate)delegate;
- (ITIdleTimerDescriptor)descriptor;
- (id)_access_generateConfiguration;
- (id)_configurationWithIdentifier:(id)a3 descriptor:(id)a4 context:(id)a5;
- (id)_initWithConfigurationIdentifier:(id)a3 delegate:(id)a4 calloutQueue:(id)a5 client:(id)a6;
- (id)_timeoutDictionaryForTimeouts:(id)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_prototypeSettingsChanged;
- (void)client:(id)a3 attentionLostTimeoutDidExpire:(id)a4 forContext:(id)a5;
- (void)clientDidReset:(id)a3 forUserAttentionEvent:(id)a4 withContext:(id)a5;
- (void)reset;
@end

@implementation ITAttentionAwareIdleTimer

- (id)_access_generateConfiguration
{
  os_unfair_lock_assert_owner(&self->_accessLock);
  configurationIdentifier = self->_configurationIdentifier;
  access_descriptor = self->_access_descriptor;
  access_context = self->_access_context;

  return [(ITAttentionAwareIdleTimer *)self _configurationWithIdentifier:configurationIdentifier descriptor:access_descriptor context:access_context];
}

- (ITAttentionAwareIdleTimer)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"ITAttentionAwareIdleTimer.m" lineNumber:49 description:@"wrong initializer"];

  return 0;
}

- (ITAttentionAwareIdleTimer)initWithConfigurationIdentifier:(id)a3 delegate:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = BSDispatchQueueCreateWithQualityOfService();
  v9 = [(ITAttentionAwareIdleTimer *)self initWithConfigurationIdentifier:v7 delegate:v6 calloutQueue:v8];

  return v9;
}

- (ITAttentionAwareIdleTimer)initWithConfigurationIdentifier:(id)a3 delegate:(id)a4 calloutQueue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[ITAttentionAwarenessClient alloc] initWithCalloutQueue:v8];
  v12 = [(ITAttentionAwareIdleTimer *)self _initWithConfigurationIdentifier:v10 delegate:v9 calloutQueue:v8 client:v11];

  return v12;
}

- (id)_initWithConfigurationIdentifier:(id)a3 delegate:(id)a4 calloutQueue:(id)a5 client:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a6;
  v19.receiver = self;
  v19.super_class = ITAttentionAwareIdleTimer;
  v12 = [(ITAttentionAwareIdleTimer *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_accessLock = 0;
    v14 = [v9 copy];
    configurationIdentifier = v13->_configurationIdentifier;
    v13->_configurationIdentifier = v14;

    objc_storeWeak(&v13->_delegate, v10);
    objc_storeStrong(&v13->_access_client, a6);
    [(ITAttentionAwarenessClient *)v13->_access_client setDelegate:v13];
    v16 = +[ITAttentionAwarenessDomain rootSettings];
    settings = v13->_settings;
    v13->_settings = v16;

    [(PTSettings *)v13->_settings addKeyObserver:v13];
    [(ITAttentionAwareIdleTimer *)v13 _prototypeSettingsChanged];
  }

  return v13;
}

- (ITIdleTimerDescriptor)descriptor
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = [(ITIdleTimerDescriptor *)self->_access_descriptor copy];
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (void)reset
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (id)succinctDescription
{
  v2 = [(ITAttentionAwareIdleTimer *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(ITAttentionAwareIdleTimer *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(ITAttentionAwareIdleTimer *)self succinctDescriptionBuilder];
  v5 = [v4 appendObject:self->_access_descriptor withName:@"descriptor"];

  return v4;
}

- (id)_configurationWithIdentifier:(id)a3 descriptor:(id)a4 context:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 attentionMaintenanceEventMask];
  v13 = [v10 attentionRecoveryEventMask];
  v14 = objc_alloc_init(MEMORY[0x277CEF768]);
  v38 = v9;
  [v14 setIdentifier:v9];
  [v14 setEventMask:v12];
  if ((v12 & 0x80) == 0 && (v13 & 0x80) != 0)
  {
    [ITAttentionAwareIdleTimer _configurationWithIdentifier:descriptor:context:];
  }

  else if (!v13)
  {
    goto LABEL_5;
  }

  [v14 setAttentionLostEventMask:v13];
LABEL_5:
  v15 = [v10 timeouts];
  if (![v15 count])
  {
    [(ITAttentionAwareIdleTimer *)v15 _configurationWithIdentifier:a2 descriptor:self context:v10];
  }

  if ((v12 & 0x80) != 0)
  {
    [v10 attentionSamplingPeriod];
    v17 = v16;
    [v14 setSamplingInterval:?];
    [v10 attentionSamplingStartDelay];
    v19 = v18;
    if (v18 > 0.0)
    {
      [v14 setSamplingDelay:v18];
    }

    v20 = ITLogIdleTimer();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v45 = *&v19;
      v46 = 2048;
      v47 = v17;
      _os_log_impl(&dword_254AB6000, v20, OS_LOG_TYPE_INFO, "Setting auto face detection with sampling delay: %g, period: %g", buf, 0x16u);
    }
  }

  v21 = [(ITAttentionAwareIdleTimer *)self _timeoutDictionaryForTimeouts:v15];
  [v14 setTag:v11];
  [v14 setAttentionLostTimeoutDictionary:v21];
  v22 = [v21 allKeys];
  v23 = [v22 firstObject];
  [v23 doubleValue];
  v25 = v24;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = [v21 allKeys];
  v27 = [v26 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v40;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [*(*(&v39 + 1) + 8 * i) doubleValue];
        if (v31 >= v25)
        {
          v25 = v31;
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v28);
  }

  nonSampledAttentionLostTimeout = self->_nonSampledAttentionLostTimeout;
  if (nonSampledAttentionLostTimeout < v25 + 1.0)
  {
    nonSampledAttentionLostTimeout = v25 + 1.0;
  }

  [v14 setNonSampledAttentionLostTimeout:nonSampledAttentionLostTimeout];
  [v14 setNonSampledAttentionLostTimeoutEnable:self->_nonSampledAttentionLostTimeoutEnable];
  v33 = ITLogIdleTimer();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
  {
    if ([v14 nonSampledAttentionLostTimeoutEnable])
    {
      v34 = @"Enabled";
    }

    else
    {
      v34 = @"Disabled";
    }

    [v14 nonSampledAttentionLostTimeout];
    *buf = 138543618;
    v45 = v34;
    v46 = 2048;
    v47 = v35;
    _os_log_impl(&dword_254AB6000, v33, OS_LOG_TYPE_INFO, "%{public}@ nonSampled attention lost timeout with: %f seconds", buf, 0x16u);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)_timeoutDictionaryForTimeouts:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "identifier", v16)}];
        v12 = MEMORY[0x277CCABB0];
        [v10 duration];
        v13 = [v12 numberWithDouble:?];
        [v4 setObject:v11 forKeyedSubscript:v13];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_prototypeSettingsChanged
{
  [(ITAttentionAwarenessSettings *)self->_settings nonSampledAttentionLostTimeout];
  self->_nonSampledAttentionLostTimeout = v3;
  self->_nonSampledAttentionLostTimeoutEnable = [(ITAttentionAwarenessSettings *)self->_settings nonSampledAttentionLostTimeoutEnable];
}

- (void)client:(id)a3 attentionLostTimeoutDidExpire:(id)a4 forContext:(id)a5
{
  v10 = a4;
  v7 = a5;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_recursive_lock_lock_with_options();
  v8 = [v7 isEqual:self->_access_context];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained idleTimer:self attentionLostTimeoutDidExpire:v10];
  }

  os_unfair_recursive_lock_unlock();
}

- (void)clientDidReset:(id)a3 forUserAttentionEvent:(id)a4 withContext:(id)a5
{
  v13 = a4;
  v7 = a5;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_recursive_lock_lock_with_options();
  v8 = [v7 isEqual:self->_access_context];

  if (v8)
  {
    [v13 timestamp];
    v10 = v9;
    v11 = [v13 eventMask];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained idleTimerDidReset:self forUserAttention:v11 at:v10];
  }

  os_unfair_recursive_lock_unlock();
}

- (ITAttentionAwarenessContext)_context
{
  os_unfair_recursive_lock_lock_with_options();
  v3 = self->_access_context;
  os_unfair_recursive_lock_unlock();

  return v3;
}

- (ITIdleTimerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDescriptor:resettingTimer:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setDescriptor:(void *)a3 resettingTimer:(double)a4 .cold.2(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v8;
  return [v8 handleFailureInMethod:a1 object:a2 file:@"ITAttentionAwareIdleTimer.m" lineNumber:103 description:{@"The sampling period: %g must be valid when face detection is enabled.", *&a4}];
}

- (void)setDescriptor:resettingTimer:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setDescriptor:(void *)a3 resettingTimer:.cold.4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;

  return [v6 handleFailureInMethod:a1 object:a2 file:@"ITAttentionAwareIdleTimer.m" lineNumber:106 description:{@"Face detection is not enabled, so the sampling delay must be zero."}];
}

- (void)_configurationWithIdentifier:descriptor:context:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_configurationWithIdentifier:(uint64_t)a3 descriptor:(uint64_t)a4 context:.cold.2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = [MEMORY[0x277CCA890] currentHandler];
  v8 = [a1 description];
  [v9 handleFailureInMethod:a2 object:a3 file:@"ITAttentionAwareIdleTimer.m" lineNumber:200 description:{@"timeouts: <%@> for descriptor: <%@> must have at least one timeout", a4, v8}];
}

@end
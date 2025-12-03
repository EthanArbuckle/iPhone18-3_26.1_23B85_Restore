@interface ITAttentionAwareIdleTimer
- (ITAttentionAwareIdleTimer)init;
- (ITAttentionAwareIdleTimer)initWithConfigurationIdentifier:(id)identifier delegate:(id)delegate;
- (ITAttentionAwareIdleTimer)initWithConfigurationIdentifier:(id)identifier delegate:(id)delegate calloutQueue:(id)queue;
- (ITAttentionAwarenessContext)_context;
- (ITIdleTimerDelegate)delegate;
- (ITIdleTimerDescriptor)descriptor;
- (id)_access_generateConfiguration;
- (id)_configurationWithIdentifier:(id)identifier descriptor:(id)descriptor context:(id)context;
- (id)_initWithConfigurationIdentifier:(id)identifier delegate:(id)delegate calloutQueue:(id)queue client:(id)client;
- (id)_timeoutDictionaryForTimeouts:(id)timeouts;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_prototypeSettingsChanged;
- (void)client:(id)client attentionLostTimeoutDidExpire:(id)expire forContext:(id)context;
- (void)clientDidReset:(id)reset forUserAttentionEvent:(id)event withContext:(id)context;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ITAttentionAwareIdleTimer.m" lineNumber:49 description:@"wrong initializer"];

  return 0;
}

- (ITAttentionAwareIdleTimer)initWithConfigurationIdentifier:(id)identifier delegate:(id)delegate
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v8 = BSDispatchQueueCreateWithQualityOfService();
  v9 = [(ITAttentionAwareIdleTimer *)self initWithConfigurationIdentifier:identifierCopy delegate:delegateCopy calloutQueue:v8];

  return v9;
}

- (ITAttentionAwareIdleTimer)initWithConfigurationIdentifier:(id)identifier delegate:(id)delegate calloutQueue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  identifierCopy = identifier;
  v11 = [[ITAttentionAwarenessClient alloc] initWithCalloutQueue:queueCopy];
  v12 = [(ITAttentionAwareIdleTimer *)self _initWithConfigurationIdentifier:identifierCopy delegate:delegateCopy calloutQueue:queueCopy client:v11];

  return v12;
}

- (id)_initWithConfigurationIdentifier:(id)identifier delegate:(id)delegate calloutQueue:(id)queue client:(id)client
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  clientCopy = client;
  v19.receiver = self;
  v19.super_class = ITAttentionAwareIdleTimer;
  v12 = [(ITAttentionAwareIdleTimer *)&v19 init];
  v13 = v12;
  if (v12)
  {
    v12->_accessLock = 0;
    v14 = [identifierCopy copy];
    configurationIdentifier = v13->_configurationIdentifier;
    v13->_configurationIdentifier = v14;

    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v13->_access_client, client);
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(ITAttentionAwareIdleTimer *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(ITAttentionAwareIdleTimer *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(ITAttentionAwareIdleTimer *)self succinctDescriptionBuilder];
  v5 = [succinctDescriptionBuilder appendObject:self->_access_descriptor withName:@"descriptor"];

  return succinctDescriptionBuilder;
}

- (id)_configurationWithIdentifier:(id)identifier descriptor:(id)descriptor context:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  descriptorCopy = descriptor;
  contextCopy = context;
  attentionMaintenanceEventMask = [descriptorCopy attentionMaintenanceEventMask];
  attentionRecoveryEventMask = [descriptorCopy attentionRecoveryEventMask];
  v14 = objc_alloc_init(MEMORY[0x277CEF768]);
  v38 = identifierCopy;
  [v14 setIdentifier:identifierCopy];
  [v14 setEventMask:attentionMaintenanceEventMask];
  if ((attentionMaintenanceEventMask & 0x80) == 0 && (attentionRecoveryEventMask & 0x80) != 0)
  {
    [ITAttentionAwareIdleTimer _configurationWithIdentifier:descriptor:context:];
  }

  else if (!attentionRecoveryEventMask)
  {
    goto LABEL_5;
  }

  [v14 setAttentionLostEventMask:attentionRecoveryEventMask];
LABEL_5:
  timeouts = [descriptorCopy timeouts];
  if (![timeouts count])
  {
    [(ITAttentionAwareIdleTimer *)timeouts _configurationWithIdentifier:a2 descriptor:self context:descriptorCopy];
  }

  if ((attentionMaintenanceEventMask & 0x80) != 0)
  {
    [descriptorCopy attentionSamplingPeriod];
    v17 = v16;
    [v14 setSamplingInterval:?];
    [descriptorCopy attentionSamplingStartDelay];
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

  v21 = [(ITAttentionAwareIdleTimer *)self _timeoutDictionaryForTimeouts:timeouts];
  [v14 setTag:contextCopy];
  [v14 setAttentionLostTimeoutDictionary:v21];
  allKeys = [v21 allKeys];
  firstObject = [allKeys firstObject];
  [firstObject doubleValue];
  v25 = v24;

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  allKeys2 = [v21 allKeys];
  v27 = [allKeys2 countByEnumeratingWithState:&v39 objects:v43 count:16];
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
          objc_enumerationMutation(allKeys2);
        }

        [*(*(&v39 + 1) + 8 * i) doubleValue];
        if (v31 >= v25)
        {
          v25 = v31;
        }
      }

      v28 = [allKeys2 countByEnumeratingWithState:&v39 objects:v43 count:16];
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

- (id)_timeoutDictionaryForTimeouts:(id)timeouts
{
  v21 = *MEMORY[0x277D85DE8];
  timeoutsCopy = timeouts;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = timeoutsCopy;
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

- (void)client:(id)client attentionLostTimeoutDidExpire:(id)expire forContext:(id)context
{
  expireCopy = expire;
  contextCopy = context;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_recursive_lock_lock_with_options();
  v8 = [contextCopy isEqual:self->_access_context];

  if (v8)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained idleTimer:self attentionLostTimeoutDidExpire:expireCopy];
  }

  os_unfair_recursive_lock_unlock();
}

- (void)clientDidReset:(id)reset forUserAttentionEvent:(id)event withContext:(id)context
{
  eventCopy = event;
  contextCopy = context;
  os_unfair_lock_assert_not_owner(&self->_accessLock);
  os_unfair_recursive_lock_lock_with_options();
  v8 = [contextCopy isEqual:self->_access_context];

  if (v8)
  {
    [eventCopy timestamp];
    v10 = v9;
    eventMask = [eventCopy eventMask];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained idleTimerDidReset:self forUserAttention:eventMask at:v10];
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
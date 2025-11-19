@interface ITIdleTimerDescriptor
- (double)attentionSamplingStartBeforeFirstTimeout;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)attentionSamplingStartBeforeFirstTimeout;
- (void)setAttentionSamplingStartBeforeFirstTimeout:(double)a3;
- (void)setAttentionSamplingStartDelay:(double)a3;
- (void)setTimeouts:(id)a3;
@end

@implementation ITIdleTimerDescriptor

- (void)setTimeouts:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![v4 count])
  {
    [ITIdleTimerDescriptor setTimeouts:];
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    v9 = 0.0;
    do
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v17 + 1) + 8 * v10) duration];
        v9 = v12;
        if (!BSFloatGreaterThanFloat() || BSFloatEqualToFloat())
        {
          [ITIdleTimerDescriptor setTimeouts:v9];
        }

        if ((BSFloatGreaterThanFloat() & 1) == 0)
        {
          [(ITIdleTimerDescriptor *)v11 setTimeouts:v9];
        }

        ++v10;
        v11 = v9;
      }

      while (v7 != v10);
      v13 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v7 = v13;
    }

    while (v13);
  }

  v14 = [v5 copy];
  timeouts = self->_timeouts;
  self->_timeouts = v14;

  v16 = *MEMORY[0x277D85DE8];
}

- (void)setAttentionSamplingStartDelay:(double)a3
{
  if ((BSFloatGreaterThanOrEqualToFloat() & 1) == 0)
  {
    [ITIdleTimerDescriptor setAttentionSamplingStartDelay:];
  }

  self->_attentionSamplingStartDelay = a3;
}

- (double)attentionSamplingStartBeforeFirstTimeout
{
  if (![(NSArray *)self->_timeouts count])
  {
    [ITIdleTimerDescriptor attentionSamplingStartBeforeFirstTimeout];
  }

  v3 = [(NSArray *)self->_timeouts firstObject];
  [v3 duration];
  v5 = v4;

  return v5 - self->_attentionSamplingStartDelay;
}

- (void)setAttentionSamplingStartBeforeFirstTimeout:(double)a3
{
  if (![(NSArray *)self->_timeouts count])
  {
    [ITIdleTimerDescriptor setAttentionSamplingStartBeforeFirstTimeout:];
  }

  v5 = [(NSArray *)self->_timeouts firstObject];
  [v5 duration];
  v7 = v6;

  v8 = v7 - a3;
  if (v7 - a3 < 0.0)
  {
    v8 = 0.0;
  }

  [(ITIdleTimerDescriptor *)self setAttentionSamplingStartDelay:v8];
}

- (id)succinctDescription
{
  v2 = [(ITIdleTimerDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUInt64:self->_attentionMaintenanceEventMask withName:@"attentionMaintenanceEventMask"];
  v5 = [v3 appendUInt64:self->_attentionRecoveryEventMask withName:@"attentionRecoveryEventMask"];
  [v3 itidletimerdescriptor_appendTimeInterval:@"attentionSamplingPeriod" withName:self->_attentionSamplingPeriod];
  [v3 itidletimerdescriptor_appendTimeInterval:@"attentionSamplingStartDelay" withName:self->_attentionSamplingStartDelay];
  [v3 appendArraySection:self->_timeouts withName:@"timeouts" skipIfEmpty:0];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(ITIdleTimerDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ITIdleTimerDescriptor allocWithZone:](ITIdleTimerDescriptor init];
  v5->_attentionMaintenanceEventMask = self->_attentionMaintenanceEventMask;
  v5->_attentionRecoveryEventMask = self->_attentionRecoveryEventMask;
  v5->_attentionSamplingPeriod = self->_attentionSamplingPeriod;
  v5->_attentionSamplingStartDelay = self->_attentionSamplingStartDelay;
  v6 = [(NSArray *)self->_timeouts copyWithZone:a3];
  timeouts = v5->_timeouts;
  v5->_timeouts = v6;

  return v5;
}

- (void)setTimeouts:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"ITIdleTimerDescriptor.m" lineNumber:38 description:{@"<%p> - timeouts must have at least one timeout.", v0}];
}

- (void)setTimeouts:(double)a1 .cold.2(double a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v3 handleFailureInMethod:*&a1 object:? file:? lineNumber:? description:?];
}

- (void)setTimeouts:(double)a1 .cold.3(double a1, double a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v5 handleFailureInMethod:*&a1 object:*&a2 file:? lineNumber:? description:?];
}

- (void)setAttentionSamplingStartDelay:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)attentionSamplingStartBeforeFirstTimeout
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *v0;
  v4 = v1;
  OUTLINED_FUNCTION_1();
  [v2 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (void)setAttentionSamplingStartBeforeFirstTimeout:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *v0;
  v4 = v1;
  OUTLINED_FUNCTION_1();
  [v2 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

@end
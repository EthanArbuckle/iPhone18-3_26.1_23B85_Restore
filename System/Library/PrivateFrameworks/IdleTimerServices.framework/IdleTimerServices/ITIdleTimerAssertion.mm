@interface ITIdleTimerAssertion
- (NSString)_uniqueReason;
- (id)_initWithConfiguration:(id)configuration forReason:(id)reason invalidationBlock:(id)block;
- (id)succinctDescriptionBuilder;
@end

@implementation ITIdleTimerAssertion

- (id)_initWithConfiguration:(id)configuration forReason:(id)reason invalidationBlock:(id)block
{
  configurationCopy = configuration;
  reasonCopy = reason;
  blockCopy = block;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3042000000;
  v23 = __Block_byref_object_copy_;
  v24 = __Block_byref_object_dispose_;
  v25 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__ITIdleTimerAssertion__initWithConfiguration_forReason_invalidationBlock___block_invoke;
  v17[3] = &unk_2797A5478;
  v19 = &v20;
  v11 = blockCopy;
  v18 = v11;
  v16.receiver = self;
  v16.super_class = ITIdleTimerAssertion;
  v12 = [(BSSimpleAssertion *)&v16 initWithIdentifier:@"IdleTimerConfiguration" forReason:reasonCopy invalidationBlock:v17];
  if (v12)
  {
    objc_storeWeak(v21 + 5, v12);
    v13 = [configurationCopy copy];
    configuration = v12->_configuration;
    v12->_configuration = v13;
  }

  _Block_object_dispose(&v20, 8);
  objc_destroyWeak(&v25);

  return v12;
}

uint64_t __75__ITIdleTimerAssertion__initWithConfiguration_forReason_invalidationBlock___block_invoke(uint64_t a1)
{
  if (objc_loadWeakRetained((*(*(a1 + 40) + 8) + 40)))
  {
    (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x2821F96F8]();
}

- (id)succinctDescriptionBuilder
{
  v8.receiver = self;
  v8.super_class = ITIdleTimerAssertion;
  succinctDescriptionBuilder = [(BSSimpleAssertion *)&v8 succinctDescriptionBuilder];
  _uniqueReason = [(ITIdleTimerAssertion *)self _uniqueReason];
  v5 = [succinctDescriptionBuilder appendObject:_uniqueReason withName:@"uniqueReason"];

  v6 = [succinctDescriptionBuilder appendObject:self->_configuration withName:@"configuration"];

  return succinctDescriptionBuilder;
}

- (NSString)_uniqueReason
{
  configuration = self->_configuration;
  reason = [(BSSimpleAssertion *)self reason];
  v4 = [(ITIdleTimerConfiguration *)configuration _uniquedReason:reason];

  return v4;
}

@end
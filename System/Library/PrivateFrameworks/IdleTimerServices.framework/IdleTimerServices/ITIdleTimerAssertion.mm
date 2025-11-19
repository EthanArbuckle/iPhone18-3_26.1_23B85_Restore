@interface ITIdleTimerAssertion
- (NSString)_uniqueReason;
- (id)_initWithConfiguration:(id)a3 forReason:(id)a4 invalidationBlock:(id)a5;
- (id)succinctDescriptionBuilder;
@end

@implementation ITIdleTimerAssertion

- (id)_initWithConfiguration:(id)a3 forReason:(id)a4 invalidationBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v11 = v10;
  v18 = v11;
  v16.receiver = self;
  v16.super_class = ITIdleTimerAssertion;
  v12 = [(BSSimpleAssertion *)&v16 initWithIdentifier:@"IdleTimerConfiguration" forReason:v9 invalidationBlock:v17];
  if (v12)
  {
    objc_storeWeak(v21 + 5, v12);
    v13 = [v8 copy];
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
  v3 = [(BSSimpleAssertion *)&v8 succinctDescriptionBuilder];
  v4 = [(ITIdleTimerAssertion *)self _uniqueReason];
  v5 = [v3 appendObject:v4 withName:@"uniqueReason"];

  v6 = [v3 appendObject:self->_configuration withName:@"configuration"];

  return v3;
}

- (NSString)_uniqueReason
{
  configuration = self->_configuration;
  v3 = [(BSSimpleAssertion *)self reason];
  v4 = [(ITIdleTimerConfiguration *)configuration _uniquedReason:v3];

  return v4;
}

@end
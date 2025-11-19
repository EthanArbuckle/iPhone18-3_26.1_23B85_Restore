@interface DMCPowerAssertion
- (DMCPowerAssertion)initWithReason:(id)a3;
- (void)dealloc;
- (void)park;
- (void)unpark;
@end

@implementation DMCPowerAssertion

- (DMCPowerAssertion)initWithReason:(id)a3
{
  v7.receiver = self;
  v7.super_class = DMCPowerAssertion;
  v3 = [(DMCProcessAssertion *)&v7 initWithReason:a3];
  v4 = v3;
  if (v3)
  {
    v3->_parked = 0;
    v5 = _assertionQueue();
    dispatch_sync(v5, &__block_literal_global_16);
  }

  return v4;
}

- (void)dealloc
{
  v3 = _assertionQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__DMCPowerAssertion_dealloc__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_sync(v3, block);

  v4.receiver = self;
  v4.super_class = DMCPowerAssertion;
  [(DMCProcessAssertion *)&v4 dealloc];
}

void __28__DMCPowerAssertion_dealloc__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 24) & 1) == 0)
  {
    _releasePowerAssertion();
  }
}

- (void)park
{
  v3 = _assertionQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__DMCPowerAssertion_park__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __25__DMCPowerAssertion_park__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (*(v3 + 24) == 1)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Trying to park a power assertion that's already parked." userInfo:{0, v1, v2}];
    objc_exception_throw(v4);
  }

  *(v3 + 24) = 1;

  _releasePowerAssertion();
}

- (void)unpark
{
  v3 = _assertionQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__DMCPowerAssertion_unpark__block_invoke;
  block[3] = &unk_1E7ADC760;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __27__DMCPowerAssertion_unpark__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if ((*(v3 + 24) & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Trying to unpark a power assertion that's not parked." userInfo:{0, v1, v2}];
    objc_exception_throw(v4);
  }

  *(v3 + 24) = 0;

  _retainPowerAssertion();
}

@end
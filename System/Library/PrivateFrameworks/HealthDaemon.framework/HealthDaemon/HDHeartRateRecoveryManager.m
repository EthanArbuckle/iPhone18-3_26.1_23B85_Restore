@interface HDHeartRateRecoveryManager
- (HDHeartRateRecoveryManager)init;
- (id)createAndTakeAssertionForOwnerIdentifier:(id)a3 sessionStateController:(id)a4;
- (void)assertionManager:(id)a3 assertionInvalidated:(id)a4;
- (void)assertionManager:(id)a3 assertionTaken:(id)a4;
- (void)dealloc;
@end

@implementation HDHeartRateRecoveryManager

- (HDHeartRateRecoveryManager)init
{
  v8.receiver = self;
  v8.super_class = HDHeartRateRecoveryManager;
  v2 = [(HDHeartRateRecoveryManager *)&v8 init];
  if (v2)
  {
    v3 = HKCreateSerialDispatchQueue();
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = objc_alloc_init(MEMORY[0x277D10AC0]);
    assertionManager = v2->_assertionManager;
    v2->_assertionManager = v5;

    [(HDAssertionManager *)v2->_assertionManager resumeBudgetConsumption];
    [(HDAssertionManager *)v2->_assertionManager addObserver:v2 forAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierHeartRateRecovery" queue:v2->_queue];
  }

  return v2;
}

- (void)dealloc
{
  [(HDPowerAssertion *)self->_powerAssertion invalidate];
  v3.receiver = self;
  v3.super_class = HDHeartRateRecoveryManager;
  [(HDHeartRateRecoveryManager *)&v3 dealloc];
}

- (id)createAndTakeAssertionForOwnerIdentifier:(id)a3 sessionStateController:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [_HDHeartRateRecoveryAssertion alloc];
  v9 = v6;
  if (v8)
  {
    v15.receiver = v8;
    v15.super_class = _HDHeartRateRecoveryAssertion;
    v10 = [(HDHeartRateRecoveryManager *)&v15 initWithAssertionIdentifier:@"HDWorkoutSessionAssertionIdentifierHeartRateRecovery" ownerIdentifier:v7];
    v8 = v10;
    if (v10)
    {
      objc_storeWeak(&v10[2]._powerAssertion, v9);
      v11 = *MEMORY[0x277CCE5C0];
      if (_HDIsUnitTesting)
      {
        v11 = 0.1;
      }

      [(HDAssertion *)v8 setBudget:v11];
    }
  }

  if ([(HDAssertionManager *)self->_assertionManager takeAssertion:v8])
  {
    v12 = v8;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  return v12;
}

- (void)assertionManager:(id)a3 assertionTaken:(id)a4
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_powerAssertion)
  {
    v5 = [HDPowerAssertion powerAssertionWithIdentifier:@"Workout Heart Rate Recovery" timeout:0 timeoutHandler:*MEMORY[0x277CCE5C0] + 60.0];
    powerAssertion = self->_powerAssertion;
    self->_powerAssertion = v5;

    MEMORY[0x2821F96F8](v5, powerAssertion);
  }
}

- (void)assertionManager:(id)a3 assertionInvalidated:(id)a4
{
  queue = self->_queue;
  v6 = a4;
  dispatch_assert_queue_V2(queue);
  if (v6)
  {
    WeakRetained = objc_loadWeakRetained(v6 + 11);
  }

  else
  {
    WeakRetained = 0;
  }

  [WeakRetained endHeartRateRecovery];
  if (self->_powerAssertion)
  {
    v8 = [(HDAssertionManager *)self->_assertionManager activeAssertionsForIdentifier:@"HDWorkoutSessionAssertionIdentifierHeartRateRecovery"];
    v9 = [v8 count];

    if (!v9)
    {
      [(HDPowerAssertion *)self->_powerAssertion invalidate];
      powerAssertion = self->_powerAssertion;
      self->_powerAssertion = 0;
    }
  }
}

@end
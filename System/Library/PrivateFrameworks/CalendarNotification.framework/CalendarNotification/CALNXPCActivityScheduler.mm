@interface CALNXPCActivityScheduler
- (CALNActivitySchedulerDelegate)delegate;
- (CALNXPCActivityScheduler)initWithActivityIdentifier:(id)identifier otherCriteria:(id)criteria;
- (void)scheduleWithTimeInterval:(int64_t)interval gracePeriod:(int64_t)period;
- (void)unschedule;
@end

@implementation CALNXPCActivityScheduler

- (CALNXPCActivityScheduler)initWithActivityIdentifier:(id)identifier otherCriteria:(id)criteria
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  v14.receiver = self;
  v14.super_class = CALNXPCActivityScheduler;
  v9 = [(CALNXPCActivityScheduler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityIdentifier, identifier);
    v11 = xpc_copy(criteriaCopy);
    otherCriteria = v10->_otherCriteria;
    v10->_otherCriteria = v11;
  }

  return v10;
}

- (void)unschedule
{
  uTF8String = [(NSString *)self->_activityIdentifier UTF8String];

  xpc_activity_unregister(uTF8String);
}

- (void)scheduleWithTimeInterval:(int64_t)interval gracePeriod:(int64_t)period
{
  v7 = self->_activityIdentifier;
  objc_initWeak(&location, self);
  v8 = xpc_copy(self->_otherCriteria);
  xpc_dictionary_set_int64(v8, *MEMORY[0x277D86250], interval);
  xpc_dictionary_set_int64(v8, *MEMORY[0x277D86270], period);
  uTF8String = [(NSString *)v7 UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __65__CALNXPCActivityScheduler_scheduleWithTimeInterval_gracePeriod___block_invoke;
  handler[3] = &unk_278D6F1B8;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  xpc_activity_register(uTF8String, v8, handler);

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __65__CALNXPCActivityScheduler_scheduleWithTimeInterval_gracePeriod___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];

  if (v3)
  {
    [v3 activityRun];
  }

  else
  {
    xpc_activity_unregister([*(a1 + 32) UTF8String]);
  }
}

- (CALNActivitySchedulerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
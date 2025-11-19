@interface CALNXPCActivityScheduler
- (CALNActivitySchedulerDelegate)delegate;
- (CALNXPCActivityScheduler)initWithActivityIdentifier:(id)a3 otherCriteria:(id)a4;
- (void)scheduleWithTimeInterval:(int64_t)a3 gracePeriod:(int64_t)a4;
- (void)unschedule;
@end

@implementation CALNXPCActivityScheduler

- (CALNXPCActivityScheduler)initWithActivityIdentifier:(id)a3 otherCriteria:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CALNXPCActivityScheduler;
  v9 = [(CALNXPCActivityScheduler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_activityIdentifier, a3);
    v11 = xpc_copy(v8);
    otherCriteria = v10->_otherCriteria;
    v10->_otherCriteria = v11;
  }

  return v10;
}

- (void)unschedule
{
  v2 = [(NSString *)self->_activityIdentifier UTF8String];

  xpc_activity_unregister(v2);
}

- (void)scheduleWithTimeInterval:(int64_t)a3 gracePeriod:(int64_t)a4
{
  v7 = self->_activityIdentifier;
  objc_initWeak(&location, self);
  v8 = xpc_copy(self->_otherCriteria);
  xpc_dictionary_set_int64(v8, *MEMORY[0x277D86250], a3);
  xpc_dictionary_set_int64(v8, *MEMORY[0x277D86270], a4);
  v9 = [(NSString *)v7 UTF8String];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __65__CALNXPCActivityScheduler_scheduleWithTimeInterval_gracePeriod___block_invoke;
  handler[3] = &unk_278D6F1B8;
  objc_copyWeak(&v13, &location);
  v10 = v7;
  v12 = v10;
  xpc_activity_register(v9, v8, handler);

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
@interface HFTimerTriggerTimeEventAdapter
+ (id)adapterWithEventBuilder:(id)a3;
- (HFTimerTriggerTimeEventAdapter)init;
- (HFTimerTriggerTimeEventAdapter)initWithEventBuilder:(id)a3;
- (id)createTriggerWithName:(id)a3 timeZone:(id)a4 recurrences:(id)a5;
- (id)updateTrigger:(id)a3;
- (void)updateTriggerBuilder:(id)a3 recurrences:(id)a4 inHome:(id)a5;
@end

@implementation HFTimerTriggerTimeEventAdapter

+ (id)adapterWithEventBuilder:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = HFTimerTriggerSignificantTimeEventAdapter;
LABEL_5:
    v5 = [[v4 alloc] initWithEventBuilder:v3];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = HFTimerTriggerCalendarEventAdapter;
    goto LABEL_5;
  }

  NSLog(&cfstr_UnexpectedEven_1.isa, v3);
  v5 = 0;
LABEL_7:

  return v5;
}

- (HFTimerTriggerTimeEventAdapter)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithEventBuilder_);
  [v4 handleFailureInMethod:a2 object:self file:@"HFTimerTriggerTimeEventAdapter.m" lineNumber:31 description:{@"%s is unavailable; use %@ instead", "-[HFTimerTriggerTimeEventAdapter init]", v5}];

  return 0;
}

- (HFTimerTriggerTimeEventAdapter)initWithEventBuilder:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFTimerTriggerTimeEventAdapter;
  v6 = [(HFTimerTriggerTimeEventAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventBuilder, a3);
  }

  return v7;
}

- (id)createTriggerWithName:(id)a3 timeZone:(id)a4 recurrences:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"HFTimerTriggerTimeEventAdapter.m" lineNumber:44 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFTimerTriggerTimeEventAdapter createTriggerWithName:timeZone:recurrences:]", objc_opt_class()}];

  v8 = MEMORY[0x277D2C900];
  v9 = [MEMORY[0x277CCA9B8] na_genericError];
  v10 = [v8 futureWithError:v9];

  return v10;
}

- (void)updateTriggerBuilder:(id)a3 recurrences:(id)a4 inHome:(id)a5
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"HFTimerTriggerTimeEventAdapter.m" lineNumber:50 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFTimerTriggerTimeEventAdapter updateTriggerBuilder:recurrences:inHome:]", objc_opt_class()}];
}

- (id)updateTrigger:(id)a3
{
  v5 = [MEMORY[0x277CCA890] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"HFTimerTriggerTimeEventAdapter.m" lineNumber:55 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFTimerTriggerTimeEventAdapter updateTrigger:]", objc_opt_class()}];

  v6 = MEMORY[0x277D2C900];
  v7 = [MEMORY[0x277CCA9B8] na_genericError];
  v8 = [v6 futureWithError:v7];

  return v8;
}

@end
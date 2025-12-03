@interface HFTimerTriggerTimeEventAdapter
+ (id)adapterWithEventBuilder:(id)builder;
- (HFTimerTriggerTimeEventAdapter)init;
- (HFTimerTriggerTimeEventAdapter)initWithEventBuilder:(id)builder;
- (id)createTriggerWithName:(id)name timeZone:(id)zone recurrences:(id)recurrences;
- (id)updateTrigger:(id)trigger;
- (void)updateTriggerBuilder:(id)builder recurrences:(id)recurrences inHome:(id)home;
@end

@implementation HFTimerTriggerTimeEventAdapter

+ (id)adapterWithEventBuilder:(id)builder
{
  builderCopy = builder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = HFTimerTriggerSignificantTimeEventAdapter;
LABEL_5:
    v5 = [[v4 alloc] initWithEventBuilder:builderCopy];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = HFTimerTriggerCalendarEventAdapter;
    goto LABEL_5;
  }

  NSLog(&cfstr_UnexpectedEven_1.isa, builderCopy);
  v5 = 0;
LABEL_7:

  return v5;
}

- (HFTimerTriggerTimeEventAdapter)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithEventBuilder_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFTimerTriggerTimeEventAdapter.m" lineNumber:31 description:{@"%s is unavailable; use %@ instead", "-[HFTimerTriggerTimeEventAdapter init]", v5}];

  return 0;
}

- (HFTimerTriggerTimeEventAdapter)initWithEventBuilder:(id)builder
{
  builderCopy = builder;
  v9.receiver = self;
  v9.super_class = HFTimerTriggerTimeEventAdapter;
  v6 = [(HFTimerTriggerTimeEventAdapter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_eventBuilder, builder);
  }

  return v7;
}

- (id)createTriggerWithName:(id)name timeZone:(id)zone recurrences:(id)recurrences
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFTimerTriggerTimeEventAdapter.m" lineNumber:44 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFTimerTriggerTimeEventAdapter createTriggerWithName:timeZone:recurrences:]", objc_opt_class()}];

  v8 = MEMORY[0x277D2C900];
  na_genericError = [MEMORY[0x277CCA9B8] na_genericError];
  v10 = [v8 futureWithError:na_genericError];

  return v10;
}

- (void)updateTriggerBuilder:(id)builder recurrences:(id)recurrences inHome:(id)home
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFTimerTriggerTimeEventAdapter.m" lineNumber:50 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFTimerTriggerTimeEventAdapter updateTriggerBuilder:recurrences:inHome:]", objc_opt_class()}];
}

- (id)updateTrigger:(id)trigger
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFTimerTriggerTimeEventAdapter.m" lineNumber:55 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFTimerTriggerTimeEventAdapter updateTrigger:]", objc_opt_class()}];

  v6 = MEMORY[0x277D2C900];
  na_genericError = [MEMORY[0x277CCA9B8] na_genericError];
  v8 = [v6 futureWithError:na_genericError];

  return v8;
}

@end
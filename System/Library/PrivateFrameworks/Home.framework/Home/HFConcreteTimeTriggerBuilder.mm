@interface HFConcreteTimeTriggerBuilder
+ (id)builderForExistingTrigger:(id)trigger inHome:(id)home context:(id)context;
@end

@implementation HFConcreteTimeTriggerBuilder

+ (id)builderForExistingTrigger:(id)trigger inHome:(id)home context:(id)context
{
  triggerCopy = trigger;
  homeCopy = home;
  contextCopy = context;
  objc_opt_class();
  v10 = triggerCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v12)
  {
    v13 = [[HFTimerBasedTimeTriggerBuilder alloc] initWithExistingObject:v12 inHome:homeCopy context:contextCopy];
  }

  else
  {
    objc_opt_class();
    v14 = v10;
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v13 = [[HFEventTriggerBuilder alloc] initWithExistingObject:v16 inHome:homeCopy context:contextCopy];
    }

    else
    {
      NSLog(&cfstr_UnknownOrNilTr.isa, v14);
      v13 = 0;
    }
  }

  return v13;
}

@end
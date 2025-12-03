@interface HMTrigger(AutomationBuilders)
+ (id)hf_newTriggerWithBuilder:()AutomationBuilders inHome:;
- (id)hf_updateWithBuilder:()AutomationBuilders;
@end

@implementation HMTrigger(AutomationBuilders)

- (id)hf_updateWithBuilder:()AutomationBuilders
{
  NSLog(&cfstr_AttemptedToUse.isa);
  v0 = MEMORY[0x277D2C900];
  v1 = [MEMORY[0x277CCA9B8] hf_errorWithCode:36];
  v2 = [v0 futureWithError:v1];

  return v2;
}

+ (id)hf_newTriggerWithBuilder:()AutomationBuilders inHome:
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x277CD1EB0];
LABEL_5:
    v10 = [v9 hf_newTriggerWithBuilder:v7 inHome:v8];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x277CD1A00];
    goto LABEL_5;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"HMTrigger+AutomationBuilders.m" lineNumber:35 description:{@"Unknown trigger builder type: %@", v7}];

  v10 = 0;
LABEL_7:

  return v10;
}

@end
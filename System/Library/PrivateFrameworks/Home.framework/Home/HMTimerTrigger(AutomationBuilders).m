@interface HMTimerTrigger(AutomationBuilders)
+ (id)hf_newTriggerWithBuilder:()AutomationBuilders inHome:;
@end

@implementation HMTimerTrigger(AutomationBuilders)

+ (id)hf_newTriggerWithBuilder:()AutomationBuilders inHome:
{
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  v9 = v7;
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  if (v11)
  {
    v12 = MEMORY[0x277D2C900];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__HMTimerTrigger_AutomationBuilders__hf_newTriggerWithBuilder_inHome___block_invoke;
    v18[3] = &unk_277DF61F0;
    v19 = v8;
    v20 = v11;
    v13 = [v12 futureWithCompletionHandlerAdapterBlock:v18];
  }

  else
  {
    v14 = NSStringFromSelector(a2);
    NSLog(&cfstr_WasPassedABuil.isa, a1, v14, v9);

    v15 = MEMORY[0x277D2C900];
    v16 = [MEMORY[0x277CCA9B8] hf_errorWithCode:33];
    v13 = [v15 futureWithError:v16];
  }

  return v13;
}

@end
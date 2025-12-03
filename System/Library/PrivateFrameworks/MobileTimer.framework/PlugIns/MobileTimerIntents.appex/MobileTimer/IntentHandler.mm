@interface IntentHandler
- (IntentHandler)init;
- (id)handlerForIntent:(id)intent;
@end

@implementation IntentHandler

- (IntentHandler)init
{
  v6.receiver = self;
  v6.super_class = IntentHandler;
  v2 = [(IntentHandler *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    alarmManager = v2->_alarmManager;
    v2->_alarmManager = v3;
  }

  return v2;
}

- (id)handlerForIntent:(id)intent
{
  intentCopy = intent;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MTCreateAlarmIntentHandler;
LABEL_9:
    v6 = [v5 alloc];
    alarmManager = [(IntentHandler *)self alarmManager];
    v8 = [v6 initWithAlarmManager:alarmManager];

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MTUpdateAlarmIntentHandler;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = MTToggleAlarmIntentHandler;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = MTGetAlarmsIntentHandler;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = ClocksIntentHandler;
LABEL_21:
    v8 = objc_alloc_init(v10);
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = ClocksSingleIntentHandler;
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MTCreateTimerIntentHandler;
    goto LABEL_21;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

@end
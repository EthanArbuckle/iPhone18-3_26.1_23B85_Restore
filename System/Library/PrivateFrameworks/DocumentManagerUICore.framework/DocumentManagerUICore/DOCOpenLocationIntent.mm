@interface DOCOpenLocationIntent
+ (id)intentFromActivity:(id)activity;
+ (id)intentFromGenericIntent:(id)intent;
@end

@implementation DOCOpenLocationIntent

+ (id)intentFromActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if ([activityType isEqualToString:v6])
  {
    interaction = [activityCopy interaction];
    intent = [interaction intent];
    v9 = INTypedIntentWithIntent();

    if (v9)
    {
      goto LABEL_8;
    }

    v10 = MEMORY[0x277D062B8];
    v11 = *MEMORY[0x277D062B8];
    if (!*MEMORY[0x277D062B8])
    {
      DOCInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(DOCOpenLocationIntent(DOCOpenLocationIntentExtensions) *)activityCopy intentFromActivity:v11];
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

+ (id)intentFromGenericIntent:(id)intent
{
  intentCopy = intent;
  v4 = INTypedIntentWithIntent();
  if (!v4)
  {
    v5 = MEMORY[0x277D062B8];
    v6 = *MEMORY[0x277D062B8];
    if (!*MEMORY[0x277D062B8])
    {
      DOCInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(DOCOpenLocationIntent(DOCOpenLocationIntentExtensions) *)intentCopy intentFromGenericIntent:v6];
    }
  }

  return v4;
}

@end
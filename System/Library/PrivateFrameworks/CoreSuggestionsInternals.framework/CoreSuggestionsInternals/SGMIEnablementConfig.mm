@interface SGMIEnablementConfig
+ (BOOL)detectSalientMails;
+ (BOOL)logWarningSignatureStats;
@end

@implementation SGMIEnablementConfig

+ (BOOL)logWarningSignatureStats
{
  v2 = +[SGMITrialClientWrapper sharedInstance];
  v3 = [v2 signatureStatsLogging];
  v4 = [v3 BOOLValue];

  return v4;
}

+ (BOOL)detectSalientMails
{
  v2 = [MEMORY[0x277D02098] detectSalientMails];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v5 = +[SGMITrialClientWrapper sharedInstance];
    v6 = [v5 isEnabled];
    v7 = [v5 isDNUOnlyEnablement];
    v8 = v7;
    if (v6)
    {
      v9 = v7 == 0;
      v10 = [v6 BOOLValue];
      v4 = v9 & v10;
      if (v8 && (v10 & 1) != 0)
      {
        if ([v8 BOOLValue])
        {
          v4 = [MEMORY[0x277D42590] isDNUEnabled];
        }

        else
        {
          v4 = 1;
        }
      }
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end
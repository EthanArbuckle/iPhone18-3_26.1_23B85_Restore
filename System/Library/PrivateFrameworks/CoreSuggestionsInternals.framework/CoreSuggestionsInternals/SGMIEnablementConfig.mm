@interface SGMIEnablementConfig
+ (BOOL)detectSalientMails;
+ (BOOL)logWarningSignatureStats;
@end

@implementation SGMIEnablementConfig

+ (BOOL)logWarningSignatureStats
{
  v2 = +[SGMITrialClientWrapper sharedInstance];
  signatureStatsLogging = [v2 signatureStatsLogging];
  bOOLValue = [signatureStatsLogging BOOLValue];

  return bOOLValue;
}

+ (BOOL)detectSalientMails
{
  detectSalientMails = [MEMORY[0x277D02098] detectSalientMails];
  v3 = detectSalientMails;
  if (detectSalientMails)
  {
    bOOLValue = [detectSalientMails BOOLValue];
  }

  else
  {
    v5 = +[SGMITrialClientWrapper sharedInstance];
    isEnabled = [v5 isEnabled];
    isDNUOnlyEnablement = [v5 isDNUOnlyEnablement];
    v8 = isDNUOnlyEnablement;
    if (isEnabled)
    {
      v9 = isDNUOnlyEnablement == 0;
      bOOLValue2 = [isEnabled BOOLValue];
      bOOLValue = v9 & bOOLValue2;
      if (v8 && (bOOLValue2 & 1) != 0)
      {
        if ([v8 BOOLValue])
        {
          bOOLValue = [MEMORY[0x277D42590] isDNUEnabled];
        }

        else
        {
          bOOLValue = 1;
        }
      }
    }

    else
    {
      bOOLValue = 0;
    }
  }

  return bOOLValue;
}

@end
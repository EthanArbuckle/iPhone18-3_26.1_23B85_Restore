@interface MRDataCollectionNotice
+ (BOOL)shouldShowDataCollectionNoticeForComponent:(unint64_t)component;
+ (void)didShowDataCollectionNoticeForComponent:(unint64_t)component;
@end

@implementation MRDataCollectionNotice

+ (BOOL)shouldShowDataCollectionNoticeForComponent:(unint64_t)component
{
  v4 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
  v5 = v4;
  if (component)
  {
    if (component == 10)
    {
      v6 = @"dataCollectionNoticePresentedForPartsAndService";
    }

    else
    {
      if (component != 1)
      {
        LOBYTE(v7) = 0;
        goto LABEL_9;
      }

      v6 = @"dataCollectionNoticePresentedForDisplay";
    }
  }

  else
  {
    v6 = @"dataCollectionNoticePresentedForBattery";
  }

  v7 = [v4 BOOLForKey:v6] ^ 1;
LABEL_9:

  return v7;
}

+ (void)didShowDataCollectionNoticeForComponent:(unint64_t)component
{
  v4 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
  if (component)
  {
    if (component == 10)
    {
      v5 = @"dataCollectionNoticePresentedForPartsAndService";
    }

    else
    {
      if (component != 1)
      {
        goto LABEL_8;
      }

      v5 = @"dataCollectionNoticePresentedForDisplay";
    }
  }

  else
  {
    v5 = @"dataCollectionNoticePresentedForBattery";
  }

  v6 = v4;
  [v4 setBool:1 forKey:v5];
  [v6 synchronize];
  v4 = v6;
LABEL_8:
}

@end
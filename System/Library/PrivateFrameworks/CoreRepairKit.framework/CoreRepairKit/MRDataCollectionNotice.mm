@interface MRDataCollectionNotice
+ (BOOL)shouldShowDataCollectionNoticeForComponent:(unint64_t)a3;
+ (void)didShowDataCollectionNoticeForComponent:(unint64_t)a3;
@end

@implementation MRDataCollectionNotice

+ (BOOL)shouldShowDataCollectionNoticeForComponent:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
  v5 = v4;
  if (a3)
  {
    if (a3 == 10)
    {
      v6 = @"dataCollectionNoticePresentedForPartsAndService";
    }

    else
    {
      if (a3 != 1)
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

+ (void)didShowDataCollectionNoticeForComponent:(unint64_t)a3
{
  v4 = [MEMORY[0x277CBEBD0] groupUserDefaultsWithSuiteName:@"com.apple.mobilerepaird"];
  if (a3)
  {
    if (a3 == 10)
    {
      v5 = @"dataCollectionNoticePresentedForPartsAndService";
    }

    else
    {
      if (a3 != 1)
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
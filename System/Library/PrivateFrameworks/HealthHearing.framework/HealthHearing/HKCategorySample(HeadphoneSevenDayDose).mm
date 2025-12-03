@interface HKCategorySample(HeadphoneSevenDayDose)
- (BOOL)hk_isHearingSevenDayDoseNotification;
- (id)hk_hearingSevenDayDosePercentageWithError:()HeadphoneSevenDayDose;
@end

@implementation HKCategorySample(HeadphoneSevenDayDose)

- (BOOL)hk_isHearingSevenDayDoseNotification
{
  categoryType = [self categoryType];
  v3 = [categoryType code] == 199 && objc_msgSend(self, "value") == 1;

  return v3;
}

- (id)hk_hearingSevenDayDosePercentageWithError:()HeadphoneSevenDayDose
{
  categoryType = [self categoryType];
  code = [categoryType code];

  if (code != 199)
  {
    v12 = MEMORY[0x277CCA9B8];
    categoryType2 = [self categoryType];
    [v12 hk_assignError:a3 code:3 format:{@"Unexpected data type code: %ld", objc_msgSend(categoryType2, "code")}];

LABEL_8:
    v11 = 0;
    goto LABEL_13;
  }

  if ([self value] != 1)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:{@"Unexpected value: %ld", objc_msgSend(self, "value")}];
    goto LABEL_8;
  }

  metadata = [self metadata];
  v8 = [metadata hk_safeValueForKeyPath:*MEMORY[0x277CCC458] class:objc_opt_class() error:a3];

  if (v8)
  {
    metadata2 = [self metadata];
    v10 = [metadata2 hk_safeValueForKeyPath:*MEMORY[0x277CCC450] class:objc_opt_class() error:a3];

    if (v10)
    {
      v11 = [MEMORY[0x277CCD028] _sevenDayDoseWithExposureAverageQuantity:v8 duration:v10 error:a3];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_13:

  return v11;
}

@end
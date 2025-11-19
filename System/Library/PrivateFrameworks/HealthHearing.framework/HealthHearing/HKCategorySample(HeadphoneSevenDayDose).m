@interface HKCategorySample(HeadphoneSevenDayDose)
- (BOOL)hk_isHearingSevenDayDoseNotification;
- (id)hk_hearingSevenDayDosePercentageWithError:()HeadphoneSevenDayDose;
@end

@implementation HKCategorySample(HeadphoneSevenDayDose)

- (BOOL)hk_isHearingSevenDayDoseNotification
{
  v2 = [a1 categoryType];
  v3 = [v2 code] == 199 && objc_msgSend(a1, "value") == 1;

  return v3;
}

- (id)hk_hearingSevenDayDosePercentageWithError:()HeadphoneSevenDayDose
{
  v5 = [a1 categoryType];
  v6 = [v5 code];

  if (v6 != 199)
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = [a1 categoryType];
    [v12 hk_assignError:a3 code:3 format:{@"Unexpected data type code: %ld", objc_msgSend(v13, "code")}];

LABEL_8:
    v11 = 0;
    goto LABEL_13;
  }

  if ([a1 value] != 1)
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a3 code:3 format:{@"Unexpected value: %ld", objc_msgSend(a1, "value")}];
    goto LABEL_8;
  }

  v7 = [a1 metadata];
  v8 = [v7 hk_safeValueForKeyPath:*MEMORY[0x277CCC458] class:objc_opt_class() error:a3];

  if (v8)
  {
    v9 = [a1 metadata];
    v10 = [v9 hk_safeValueForKeyPath:*MEMORY[0x277CCC450] class:objc_opt_class() error:a3];

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
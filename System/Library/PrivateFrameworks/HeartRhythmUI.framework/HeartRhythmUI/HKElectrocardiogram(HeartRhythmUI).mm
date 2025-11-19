@interface HKElectrocardiogram(HeartRhythmUI)
- (id)hrui_classificationShortBodyTextWithActiveAlgorithmVersion:()HeartRhythmUI isSharedData:;
@end

@implementation HKElectrocardiogram(HeartRhythmUI)

- (id)hrui_classificationShortBodyTextWithActiveAlgorithmVersion:()HeartRhythmUI isSharedData:
{
  v6 = [a1 privateClassification];
  if (v6 <= 4)
  {
    if (v6 <= 1)
    {
      if (v6 != 1)
      {
LABEL_24:
        v8 = @"ATRIAL_FIBRILLATION_CLASSIFICATION_SHORT_BODY_UNKNOWN";
        goto LABEL_25;
      }

      if (a3 == 2)
      {
        v8 = @"ATRIAL_FIBRILLATION_V2_CLASSIFICATION_SHORT_BODY_INCONCLUSIVE_POOR_RECORDING";
        goto LABEL_25;
      }

      if (a3 == 1)
      {
        v8 = @"ATRIAL_FIBRILLATION_CLASSIFICATION_SHORT_BODY_INCONCLUSIVE_POOR_READING";
        goto LABEL_25;
      }
    }

    else if (v6 != 2)
    {
      if (v6 != 3)
      {
        goto LABEL_18;
      }

      v8 = @"ATRIAL_FIBRILLATION_CLASSIFICATION_SHORT_BODY_SINUS_RHYTHM_HEART_RATE_50_TO_100";
LABEL_25:
      v9 = HRUIECGLocalizedString(v8);
      goto LABEL_31;
    }

    v7 = @"ATRIAL_FIBRILLATION_CLASSIFICATION_SHORT_BODY_INCONCLUSIVE_OTHER";
    goto LABEL_30;
  }

  if (v6 > 7)
  {
    if (v6 != 8)
    {
      if (v6 == 9)
      {
        v7 = @"ATRIAL_FIBRILLATION_V2_CLASSIFICATION_SHORT_BODY_ATRIAL_FIBRILLATION_HEART_RATE_100_TO_150";
        goto LABEL_30;
      }

      if (v6 == 10)
      {
        v7 = @"ATRIAL_FIBRILLATION_V2_CLASSIFICATION_SHORT_BODY_HEART_RATE_ABOVE_150";
        goto LABEL_30;
      }

      goto LABEL_24;
    }

LABEL_18:
    v7 = @"ATRIAL_FIBRILLATION_CLASSIFICATION_SHORT_BODY_ATRIAL_FIBRILLATION_HEART_RATE_50_TO_120";
    goto LABEL_30;
  }

  if (v6 == 5)
  {
    v7 = @"ATRIAL_FIBRILLATION_CLASSIFICATION_SHORT_BODY_HEART_RATE_ABOVE_120";
    goto LABEL_30;
  }

  if (v6 == 6)
  {
    if (a3 == 2)
    {
      v7 = @"ATRIAL_FIBRILLATION_V2_CLASSIFICATION_SHORT_BODY_HEART_RATE_BELOW_50";
      goto LABEL_30;
    }

    if (a3 == 1)
    {
      v7 = @"ATRIAL_FIBRILLATION_CLASSIFICATION_SHORT_BODY_HEART_RATE_BELOW_50";
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  v7 = @"ATRIAL_FIBRILLATION_V2_CLASSIFICATION_SHORT_BODY_SINUS_TACHYCARDIA_HEART_RATE_100_TO_150";
LABEL_30:
  v10 = [(__CFString *)v7 hrui_appendForSharing:a4];
  v9 = HRUIECGLocalizedString(v10);

LABEL_31:

  return v9;
}

@end
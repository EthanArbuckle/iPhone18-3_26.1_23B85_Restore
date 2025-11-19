@interface HRElectrocardiogramResultViewItem
+ (id)_makeItemForAtrialFibrillationAlgorithmVersionOne;
+ (id)_makeItemForAtrialFibrillationAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)a3;
+ (id)_makeItemForHighOrLowAbove120Below50AlgorithmVersionOne;
+ (id)_makeItemForHighOrLowAbove150Below50AlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)a3;
+ (id)_makeItemForInconclusiveAlgorithmVersionOneWithLearnMoreDelegate:(id)a3;
+ (id)_makeItemForInconclusiveAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)a3 withLearnMoreDelegate:(id)a4;
+ (id)_makeItemForPoorRecordingAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)a3 withLearnMoreDelegate:(id)a4;
+ (id)_makeItemForSinusRhythmAlgorithmVersionOne;
+ (id)viewItemWithClassification:(unint64_t)a3 sampleAlgorithmVersion:(id)a4 forAlgorithmVersion:(int64_t)a5 upgradingFromAlgorithmVersion:(int64_t)a6 learnMoreDelegate:(id)a7;
- (HRElectrocardiogramResultViewItem)initWithBadge:(id)a3 title:(id)a4 numberedTitle:(id)a5 visibleBodyText:(id)a6 videoPath:(id)a7 expandedContentItems:(id)a8;
@end

@implementation HRElectrocardiogramResultViewItem

+ (id)viewItemWithClassification:(unint64_t)a3 sampleAlgorithmVersion:(id)a4 forAlgorithmVersion:(int64_t)a5 upgradingFromAlgorithmVersion:(int64_t)a6 learnMoreDelegate:(id)a7
{
  v25 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a7;
  _HKInitializeLogging();
  v14 = MEMORY[0x277CCC2D8];
  v15 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v21 = 67175683;
    *v22 = a3;
    *&v22[4] = 1026;
    *&v22[6] = [v12 intValue];
    LOWORD(v23) = 1026;
    *(&v23 + 2) = a5;
    HIWORD(v23) = 1026;
    v24[0] = a6;
    LOWORD(v24[1]) = 2114;
    *(&v24[1] + 2) = v13;
    _os_log_impl(&dword_2521E7000, v16, OS_LOG_TYPE_DEFAULT, "Generate result view item for classification: %{private}i sampleAlgVersion: %{public}i forAlgorithmVersion: %{public}i fromAlgorithmVersion: %{public}i delegate: %{public}@", &v21, 0x24u);
  }

  if (a3 > 5)
  {
    if (a3 <= 7)
    {
      if (a3 == 6)
      {
        if (a5 != 2)
        {
          if (a5 != 1)
          {
            goto LABEL_38;
          }

          goto LABEL_29;
        }

        if (v12 && [v12 integerValue] == 1)
        {
          goto LABEL_29;
        }

LABEL_26:
        v17 = [a1 _makeItemForHighOrLowAbove150Below50AlgorithmVersionTwoUpgradingFromAlgorithmVersion:a6];
        goto LABEL_45;
      }
    }

    else
    {
      if (a3 - 8 < 2)
      {
        if (a5 != 1)
        {
          if (a5 == 2)
          {
            v17 = [a1 _makeItemForAtrialFibrillationAlgorithmVersionTwoUpgradingFromAlgorithmVersion:a6];
            goto LABEL_45;
          }

          goto LABEL_38;
        }

LABEL_40:
        v19 = 0;
        goto LABEL_46;
      }

      if (a3 != 10)
      {
        goto LABEL_38;
      }
    }

    if (a5 == 1)
    {
      goto LABEL_40;
    }

    if (a5 != 2)
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if ((a5 - 1) <= 1)
      {
        v17 = [a1 _makeItemForSinusRhythmAlgorithmVersionOne];
        goto LABEL_45;
      }

      goto LABEL_38;
    }

    if (a3 == 4)
    {
      if (a5 == 2 || a5 == 1)
      {
        v17 = [a1 _makeItemForAtrialFibrillationAlgorithmVersionOne];
        goto LABEL_45;
      }

      goto LABEL_38;
    }

    if ((a5 - 1) > 1)
    {
LABEL_38:
      _HKInitializeLogging();
      v18 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
      {
        v21 = 134218496;
        *v22 = a5;
        *&v22[8] = 2048;
        v23 = a6;
        LOWORD(v24[0]) = 2048;
        *(v24 + 2) = a3;
        _os_log_impl(&dword_2521E7000, v18, OS_LOG_TYPE_INFO, "Failed to create a result view item. For algorithm version: %li, updating from algoritm version: %li classification: %lu", &v21, 0x20u);
      }

      goto LABEL_40;
    }

LABEL_29:
    v17 = [a1 _makeItemForHighOrLowAbove120Below50AlgorithmVersionOne];
    goto LABEL_45;
  }

  if (!a3)
  {
    goto LABEL_40;
  }

  if (a3 == 1)
  {
    if (a5 == 2)
    {
      v17 = [a1 _makeItemForPoorRecordingAlgorithmVersionTwoUpgradingFromAlgorithmVersion:a6 withLearnMoreDelegate:v13];
      goto LABEL_45;
    }

LABEL_31:
    if (a5 == 1)
    {
LABEL_32:
      v17 = [a1 _makeItemForInconclusiveAlgorithmVersionOneWithLearnMoreDelegate:v13];
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  if (a3 != 2)
  {
    goto LABEL_38;
  }

  if (a5 != 2)
  {
    goto LABEL_31;
  }

  if (v12 && [v12 integerValue] == 1)
  {
    goto LABEL_32;
  }

  v17 = [a1 _makeItemForInconclusiveAlgorithmVersionTwoUpgradingFromAlgorithmVersion:a6 withLearnMoreDelegate:v13];
LABEL_45:
  v19 = v17;
LABEL_46:

  return v19;
}

- (HRElectrocardiogramResultViewItem)initWithBadge:(id)a3 title:(id)a4 numberedTitle:(id)a5 visibleBodyText:(id)a6 videoPath:(id)a7 expandedContentItems:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = HRElectrocardiogramResultViewItem;
  v18 = [(HRElectrocardiogramResultViewItem *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_badge, a3);
    objc_storeStrong(&v19->_title, a4);
    objc_storeStrong(&v19->_numberedTitle, a5);
    objc_storeStrong(&v19->_visibleBodyText, a6);
    objc_storeStrong(&v19->_videoPath, a7);
    objc_storeStrong(&v19->_expandedContentItems, a8);
  }

  return v19;
}

+ (id)_makeItemForAtrialFibrillationAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)a3
{
  v3 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_TITLE");
  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_NUMBERED_TITLE");
  v5 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_VISIBLE_BODY");
  v6 = [MEMORY[0x277CCACA8] hrui_atrialFibrillationVideoPath];
  v7 = [HRExpandedContentItem atrialFibrillationItemsForAlgorithmVersion:2];
  v8 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:0 title:v3 numberedTitle:v4 visibleBodyText:v5 videoPath:v6 expandedContentItems:v7];

  return v8;
}

+ (id)_makeItemForHighOrLowAbove150Below50AlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    v4 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_UPDATED_BADGE");
  }

  else
  {
    v4 = 0;
  }

  v5 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_3_TITLE");
  v6 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_3_TITLE");
  v7 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_3_VISIBLE_BODY");
  v8 = [MEMORY[0x277CCACA8] hrui_highOrLowHeartRateVideoPath];
  v9 = [HRExpandedContentItem highOrLowAbove150Below50HeartRateItemsForAlgorithmVersion:2 upgradingFromAlgorithmVersion:a3];
  v10 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:v4 title:v5 numberedTitle:v6 visibleBodyText:v7 videoPath:v8 expandedContentItems:v9];

  return v10;
}

+ (id)_makeItemForInconclusiveAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)a3 withLearnMoreDelegate:(id)a4
{
  v5 = a4;
  if (a3 == 1)
  {
    v6 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_UPDATED_BADGE");
  }

  else
  {
    v6 = 0;
  }

  v7 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_4_TITLE");
  v8 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_4_TITLE");
  v9 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_4_VISIBLE_BODY");
  v10 = [MEMORY[0x277CCACA8] hrui_inconclusiveVideoPath];
  v11 = [HRExpandedContentItem inconclusiveItemsForAlgorithmVersion:2 upgradingFromAlgorithmVersion:a3 learnMoreDelegate:v5];
  v12 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:v6 title:v7 numberedTitle:v8 visibleBodyText:v9 videoPath:v10 expandedContentItems:v11];

  return v12;
}

+ (id)_makeItemForPoorRecordingAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)a3 withLearnMoreDelegate:(id)a4
{
  v5 = a4;
  if (a3 == 1)
  {
    v6 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_NEW_BADGE");
  }

  else
  {
    v6 = 0;
  }

  v7 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_5_TITLE");
  v8 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_5_TITLE");
  v9 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_5_VISIBLE_BODY");
  v10 = [HRExpandedContentItem poorRecordingItemsForAlgorithmVersion:2 learnMoreDelegate:v5];
  v11 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:v6 title:v7 numberedTitle:v8 visibleBodyText:v9 videoPath:0 expandedContentItems:v10];

  return v11;
}

+ (id)_makeItemForSinusRhythmAlgorithmVersionOne
{
  v2 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_1_TITLE");
  v3 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_1_NUMBERED_TITLE");
  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_1_VISIBLE_BODY");
  v5 = [MEMORY[0x277CCACA8] hrui_sinusRhythmVideoPath];
  v6 = [HRExpandedContentItem sinusRhythmItemsForAlgorithmVersion:1];
  v7 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:0 title:v2 numberedTitle:v3 visibleBodyText:v4 videoPath:v5 expandedContentItems:v6];

  return v7;
}

+ (id)_makeItemForAtrialFibrillationAlgorithmVersionOne
{
  v2 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_TITLE");
  v3 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_NUMBERED_TITLE");
  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_VISIBLE_BODY");
  v5 = [MEMORY[0x277CCACA8] hrui_atrialFibrillationVideoPath];
  v6 = [HRExpandedContentItem atrialFibrillationItemsForAlgorithmVersion:1];
  v7 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:0 title:v2 numberedTitle:v3 visibleBodyText:v4 videoPath:v5 expandedContentItems:v6];

  return v7;
}

+ (id)_makeItemForHighOrLowAbove120Below50AlgorithmVersionOne
{
  v2 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_3_TITLE");
  v3 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_3_NUMBERED_TITLE");
  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_3_VISIBLE_BODY");
  v5 = [MEMORY[0x277CCACA8] hrui_highOrLowHeartRateVideoPath];
  v6 = [HRExpandedContentItem highOrLowAbove120Below50HeartRateItemsForAlgorithmVersion:1];
  v7 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:0 title:v2 numberedTitle:v3 visibleBodyText:v4 videoPath:v5 expandedContentItems:v6];

  return v7;
}

+ (id)_makeItemForInconclusiveAlgorithmVersionOneWithLearnMoreDelegate:(id)a3
{
  v3 = a3;
  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_TITLE");
  v5 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_TITLE");
  v6 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_VISIBLE_BODY");
  v7 = [MEMORY[0x277CCACA8] hrui_inconclusiveVideoPath];
  v8 = [HRExpandedContentItem inconclusiveItemsForAlgorithmVersion:1 upgradingFromAlgorithmVersion:0 learnMoreDelegate:v3];

  v9 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:0 title:v4 numberedTitle:v5 visibleBodyText:v6 videoPath:v7 expandedContentItems:v8];

  return v9;
}

@end
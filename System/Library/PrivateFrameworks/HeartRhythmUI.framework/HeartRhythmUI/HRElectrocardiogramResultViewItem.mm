@interface HRElectrocardiogramResultViewItem
+ (id)_makeItemForAtrialFibrillationAlgorithmVersionOne;
+ (id)_makeItemForAtrialFibrillationAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)version;
+ (id)_makeItemForHighOrLowAbove120Below50AlgorithmVersionOne;
+ (id)_makeItemForHighOrLowAbove150Below50AlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)version;
+ (id)_makeItemForInconclusiveAlgorithmVersionOneWithLearnMoreDelegate:(id)delegate;
+ (id)_makeItemForInconclusiveAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)version withLearnMoreDelegate:(id)delegate;
+ (id)_makeItemForPoorRecordingAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)version withLearnMoreDelegate:(id)delegate;
+ (id)_makeItemForSinusRhythmAlgorithmVersionOne;
+ (id)viewItemWithClassification:(unint64_t)classification sampleAlgorithmVersion:(id)version forAlgorithmVersion:(int64_t)algorithmVersion upgradingFromAlgorithmVersion:(int64_t)fromAlgorithmVersion learnMoreDelegate:(id)delegate;
- (HRElectrocardiogramResultViewItem)initWithBadge:(id)badge title:(id)title numberedTitle:(id)numberedTitle visibleBodyText:(id)text videoPath:(id)path expandedContentItems:(id)items;
@end

@implementation HRElectrocardiogramResultViewItem

+ (id)viewItemWithClassification:(unint64_t)classification sampleAlgorithmVersion:(id)version forAlgorithmVersion:(int64_t)algorithmVersion upgradingFromAlgorithmVersion:(int64_t)fromAlgorithmVersion learnMoreDelegate:(id)delegate
{
  v25 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  delegateCopy = delegate;
  _HKInitializeLogging();
  v14 = MEMORY[0x277CCC2D8];
  v15 = *MEMORY[0x277CCC2D8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v21 = 67175683;
    *v22 = classification;
    *&v22[4] = 1026;
    *&v22[6] = [versionCopy intValue];
    LOWORD(fromAlgorithmVersionCopy) = 1026;
    *(&fromAlgorithmVersionCopy + 2) = algorithmVersion;
    HIWORD(fromAlgorithmVersionCopy) = 1026;
    v24[0] = fromAlgorithmVersion;
    LOWORD(v24[1]) = 2114;
    *(&v24[1] + 2) = delegateCopy;
    _os_log_impl(&dword_2521E7000, v16, OS_LOG_TYPE_DEFAULT, "Generate result view item for classification: %{private}i sampleAlgVersion: %{public}i forAlgorithmVersion: %{public}i fromAlgorithmVersion: %{public}i delegate: %{public}@", &v21, 0x24u);
  }

  if (classification > 5)
  {
    if (classification <= 7)
    {
      if (classification == 6)
      {
        if (algorithmVersion != 2)
        {
          if (algorithmVersion != 1)
          {
            goto LABEL_38;
          }

          goto LABEL_29;
        }

        if (versionCopy && [versionCopy integerValue] == 1)
        {
          goto LABEL_29;
        }

LABEL_26:
        _makeItemForSinusRhythmAlgorithmVersionOne = [self _makeItemForHighOrLowAbove150Below50AlgorithmVersionTwoUpgradingFromAlgorithmVersion:fromAlgorithmVersion];
        goto LABEL_45;
      }
    }

    else
    {
      if (classification - 8 < 2)
      {
        if (algorithmVersion != 1)
        {
          if (algorithmVersion == 2)
          {
            _makeItemForSinusRhythmAlgorithmVersionOne = [self _makeItemForAtrialFibrillationAlgorithmVersionTwoUpgradingFromAlgorithmVersion:fromAlgorithmVersion];
            goto LABEL_45;
          }

          goto LABEL_38;
        }

LABEL_40:
        v19 = 0;
        goto LABEL_46;
      }

      if (classification != 10)
      {
        goto LABEL_38;
      }
    }

    if (algorithmVersion == 1)
    {
      goto LABEL_40;
    }

    if (algorithmVersion != 2)
    {
      goto LABEL_38;
    }

    goto LABEL_26;
  }

  if (classification > 2)
  {
    if (classification == 3)
    {
      if ((algorithmVersion - 1) <= 1)
      {
        _makeItemForSinusRhythmAlgorithmVersionOne = [self _makeItemForSinusRhythmAlgorithmVersionOne];
        goto LABEL_45;
      }

      goto LABEL_38;
    }

    if (classification == 4)
    {
      if (algorithmVersion == 2 || algorithmVersion == 1)
      {
        _makeItemForSinusRhythmAlgorithmVersionOne = [self _makeItemForAtrialFibrillationAlgorithmVersionOne];
        goto LABEL_45;
      }

      goto LABEL_38;
    }

    if ((algorithmVersion - 1) > 1)
    {
LABEL_38:
      _HKInitializeLogging();
      v18 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
      {
        v21 = 134218496;
        *v22 = algorithmVersion;
        *&v22[8] = 2048;
        fromAlgorithmVersionCopy = fromAlgorithmVersion;
        LOWORD(v24[0]) = 2048;
        *(v24 + 2) = classification;
        _os_log_impl(&dword_2521E7000, v18, OS_LOG_TYPE_INFO, "Failed to create a result view item. For algorithm version: %li, updating from algoritm version: %li classification: %lu", &v21, 0x20u);
      }

      goto LABEL_40;
    }

LABEL_29:
    _makeItemForSinusRhythmAlgorithmVersionOne = [self _makeItemForHighOrLowAbove120Below50AlgorithmVersionOne];
    goto LABEL_45;
  }

  if (!classification)
  {
    goto LABEL_40;
  }

  if (classification == 1)
  {
    if (algorithmVersion == 2)
    {
      _makeItemForSinusRhythmAlgorithmVersionOne = [self _makeItemForPoorRecordingAlgorithmVersionTwoUpgradingFromAlgorithmVersion:fromAlgorithmVersion withLearnMoreDelegate:delegateCopy];
      goto LABEL_45;
    }

LABEL_31:
    if (algorithmVersion == 1)
    {
LABEL_32:
      _makeItemForSinusRhythmAlgorithmVersionOne = [self _makeItemForInconclusiveAlgorithmVersionOneWithLearnMoreDelegate:delegateCopy];
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  if (classification != 2)
  {
    goto LABEL_38;
  }

  if (algorithmVersion != 2)
  {
    goto LABEL_31;
  }

  if (versionCopy && [versionCopy integerValue] == 1)
  {
    goto LABEL_32;
  }

  _makeItemForSinusRhythmAlgorithmVersionOne = [self _makeItemForInconclusiveAlgorithmVersionTwoUpgradingFromAlgorithmVersion:fromAlgorithmVersion withLearnMoreDelegate:delegateCopy];
LABEL_45:
  v19 = _makeItemForSinusRhythmAlgorithmVersionOne;
LABEL_46:

  return v19;
}

- (HRElectrocardiogramResultViewItem)initWithBadge:(id)badge title:(id)title numberedTitle:(id)numberedTitle visibleBodyText:(id)text videoPath:(id)path expandedContentItems:(id)items
{
  badgeCopy = badge;
  titleCopy = title;
  numberedTitleCopy = numberedTitle;
  textCopy = text;
  pathCopy = path;
  itemsCopy = items;
  v24.receiver = self;
  v24.super_class = HRElectrocardiogramResultViewItem;
  v18 = [(HRElectrocardiogramResultViewItem *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_badge, badge);
    objc_storeStrong(&v19->_title, title);
    objc_storeStrong(&v19->_numberedTitle, numberedTitle);
    objc_storeStrong(&v19->_visibleBodyText, text);
    objc_storeStrong(&v19->_videoPath, path);
    objc_storeStrong(&v19->_expandedContentItems, items);
  }

  return v19;
}

+ (id)_makeItemForAtrialFibrillationAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)version
{
  v3 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_TITLE");
  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_NUMBERED_TITLE");
  v5 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_VISIBLE_BODY");
  hrui_atrialFibrillationVideoPath = [MEMORY[0x277CCACA8] hrui_atrialFibrillationVideoPath];
  v7 = [HRExpandedContentItem atrialFibrillationItemsForAlgorithmVersion:2];
  v8 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:0 title:v3 numberedTitle:v4 visibleBodyText:v5 videoPath:hrui_atrialFibrillationVideoPath expandedContentItems:v7];

  return v8;
}

+ (id)_makeItemForHighOrLowAbove150Below50AlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)version
{
  if (version == 1)
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
  hrui_highOrLowHeartRateVideoPath = [MEMORY[0x277CCACA8] hrui_highOrLowHeartRateVideoPath];
  v9 = [HRExpandedContentItem highOrLowAbove150Below50HeartRateItemsForAlgorithmVersion:2 upgradingFromAlgorithmVersion:version];
  v10 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:v4 title:v5 numberedTitle:v6 visibleBodyText:v7 videoPath:hrui_highOrLowHeartRateVideoPath expandedContentItems:v9];

  return v10;
}

+ (id)_makeItemForInconclusiveAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)version withLearnMoreDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (version == 1)
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
  hrui_inconclusiveVideoPath = [MEMORY[0x277CCACA8] hrui_inconclusiveVideoPath];
  v11 = [HRExpandedContentItem inconclusiveItemsForAlgorithmVersion:2 upgradingFromAlgorithmVersion:version learnMoreDelegate:delegateCopy];
  v12 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:v6 title:v7 numberedTitle:v8 visibleBodyText:v9 videoPath:hrui_inconclusiveVideoPath expandedContentItems:v11];

  return v12;
}

+ (id)_makeItemForPoorRecordingAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)version withLearnMoreDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (version == 1)
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
  v10 = [HRExpandedContentItem poorRecordingItemsForAlgorithmVersion:2 learnMoreDelegate:delegateCopy];
  v11 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:v6 title:v7 numberedTitle:v8 visibleBodyText:v9 videoPath:0 expandedContentItems:v10];

  return v11;
}

+ (id)_makeItemForSinusRhythmAlgorithmVersionOne
{
  v2 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_1_TITLE");
  v3 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_1_NUMBERED_TITLE");
  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_1_VISIBLE_BODY");
  hrui_sinusRhythmVideoPath = [MEMORY[0x277CCACA8] hrui_sinusRhythmVideoPath];
  v6 = [HRExpandedContentItem sinusRhythmItemsForAlgorithmVersion:1];
  v7 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:0 title:v2 numberedTitle:v3 visibleBodyText:v4 videoPath:hrui_sinusRhythmVideoPath expandedContentItems:v6];

  return v7;
}

+ (id)_makeItemForAtrialFibrillationAlgorithmVersionOne
{
  v2 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_TITLE");
  v3 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_NUMBERED_TITLE");
  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_VISIBLE_BODY");
  hrui_atrialFibrillationVideoPath = [MEMORY[0x277CCACA8] hrui_atrialFibrillationVideoPath];
  v6 = [HRExpandedContentItem atrialFibrillationItemsForAlgorithmVersion:1];
  v7 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:0 title:v2 numberedTitle:v3 visibleBodyText:v4 videoPath:hrui_atrialFibrillationVideoPath expandedContentItems:v6];

  return v7;
}

+ (id)_makeItemForHighOrLowAbove120Below50AlgorithmVersionOne
{
  v2 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_3_TITLE");
  v3 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_3_NUMBERED_TITLE");
  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_3_VISIBLE_BODY");
  hrui_highOrLowHeartRateVideoPath = [MEMORY[0x277CCACA8] hrui_highOrLowHeartRateVideoPath];
  v6 = [HRExpandedContentItem highOrLowAbove120Below50HeartRateItemsForAlgorithmVersion:1];
  v7 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:0 title:v2 numberedTitle:v3 visibleBodyText:v4 videoPath:hrui_highOrLowHeartRateVideoPath expandedContentItems:v6];

  return v7;
}

+ (id)_makeItemForInconclusiveAlgorithmVersionOneWithLearnMoreDelegate:(id)delegate
{
  delegateCopy = delegate;
  v4 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_TITLE");
  v5 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_TITLE");
  v6 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_VISIBLE_BODY");
  hrui_inconclusiveVideoPath = [MEMORY[0x277CCACA8] hrui_inconclusiveVideoPath];
  v8 = [HRExpandedContentItem inconclusiveItemsForAlgorithmVersion:1 upgradingFromAlgorithmVersion:0 learnMoreDelegate:delegateCopy];

  v9 = [[HRElectrocardiogramResultViewItem alloc] initWithBadge:0 title:v4 numberedTitle:v5 visibleBodyText:v6 videoPath:hrui_inconclusiveVideoPath expandedContentItems:v8];

  return v9;
}

@end
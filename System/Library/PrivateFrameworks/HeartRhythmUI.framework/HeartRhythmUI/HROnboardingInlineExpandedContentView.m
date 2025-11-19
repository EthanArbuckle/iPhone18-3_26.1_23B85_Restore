@interface HROnboardingInlineExpandedContentView
+ (double)_badgeFontDistanceEmbedded:(BOOL)a3;
+ (double)_bodyFontDistanceEmbedded:(BOOL)a3;
+ (double)_headingBodyFontDistanceEmbedded:(BOOL)a3;
+ (double)_headingToBadgeFontDistanceEmbedded:(BOOL)a3;
+ (double)_listFontDistanceEmbedded:(BOOL)a3;
+ (id)_badgeFontEmbedded:(BOOL)a3;
+ (id)_badgeFontTextStyleEmbedded:(BOOL)a3;
+ (id)_badgeLabelWithLocalizedText:(id)a3 isEmbedded:(BOOL)a4;
+ (id)_bodyFontEmbedded:(BOOL)a3;
+ (id)_bodyFontTextStyleEmbedded:(BOOL)a3;
+ (id)_bodyLabelWithAtrialFibrillationLocalizationKey:(id)a3;
+ (id)_bodyLabelWithLocalizedText:(id)a3 isEmbedded:(BOOL)a4;
+ (id)_headingBodyFontEmbedded:(BOOL)a3;
+ (id)_headingLabelWithAtrialFibrillationLocalizationKey:(id)a3;
+ (id)_headingLabelWithLocalizedText:(id)a3 isEmbedded:(BOOL)a4;
+ (id)_learnMoreListLabelWithLocalizedText:(id)a3 URLIdentifier:(int64_t)a4 delegate:(id)a5 isEmbedded:(BOOL)a6;
+ (id)_listLabelWithAtrialFibrillationLocalizationKey:(id)a3;
+ (id)_listLabelWithLocalizedText:(id)a3 isEmbedded:(BOOL)a4;
+ (id)_makeViewWithContentItem:(id)a3 isEmbedded:(BOOL)a4;
+ (id)_spacingBetweenItems:(id)a3 isEmbedded:(BOOL)a4;
+ (id)learnMoreAboutAtrialFibrillationExpandedView;
+ (id)viewWithItems:(id)a3;
- (void)setIsOriginalStyle:(BOOL)a3;
@end

@implementation HROnboardingInlineExpandedContentView

+ (id)viewWithItems:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(HROnboardingInlineExpandedContentView);
  [(HROnboardingInlineExpandedContentView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([v4 count])
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __55__HROnboardingInlineExpandedContentView_viewWithItems___block_invoke;
    v28[3] = &__block_descriptor_41_e31__16__0__HRExpandedContentItem_8l;
    v28[4] = a1;
    v29 = 1;
    v6 = [v4 hk_map:v28];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__HROnboardingInlineExpandedContentView_viewWithItems___block_invoke_2;
    v26[3] = &unk_2796FB978;
    v7 = v5;
    v27 = v7;
    [v6 enumerateObjectsUsingBlock:v26];
    v8 = [v6 firstObject];
    v9 = [v8 firstBaselineAnchor];
    v10 = [(HROnboardingInlineExpandedContentView *)v7 topAnchor];
    [objc_opt_class() _bodyFontDistanceEmbedded:1];
    v11 = [v9 constraintEqualToAnchor:v10 constant:?];
    [v11 setActive:1];

    v12 = [a1 _spacingBetweenItems:v4 isEmbedded:1];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __55__HROnboardingInlineExpandedContentView_viewWithItems___block_invoke_3;
    v24 = &unk_2796FB9A0;
    v25 = v6;
    v13 = v6;
    [v12 enumerateObjectsUsingBlock:&v21];
    v14 = [(HROnboardingInlineExpandedContentView *)v7 bottomAnchor:v21];
    v15 = [v13 lastObject];
    v16 = [v15 lastBaselineAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    [v17 setActive:1];

    v18 = v25;
    v19 = v7;
  }

  return v5;
}

void __55__HROnboardingInlineExpandedContentView_viewWithItems___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a2;
  v8 = [v5 stringWithFormat:@"SessionDetails.MoreInfo.%lu", a3];
  v7 = [MEMORY[0x277CCACA8] healthAccessibilityIdentifier:1 suffix:v8];
  [v6 setAccessibilityIdentifier:v7];

  [*(a1 + 32) addSubview:v6];
  [v6 hk_alignHorizontalConstraintsWithView:*(a1 + 32) margin:0.0];
}

void __55__HROnboardingInlineExpandedContentView_viewWithItems___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v13 = [v5 objectAtIndexedSubscript:a3];
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];
  v8 = [v7 firstBaselineAnchor];
  v9 = [v13 lastBaselineAnchor];
  [v6 floatValue];
  v11 = v10;

  v12 = [v8 constraintEqualToAnchor:v9 constant:v11];
  [v12 setActive:1];
}

+ (id)learnMoreAboutAtrialFibrillationExpandedView
{
  v59[12] = *MEMORY[0x277D85DE8];
  v39 = objc_alloc_init(HROnboardingInlineExpandedContentView);
  [(HROnboardingInlineExpandedContentView *)v39 setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [(HROnboardingInlineExpandedContentView *)v39 widthAnchor];
  v3 = [v2 constraintLessThanOrEqualToConstant:500.0];
  [v3 setActive:1];

  v53 = [objc_opt_class() _bodyLabelWithAtrialFibrillationLocalizationKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_LEARN_MORE_EXPANDED_1"];
  v52 = [objc_opt_class() _headingLabelWithAtrialFibrillationLocalizationKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_LEARN_MORE_EXPANDED_2_HEADING"];
  v51 = [objc_opt_class() _bodyLabelWithAtrialFibrillationLocalizationKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_LEARN_MORE_EXPANDED_2"];
  v50 = [objc_opt_class() _headingLabelWithAtrialFibrillationLocalizationKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_LEARN_MORE_EXPANDED_3_HEADING"];
  v49 = [objc_opt_class() _bodyLabelWithAtrialFibrillationLocalizationKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_LEARN_MORE_EXPANDED_3"];
  v48 = [objc_opt_class() _listLabelWithAtrialFibrillationLocalizationKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_LEARN_MORE_EXPANDED_3_SYMPTOM_1"];
  v47 = [objc_opt_class() _listLabelWithAtrialFibrillationLocalizationKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_LEARN_MORE_EXPANDED_3_SYMPTOM_2"];
  v46 = [objc_opt_class() _listLabelWithAtrialFibrillationLocalizationKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_LEARN_MORE_EXPANDED_3_SYMPTOM_3"];
  v45 = [objc_opt_class() _listLabelWithAtrialFibrillationLocalizationKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_LEARN_MORE_EXPANDED_3_SYMPTOM_4"];
  v44 = [objc_opt_class() _listLabelWithAtrialFibrillationLocalizationKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_LEARN_MORE_EXPANDED_3_SYMPTOM_5"];
  v43 = [objc_opt_class() _listLabelWithAtrialFibrillationLocalizationKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_LEARN_MORE_EXPANDED_3_SYMPTOM_6"];
  v42 = [objc_opt_class() _listLabelWithAtrialFibrillationLocalizationKey:@"ATRIAL_FIBRILLATION_DETECTION_ONBOARDING_LEARN_MORE_EXPANDED_3_SYMPTOM_7"];
  v59[0] = v53;
  v59[1] = v52;
  v59[2] = v51;
  v59[3] = v50;
  v59[4] = v49;
  v59[5] = v48;
  v59[6] = v47;
  v59[7] = v46;
  v59[8] = v45;
  v59[9] = v44;
  v59[10] = v43;
  v59[11] = v42;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:12];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __85__HROnboardingInlineExpandedContentView_learnMoreAboutAtrialFibrillationExpandedView__block_invoke;
  v56[3] = &unk_2796FB978;
  v4 = v39;
  v57 = v4;
  [v41 enumerateObjectsUsingBlock:v56];
  v5 = [v41 firstObject];
  v6 = [v5 firstBaselineAnchor];
  v7 = [(HROnboardingInlineExpandedContentView *)v4 topAnchor];
  [objc_opt_class() _bodyFontDistanceEmbedded:0];
  v8 = [v6 constraintEqualToAnchor:v7 constant:?];
  [v8 setActive:1];

  v9 = MEMORY[0x277CCABB0];
  [objc_opt_class() _headingBodyFontDistanceEmbedded:0];
  v40 = [v9 numberWithDouble:?];
  v58[0] = v40;
  v10 = MEMORY[0x277CCABB0];
  [objc_opt_class() _bodyFontDistanceEmbedded:0];
  v38 = [v10 numberWithDouble:?];
  v58[1] = v38;
  v11 = MEMORY[0x277CCABB0];
  [objc_opt_class() _headingBodyFontDistanceEmbedded:0];
  v37 = [v11 numberWithDouble:?];
  v58[2] = v37;
  v12 = MEMORY[0x277CCABB0];
  [objc_opt_class() _bodyFontDistanceEmbedded:0];
  v13 = [v12 numberWithDouble:?];
  v58[3] = v13;
  v14 = MEMORY[0x277CCABB0];
  [objc_opt_class() _listFontDistanceEmbedded:0];
  v15 = [v14 numberWithDouble:?];
  v58[4] = v15;
  v16 = MEMORY[0x277CCABB0];
  [objc_opt_class() _listFontDistanceEmbedded:0];
  v17 = [v16 numberWithDouble:?];
  v58[5] = v17;
  v18 = MEMORY[0x277CCABB0];
  [objc_opt_class() _listFontDistanceEmbedded:0];
  v19 = [v18 numberWithDouble:?];
  v58[6] = v19;
  v20 = MEMORY[0x277CCABB0];
  [objc_opt_class() _listFontDistanceEmbedded:0];
  v21 = [v20 numberWithDouble:?];
  v58[7] = v21;
  v22 = MEMORY[0x277CCABB0];
  [objc_opt_class() _listFontDistanceEmbedded:0];
  v23 = [v22 numberWithDouble:?];
  v58[8] = v23;
  v24 = MEMORY[0x277CCABB0];
  [objc_opt_class() _listFontDistanceEmbedded:0];
  v25 = [v24 numberWithDouble:?];
  v58[9] = v25;
  v26 = MEMORY[0x277CCABB0];
  [objc_opt_class() _listFontDistanceEmbedded:0];
  v27 = [v26 numberWithDouble:?];
  v58[10] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:11];

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __85__HROnboardingInlineExpandedContentView_learnMoreAboutAtrialFibrillationExpandedView__block_invoke_2;
  v54[3] = &unk_2796FB9A0;
  v55 = v41;
  v29 = v41;
  [v28 enumerateObjectsUsingBlock:v54];
  v30 = [(HROnboardingInlineExpandedContentView *)v4 bottomAnchor];
  v31 = [v29 lastObject];
  v32 = [v31 lastBaselineAnchor];
  v33 = [v30 constraintEqualToAnchor:v32];
  [v33 setActive:1];

  v34 = v55;
  v35 = v4;

  return v4;
}

void __85__HROnboardingInlineExpandedContentView_learnMoreAboutAtrialFibrillationExpandedView__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addSubview:v4];
  [v4 hk_alignHorizontalConstraintsWithView:*(a1 + 32) margin:0.0];
}

void __85__HROnboardingInlineExpandedContentView_learnMoreAboutAtrialFibrillationExpandedView__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v13 = [v5 objectAtIndexedSubscript:a3];
  v7 = [*(a1 + 32) objectAtIndexedSubscript:a3 + 1];
  v8 = [v7 firstBaselineAnchor];
  v9 = [v13 lastBaselineAnchor];
  [v6 floatValue];
  v11 = v10;

  v12 = [v8 constraintEqualToAnchor:v9 constant:v11];
  [v12 setActive:1];
}

+ (id)_bodyLabelWithAtrialFibrillationLocalizationKey:(id)a3
{
  v3 = MEMORY[0x277D756B8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = HRHeartRhythmUIFrameworkBundle();
  v7 = [v6 localizedStringForKey:v4 value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  [v5 setText:v7];
  v8 = [objc_opt_class() _bodyFontEmbedded:0];
  [v5 setFont:v8];

  [v5 setAdjustsFontForContentSizeCategory:1];
  [v5 setNumberOfLines:0];
  v9 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v5 setTextColor:v9];

  return v5;
}

+ (id)_headingLabelWithAtrialFibrillationLocalizationKey:(id)a3
{
  v3 = MEMORY[0x277D756B8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = HRHeartRhythmUIFrameworkBundle();
  v7 = [v6 localizedStringForKey:v4 value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  [v5 setText:v7];
  v8 = [objc_opt_class() _headingBodyFontEmbedded:0];
  [v5 setFont:v8];

  [v5 setAdjustsFontForContentSizeCategory:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setNumberOfLines:0];
  v9 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v5 setTextColor:v9];

  return v5;
}

+ (id)_listLabelWithAtrialFibrillationLocalizationKey:(id)a3
{
  v3 = a3;
  v4 = [HRBulletedIndentedLabel alloc];
  v5 = HRHeartRhythmUIFrameworkBundle();
  v6 = [v5 localizedStringForKey:v3 value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v7 = [(HRBulletedIndentedLabel *)v4 initWithText:v6 isEmbedded:0];
  [(HRBulletedIndentedLabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v7;
}

+ (id)_spacingBetweenItems:(id)a3 isEmbedded:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  if ([v5 count] >= 2)
  {
    for (i = 1; i < [v5 count]; ++i)
    {
      v8 = [v5 objectAtIndexedSubscript:i];
      v9 = [v8 type];
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v14 = MEMORY[0x277CCABB0];
          [objc_opt_class() _bodyFontDistanceEmbedded:v4];
LABEL_13:
          v10 = [v14 numberWithDouble:?];
          [v6 addObject:v10];
LABEL_16:

          goto LABEL_17;
        }

        if (v9 == 3)
        {
          v14 = MEMORY[0x277CCABB0];
          [objc_opt_class() _listFontDistanceEmbedded:v4];
          goto LABEL_13;
        }
      }

      else
      {
        if (!v9)
        {
          v14 = MEMORY[0x277CCABB0];
          [objc_opt_class() _badgeFontDistanceEmbedded:v4];
          goto LABEL_13;
        }

        if (v9 == 1)
        {
          v10 = [v5 objectAtIndexedSubscript:i - 1];
          v11 = [v10 type];
          v12 = MEMORY[0x277CCABB0];
          v13 = objc_opt_class();
          if (v11)
          {
            [v13 _headingBodyFontDistanceEmbedded:v4];
          }

          else
          {
            [v13 _headingToBadgeFontDistanceEmbedded:v4];
          }

          v15 = [v12 numberWithDouble:?];
          [v6 addObject:v15];

          goto LABEL_16;
        }
      }

LABEL_17:
    }
  }

  return v6;
}

+ (id)_makeViewWithContentItem:(id)a3 isEmbedded:(BOOL)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 type];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 != 1)
      {
        goto LABEL_14;
      }

      v8 = objc_opt_class();
      v9 = [v6 title];
      v10 = [v8 _headingLabelWithLocalizedText:v9 isEmbedded:v5];
    }

    else
    {
      v17 = objc_opt_class();
      v9 = [v6 title];
      v10 = [v17 _badgeLabelWithLocalizedText:v9 isEmbedded:v5];
    }

    goto LABEL_12;
  }

  if (v7 == 2)
  {
    v18 = objc_opt_class();
    v9 = [v6 title];
    v10 = [v18 _bodyLabelWithLocalizedText:v9 isEmbedded:v5];
LABEL_12:
    v4 = v10;
    goto LABEL_13;
  }

  if (v7 != 3)
  {
    goto LABEL_14;
  }

  v11 = [v6 learnMore];

  v12 = objc_opt_class();
  v9 = [v6 title];
  if (!v11)
  {
    v10 = [v12 _listLabelWithLocalizedText:v9 isEmbedded:v5];
    goto LABEL_12;
  }

  v13 = [v6 learnMore];
  v14 = [v13 urlIdentifier];
  v15 = [v6 learnMore];
  v16 = [v15 delegate];
  v4 = [v12 _learnMoreListLabelWithLocalizedText:v9 URLIdentifier:v14 delegate:v16 isEmbedded:v5];

LABEL_13:
LABEL_14:

  return v4;
}

- (void)setIsOriginalStyle:(BOOL)a3
{
  if (self->_isOriginalStyle != a3)
  {
    self->_isOriginalStyle = a3;
  }
}

+ (id)_badgeLabelWithLocalizedText:(id)a3 isEmbedded:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x277D756B8];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [objc_opt_class() _badgeFontEmbedded:v4];
  [v7 setFont:v8];

  [v7 setAdjustsFontForContentSizeCategory:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setNumberOfLines:0];
  [v7 setText:v6];

  v9 = [MEMORY[0x277D75348] hk_heartKeyColor];
  [v7 setTextColor:v9];

  return v7;
}

+ (id)_bodyLabelWithLocalizedText:(id)a3 isEmbedded:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x277D756B8];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [objc_opt_class() _bodyFontEmbedded:v4];
  [v7 setFont:v8];

  [v7 setAdjustsFontForContentSizeCategory:1];
  [v7 setNumberOfLines:0];
  [v7 setText:v6];

  if (!v4)
  {
    v9 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v7 setTextColor:v9];
  }

  return v7;
}

+ (id)_headingLabelWithLocalizedText:(id)a3 isEmbedded:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x277D756B8];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [objc_opt_class() _headingBodyFontEmbedded:v4];
  [v7 setFont:v8];

  [v7 setAdjustsFontForContentSizeCategory:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setNumberOfLines:0];
  [v7 setText:v6];

  if (!v4)
  {
    v9 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v7 setTextColor:v9];
  }

  return v7;
}

+ (id)_listLabelWithLocalizedText:(id)a3 isEmbedded:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [[HRBulletedIndentedLabel alloc] initWithText:v5 isEmbedded:v4];

  [(HRBulletedIndentedLabel *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v6;
}

+ (id)_learnMoreListLabelWithLocalizedText:(id)a3 URLIdentifier:(int64_t)a4 delegate:(id)a5 isEmbedded:(BOOL)a6
{
  v6 = a6;
  v9 = a5;
  v10 = a3;
  v11 = HRHeartRhythmUIFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"ONBOARDING_LEARN_MORE_WITH_ELLIPSES" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v10, v12];

  v14 = MEMORY[0x277CCAB48];
  v15 = [objc_opt_class() _bodyFontTextStyleEmbedded:v6];
  v16 = [v14 hrui_bulletedString:v13 textStyle:v15];

  v17 = [v16 string];
  v18 = [v17 rangeOfString:v12];
  v20 = v19;

  v21 = *MEMORY[0x277D740C0];
  v22 = [MEMORY[0x277D75348] hk_appKeyColor];
  [v16 addAttribute:v21 value:v22 range:{v18, v20}];

  [v16 addAttribute:*MEMORY[0x277D740E8] value:&stru_2864680B0 range:{v18, v20}];
  v23 = [HRLinkTextView alloc];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __112__HROnboardingInlineExpandedContentView__learnMoreListLabelWithLocalizedText_URLIdentifier_delegate_isEmbedded___block_invoke;
  v30[3] = &unk_2796FB9C8;
  v31 = v12;
  v24 = v12;
  v25 = [(HRLinkTextView *)v23 initWithLinkRange:v18 URLIdentifier:v20 delegate:a4 userInterfaceStyleChanged:v9, v30];

  v26 = [(HRLinkTextView *)v25 textView];
  [v26 setAttributedText:v16];

  v27 = [(HRLinkTextView *)v25 textView];
  v28 = [v27 textContainer];
  [v28 setLineFragmentPadding:0.0];

  return v25;
}

void __112__HROnboardingInlineExpandedContentView__learnMoreListLabelWithLocalizedText_URLIdentifier_delegate_isEmbedded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 textView];
  v5 = [v4 attributedText];
  v11 = [v5 mutableCopy];

  v6 = [v11 string];
  v7 = [v6 rangeOfString:*(a1 + 32)];

  v8 = *MEMORY[0x277D740C0];
  v9 = [MEMORY[0x277D75348] labelColor];
  [v11 addAttribute:v8 value:v9 range:{0, v7}];

  v10 = [v3 textView];

  [v10 setAttributedText:v11];
}

+ (id)_badgeFontEmbedded:(BOOL)a3
{
  v3 = MEMORY[0x277D74300];
  v4 = [objc_opt_class() _badgeFontTextStyleEmbedded:a3];
  v5 = [v3 hk_scalableFontForTextStyle:v4 symbolicTraits:2];

  return v5;
}

+ (double)_badgeFontDistanceEmbedded:(BOOL)a3
{
  v3 = [objc_opt_class() _badgeFontEmbedded:a3];
  [v3 _scaledValueForValue:48.0];
  v5 = v4;

  return v5;
}

+ (id)_badgeFontTextStyleEmbedded:(BOOL)a3
{
  v3 = MEMORY[0x277D76918];
  if (!a3)
  {
    v3 = MEMORY[0x277D76A20];
  }

  return *v3;
}

+ (id)_bodyFontTextStyleEmbedded:(BOOL)a3
{
  v3 = MEMORY[0x277D76918];
  if (!a3)
  {
    v3 = MEMORY[0x277D76A20];
  }

  return *v3;
}

+ (id)_headingBodyFontEmbedded:(BOOL)a3
{
  v3 = MEMORY[0x277D74300];
  v4 = [objc_opt_class() _bodyFontTextStyleEmbedded:a3];
  v5 = [v3 hk_scalableFontForTextStyle:v4 symbolicTraits:2];

  return v5;
}

+ (id)_bodyFontEmbedded:(BOOL)a3
{
  v3 = MEMORY[0x277D74300];
  v4 = [objc_opt_class() _bodyFontTextStyleEmbedded:a3];
  v5 = [v3 preferredFontForTextStyle:v4];

  return v5;
}

+ (double)_bodyFontDistanceEmbedded:(BOOL)a3
{
  v3 = [objc_opt_class() _bodyFontEmbedded:a3];
  [v3 _scaledValueForValue:30.0];
  v5 = v4;

  return v5;
}

+ (double)_headingBodyFontDistanceEmbedded:(BOOL)a3
{
  v3 = [objc_opt_class() _headingBodyFontEmbedded:a3];
  [v3 _scaledValueForValue:48.0];
  v5 = v4;

  return v5;
}

+ (double)_headingToBadgeFontDistanceEmbedded:(BOOL)a3
{
  v3 = [objc_opt_class() _headingBodyFontEmbedded:a3];
  [v3 _scaledValueForValue:22.0];
  v5 = v4;

  return v5;
}

+ (double)_listFontDistanceEmbedded:(BOOL)a3
{
  v3 = [objc_opt_class() _bodyFontEmbedded:a3];
  [v3 _scaledValueForValue:34.0];
  v5 = v4;

  return v5;
}

@end
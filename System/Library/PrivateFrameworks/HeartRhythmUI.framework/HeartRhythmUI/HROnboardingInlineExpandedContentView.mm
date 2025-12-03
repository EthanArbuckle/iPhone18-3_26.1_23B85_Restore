@interface HROnboardingInlineExpandedContentView
+ (double)_badgeFontDistanceEmbedded:(BOOL)embedded;
+ (double)_bodyFontDistanceEmbedded:(BOOL)embedded;
+ (double)_headingBodyFontDistanceEmbedded:(BOOL)embedded;
+ (double)_headingToBadgeFontDistanceEmbedded:(BOOL)embedded;
+ (double)_listFontDistanceEmbedded:(BOOL)embedded;
+ (id)_badgeFontEmbedded:(BOOL)embedded;
+ (id)_badgeFontTextStyleEmbedded:(BOOL)embedded;
+ (id)_badgeLabelWithLocalizedText:(id)text isEmbedded:(BOOL)embedded;
+ (id)_bodyFontEmbedded:(BOOL)embedded;
+ (id)_bodyFontTextStyleEmbedded:(BOOL)embedded;
+ (id)_bodyLabelWithAtrialFibrillationLocalizationKey:(id)key;
+ (id)_bodyLabelWithLocalizedText:(id)text isEmbedded:(BOOL)embedded;
+ (id)_headingBodyFontEmbedded:(BOOL)embedded;
+ (id)_headingLabelWithAtrialFibrillationLocalizationKey:(id)key;
+ (id)_headingLabelWithLocalizedText:(id)text isEmbedded:(BOOL)embedded;
+ (id)_learnMoreListLabelWithLocalizedText:(id)text URLIdentifier:(int64_t)identifier delegate:(id)delegate isEmbedded:(BOOL)embedded;
+ (id)_listLabelWithAtrialFibrillationLocalizationKey:(id)key;
+ (id)_listLabelWithLocalizedText:(id)text isEmbedded:(BOOL)embedded;
+ (id)_makeViewWithContentItem:(id)item isEmbedded:(BOOL)embedded;
+ (id)_spacingBetweenItems:(id)items isEmbedded:(BOOL)embedded;
+ (id)learnMoreAboutAtrialFibrillationExpandedView;
+ (id)viewWithItems:(id)items;
- (void)setIsOriginalStyle:(BOOL)style;
@end

@implementation HROnboardingInlineExpandedContentView

+ (id)viewWithItems:(id)items
{
  itemsCopy = items;
  v5 = objc_alloc_init(HROnboardingInlineExpandedContentView);
  [(HROnboardingInlineExpandedContentView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  if ([itemsCopy count])
  {
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __55__HROnboardingInlineExpandedContentView_viewWithItems___block_invoke;
    v28[3] = &__block_descriptor_41_e31__16__0__HRExpandedContentItem_8l;
    v28[4] = self;
    v29 = 1;
    v6 = [itemsCopy hk_map:v28];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __55__HROnboardingInlineExpandedContentView_viewWithItems___block_invoke_2;
    v26[3] = &unk_2796FB978;
    v7 = v5;
    v27 = v7;
    [v6 enumerateObjectsUsingBlock:v26];
    firstObject = [v6 firstObject];
    firstBaselineAnchor = [firstObject firstBaselineAnchor];
    topAnchor = [(HROnboardingInlineExpandedContentView *)v7 topAnchor];
    [objc_opt_class() _bodyFontDistanceEmbedded:1];
    v11 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
    [v11 setActive:1];

    v12 = [self _spacingBetweenItems:itemsCopy isEmbedded:1];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __55__HROnboardingInlineExpandedContentView_viewWithItems___block_invoke_3;
    v24 = &unk_2796FB9A0;
    v25 = v6;
    v13 = v6;
    [v12 enumerateObjectsUsingBlock:&v21];
    v14 = [(HROnboardingInlineExpandedContentView *)v7 bottomAnchor:v21];
    lastObject = [v13 lastObject];
    lastBaselineAnchor = [lastObject lastBaselineAnchor];
    v17 = [v14 constraintEqualToAnchor:lastBaselineAnchor];
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
  widthAnchor = [(HROnboardingInlineExpandedContentView *)v39 widthAnchor];
  v3 = [widthAnchor constraintLessThanOrEqualToConstant:500.0];
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
  firstObject = [v41 firstObject];
  firstBaselineAnchor = [firstObject firstBaselineAnchor];
  topAnchor = [(HROnboardingInlineExpandedContentView *)v4 topAnchor];
  [objc_opt_class() _bodyFontDistanceEmbedded:0];
  v8 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
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
  bottomAnchor = [(HROnboardingInlineExpandedContentView *)v4 bottomAnchor];
  lastObject = [v29 lastObject];
  lastBaselineAnchor = [lastObject lastBaselineAnchor];
  v33 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];
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

+ (id)_bodyLabelWithAtrialFibrillationLocalizationKey:(id)key
{
  v3 = MEMORY[0x277D756B8];
  keyCopy = key;
  v5 = objc_alloc_init(v3);
  v6 = HRHeartRhythmUIFrameworkBundle();
  v7 = [v6 localizedStringForKey:keyCopy value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  [v5 setText:v7];
  v8 = [objc_opt_class() _bodyFontEmbedded:0];
  [v5 setFont:v8];

  [v5 setAdjustsFontForContentSizeCategory:1];
  [v5 setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v5 setTextColor:secondaryLabelColor];

  return v5;
}

+ (id)_headingLabelWithAtrialFibrillationLocalizationKey:(id)key
{
  v3 = MEMORY[0x277D756B8];
  keyCopy = key;
  v5 = objc_alloc_init(v3);
  v6 = HRHeartRhythmUIFrameworkBundle();
  v7 = [v6 localizedStringForKey:keyCopy value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  [v5 setText:v7];
  v8 = [objc_opt_class() _headingBodyFontEmbedded:0];
  [v5 setFont:v8];

  [v5 setAdjustsFontForContentSizeCategory:1];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setNumberOfLines:0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [v5 setTextColor:secondaryLabelColor];

  return v5;
}

+ (id)_listLabelWithAtrialFibrillationLocalizationKey:(id)key
{
  keyCopy = key;
  v4 = [HRBulletedIndentedLabel alloc];
  v5 = HRHeartRhythmUIFrameworkBundle();
  v6 = [v5 localizedStringForKey:keyCopy value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable-Antimony"];

  v7 = [(HRBulletedIndentedLabel *)v4 initWithText:v6 isEmbedded:0];
  [(HRBulletedIndentedLabel *)v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v7;
}

+ (id)_spacingBetweenItems:(id)items isEmbedded:(BOOL)embedded
{
  embeddedCopy = embedded;
  itemsCopy = items;
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  if ([itemsCopy count] >= 2)
  {
    for (i = 1; i < [itemsCopy count]; ++i)
    {
      v8 = [itemsCopy objectAtIndexedSubscript:i];
      type = [v8 type];
      if (type > 1)
      {
        if (type == 2)
        {
          v14 = MEMORY[0x277CCABB0];
          [objc_opt_class() _bodyFontDistanceEmbedded:embeddedCopy];
LABEL_13:
          v10 = [v14 numberWithDouble:?];
          [v6 addObject:v10];
LABEL_16:

          goto LABEL_17;
        }

        if (type == 3)
        {
          v14 = MEMORY[0x277CCABB0];
          [objc_opt_class() _listFontDistanceEmbedded:embeddedCopy];
          goto LABEL_13;
        }
      }

      else
      {
        if (!type)
        {
          v14 = MEMORY[0x277CCABB0];
          [objc_opt_class() _badgeFontDistanceEmbedded:embeddedCopy];
          goto LABEL_13;
        }

        if (type == 1)
        {
          v10 = [itemsCopy objectAtIndexedSubscript:i - 1];
          type2 = [v10 type];
          v12 = MEMORY[0x277CCABB0];
          v13 = objc_opt_class();
          if (type2)
          {
            [v13 _headingBodyFontDistanceEmbedded:embeddedCopy];
          }

          else
          {
            [v13 _headingToBadgeFontDistanceEmbedded:embeddedCopy];
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

+ (id)_makeViewWithContentItem:(id)item isEmbedded:(BOOL)embedded
{
  embeddedCopy = embedded;
  itemCopy = item;
  type = [itemCopy type];
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_14;
      }

      v8 = objc_opt_class();
      title = [itemCopy title];
      v10 = [v8 _headingLabelWithLocalizedText:title isEmbedded:embeddedCopy];
    }

    else
    {
      v17 = objc_opt_class();
      title = [itemCopy title];
      v10 = [v17 _badgeLabelWithLocalizedText:title isEmbedded:embeddedCopy];
    }

    goto LABEL_12;
  }

  if (type == 2)
  {
    v18 = objc_opt_class();
    title = [itemCopy title];
    v10 = [v18 _bodyLabelWithLocalizedText:title isEmbedded:embeddedCopy];
LABEL_12:
    v4 = v10;
    goto LABEL_13;
  }

  if (type != 3)
  {
    goto LABEL_14;
  }

  learnMore = [itemCopy learnMore];

  v12 = objc_opt_class();
  title = [itemCopy title];
  if (!learnMore)
  {
    v10 = [v12 _listLabelWithLocalizedText:title isEmbedded:embeddedCopy];
    goto LABEL_12;
  }

  learnMore2 = [itemCopy learnMore];
  urlIdentifier = [learnMore2 urlIdentifier];
  learnMore3 = [itemCopy learnMore];
  delegate = [learnMore3 delegate];
  v4 = [v12 _learnMoreListLabelWithLocalizedText:title URLIdentifier:urlIdentifier delegate:delegate isEmbedded:embeddedCopy];

LABEL_13:
LABEL_14:

  return v4;
}

- (void)setIsOriginalStyle:(BOOL)style
{
  if (self->_isOriginalStyle != style)
  {
    self->_isOriginalStyle = style;
  }
}

+ (id)_badgeLabelWithLocalizedText:(id)text isEmbedded:(BOOL)embedded
{
  embeddedCopy = embedded;
  v5 = MEMORY[0x277D756B8];
  textCopy = text;
  v7 = objc_alloc_init(v5);
  v8 = [objc_opt_class() _badgeFontEmbedded:embeddedCopy];
  [v7 setFont:v8];

  [v7 setAdjustsFontForContentSizeCategory:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setNumberOfLines:0];
  [v7 setText:textCopy];

  hk_heartKeyColor = [MEMORY[0x277D75348] hk_heartKeyColor];
  [v7 setTextColor:hk_heartKeyColor];

  return v7;
}

+ (id)_bodyLabelWithLocalizedText:(id)text isEmbedded:(BOOL)embedded
{
  embeddedCopy = embedded;
  v5 = MEMORY[0x277D756B8];
  textCopy = text;
  v7 = objc_alloc_init(v5);
  v8 = [objc_opt_class() _bodyFontEmbedded:embeddedCopy];
  [v7 setFont:v8];

  [v7 setAdjustsFontForContentSizeCategory:1];
  [v7 setNumberOfLines:0];
  [v7 setText:textCopy];

  if (!embeddedCopy)
  {
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v7 setTextColor:secondaryLabelColor];
  }

  return v7;
}

+ (id)_headingLabelWithLocalizedText:(id)text isEmbedded:(BOOL)embedded
{
  embeddedCopy = embedded;
  v5 = MEMORY[0x277D756B8];
  textCopy = text;
  v7 = objc_alloc_init(v5);
  v8 = [objc_opt_class() _headingBodyFontEmbedded:embeddedCopy];
  [v7 setFont:v8];

  [v7 setAdjustsFontForContentSizeCategory:1];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setNumberOfLines:0];
  [v7 setText:textCopy];

  if (!embeddedCopy)
  {
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v7 setTextColor:secondaryLabelColor];
  }

  return v7;
}

+ (id)_listLabelWithLocalizedText:(id)text isEmbedded:(BOOL)embedded
{
  embeddedCopy = embedded;
  textCopy = text;
  v6 = [[HRBulletedIndentedLabel alloc] initWithText:textCopy isEmbedded:embeddedCopy];

  [(HRBulletedIndentedLabel *)v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  return v6;
}

+ (id)_learnMoreListLabelWithLocalizedText:(id)text URLIdentifier:(int64_t)identifier delegate:(id)delegate isEmbedded:(BOOL)embedded
{
  embeddedCopy = embedded;
  delegateCopy = delegate;
  textCopy = text;
  v11 = HRHeartRhythmUIFrameworkBundle();
  v12 = [v11 localizedStringForKey:@"ONBOARDING_LEARN_MORE_WITH_ELLIPSES" value:&stru_2864680B0 table:@"HeartRhythmUI-Localizable"];

  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", textCopy, v12];

  v14 = MEMORY[0x277CCAB48];
  v15 = [objc_opt_class() _bodyFontTextStyleEmbedded:embeddedCopy];
  v16 = [v14 hrui_bulletedString:v13 textStyle:v15];

  string = [v16 string];
  v18 = [string rangeOfString:v12];
  v20 = v19;

  v21 = *MEMORY[0x277D740C0];
  hk_appKeyColor = [MEMORY[0x277D75348] hk_appKeyColor];
  [v16 addAttribute:v21 value:hk_appKeyColor range:{v18, v20}];

  [v16 addAttribute:*MEMORY[0x277D740E8] value:&stru_2864680B0 range:{v18, v20}];
  v23 = [HRLinkTextView alloc];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __112__HROnboardingInlineExpandedContentView__learnMoreListLabelWithLocalizedText_URLIdentifier_delegate_isEmbedded___block_invoke;
  v30[3] = &unk_2796FB9C8;
  v31 = v12;
  v24 = v12;
  v25 = [(HRLinkTextView *)v23 initWithLinkRange:v18 URLIdentifier:v20 delegate:identifier userInterfaceStyleChanged:delegateCopy, v30];

  textView = [(HRLinkTextView *)v25 textView];
  [textView setAttributedText:v16];

  textView2 = [(HRLinkTextView *)v25 textView];
  textContainer = [textView2 textContainer];
  [textContainer setLineFragmentPadding:0.0];

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

+ (id)_badgeFontEmbedded:(BOOL)embedded
{
  v3 = MEMORY[0x277D74300];
  v4 = [objc_opt_class() _badgeFontTextStyleEmbedded:embedded];
  v5 = [v3 hk_scalableFontForTextStyle:v4 symbolicTraits:2];

  return v5;
}

+ (double)_badgeFontDistanceEmbedded:(BOOL)embedded
{
  v3 = [objc_opt_class() _badgeFontEmbedded:embedded];
  [v3 _scaledValueForValue:48.0];
  v5 = v4;

  return v5;
}

+ (id)_badgeFontTextStyleEmbedded:(BOOL)embedded
{
  v3 = MEMORY[0x277D76918];
  if (!embedded)
  {
    v3 = MEMORY[0x277D76A20];
  }

  return *v3;
}

+ (id)_bodyFontTextStyleEmbedded:(BOOL)embedded
{
  v3 = MEMORY[0x277D76918];
  if (!embedded)
  {
    v3 = MEMORY[0x277D76A20];
  }

  return *v3;
}

+ (id)_headingBodyFontEmbedded:(BOOL)embedded
{
  v3 = MEMORY[0x277D74300];
  v4 = [objc_opt_class() _bodyFontTextStyleEmbedded:embedded];
  v5 = [v3 hk_scalableFontForTextStyle:v4 symbolicTraits:2];

  return v5;
}

+ (id)_bodyFontEmbedded:(BOOL)embedded
{
  v3 = MEMORY[0x277D74300];
  v4 = [objc_opt_class() _bodyFontTextStyleEmbedded:embedded];
  v5 = [v3 preferredFontForTextStyle:v4];

  return v5;
}

+ (double)_bodyFontDistanceEmbedded:(BOOL)embedded
{
  v3 = [objc_opt_class() _bodyFontEmbedded:embedded];
  [v3 _scaledValueForValue:30.0];
  v5 = v4;

  return v5;
}

+ (double)_headingBodyFontDistanceEmbedded:(BOOL)embedded
{
  v3 = [objc_opt_class() _headingBodyFontEmbedded:embedded];
  [v3 _scaledValueForValue:48.0];
  v5 = v4;

  return v5;
}

+ (double)_headingToBadgeFontDistanceEmbedded:(BOOL)embedded
{
  v3 = [objc_opt_class() _headingBodyFontEmbedded:embedded];
  [v3 _scaledValueForValue:22.0];
  v5 = v4;

  return v5;
}

+ (double)_listFontDistanceEmbedded:(BOOL)embedded
{
  v3 = [objc_opt_class() _bodyFontEmbedded:embedded];
  [v3 _scaledValueForValue:34.0];
  v5 = v4;

  return v5;
}

@end
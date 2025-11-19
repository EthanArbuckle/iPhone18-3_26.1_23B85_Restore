@interface HRExpandedContentItem
+ (id)_atrialFibrillationExpandedContentItemsAlgVersionOne;
+ (id)_atrialFibrillationExpandedContentItemsAlgorithmVersionTwo;
+ (id)_highOrLowAbove120Below50HeartRateExpandedContentItemsAlgVersionOne;
+ (id)_highOrLowAbove150Below50HeartRateExpandedContentItemsAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)a3;
+ (id)_inconclusiveExpandedContentItemsAlgVersionOneWithLearnMoreDelegate:(id)a3;
+ (id)_inconclusiveExpandedContentItemsAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)a3 withLearnMoreDelegate:(id)a4;
+ (id)_poorRecordingExpandedContentItemsForAlgorithmVersionTwoWithLearnMoreDelegate:(id)a3;
+ (id)_sinusRhythmExpandedContentItemsAlgVersionOne;
+ (id)atrialFibrillationItemsForAlgorithmVersion:(int64_t)a3;
+ (id)highOrLowAbove120Below50HeartRateItemsForAlgorithmVersion:(int64_t)a3;
+ (id)highOrLowAbove150Below50HeartRateItemsForAlgorithmVersion:(int64_t)a3 upgradingFromAlgorithmVersion:(int64_t)a4;
+ (id)inconclusiveItemsForAlgorithmVersion:(int64_t)a3 upgradingFromAlgorithmVersion:(int64_t)a4 learnMoreDelegate:(id)a5;
+ (id)itemWithType:(int64_t)a3 title:(id)a4;
+ (id)poorRecordingItemsForAlgorithmVersion:(int64_t)a3 learnMoreDelegate:(id)a4;
+ (id)sinusRhythmItemsForAlgorithmVersion:(int64_t)a3;
- (HRExpandedContentItem)initWithType:(int64_t)a3 title:(id)a4;
@end

@implementation HRExpandedContentItem

+ (id)_atrialFibrillationExpandedContentItemsAlgorithmVersionTwo
{
  v43[13] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v42 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_1");
  v41 = [v2 itemWithType:2 title:v42];
  v43[0] = v41;
  v3 = objc_opt_class();
  v40 = HRUIECGLocalizedString(@"AFIB_HIGH_HR_TALK_TO_DOCTOR");
  v39 = [v3 itemWithType:2 title:v40];
  v43[1] = v39;
  v4 = objc_opt_class();
  v38 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_2_HEADING");
  v37 = [v4 itemWithType:1 title:v38];
  v43[2] = v37;
  v5 = objc_opt_class();
  v36 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_2");
  v35 = [v5 itemWithType:2 title:v36];
  v43[3] = v35;
  v6 = objc_opt_class();
  v34 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_HEADING");
  v33 = [v6 itemWithType:1 title:v34];
  v43[4] = v33;
  v7 = objc_opt_class();
  v32 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3");
  v31 = [v7 itemWithType:2 title:v32];
  v43[5] = v31;
  v8 = objc_opt_class();
  v30 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_1");
  v29 = [v8 itemWithType:3 title:v30];
  v43[6] = v29;
  v9 = objc_opt_class();
  v28 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_2");
  v27 = [v9 itemWithType:3 title:v28];
  v43[7] = v27;
  v10 = objc_opt_class();
  v11 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_3");
  v12 = [v10 itemWithType:3 title:v11];
  v43[8] = v12;
  v13 = objc_opt_class();
  v14 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_4");
  v15 = [v13 itemWithType:3 title:v14];
  v43[9] = v15;
  v16 = objc_opt_class();
  v17 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_5");
  v18 = [v16 itemWithType:3 title:v17];
  v43[10] = v18;
  v19 = objc_opt_class();
  v20 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_6");
  v21 = [v19 itemWithType:3 title:v20];
  v43[11] = v21;
  v22 = objc_opt_class();
  v23 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_7");
  v24 = [v22 itemWithType:3 title:v23];
  v43[12] = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:13];

  return v26;
}

+ (id)_inconclusiveExpandedContentItemsAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)a3 withLearnMoreDelegate:(id)a4
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  if (a3 == 1)
  {
    v8 = objc_opt_class();
    v9 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_UPDATED_BADGE");
    v10 = [v8 itemWithType:0 title:v9];

    [v7 addObject:v10];
  }

  v11 = objc_opt_class();
  v12 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_4_EXPANDED_1_HEADING");
  v13 = [v11 itemWithType:1 title:v12];

  [v7 addObject:v13];
  v14 = objc_opt_class();
  v15 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_4_EXPANDED_1_LIST_1");
  v16 = [v14 itemWithType:3 title:v15];

  [v7 addObject:v16];
  v17 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_4_EXPANDED_1_LIST_2");
  v18 = [objc_opt_class() itemWithType:3 title:v17];
  [v7 addObject:v18];
  v19 = objc_opt_class();
  v20 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_4_EXPANDED_1_LIST_3");
  v21 = [v19 itemWithType:3 title:v20];

  v22 = [[HRExpandedContentItemLearnMore alloc] initWithURLIdentifier:2 delegate:v6];
  [v21 setLearnMore:v22];

  [v7 addObject:v21];
  v23 = [MEMORY[0x277CBEA60] arrayWithArray:v7];

  return v23;
}

+ (id)_highOrLowAbove150Below50HeartRateExpandedContentItemsAlgorithmVersionTwoUpgradingFromAlgorithmVersion:(int64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_3_EXPANDED_1_BODY_0");
  v6 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_3_EXPANDED_1_BODY_1");
  v7 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_3_EXPANDED_2_BODY_1");
  v36 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_3_EXPANDED_3_BODY_1");
  v38 = v5;
  v35 = [objc_opt_class() itemWithType:2 title:v5];
  [v4 addObject:?];
  v8 = objc_opt_class();
  v9 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_3_EXPANDED_1_HEADING");
  v10 = [v8 itemWithType:1 title:v9];

  v34 = v10;
  [v4 addObject:v10];
  v37 = v6;
  v33 = [objc_opt_class() itemWithType:2 title:v6];
  [v4 addObject:?];
  v11 = objc_opt_class();
  v12 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_3_EXPANDED_1_BODY_2");
  v13 = [v11 itemWithType:2 title:v12];

  [v4 addObject:v13];
  if (a3 == 1)
  {
    v14 = objc_opt_class();
    v15 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_UPDATED_BADGE");
    v16 = [v14 itemWithType:0 title:v15];

    [v4 addObject:v16];
  }

  v17 = objc_opt_class();
  v18 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_3_EXPANDED_2_HEADING");
  v19 = [v17 itemWithType:1 title:v18];

  [v4 addObject:v19];
  v20 = v7;
  v21 = [objc_opt_class() itemWithType:2 title:v7];
  [v4 addObject:v21];
  if (a3 == 1)
  {
    v22 = objc_opt_class();
    v23 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_UPDATED_BADGE");
    v24 = [v22 itemWithType:0 title:v23];

    [v4 addObject:v24];
  }

  v25 = objc_opt_class();
  v26 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_3_EXPANDED_3_HEADING");
  v27 = [v25 itemWithType:1 title:v26];

  [v4 addObject:v27];
  v28 = [objc_opt_class() itemWithType:2 title:v36];
  [v4 addObject:v28];
  v29 = objc_opt_class();
  v30 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_3_EXPANDED_3_BODY_2");
  v31 = [v29 itemWithType:2 title:v30];

  [v4 addObject:v31];

  return v4;
}

+ (id)_poorRecordingExpandedContentItemsForAlgorithmVersionTwoWithLearnMoreDelegate:(id)a3
{
  v28[5] = *MEMORY[0x277D85DE8];
  v24 = MEMORY[0x277CBEB18];
  v27 = a3;
  v3 = objc_opt_class();
  v26 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_5_EXPANDED_1_HEADING");
  v25 = [v3 itemWithType:1 title:v26];
  v28[0] = v25;
  v4 = objc_opt_class();
  v23 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_5_EXPANDED_1_LIST_1");
  v5 = [v4 itemWithType:3 title:v23];
  v28[1] = v5;
  v6 = objc_opt_class();
  v7 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_5_EXPANDED_1_LIST_2");
  v8 = [v6 itemWithType:3 title:v7];
  v28[2] = v8;
  v9 = objc_opt_class();
  v10 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_5_EXPANDED_1_LIST_3");
  v11 = [v9 itemWithType:3 title:v10];
  v28[3] = v11;
  v12 = objc_opt_class();
  v13 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_5_EXPANDED_1_LIST_4");
  v14 = [v12 itemWithType:3 title:v13];
  v28[4] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:5];
  v16 = [v24 arrayWithArray:v15];

  v17 = objc_opt_class();
  v18 = HRUIECGLocalizedString(@"ECG_V2_ONBOARDING_3_SECTION_5_EXPANDED_1_LIST_5");
  v19 = [v17 itemWithType:3 title:v18];

  v20 = [[HRExpandedContentItemLearnMore alloc] initWithURLIdentifier:1 delegate:v27];
  [v19 setLearnMore:v20];

  [v16 addObject:v19];
  v21 = [MEMORY[0x277CBEA60] arrayWithArray:v16];

  return v21;
}

+ (id)itemWithType:(int64_t)a3 title:(id)a4
{
  v5 = a4;
  v6 = [objc_alloc(objc_opt_class()) initWithType:a3 title:v5];

  return v6;
}

- (HRExpandedContentItem)initWithType:(int64_t)a3 title:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HRExpandedContentItem;
  v8 = [(HRExpandedContentItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    objc_storeStrong(&v8->_title, a4);
  }

  return v9;
}

+ (id)sinusRhythmItemsForAlgorithmVersion:(int64_t)a3
{
  if ((a3 - 1) <= 1)
  {
    a2 = [a1 _sinusRhythmExpandedContentItemsAlgVersionOne];
  }

  return a2;
}

+ (id)atrialFibrillationItemsForAlgorithmVersion:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [a1 _atrialFibrillationExpandedContentItemsAlgorithmVersionTwo];
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v3 = [a1 _atrialFibrillationExpandedContentItemsAlgVersionOne];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

+ (id)highOrLowAbove120Below50HeartRateItemsForAlgorithmVersion:(int64_t)a3
{
  if (a3 == 1)
  {
    v5 = [a1 _highOrLowAbove120Below50HeartRateExpandedContentItemsAlgVersionOne];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

+ (id)inconclusiveItemsForAlgorithmVersion:(int64_t)a3 upgradingFromAlgorithmVersion:(int64_t)a4 learnMoreDelegate:(id)a5
{
  v8 = a5;
  if (a3 == 2)
  {
    v9 = [a1 _inconclusiveExpandedContentItemsAlgorithmVersionTwoUpgradingFromAlgorithmVersion:a4 withLearnMoreDelegate:v8];
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v9 = [a1 _inconclusiveExpandedContentItemsAlgVersionOneWithLearnMoreDelegate:v8];
  }

  a4 = v9;
LABEL_6:

  return a4;
}

+ (id)highOrLowAbove150Below50HeartRateItemsForAlgorithmVersion:(int64_t)a3 upgradingFromAlgorithmVersion:(int64_t)a4
{
  if (a3 == 2)
  {
    a1 = [a1 _highOrLowAbove150Below50HeartRateExpandedContentItemsAlgorithmVersionTwoUpgradingFromAlgorithmVersion:a4];
  }

  else if (a3 == 1)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HRExpandedContentItem highOrLowAbove150Below50HeartRateItemsForAlgorithmVersion:v4 upgradingFromAlgorithmVersion:?];
    }

    a1 = MEMORY[0x277CBEBF8];
  }

  return a1;
}

+ (id)poorRecordingItemsForAlgorithmVersion:(int64_t)a3 learnMoreDelegate:(id)a4
{
  v6 = a4;
  if (a3 == 2)
  {
    a1 = [a1 _poorRecordingExpandedContentItemsForAlgorithmVersionTwoWithLearnMoreDelegate:v6];
  }

  else if (a3 == 1)
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x277CCC2D8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2D8], OS_LOG_TYPE_ERROR))
    {
      [HRExpandedContentItem poorRecordingItemsForAlgorithmVersion:v7 learnMoreDelegate:?];
    }

    a1 = MEMORY[0x277CBEBF8];
  }

  return a1;
}

+ (id)_sinusRhythmExpandedContentItemsAlgVersionOne
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_1_EXPANDED_1");
  v4 = [v2 itemWithType:2 title:v3];
  v10[0] = v4;
  v5 = objc_opt_class();
  v6 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_1_EXPANDED_2");
  v7 = [v5 itemWithType:2 title:v6];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  return v8;
}

+ (id)_atrialFibrillationExpandedContentItemsAlgVersionOne
{
  v40[12] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v39 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_1");
  v38 = [v2 itemWithType:2 title:v39];
  v40[0] = v38;
  v3 = objc_opt_class();
  v37 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_2_HEADING");
  v36 = [v3 itemWithType:1 title:v37];
  v40[1] = v36;
  v4 = objc_opt_class();
  v35 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_2");
  v34 = [v4 itemWithType:2 title:v35];
  v40[2] = v34;
  v5 = objc_opt_class();
  v33 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_HEADING");
  v32 = [v5 itemWithType:1 title:v33];
  v40[3] = v32;
  v6 = objc_opt_class();
  v31 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3");
  v30 = [v6 itemWithType:2 title:v31];
  v40[4] = v30;
  v7 = objc_opt_class();
  v29 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_1");
  v28 = [v7 itemWithType:3 title:v29];
  v40[5] = v28;
  v8 = objc_opt_class();
  v27 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_2");
  v26 = [v8 itemWithType:3 title:v27];
  v40[6] = v26;
  v9 = objc_opt_class();
  v10 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_3");
  v11 = [v9 itemWithType:3 title:v10];
  v40[7] = v11;
  v12 = objc_opt_class();
  v13 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_4");
  v14 = [v12 itemWithType:3 title:v13];
  v40[8] = v14;
  v15 = objc_opt_class();
  v16 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_5");
  v17 = [v15 itemWithType:3 title:v16];
  v40[9] = v17;
  v18 = objc_opt_class();
  v19 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_6");
  v20 = [v18 itemWithType:3 title:v19];
  v40[10] = v20;
  v21 = objc_opt_class();
  v22 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_2_EXPANDED_3_SYMPTOM_7");
  v23 = [v21 itemWithType:3 title:v22];
  v40[11] = v23;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:12];

  return v25;
}

+ (id)_highOrLowAbove120Below50HeartRateExpandedContentItemsAlgVersionOne
{
  v22[6] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v21 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_3_EXPANDED_1_HEADING");
  v20 = [v2 itemWithType:1 title:v21];
  v22[0] = v20;
  v3 = objc_opt_class();
  v19 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_3_EXPANDED_1_BODY_1");
  v4 = [v3 itemWithType:2 title:v19];
  v22[1] = v4;
  v5 = objc_opt_class();
  v6 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_3_EXPANDED_1_BODY_2");
  v7 = [v5 itemWithType:2 title:v6];
  v22[2] = v7;
  v8 = objc_opt_class();
  v9 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_3_EXPANDED_2_HEADING");
  v10 = [v8 itemWithType:1 title:v9];
  v22[3] = v10;
  v11 = objc_opt_class();
  v12 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_3_EXPANDED_2_BODY_1");
  v13 = [v11 itemWithType:2 title:v12];
  v22[4] = v13;
  v14 = objc_opt_class();
  v15 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_3_EXPANDED_2_BODY_2");
  v16 = [v14 itemWithType:2 title:v15];
  v22[5] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:6];

  return v17;
}

+ (id)_inconclusiveExpandedContentItemsAlgVersionOneWithLearnMoreDelegate:(id)a3
{
  v50[5] = *MEMORY[0x277D85DE8];
  v47 = a3;
  v3 = objc_opt_class();
  v44 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_EXPANDED_1_HEADING");
  v4 = [v3 itemWithType:1 title:v44];
  v50[0] = v4;
  v5 = objc_opt_class();
  v6 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_EXPANDED_1_LIST_1");
  v7 = [v5 itemWithType:3 title:v6];
  v50[1] = v7;
  v8 = objc_opt_class();
  v9 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_EXPANDED_1_LIST_2");
  v10 = [v8 itemWithType:3 title:v9];
  v50[2] = v10;
  v11 = objc_opt_class();
  v12 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_EXPANDED_1_LIST_3");
  v13 = [v11 itemWithType:3 title:v12];
  v50[3] = v13;
  v14 = objc_opt_class();
  v15 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_EXPANDED_1_LIST_4");
  v16 = [v14 itemWithType:3 title:v15];
  v50[4] = v16;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:5];

  v17 = objc_opt_class();
  v18 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_EXPANDED_1_LIST_5");
  v45 = [v17 itemWithType:3 title:v18];

  v19 = [[HRExpandedContentItemLearnMore alloc] initWithURLIdentifier:1 delegate:v47];
  [v45 setLearnMore:v19];

  v20 = objc_opt_class();
  v21 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_EXPANDED_2_HEADING");
  v22 = [v20 itemWithType:1 title:v21];
  v49[0] = v22;
  v23 = objc_opt_class();
  v24 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_EXPANDED_2_LIST_1");
  v25 = [v23 itemWithType:3 title:v24];
  v49[1] = v25;
  v26 = objc_opt_class();
  v27 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_EXPANDED_2_LIST_2");
  v28 = [v26 itemWithType:3 title:v27];
  v49[2] = v28;
  v29 = objc_opt_class();
  v30 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_EXPANDED_2_LIST_3");
  v31 = [v29 itemWithType:3 title:v30];
  v49[3] = v31;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];

  v33 = objc_opt_class();
  v34 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_EXPANDED_2_LIST_4");
  v35 = [v33 itemWithType:3 title:v34];

  v36 = [[HRExpandedContentItemLearnMore alloc] initWithURLIdentifier:2 delegate:v47];
  [v35 setLearnMore:v36];

  v37 = objc_opt_class();
  v38 = HRUIECGLocalizedString(@"ECG_ONBOARDING_3_SECTION_4_EXPANDED_3");
  v39 = [v37 itemWithType:2 title:v38];
  v48 = v39;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];

  v41 = [MEMORY[0x277CBEB18] arrayWithArray:v46];
  [v41 addObject:v45];
  [v41 addObjectsFromArray:v32];
  [v41 addObject:v35];
  [v41 addObjectsFromArray:v40];
  v42 = [MEMORY[0x277CBEA60] arrayWithArray:v41];

  return v42;
}

@end
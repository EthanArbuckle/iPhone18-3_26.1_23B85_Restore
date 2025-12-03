@interface HKDisplayCategory
+ (HKDisplayCategory)categoryWithID:(int64_t)d;
+ (HKDisplayCategory)categoryWithName:(id)name;
+ (id)allCategories;
+ (id)sortedCategories;
- (BOOL)isTopLevelCategory;
- (HKDisplayCategory)init;
- (HKDisplayCategory)initWithCategoryID:(int64_t)d displayName:(id)name listIconName:(id)iconName largeListIconName:(id)listIconName shareIconName:(id)shareIconName systemImageName:(id)imageName;
- (HKFillStyle)fillStyle;
- (UIImage)largeListIcon;
- (UIImage)listIcon;
- (UIImage)shareIcon;
- (id)_image;
- (void)largeListIcon;
@end

@implementation HKDisplayCategory

+ (id)sortedCategories
{
  v2 = +[HKDisplayCategory allCategories];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_29];

  return v3;
}

+ (id)allCategories
{
  v30[26] = *MEMORY[0x1E69E9840];
  v29 = [[HKDisplayCategory alloc] initWithCategoryID:1 displayName:@"VITAL_SIGNS" listIconName:@"healthdata_glyph_vitals" largeListIconName:@"healthdata_glyph_vitals_large" shareIconName:@"sharedata_glyph_vitals" systemImageName:@"waveform.path.ecg.rectangle"];
  v30[0] = v29;
  v28 = [[HKDisplayCategory alloc] initWithCategoryID:2 displayName:@"FITNESS" listIconName:@"healthdata_glyph_fitness" largeListIconName:@"healthdata_glyph_activity_large" shareIconName:@"sharedata_glyph_fitness" systemImageName:@"flame.fill"];
  v30[1] = v28;
  v27 = [[HKDisplayCategory alloc] initWithCategoryID:4 displayName:@"NUTRITION" listIconName:@"healthdata_glyph_nutrition" largeListIconName:@"healthdata_glyph_nutrition_large" shareIconName:@"sharedata_glyph_nutrition" systemImageName:@"apple.slice"];
  v30[2] = v27;
  v26 = [[HKDisplayCategory alloc] initWithCategoryID:5 displayName:@"SLEEP" listIconName:@"healthdata_glyph_sleep" largeListIconName:@"healthdata_glyph_sleep_large" shareIconName:@"sharedata_glyph_sleep" systemImageName:@"bed.double.fill"];
  v30[3] = v26;
  v25 = [[HKDisplayCategory alloc] initWithCategoryID:6 displayName:@"BODY_MEASUREMENTS" listIconName:@"healthdata_glyph_bodymeasurements" largeListIconName:@"healthdata_glyph_bodymeasurements_large" shareIconName:@"sharedata_glyph_bodymeasurements" systemImageName:@"figure"];
  v30[4] = v25;
  v24 = [[HKDisplayCategory alloc] initWithCategoryID:7 displayName:@"ME" listIconName:@"healthdata_glyph_me" largeListIconName:0 shareIconName:@"sharedata_glyph_me" systemImageName:@"person.circle"];
  v30[5] = v24;
  v23 = [[HKDisplayCategory alloc] initWithCategoryID:8 displayName:@"REPRODUCTIVE_HEALTH" listIconName:@"healthdata_glyph_reproductive" largeListIconName:@"healthdata_glyph_reproductive_large" shareIconName:@"sharedata_glyph_reproductive" systemImageName:@"apple.cycletracking"];
  v30[6] = v23;
  v22 = [[HKDisplayCategory alloc] initWithCategoryID:9 displayName:@"CLINICAL_DOCUMENTS" listIconName:@"healthdata_glyph_documents" largeListIconName:0 shareIconName:@"sharedata_glyph_documents" systemImageName:@"doc.text"];
  v30[7] = v22;
  v21 = [[HKDisplayCategory alloc] initWithCategoryID:10 displayName:@"MINDFULNESS" listIconName:@"healthdata_glyph_mindfulness" largeListIconName:@"healthdata_glyph_mindfulness_large" shareIconName:@"sharedata_glyph_mindfulness" systemImageName:@"apple.mindfulness"];
  v30[8] = v21;
  v20 = [[HKDisplayCategory alloc] initWithCategoryID:11 displayName:@"HEART" listIconName:@"healthdata_glyph_heart" largeListIconName:@"healthdata_glyph_heart_large" shareIconName:@"sharedata_glyph_heart" systemImageName:@"heart.fill"];
  v30[9] = v20;
  v19 = [[HKDisplayCategory alloc] initWithCategoryID:12 displayName:@"HEARING_HEALTH" listIconName:@"healthdata_glyph_hearing" largeListIconName:@"healthdata_glyph_hearing_large" shareIconName:@"sharedata_glyph_hearing" systemImageName:@"ear"];
  v30[10] = v19;
  v18 = [[HKDisplayCategory alloc] initWithCategoryID:13 displayName:@"RESPIRATORY" listIconName:@"healthdata_glyph_respiratory" largeListIconName:@"healthdata_glyph_respiratory_large" shareIconName:@"sharedata_glyph_respiratory" systemImageName:@"lungs.fill"];
  v30[11] = v18;
  v17 = [[HKDisplayCategory alloc] initWithCategoryID:14 displayName:@"OTHER" listIconName:@"healthdata_glyph_other" largeListIconName:@"healthdata_glyph_other_large" shareIconName:@"sharedata_glyph_other" systemImageName:@"capsule.cross.fill"];
  v30[12] = v17;
  v16 = [[HKDisplayCategory alloc] initWithCategoryID:15 displayName:@"HEALTH_RECORDS" listIconName:@"healthdata_glyph_results" largeListIconName:@"healthdata_glyph_results_large" shareIconName:@"sharedata_glyph_results" systemImageName:@"testtube.2"];
  v30[13] = v16;
  v15 = [[HKDisplayCategory alloc] initWithCategoryID:16 displayName:@"ALLERGY_CATEGORY" listIconName:@"health_records_allergies" largeListIconName:0 shareIconName:@"health_records_allergies" systemImageName:@"allergens"];
  v30[14] = v15;
  v14 = [[HKDisplayCategory alloc] initWithCategoryID:17 displayName:@"CLINICAL_VITALS_CATEGORY" listIconName:@"health_records_vitals" largeListIconName:0 shareIconName:@"health_records_vitals" systemImageName:@"waveform.path.ecg.rectangle"];
  v30[15] = v14;
  v13 = [[HKDisplayCategory alloc] initWithCategoryID:18 displayName:@"CONDITION_CATEGORY" listIconName:@"health_records_conditions" largeListIconName:0 shareIconName:@"health_records_conditions" systemImageName:@"stethoscope"];
  v30[16] = v13;
  v2 = [[HKDisplayCategory alloc] initWithCategoryID:19 displayName:@"IMMUNIZATION_CATEGORY" listIconName:@"health_records_immunizations" largeListIconName:0 shareIconName:@"health_records_immunizations" systemImageName:@"cross.vial"];
  v30[17] = v2;
  v3 = [[HKDisplayCategory alloc] initWithCategoryID:20 displayName:@"LAB_CATEGORY" listIconName:@"health_records_lab_results" largeListIconName:0 shareIconName:@"health_records_lab_results" systemImageName:@"testtube.2"];
  v30[18] = v3;
  v4 = [[HKDisplayCategory alloc] initWithCategoryID:21 displayName:@"MEDICATIONS_CATEGORY" listIconName:@"health_records_medications" largeListIconName:0 shareIconName:@"health_records_medications" systemImageName:@"pills.fill"];
  v30[19] = v4;
  v5 = [[HKDisplayCategory alloc] initWithCategoryID:22 displayName:@"PROCEDURE_CATEGORY" listIconName:@"health_records_procedures" largeListIconName:0 shareIconName:@"health_records_procedures" systemImageName:@"ivfluid.bag"];
  v30[20] = v5;
  v6 = [[HKDisplayCategory alloc] initWithCategoryID:23 displayName:@"MOBILITY" listIconName:@"healthdata_glyph_mobility" largeListIconName:@"healthdata_glyph_mobility_large" shareIconName:@"sharedata_glyph_mobility" systemImageName:@"apple.mobility"];
  v30[21] = v6;
  v7 = [[HKDisplayCategory alloc] initWithCategoryID:26 displayName:@"SYMPTOMS" listIconName:@"healthdata_glyph_symptoms" largeListIconName:@"healthdata_glyph_symptoms_large" shareIconName:@"sharedata_glyph_symptoms" systemImageName:@"figure.arms.open.and.exclamationmark.magnifyingglass"];
  v30[22] = v7;
  v8 = [[HKDisplayCategory alloc] initWithCategoryID:27 displayName:@"INSURANCE_CATEGORY" listIconName:@"health_records_insurance" largeListIconName:0 shareIconName:@"health_records_insurance" systemImageName:@"person.text.rectangle.fill"];
  v30[23] = v8;
  v9 = [[HKDisplayCategory alloc] initWithCategoryID:30 displayName:@"CLINICAL_NOTES_CATEGORY" listIconName:@"health_records_clinical_notes" largeListIconName:0 shareIconName:@"health_records_clinical_notes" systemImageName:@"pencil.and.list.clipboard"];
  v30[24] = v9;
  v10 = [[HKDisplayCategory alloc] initWithCategoryID:31 displayName:@"MEDICATION_TRACKING" listIconName:@"healthdata_glyph_medicationTracking" largeListIconName:@"healthdata_glyph_medicationTracking_large" shareIconName:@"sharedata_glyph_medicationTracking" systemImageName:@"pills.fill"];
  v30[25] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:26];

  return v11;
}

uint64_t __56__HKDisplayCategory_BuiltinCategories__sortedCategories__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 displayName];
  v6 = [v4 displayName];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (id)_image
{
  if (!self->_systemImageName || ([MEMORY[0x1E69DCAB8] _systemImageNamed:?], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if (self->_systemImageName)
    {
      v3 = [MEMORY[0x1E69DCAB8] systemImageNamed:?];
    }

    else
    {
      v3 = 0;
    }
  }

  multiColorImageConfiguration = [(HKDisplayCategory(BuiltinCategories) *)self multiColorImageConfiguration];
  if (multiColorImageConfiguration)
  {
    v5 = [v3 imageByApplyingSymbolConfiguration:multiColorImageConfiguration];
  }

  else
  {
    color = [(HKDisplayCategory(BuiltinCategories) *)self color];
    if (color)
    {
      v7 = [v3 imageWithTintColor:color renderingMode:1];
    }

    else
    {
      v7 = v3;
    }

    v5 = v7;
  }

  return v5;
}

- (UIImage)listIcon
{
  _image = [(HKDisplayCategory *)self _image];
  v5 = _image;
  if (_image)
  {
    v6 = _image;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      [(HKDisplayCategory *)self largeListIcon];
    }

    listIconName = self->_listIconName;
    if (listIconName)
    {
      v9 = MEMORY[0x1E69DCAB8];
      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v6 = [v9 imageNamed:listIconName inBundle:v10];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (HKDisplayCategory)categoryWithID:(int64_t)d
{
  v3 = 0;
  switch(d)
  {
    case 1:
      v4 = [HKDisplayCategory alloc];
      v5 = @"VITAL_SIGNS";
      v6 = @"healthdata_glyph_vitals";
      v7 = @"healthdata_glyph_vitals_large";
      v8 = @"sharedata_glyph_vitals";
      v9 = @"waveform.path.ecg.rectangle";
      v10 = 1;
      goto LABEL_30;
    case 2:
      v4 = [HKDisplayCategory alloc];
      v5 = @"FITNESS";
      v6 = @"healthdata_glyph_fitness";
      v7 = @"healthdata_glyph_activity_large";
      v8 = @"sharedata_glyph_fitness";
      v9 = @"flame.fill";
      v10 = 2;
      goto LABEL_30;
    case 4:
      v4 = [HKDisplayCategory alloc];
      v5 = @"NUTRITION";
      v6 = @"healthdata_glyph_nutrition";
      v7 = @"healthdata_glyph_nutrition_large";
      v8 = @"sharedata_glyph_nutrition";
      v9 = @"apple.slice";
      v10 = 4;
      goto LABEL_30;
    case 5:
      v4 = [HKDisplayCategory alloc];
      v5 = @"SLEEP";
      v6 = @"healthdata_glyph_sleep";
      v7 = @"healthdata_glyph_sleep_large";
      v8 = @"sharedata_glyph_sleep";
      v9 = @"bed.double.fill";
      v10 = 5;
      goto LABEL_30;
    case 6:
      v4 = [HKDisplayCategory alloc];
      v5 = @"BODY_MEASUREMENTS";
      v6 = @"healthdata_glyph_bodymeasurements";
      v7 = @"healthdata_glyph_bodymeasurements_large";
      v8 = @"sharedata_glyph_bodymeasurements";
      v9 = @"figure";
      v10 = 6;
      goto LABEL_30;
    case 7:
      v4 = [HKDisplayCategory alloc];
      v5 = @"ME";
      v6 = @"healthdata_glyph_me";
      v8 = @"sharedata_glyph_me";
      v9 = @"person.circle";
      v10 = 7;
      goto LABEL_21;
    case 8:
      v4 = [HKDisplayCategory alloc];
      v5 = @"REPRODUCTIVE_HEALTH";
      v6 = @"healthdata_glyph_reproductive";
      v7 = @"healthdata_glyph_reproductive_large";
      v8 = @"sharedata_glyph_reproductive";
      v9 = @"apple.cycletracking";
      v10 = 8;
      goto LABEL_30;
    case 9:
      v4 = [HKDisplayCategory alloc];
      v5 = @"CLINICAL_DOCUMENTS";
      v6 = @"healthdata_glyph_documents";
      v8 = @"sharedata_glyph_documents";
      v9 = @"doc.text";
      v10 = 9;
LABEL_21:
      v7 = 0;
      goto LABEL_30;
    case 10:
      v4 = [HKDisplayCategory alloc];
      v5 = @"MINDFULNESS";
      v6 = @"healthdata_glyph_mindfulness";
      v7 = @"healthdata_glyph_mindfulness_large";
      v8 = @"sharedata_glyph_mindfulness";
      v9 = @"apple.mindfulness";
      v10 = 10;
      goto LABEL_30;
    case 11:
      v4 = [HKDisplayCategory alloc];
      v5 = @"HEART";
      v6 = @"healthdata_glyph_heart";
      v7 = @"healthdata_glyph_heart_large";
      v8 = @"sharedata_glyph_heart";
      v9 = @"heart.fill";
      v10 = 11;
      goto LABEL_30;
    case 12:
      v4 = [HKDisplayCategory alloc];
      v5 = @"HEARING_HEALTH";
      v6 = @"healthdata_glyph_hearing";
      v7 = @"healthdata_glyph_hearing_large";
      v8 = @"sharedata_glyph_hearing";
      v9 = @"ear";
      v10 = 12;
      goto LABEL_30;
    case 13:
      v4 = [HKDisplayCategory alloc];
      v5 = @"RESPIRATORY";
      v6 = @"healthdata_glyph_respiratory";
      v7 = @"healthdata_glyph_respiratory_large";
      v8 = @"sharedata_glyph_respiratory";
      v9 = @"lungs.fill";
      v10 = 13;
      goto LABEL_30;
    case 14:
      v4 = [HKDisplayCategory alloc];
      v5 = @"OTHER";
      v6 = @"healthdata_glyph_other";
      v7 = @"healthdata_glyph_other_large";
      v8 = @"sharedata_glyph_other";
      v9 = @"capsule.cross.fill";
      v10 = 14;
      goto LABEL_30;
    case 15:
      v4 = [HKDisplayCategory alloc];
      v5 = @"HEALTH_RECORDS";
      v6 = @"healthdata_glyph_results";
      v7 = @"healthdata_glyph_results_large";
      v8 = @"sharedata_glyph_results";
      v9 = @"testtube.2";
      v10 = 15;
      goto LABEL_30;
    case 16:
      v4 = [HKDisplayCategory alloc];
      v5 = @"ALLERGY_CATEGORY";
      v6 = @"health_records_allergies";
      v9 = @"allergens";
      v10 = 16;
      goto LABEL_29;
    case 17:
      v4 = [HKDisplayCategory alloc];
      v5 = @"CLINICAL_VITALS_CATEGORY";
      v6 = @"health_records_vitals";
      v9 = @"waveform.path.ecg.rectangle";
      v10 = 17;
      goto LABEL_29;
    case 18:
      v4 = [HKDisplayCategory alloc];
      v5 = @"CONDITION_CATEGORY";
      v6 = @"health_records_conditions";
      v9 = @"stethoscope";
      v10 = 18;
      goto LABEL_29;
    case 19:
      v4 = [HKDisplayCategory alloc];
      v5 = @"IMMUNIZATION_CATEGORY";
      v6 = @"health_records_immunizations";
      v9 = @"cross.vial";
      v10 = 19;
      goto LABEL_29;
    case 20:
      v4 = [HKDisplayCategory alloc];
      v5 = @"LAB_CATEGORY";
      v6 = @"health_records_lab_results";
      v9 = @"testtube.2";
      v10 = 20;
      goto LABEL_29;
    case 21:
      v4 = [HKDisplayCategory alloc];
      v5 = @"MEDICATIONS_CATEGORY";
      v6 = @"health_records_medications";
      v9 = @"pills.fill";
      v10 = 21;
      goto LABEL_29;
    case 22:
      v4 = [HKDisplayCategory alloc];
      v5 = @"PROCEDURE_CATEGORY";
      v6 = @"health_records_procedures";
      v9 = @"ivfluid.bag";
      v10 = 22;
      goto LABEL_29;
    case 23:
      v4 = [HKDisplayCategory alloc];
      v5 = @"MOBILITY";
      v6 = @"healthdata_glyph_mobility";
      v7 = @"healthdata_glyph_mobility_large";
      v8 = @"sharedata_glyph_mobility";
      v9 = @"apple.mobility";
      v10 = 23;
      goto LABEL_30;
    case 26:
      v4 = [HKDisplayCategory alloc];
      v5 = @"SYMPTOMS";
      v6 = @"healthdata_glyph_symptoms";
      v7 = @"healthdata_glyph_symptoms_large";
      v8 = @"sharedata_glyph_symptoms";
      v9 = @"figure.arms.open.and.exclamationmark.magnifyingglass";
      v10 = 26;
      goto LABEL_30;
    case 27:
      v4 = [HKDisplayCategory alloc];
      v5 = @"INSURANCE_CATEGORY";
      v6 = @"health_records_insurance";
      v9 = @"person.text.rectangle.fill";
      v10 = 27;
      goto LABEL_29;
    case 30:
      v4 = [HKDisplayCategory alloc];
      v5 = @"CLINICAL_NOTES_CATEGORY";
      v6 = @"health_records_clinical_notes";
      v9 = @"pencil.and.list.clipboard";
      v10 = 30;
LABEL_29:
      v7 = 0;
      v8 = v6;
      goto LABEL_30;
    case 31:
      v4 = [HKDisplayCategory alloc];
      v5 = @"MEDICATION_TRACKING";
      v6 = @"healthdata_glyph_medicationTracking";
      v7 = @"healthdata_glyph_medicationTracking_large";
      v8 = @"sharedata_glyph_medicationTracking";
      v9 = @"pills.fill";
      v10 = 31;
LABEL_30:
      v3 = [(HKDisplayCategory *)v4 initWithCategoryID:v10 displayName:v5 listIconName:v6 largeListIconName:v7 shareIconName:v8 systemImageName:v9];
      break;
    default:
      break;
  }

  return v3;
}

+ (HKDisplayCategory)categoryWithName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"VITAL_SIGNS"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"VITAL_SIGNS";
    v6 = @"healthdata_glyph_vitals";
    v7 = @"healthdata_glyph_vitals_large";
    v8 = @"sharedata_glyph_vitals";
    v9 = @"waveform.path.ecg.rectangle";
    v10 = 1;
LABEL_16:
    v11 = [(HKDisplayCategory *)v4 initWithCategoryID:v10 displayName:v5 listIconName:v6 largeListIconName:v7 shareIconName:v8 systemImageName:v9];
    goto LABEL_17;
  }

  if ([nameCopy isEqualToString:@"FITNESS"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"FITNESS";
    v6 = @"healthdata_glyph_fitness";
    v7 = @"healthdata_glyph_activity_large";
    v8 = @"sharedata_glyph_fitness";
    v9 = @"flame.fill";
    v10 = 2;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"NUTRITION"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"NUTRITION";
    v6 = @"healthdata_glyph_nutrition";
    v7 = @"healthdata_glyph_nutrition_large";
    v8 = @"sharedata_glyph_nutrition";
    v9 = @"apple.slice";
    v10 = 4;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"SLEEP"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"SLEEP";
    v6 = @"healthdata_glyph_sleep";
    v7 = @"healthdata_glyph_sleep_large";
    v8 = @"sharedata_glyph_sleep";
    v9 = @"bed.double.fill";
    v10 = 5;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"BODY_MEASUREMENTS"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"BODY_MEASUREMENTS";
    v6 = @"healthdata_glyph_bodymeasurements";
    v7 = @"healthdata_glyph_bodymeasurements_large";
    v8 = @"sharedata_glyph_bodymeasurements";
    v9 = @"figure";
    v10 = 6;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"ME"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"ME";
    v6 = @"healthdata_glyph_me";
    v8 = @"sharedata_glyph_me";
    v9 = @"person.circle";
    v10 = 7;
LABEL_13:
    v7 = 0;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"REPRODUCTIVE_HEALTH"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"REPRODUCTIVE_HEALTH";
    v6 = @"healthdata_glyph_reproductive";
    v7 = @"healthdata_glyph_reproductive_large";
    v8 = @"sharedata_glyph_reproductive";
    v9 = @"apple.cycletracking";
    v10 = 8;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"CLINICAL_DOCUMENTS"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"CLINICAL_DOCUMENTS";
    v6 = @"healthdata_glyph_documents";
    v8 = @"sharedata_glyph_documents";
    v9 = @"doc.text";
    v10 = 9;
    goto LABEL_13;
  }

  if ([nameCopy isEqualToString:@"MINDFULNESS"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"MINDFULNESS";
    v6 = @"healthdata_glyph_mindfulness";
    v7 = @"healthdata_glyph_mindfulness_large";
    v8 = @"sharedata_glyph_mindfulness";
    v9 = @"apple.mindfulness";
    v10 = 10;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"HEART"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"HEART";
    v6 = @"healthdata_glyph_heart";
    v7 = @"healthdata_glyph_heart_large";
    v8 = @"sharedata_glyph_heart";
    v9 = @"heart.fill";
    v10 = 11;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"HEARING_HEALTH"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"HEARING_HEALTH";
    v6 = @"healthdata_glyph_hearing";
    v7 = @"healthdata_glyph_hearing_large";
    v8 = @"sharedata_glyph_hearing";
    v9 = @"ear";
    v10 = 12;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"RESPIRATORY"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"RESPIRATORY";
    v6 = @"healthdata_glyph_respiratory";
    v7 = @"healthdata_glyph_respiratory_large";
    v8 = @"sharedata_glyph_respiratory";
    v9 = @"lungs.fill";
    v10 = 13;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"OTHER"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"OTHER";
    v6 = @"healthdata_glyph_other";
    v7 = @"healthdata_glyph_other_large";
    v8 = @"sharedata_glyph_other";
    v9 = @"capsule.cross.fill";
    v10 = 14;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"HEALTH_RECORDS"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"HEALTH_RECORDS";
    v6 = @"healthdata_glyph_results";
    v7 = @"healthdata_glyph_results_large";
    v8 = @"sharedata_glyph_results";
    v9 = @"testtube.2";
    v10 = 15;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"ALLERGY_CATEGORY"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"ALLERGY_CATEGORY";
    v6 = @"health_records_allergies";
    v9 = @"allergens";
    v10 = 16;
LABEL_48:
    v7 = 0;
    v8 = v6;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"CLINICAL_VITALS_CATEGORY"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"CLINICAL_VITALS_CATEGORY";
    v6 = @"health_records_vitals";
    v9 = @"waveform.path.ecg.rectangle";
    v10 = 17;
    goto LABEL_48;
  }

  if ([nameCopy isEqualToString:@"CONDITION_CATEGORY"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"CONDITION_CATEGORY";
    v6 = @"health_records_conditions";
    v9 = @"stethoscope";
    v10 = 18;
    goto LABEL_48;
  }

  if ([nameCopy isEqualToString:@"IMMUNIZATION_CATEGORY"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"IMMUNIZATION_CATEGORY";
    v6 = @"health_records_immunizations";
    v9 = @"cross.vial";
    v10 = 19;
    goto LABEL_48;
  }

  if ([nameCopy isEqualToString:@"LAB_CATEGORY"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"LAB_CATEGORY";
    v6 = @"health_records_lab_results";
    v9 = @"testtube.2";
    v10 = 20;
    goto LABEL_48;
  }

  if ([nameCopy isEqualToString:@"MEDICATIONS_CATEGORY"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"MEDICATIONS_CATEGORY";
    v6 = @"health_records_medications";
    v9 = @"pills.fill";
    v10 = 21;
    goto LABEL_48;
  }

  if ([nameCopy isEqualToString:@"PROCEDURE_CATEGORY"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"PROCEDURE_CATEGORY";
    v6 = @"health_records_procedures";
    v9 = @"ivfluid.bag";
    v10 = 22;
    goto LABEL_48;
  }

  if ([nameCopy isEqualToString:@"MOBILITY"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"MOBILITY";
    v6 = @"healthdata_glyph_mobility";
    v7 = @"healthdata_glyph_mobility_large";
    v8 = @"sharedata_glyph_mobility";
    v9 = @"apple.mobility";
    v10 = 23;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"SYMPTOMS"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"SYMPTOMS";
    v6 = @"healthdata_glyph_symptoms";
    v7 = @"healthdata_glyph_symptoms_large";
    v8 = @"sharedata_glyph_symptoms";
    v9 = @"figure.arms.open.and.exclamationmark.magnifyingglass";
    v10 = 26;
    goto LABEL_16;
  }

  if ([nameCopy isEqualToString:@"INSURANCE_CATEGORY"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"INSURANCE_CATEGORY";
    v6 = @"health_records_insurance";
    v9 = @"person.text.rectangle.fill";
    v10 = 27;
    goto LABEL_48;
  }

  if ([nameCopy isEqualToString:@"CLINICAL_NOTES_CATEGORY"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"CLINICAL_NOTES_CATEGORY";
    v6 = @"health_records_clinical_notes";
    v9 = @"pencil.and.list.clipboard";
    v10 = 30;
    goto LABEL_48;
  }

  if ([nameCopy isEqualToString:@"MEDICATION_TRACKING"])
  {
    v4 = [HKDisplayCategory alloc];
    v5 = @"MEDICATION_TRACKING";
    v6 = @"healthdata_glyph_medicationTracking";
    v7 = @"healthdata_glyph_medicationTracking_large";
    v8 = @"sharedata_glyph_medicationTracking";
    v9 = @"pills.fill";
    v10 = 31;
    goto LABEL_16;
  }

  v11 = 0;
LABEL_17:

  return v11;
}

- (HKDisplayCategory)initWithCategoryID:(int64_t)d displayName:(id)name listIconName:(id)iconName largeListIconName:(id)listIconName shareIconName:(id)shareIconName systemImageName:(id)imageName
{
  nameCopy = name;
  iconNameCopy = iconName;
  listIconNameCopy = listIconName;
  shareIconNameCopy = shareIconName;
  imageNameCopy = imageName;
  v81.receiver = self;
  v81.super_class = HKDisplayCategory;
  v18 = [(HKDisplayCategory *)&v81 init];
  v19 = v18;
  if (v18)
  {
    v18->_categoryID = d;
    v20 = [nameCopy copy];
    categoryName = v19->_categoryName;
    v19->_categoryName = v20;

    v22 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v23 = [v22 localizedStringForKey:v19->_categoryName value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    displayName = v19->_displayName;
    v19->_displayName = v23;

    v25 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v26 = [(NSString *)v19->_categoryName stringByAppendingString:@"_EMBEDDED"];
    v27 = [v25 localizedStringForKey:v26 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
    embeddedDisplayName = v19->_embeddedDisplayName;
    v19->_embeddedDisplayName = v27;

    v29 = [listIconNameCopy copy];
    largeListIconName = v19->_largeListIconName;
    v19->_largeListIconName = v29;

    v31 = [iconNameCopy copy];
    listIconName = v19->_listIconName;
    v19->_listIconName = v31;

    v33 = [shareIconNameCopy copy];
    shareIconName = v19->_shareIconName;
    v19->_shareIconName = v33;

    v35 = [imageNameCopy copy];
    systemImageName = v19->_systemImageName;
    v19->_systemImageName = v35;

    if ([(NSString *)v19->_displayName isEqualToString:v19->_categoryName])
    {
      v37 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v38 = [v37 localizedStringForKey:v19->_categoryName value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];
      v39 = v19->_displayName;
      v19->_displayName = v38;

      v40 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v41 = [(NSString *)v19->_categoryName stringByAppendingString:@"_EMBEDDED"];
      v42 = [v40 localizedStringForKey:v41 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Health-Records"];
      v43 = v19->_embeddedDisplayName;
      v19->_embeddedDisplayName = v42;
    }

    if ([(NSString *)v19->_displayName isEqualToString:v19->_categoryName])
    {
      v44 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v45 = [v44 localizedStringForKey:v19->_categoryName value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-WalkingSteadiness"];
      v46 = v19->_displayName;
      v19->_displayName = v45;

      v47 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v48 = [(NSString *)v19->_categoryName stringByAppendingString:@"_EMBEDDED"];
      v49 = [v47 localizedStringForKey:v48 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-WalkingSteadiness"];
      v50 = v19->_embeddedDisplayName;
      v19->_embeddedDisplayName = v49;
    }

    if ([(NSString *)v19->_displayName isEqualToString:v19->_categoryName])
    {
      v51 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v52 = [v51 localizedStringForKey:v19->_categoryName value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Meds"];
      v53 = v19->_displayName;
      v19->_displayName = v52;

      v54 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v55 = [(NSString *)v19->_categoryName stringByAppendingString:@"_EMBEDDED"];
      v56 = [v54 localizedStringForKey:v55 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Meds"];
      v57 = v19->_embeddedDisplayName;
      v19->_embeddedDisplayName = v56;
    }

    v79 = shareIconNameCopy;
    if ([(NSString *)v19->_displayName isEqualToString:v19->_categoryName, imageNameCopy])
    {
      v58 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v59 = [v58 localizedStringForKey:v19->_categoryName value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Notes"];
      v60 = v19->_displayName;
      v19->_displayName = v59;

      v61 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v62 = [(NSString *)v19->_categoryName stringByAppendingString:@"_EMBEDDED"];
      v63 = [v61 localizedStringForKey:v62 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Clinical-Notes"];
      v64 = v19->_embeddedDisplayName;
      v19->_embeddedDisplayName = v63;
    }

    mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
    features = [mEMORY[0x1E696C608] features];
    if (([features chamomile] & 1) == 0)
    {

      goto LABEL_14;
    }

    v67 = v19->_categoryName;
    v68 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v69 = [v68 localizedStringForKey:v19->_categoryName value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
    LOBYTE(v67) = [(NSString *)v67 isEqualToString:v69];

    shareIconNameCopy = v79;
    imageNameCopy = v78;
    if ((v67 & 1) == 0)
    {
      v70 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v71 = [v70 localizedStringForKey:v19->_categoryName value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
      v72 = v19->_displayName;
      v19->_displayName = v71;

      v73 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
      v74 = [(NSString *)v19->_categoryName stringByAppendingString:@"_EMBEDDED"];
      v75 = [v73 localizedStringForKey:v74 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable-Chamomile"];
      v76 = v19->_embeddedDisplayName;
      v19->_embeddedDisplayName = v75;

      mEMORY[0x1E696C608] = v19->_systemImageName;
      v19->_systemImageName = @"brain.head.profile";
LABEL_14:

      shareIconNameCopy = v79;
      imageNameCopy = v78;
    }
  }

  return v19;
}

- (HKDisplayCategory)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKFillStyle)fillStyle
{
  v3 = objc_alloc_init(HKSolidFillStyle);
  color = [(HKDisplayCategory(BuiltinCategories) *)self color];
  [(HKSolidFillStyle *)v3 setColor:color];

  return v3;
}

- (UIImage)largeListIcon
{
  _image = [(HKDisplayCategory *)self _image];
  v5 = _image;
  if (_image)
  {
    v6 = _image;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      [(HKDisplayCategory *)self largeListIcon];
    }

    largeListIconName = self->_largeListIconName;
    if (largeListIconName)
    {
      v9 = MEMORY[0x1E69DCAB8];
      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v6 = [v9 imageNamed:largeListIconName inBundle:v10];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (UIImage)shareIcon
{
  _image = [(HKDisplayCategory *)self _image];
  v5 = _image;
  if (_image)
  {
    v6 = _image;
  }

  else
  {
    _HKInitializeLogging();
    v7 = *MEMORY[0x1E696B940];
    if (os_log_type_enabled(*MEMORY[0x1E696B940], OS_LOG_TYPE_ERROR))
    {
      [(HKDisplayCategory *)self largeListIcon];
    }

    shareIconName = self->_shareIconName;
    if (shareIconName)
    {
      v9 = MEMORY[0x1E69DCAB8];
      v10 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v6 = [v9 imageNamed:shareIconName inBundle:v10];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)isTopLevelCategory
{
  topLevelCategoryIdentifiers = [objc_opt_class() topLevelCategoryIdentifiers];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_categoryID];
  v5 = [topLevelCategoryIdentifiers indexOfObject:v4] != 0x7FFFFFFFFFFFFFFFLL;

  return v5;
}

- (void)largeListIcon
{
  v4 = a2;
  v5 = NSStringFromSelector(a3);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_5(&dword_1C3942000, v6, v7, "using fallback icon for %@ in %@", v8, v9, v10, v11, v12);
}

@end
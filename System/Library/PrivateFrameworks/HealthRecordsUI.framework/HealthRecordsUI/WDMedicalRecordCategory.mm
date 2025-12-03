@interface WDMedicalRecordCategory
- (WDMedicalRecordCategory)initWithDictionary:(id)dictionary;
@end

@implementation WDMedicalRecordCategory

- (WDMedicalRecordCategory)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = WDMedicalRecordCategory;
  v5 = [(WDMedicalRecordCategory *)&v21 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"HKMedicalRecordCategoryTypeIdentifer"];
    -[WDMedicalRecordCategory setCategoryType:](v5, "setCategoryType:", [v6 integerValue]);

    v7 = [dictionaryCopy objectForKeyedSubscript:@"WDMedicalRecordCategoryMetricColors"];
    [(WDMedicalRecordCategory *)v5 setCategoryMetricColors:v7];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"WDMedicalRecordCategoryDisplayName"];
    [(WDMedicalRecordCategory *)v5 setDisplayName:v8];

    v9 = [dictionaryCopy objectForKeyedSubscript:@"WDMedicalRecordCategoryDisplayImageName"];
    [(WDMedicalRecordCategory *)v5 setDisplayImageName:v9];

    displayImageName = [(WDMedicalRecordCategory *)v5 displayImageName];
    if (displayImageName)
    {
      v11 = displayImageName;
      mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
      hkui_isRunningInApp = [mEMORY[0x1E696C608] hkui_isRunningInApp];

      if (hkui_isRunningInApp)
      {
        v14 = MEMORY[0x1E69DCAB8];
        displayImageName2 = [(WDMedicalRecordCategory *)v5 displayImageName];
        v16 = HKHealthUIFrameworkBundle();
        v17 = [v14 imageNamed:displayImageName2 inBundle:v16 compatibleWithTraitCollection:0];
        [(WDMedicalRecordCategory *)v5 setDisplayImage:v17];
      }
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"WDMedicalRecordCategorySampleTypes"];
    [(WDMedicalRecordCategory *)v5 setSampleTypes:v18];

    v19 = [dictionaryCopy objectForKeyedSubscript:@"WDMedicalRecordCategoryAdditionalPredicates"];
    [(WDMedicalRecordCategory *)v5 setAdditionalPredicatesForCategory:v19];
  }

  return v5;
}

@end
@interface WDMedicalRecordCategory
- (WDMedicalRecordCategory)initWithDictionary:(id)a3;
@end

@implementation WDMedicalRecordCategory

- (WDMedicalRecordCategory)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = WDMedicalRecordCategory;
  v5 = [(WDMedicalRecordCategory *)&v21 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"HKMedicalRecordCategoryTypeIdentifer"];
    -[WDMedicalRecordCategory setCategoryType:](v5, "setCategoryType:", [v6 integerValue]);

    v7 = [v4 objectForKeyedSubscript:@"WDMedicalRecordCategoryMetricColors"];
    [(WDMedicalRecordCategory *)v5 setCategoryMetricColors:v7];

    v8 = [v4 objectForKeyedSubscript:@"WDMedicalRecordCategoryDisplayName"];
    [(WDMedicalRecordCategory *)v5 setDisplayName:v8];

    v9 = [v4 objectForKeyedSubscript:@"WDMedicalRecordCategoryDisplayImageName"];
    [(WDMedicalRecordCategory *)v5 setDisplayImageName:v9];

    v10 = [(WDMedicalRecordCategory *)v5 displayImageName];
    if (v10)
    {
      v11 = v10;
      v12 = [MEMORY[0x1E696C608] sharedBehavior];
      v13 = [v12 hkui_isRunningInApp];

      if (v13)
      {
        v14 = MEMORY[0x1E69DCAB8];
        v15 = [(WDMedicalRecordCategory *)v5 displayImageName];
        v16 = HKHealthUIFrameworkBundle();
        v17 = [v14 imageNamed:v15 inBundle:v16 compatibleWithTraitCollection:0];
        [(WDMedicalRecordCategory *)v5 setDisplayImage:v17];
      }
    }

    v18 = [v4 objectForKeyedSubscript:@"WDMedicalRecordCategorySampleTypes"];
    [(WDMedicalRecordCategory *)v5 setSampleTypes:v18];

    v19 = [v4 objectForKeyedSubscript:@"WDMedicalRecordCategoryAdditionalPredicates"];
    [(WDMedicalRecordCategory *)v5 setAdditionalPredicatesForCategory:v19];
  }

  return v5;
}

@end
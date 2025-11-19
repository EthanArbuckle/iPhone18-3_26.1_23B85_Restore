@interface WDBloodPressureListDataProvider
- (WDBloodPressureListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4;
- (id)predicateForType:(id)a3;
- (id)sampleTypes;
- (id)textForObject:(id)a3;
@end

@implementation WDBloodPressureListDataProvider

- (WDBloodPressureListDataProvider)initWithDisplayType:(id)a3 profile:(id)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = WDBloodPressureListDataProvider;
  v4 = [(WDSampleListDataProvider *)&v11 initWithDisplayType:a3 profile:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC980]];
    v6 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC978]];
    v12[0] = v5;
    v12[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];
    systolicAndDiastolicTypes = v4->_systolicAndDiastolicTypes;
    v4->_systolicAndDiastolicTypes = v7;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCD720] correlationTypeForIdentifier:*MEMORY[0x277CCBBA8]];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)predicateForType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CCD838] predicateForObjectsWithNoCorrelation];
  }

  return v5;
}

- (id)textForObject:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAB68] string];
  systolicAndDiastolicTypes = self->_systolicAndDiastolicTypes;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__WDBloodPressureListDataProvider_textForObject___block_invoke;
  v11[3] = &unk_2796E7FB0;
  v11[4] = self;
  v12 = v4;
  v13 = v5;
  v7 = v5;
  v8 = v4;
  [(NSArray *)systolicAndDiastolicTypes enumerateObjectsUsingBlock:v11];
  v9 = [v7 copy];

  return v9;
}

void __49__WDBloodPressureListDataProvider_textForObject___block_invoke(id *a1, void *a2, unint64_t a3)
{
  v5 = a1[4];
  v6 = a2;
  v20 = [v5 displayType];
  v7 = [a1[5] quantitySampleForType:v6];

  v8 = [v7 quantity];
  if (v7)
  {
    v9 = [a1[4] unitController];
    v10 = [v9 unitForDisplayType:v20];

    v11 = [v20 presentation];
    v12 = MEMORY[0x277CCABB0];
    [v8 doubleValueForUnit:v10];
    v13 = [v12 numberWithDouble:?];
    v14 = [v11 adjustedValueForDaemonValue:v13];

    v15 = [a1[4] unitController];
    v16 = HKFormattedStringFromValue();

    [a1[6] appendString:v16];
  }

  else
  {
    v17 = a1[6];
    v10 = HKLocalizedNoDataString();
    [v17 appendString:v10];
  }

  if ([*(a1[4] + 10) count] - 1 > a3)
  {
    v18 = a1[6];
    v19 = HKUIBloodPressureSystolicDiastolicSeparatorString();
    [v18 appendString:v19];
  }
}

@end
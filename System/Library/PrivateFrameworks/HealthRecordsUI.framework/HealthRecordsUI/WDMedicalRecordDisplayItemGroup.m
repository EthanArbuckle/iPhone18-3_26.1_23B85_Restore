@interface WDMedicalRecordDisplayItemGroup
+ (id)displayItemGroupWithDaySummary:(id)a3;
+ (id)displayItemGroupWithDisplayItems:(id)a3;
- (id)displayItemAtIndex:(int64_t)a3;
- (int64_t)numberOfDisplayItems;
@end

@implementation WDMedicalRecordDisplayItemGroup

+ (id)displayItemGroupWithDaySummary:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(WDMedicalRecordDisplayItemGroup);
  [(WDMedicalRecordDisplayItemGroup *)v4 setDaySummary:v3];

  return v4;
}

+ (id)displayItemGroupWithDisplayItems:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(WDMedicalRecordDisplayItemGroup);
  v5 = [v3 copy];

  [(WDMedicalRecordDisplayItemGroup *)v4 setItems:v5];

  return v4;
}

- (id)displayItemAtIndex:(int64_t)a3
{
  v5 = [(WDMedicalRecordDisplayItemGroup *)self daySummary];

  if (v5)
  {
    v6 = [(WDMedicalRecordDisplayItemGroup *)self daySummary];
    [v6 displayItemAtIndex:a3];
  }

  else
  {
    v6 = [(WDMedicalRecordDisplayItemGroup *)self items];
    [v6 objectAtIndexedSubscript:a3];
  }
  v7 = ;

  return v7;
}

- (int64_t)numberOfDisplayItems
{
  v3 = [(WDMedicalRecordDisplayItemGroup *)self daySummary];

  if (v3)
  {
    v4 = [(WDMedicalRecordDisplayItemGroup *)self daySummary];
    v5 = [v4 numberOfDisplayItems];
  }

  else
  {
    v4 = [(WDMedicalRecordDisplayItemGroup *)self items];
    v5 = [v4 count];
  }

  v6 = v5;

  return v6;
}

@end
@interface WDMedicalRecordDisplayItemGroup
+ (id)displayItemGroupWithDaySummary:(id)summary;
+ (id)displayItemGroupWithDisplayItems:(id)items;
- (id)displayItemAtIndex:(int64_t)index;
- (int64_t)numberOfDisplayItems;
@end

@implementation WDMedicalRecordDisplayItemGroup

+ (id)displayItemGroupWithDaySummary:(id)summary
{
  summaryCopy = summary;
  v4 = objc_alloc_init(WDMedicalRecordDisplayItemGroup);
  [(WDMedicalRecordDisplayItemGroup *)v4 setDaySummary:summaryCopy];

  return v4;
}

+ (id)displayItemGroupWithDisplayItems:(id)items
{
  itemsCopy = items;
  v4 = objc_alloc_init(WDMedicalRecordDisplayItemGroup);
  v5 = [itemsCopy copy];

  [(WDMedicalRecordDisplayItemGroup *)v4 setItems:v5];

  return v4;
}

- (id)displayItemAtIndex:(int64_t)index
{
  daySummary = [(WDMedicalRecordDisplayItemGroup *)self daySummary];

  if (daySummary)
  {
    daySummary2 = [(WDMedicalRecordDisplayItemGroup *)self daySummary];
    [daySummary2 displayItemAtIndex:index];
  }

  else
  {
    daySummary2 = [(WDMedicalRecordDisplayItemGroup *)self items];
    [daySummary2 objectAtIndexedSubscript:index];
  }
  v7 = ;

  return v7;
}

- (int64_t)numberOfDisplayItems
{
  daySummary = [(WDMedicalRecordDisplayItemGroup *)self daySummary];

  if (daySummary)
  {
    daySummary2 = [(WDMedicalRecordDisplayItemGroup *)self daySummary];
    numberOfDisplayItems = [daySummary2 numberOfDisplayItems];
  }

  else
  {
    daySummary2 = [(WDMedicalRecordDisplayItemGroup *)self items];
    numberOfDisplayItems = [daySummary2 count];
  }

  v6 = numberOfDisplayItems;

  return v6;
}

@end
@interface NTKLuxViewerComplicationEntryModel
+ (id)modelWithLux:(float)lux;
+ (id)tritiumModel;
- (id)entryForComplicationFamily:(int64_t)family;
@end

@implementation NTKLuxViewerComplicationEntryModel

+ (id)tritiumModel
{
  v2 = objc_alloc_init(NTKLuxViewerComplicationEntryModel);
  v2->_luxValue = -1.0;
  date = [MEMORY[0x277CBEAA8] date];
  [(NTKTimelineEntryModel *)v2 setEntryDate:date];

  return v2;
}

+ (id)modelWithLux:(float)lux
{
  v4 = objc_alloc_init(NTKLuxViewerComplicationEntryModel);
  v4->_luxValue = lux;
  date = [MEMORY[0x277CBEAA8] date];
  [(NTKTimelineEntryModel *)v4 setEntryDate:date];

  return v4;
}

- (id)entryForComplicationFamily:(int64_t)family
{
  luxValue = self->_luxValue;
  if (luxValue == -1.0)
  {
    luxValue = @"----";
  }

  else
  {
    luxValue = [MEMORY[0x277CCACA8] stringWithFormat:@"%.0f", luxValue];
  }

  v7 = 0;
  if (family > 9)
  {
    if (family == 10)
    {
      v8 = [MEMORY[0x277CBBB88] textProviderWithText:@"LUX"];
      v9 = [MEMORY[0x277CBBB88] textProviderWithText:luxValue];
      v14 = [MEMORY[0x277CBB898] templateWithLine1TextProvider:v8 line2TextProvider:v9];
    }

    else
    {
      if (family != 11)
      {
        goto LABEL_15;
      }

      v8 = [MEMORY[0x277CBBB88] textProviderWithText:@"LUX"];
      v9 = [MEMORY[0x277CBBB88] textProviderWithText:luxValue];
      v14 = [MEMORY[0x277CBB9B8] templateWithHeaderTextProvider:v8 bodyTextProvider:v9];
    }
  }

  else
  {
    if (family != 8)
    {
      if (family != 9)
      {
        goto LABEL_15;
      }

      v8 = [MEMORY[0x277CBBB88] textProviderWithText:@"LUX"];
      v9 = [MEMORY[0x277CBBB88] textProviderWithText:luxValue];
      v10 = [MEMORY[0x277CBB898] templateWithLine1TextProvider:v8 line2TextProvider:v9];
      entryDate2 = [MEMORY[0x277CBB810] templateWithCircularTemplate:v10];
      v12 = MEMORY[0x277CBBAC8];
      entryDate = [(NTKTimelineEntryModel *)self entryDate];
      v7 = [v12 entryWithDate:entryDate complicationTemplate:entryDate2];

      goto LABEL_14;
    }

    v8 = [MEMORY[0x277CBBB88] textProviderWithText:@"LUX"];
    v9 = [MEMORY[0x277CBBB88] textProviderWithText:luxValue];
    v14 = [MEMORY[0x277CBB900] templateWithInnerTextProvider:v9 outerTextProvider:v8];
  }

  v10 = v14;
  v15 = MEMORY[0x277CBBAC8];
  entryDate2 = [(NTKTimelineEntryModel *)self entryDate];
  v7 = [v15 entryWithDate:entryDate2 complicationTemplate:v10];
LABEL_14:

LABEL_15:

  return v7;
}

@end
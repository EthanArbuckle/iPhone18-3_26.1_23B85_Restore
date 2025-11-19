@interface NTKNitsViewerComplicationEntryModel
+ (id)modelWithNits:(float)a3;
+ (id)tritiumModel;
- (id)entryForComplicationFamily:(int64_t)a3;
@end

@implementation NTKNitsViewerComplicationEntryModel

+ (id)tritiumModel
{
  v2 = objc_alloc_init(NTKNitsViewerComplicationEntryModel);
  v2->_nitsValue = -1.0;
  v3 = [MEMORY[0x277CBEAA8] date];
  [(NTKTimelineEntryModel *)v2 setEntryDate:v3];

  return v2;
}

+ (id)modelWithNits:(float)a3
{
  v4 = objc_alloc_init(NTKNitsViewerComplicationEntryModel);
  v4->_nitsValue = a3;
  v5 = [MEMORY[0x277CBEAA8] date];
  [(NTKTimelineEntryModel *)v4 setEntryDate:v5];

  return v4;
}

- (id)entryForComplicationFamily:(int64_t)a3
{
  nitsValue = self->_nitsValue;
  if (nitsValue == -1.0)
  {
    v6 = @"----";
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%.0f", nitsValue];
  }

  v7 = 0;
  if (a3 > 9)
  {
    if (a3 == 10)
    {
      v8 = [MEMORY[0x277CBBB88] textProviderWithText:@"NITS"];
      v9 = [MEMORY[0x277CBBB88] textProviderWithText:v6];
      v14 = [MEMORY[0x277CBB898] templateWithLine1TextProvider:v8 line2TextProvider:v9];
    }

    else
    {
      if (a3 != 11)
      {
        goto LABEL_15;
      }

      v8 = [MEMORY[0x277CBBB88] textProviderWithText:@"NITS"];
      v9 = [MEMORY[0x277CBBB88] textProviderWithText:v6];
      v14 = [MEMORY[0x277CBB9B8] templateWithHeaderTextProvider:v8 bodyTextProvider:v9];
    }
  }

  else
  {
    if (a3 != 8)
    {
      if (a3 != 9)
      {
        goto LABEL_15;
      }

      v8 = [MEMORY[0x277CBBB88] textProviderWithText:@"NITS"];
      v9 = [MEMORY[0x277CBBB88] textProviderWithText:v6];
      v10 = [MEMORY[0x277CBB898] templateWithLine1TextProvider:v8 line2TextProvider:v9];
      v11 = [MEMORY[0x277CBB810] templateWithCircularTemplate:v10];
      v12 = MEMORY[0x277CBBAC8];
      v13 = [(NTKTimelineEntryModel *)self entryDate];
      v7 = [v12 entryWithDate:v13 complicationTemplate:v11];

      goto LABEL_14;
    }

    v8 = [MEMORY[0x277CBBB88] textProviderWithText:@"NITS"];
    v9 = [MEMORY[0x277CBBB88] textProviderWithText:v6];
    v14 = [MEMORY[0x277CBB900] templateWithInnerTextProvider:v9 outerTextProvider:v8];
  }

  v10 = v14;
  v15 = MEMORY[0x277CBBAC8];
  v11 = [(NTKTimelineEntryModel *)self entryDate];
  v7 = [v15 entryWithDate:v11 complicationTemplate:v10];
LABEL_14:

LABEL_15:

  return v7;
}

@end
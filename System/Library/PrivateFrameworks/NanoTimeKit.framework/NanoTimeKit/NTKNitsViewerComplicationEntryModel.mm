@interface NTKNitsViewerComplicationEntryModel
+ (id)modelWithNits:(float)nits;
+ (id)tritiumModel;
- (id)entryForComplicationFamily:(int64_t)family;
@end

@implementation NTKNitsViewerComplicationEntryModel

+ (id)tritiumModel
{
  v2 = objc_alloc_init(NTKNitsViewerComplicationEntryModel);
  v2->_nitsValue = -1.0;
  date = [MEMORY[0x277CBEAA8] date];
  [(NTKTimelineEntryModel *)v2 setEntryDate:date];

  return v2;
}

+ (id)modelWithNits:(float)nits
{
  v4 = objc_alloc_init(NTKNitsViewerComplicationEntryModel);
  v4->_nitsValue = nits;
  date = [MEMORY[0x277CBEAA8] date];
  [(NTKTimelineEntryModel *)v4 setEntryDate:date];

  return v4;
}

- (id)entryForComplicationFamily:(int64_t)family
{
  nitsValue = self->_nitsValue;
  if (nitsValue == -1.0)
  {
    nitsValue = @"----";
  }

  else
  {
    nitsValue = [MEMORY[0x277CCACA8] stringWithFormat:@"%.0f", nitsValue];
  }

  v7 = 0;
  if (family > 9)
  {
    if (family == 10)
    {
      v8 = [MEMORY[0x277CBBB88] textProviderWithText:@"NITS"];
      v9 = [MEMORY[0x277CBBB88] textProviderWithText:nitsValue];
      v14 = [MEMORY[0x277CBB898] templateWithLine1TextProvider:v8 line2TextProvider:v9];
    }

    else
    {
      if (family != 11)
      {
        goto LABEL_15;
      }

      v8 = [MEMORY[0x277CBBB88] textProviderWithText:@"NITS"];
      v9 = [MEMORY[0x277CBBB88] textProviderWithText:nitsValue];
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

      v8 = [MEMORY[0x277CBBB88] textProviderWithText:@"NITS"];
      v9 = [MEMORY[0x277CBBB88] textProviderWithText:nitsValue];
      v10 = [MEMORY[0x277CBB898] templateWithLine1TextProvider:v8 line2TextProvider:v9];
      entryDate2 = [MEMORY[0x277CBB810] templateWithCircularTemplate:v10];
      v12 = MEMORY[0x277CBBAC8];
      entryDate = [(NTKTimelineEntryModel *)self entryDate];
      v7 = [v12 entryWithDate:entryDate complicationTemplate:entryDate2];

      goto LABEL_14;
    }

    v8 = [MEMORY[0x277CBBB88] textProviderWithText:@"NITS"];
    v9 = [MEMORY[0x277CBBB88] textProviderWithText:nitsValue];
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
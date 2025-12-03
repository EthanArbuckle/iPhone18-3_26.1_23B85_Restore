@interface NTKCBuildNumberComplicationEntryModel
+ (id)modelWithBuildNum:(id)num;
- (id)entryForComplicationFamily:(int64_t)family;
@end

@implementation NTKCBuildNumberComplicationEntryModel

+ (id)modelWithBuildNum:(id)num
{
  numCopy = num;
  v4 = objc_alloc_init(NTKCBuildNumberComplicationEntryModel);
  buildNum = v4->buildNum;
  v4->buildNum = numCopy;
  v6 = numCopy;

  prefixString = v4->prefixString;
  v4->prefixString = @"Phone";

  date = [MEMORY[0x277CBEAA8] date];

  [(NTKTimelineEntryModel *)v4 setEntryDate:date];

  return v4;
}

- (id)entryForComplicationFamily:(int64_t)family
{
  v5 = [MEMORY[0x277CBBB88] textProviderWithText:self->prefixString];
  v6 = [MEMORY[0x277CBBB88] textProviderWithText:self->buildNum];
  v7 = 0;
  if (family <= 8)
  {
    switch(family)
    {
      case 1:
        v9 = [MEMORY[0x277CBBA08] templateWithHeaderTextProvider:v5 body1TextProvider:v6];
        break;
      case 3:
        v16 = [MEMORY[0x277CBBBA0] textProviderWithFormat:@"%@ %@", v5, v6];
        v12 = [MEMORY[0x277CBBA80] templateWithTextProvider:v16];

        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_15;
      case 8:
        v9 = [MEMORY[0x277CBB900] templateWithInnerTextProvider:v6 outerTextProvider:v5];
        break;
      default:
        goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (family > 10)
  {
    if (family != 11)
    {
      if (family != 12)
      {
        goto LABEL_19;
      }

      v8 = MEMORY[0x277CBB980];
      goto LABEL_12;
    }

    v9 = [MEMORY[0x277CBB9B8] templateWithHeaderTextProvider:v5 bodyTextProvider:v6];
LABEL_17:
    v12 = v9;
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_15:
    v7 = 0;
    goto LABEL_19;
  }

  if (family != 9)
  {
    v8 = MEMORY[0x277CBB898];
LABEL_12:
    v9 = [v8 templateWithLine1TextProvider:v5 line2TextProvider:v6];
    goto LABEL_17;
  }

  v10 = [(NTKCBuildNumberComplicationEntryModel *)self entryForComplicationFamily:10];
  complicationTemplate = [v10 complicationTemplate];

  v12 = [MEMORY[0x277CBB810] templateWithCircularTemplate:complicationTemplate];

  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_18:
  v13 = MEMORY[0x277CBBAC8];
  entryDate = [(NTKTimelineEntryModel *)self entryDate];
  v7 = [v13 entryWithDate:entryDate complicationTemplate:v12];

LABEL_19:

  return v7;
}

@end
@interface NTKBuildNumberComplicationEntryModel
+ (id)modelWithBuildNum:(id)num;
- (id)entryForComplicationFamily:(int64_t)family;
@end

@implementation NTKBuildNumberComplicationEntryModel

+ (id)modelWithBuildNum:(id)num
{
  numCopy = num;
  v4 = objc_alloc_init(NTKBuildNumberComplicationEntryModel);
  buildNum = v4->buildNum;
  v4->buildNum = numCopy;
  v6 = numCopy;

  prefixString = v4->prefixString;
  v4->prefixString = @"Watch";

  date = [MEMORY[0x277CBEAA8] date];

  [(NTKTimelineEntryModel *)v4 setEntryDate:date];

  return v4;
}

- (id)entryForComplicationFamily:(int64_t)family
{
  v5 = [MEMORY[0x277CBBB88] textProviderWithText:self->prefixString];
  v6 = [MEMORY[0x277CBBB88] textProviderWithText:self->buildNum];
  v7 = 0;
  if (family > 8)
  {
    if (family > 10)
    {
      if (family != 11)
      {
        if (family != 12)
        {
          goto LABEL_21;
        }

        v8 = MEMORY[0x277CBB980];
        goto LABEL_12;
      }

      v15 = MEMORY[0x277CBB9B8];
      complicationTemplate = [MEMORY[0x277CBBB20] symbolImageProviderWithSystemName:@"tram.fill"];
      v13 = [v15 templateWithHeaderImageProvider:complicationTemplate headerTextProvider:v5 bodyTextProvider:v6];
    }

    else
    {
      if (family != 9)
      {
        v8 = MEMORY[0x277CBB898];
LABEL_12:
        v9 = [v8 templateWithLine1TextProvider:v5 line2TextProvider:v6];
        goto LABEL_13;
      }

      v14 = [(NTKBuildNumberComplicationEntryModel *)self entryForComplicationFamily:10];
      complicationTemplate = [v14 complicationTemplate];

      v13 = [MEMORY[0x277CBB810] templateWithCircularTemplate:complicationTemplate];
    }

LABEL_19:
    v10 = v13;

    if (!v10)
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (family == 1)
  {
    v11 = MEMORY[0x277CBBA08];
    complicationTemplate = [MEMORY[0x277CBBB98] symbolImageProviderWithSystemName:@"tram.fill"];
    v13 = [v11 templateWithHeaderImageProvider:complicationTemplate headerTextProvider:v5 body1TextProvider:v6];
    goto LABEL_19;
  }

  if (family == 3)
  {
    complicationTemplate = [MEMORY[0x277CBBBA0] textProviderWithFormat:@"%@ %@", v5, v6];
    v13 = [MEMORY[0x277CBBA80] templateWithTextProvider:complicationTemplate];
    goto LABEL_19;
  }

  if (family != 8)
  {
    goto LABEL_21;
  }

  v9 = [MEMORY[0x277CBB900] templateWithInnerTextProvider:v6 outerTextProvider:v5];
LABEL_13:
  v10 = v9;
  if (!v9)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_21;
  }

LABEL_20:
  v16 = MEMORY[0x277CBBAC8];
  entryDate = [(NTKTimelineEntryModel *)self entryDate];
  v7 = [v16 entryWithDate:entryDate complicationTemplate:v10];

LABEL_21:

  return v7;
}

@end
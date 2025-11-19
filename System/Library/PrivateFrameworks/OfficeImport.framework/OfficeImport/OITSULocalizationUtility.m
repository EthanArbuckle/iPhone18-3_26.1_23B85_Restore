@interface OITSULocalizationUtility
+ (id)displayStringForIndexSet:(id)a3;
+ (id)displayStringForStrings:(id)a3;
+ (id)displayStringForStrings:(id)a3 itemSeparator:(id)a4 lastItemSeparator:(id)a5;
@end

@implementation OITSULocalizationUtility

+ (id)displayStringForIndexSet:(id)a3
{
  v4 = [MEMORY[0x277CCAB68] string];
  if (displayStringForIndexSet__onceToken != -1)
  {
    +[OITSULocalizationUtility displayStringForIndexSet:];
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__OITSULocalizationUtility_displayStringForIndexSet___block_invoke_2;
  v6[3] = &unk_2799C6578;
  v6[4] = v4;
  [a3 enumerateRangesUsingBlock:v6];
  return v4;
}

id __53__OITSULocalizationUtility_displayStringForIndexSet___block_invoke()
{
  displayStringForIndexSet__sIndexSeparator = [SFUBundle() localizedStringForKey:@" value:" table:{&stru_286EE1130, @"TSUtility"}];
  result = [SFUBundle() localizedStringForKey:@"-" value:&stru_286EE1130 table:@"TSUtility"];
  displayStringForIndexSet__sRangeSeparator = result;
  return result;
}

uint64_t __53__OITSULocalizationUtility_displayStringForIndexSet___block_invoke_2(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:displayStringForIndexSet__sIndexSeparator];
  }

  result = [*(a1 + 32) appendString:{objc_msgSend(MEMORY[0x277CCABB8], "localizedStringFromNumber:numberStyle:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", a2), 1)}];
  if (a3 >= 2)
  {
    [*(a1 + 32) appendString:displayStringForIndexSet__sRangeSeparator];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB8] localizedStringFromNumber:objc_msgSend(MEMORY[0x277CCABB0] numberStyle:{"numberWithUnsignedInteger:", a3 + a2 - 1), 1}];

    return [v7 appendString:v8];
  }

  return result;
}

+ (id)displayStringForStrings:(id)a3
{
  if (displayStringForStrings__onceToken != -1)
  {
    +[OITSULocalizationUtility displayStringForStrings:];
  }

  v5 = displayStringForStrings__sSeparator;

  return [a1 displayStringForStrings:a3 itemSeparator:v5];
}

id __52__OITSULocalizationUtility_displayStringForStrings___block_invoke()
{
  result = [SFUBundle() localizedStringForKey:@" value:" table:{&stru_286EE1130, @"TSUtility"}];
  displayStringForStrings__sSeparator = result;
  return result;
}

+ (id)displayStringForStrings:(id)a3 itemSeparator:(id)a4 lastItemSeparator:(id)a5
{
  v8 = [MEMORY[0x277CCAB68] string];
  v9 = [a3 count];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __84__OITSULocalizationUtility_displayStringForStrings_itemSeparator_lastItemSeparator___block_invoke;
  v11[3] = &unk_2799C67C0;
  v11[4] = v8;
  v11[5] = a4;
  v11[6] = a5;
  v11[7] = v9;
  [a3 enumerateObjectsUsingBlock:v11];
  return v8;
}

uint64_t __84__OITSULocalizationUtility_displayStringForStrings_itemSeparator_lastItemSeparator___block_invoke(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v5 = a1[7] - 1;
    v6 = a1[4];
    if (v5 > a3 || (v7 = a1[6]) == 0)
    {
      v7 = a1[5];
    }

    [v6 appendString:v7];
  }

  v8 = a1[4];

  return [v8 appendString:a2];
}

@end
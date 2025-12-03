@interface NSNumber(WFNaming)
- (id)wfNameWithMaximumFractionDigits:()WFNaming;
@end

@implementation NSNumber(WFNaming)

- (id)wfNameWithMaximumFractionDigits:()WFNaming
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v9 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v9 setUsesSignificantDigits:0];
      [v9 setMaximumFractionDigits:{objc_msgSend(v4, "integerValue")}];
      autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
      [v9 setLocale:autoupdatingCurrentLocale];

      [v9 setUsesGroupingSeparator:0];
      v11 = [v9 stringFromNumber:self];

      goto LABEL_10;
    }

    if ([self BOOLValue])
    {
      v7 = @"Yes";
    }

    else
    {
      v7 = @"No";
    }

    wfName = WFLocalizedString(v7);
  }

  else
  {
    wfName = [self wfName];
  }

  v11 = wfName;
LABEL_10:

  return v11;
}

@end
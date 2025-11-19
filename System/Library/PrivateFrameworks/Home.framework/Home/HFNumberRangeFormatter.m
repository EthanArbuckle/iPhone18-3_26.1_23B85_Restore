@interface HFNumberRangeFormatter
+ (id)_nonNumericCharacterSet;
- (BOOL)_isRTL;
- (BOOL)_shouldRemoveUnitFromMaximumFormattedValue:(id)a3;
- (BOOL)_shouldRemoveUnitFromMinimumFormattedValue:(id)a3;
- (HFNumberRangeFormatter)initWithNumberFormatter:(id)a3;
- (id)stringForNumberRange:(id)a3;
- (id)stringForObjectValue:(id)a3;
@end

@implementation HFNumberRangeFormatter

+ (id)_nonNumericCharacterSet
{
  v2 = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  [v2 addCharactersInString:@"-–"];
  v3 = [v2 invertedSet];

  return v3;
}

- (HFNumberRangeFormatter)initWithNumberFormatter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFNumberRangeFormatter;
  v6 = [(HFNumberRangeFormatter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_numberFormatter, a3);
    v7->_consolidatesUnit = 0;
    v7->_simplifiesEqualValues = 0;
  }

  return v7;
}

- (id)stringForObjectValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [(HFNumberRangeFormatter *)self stringForNumberRange:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)stringForNumberRange:(id)a3
{
  v5 = a3;
  v6 = [v5 type];
  if (v6 == 1)
  {
    v10 = [(HFNumberRangeFormatter *)self numberFormatter];
    v11 = [v5 minValue];
    v7 = [v10 stringForObjectValue:v11];

    v12 = [(HFNumberRangeFormatter *)self numberFormatter];
    v13 = [v5 maxValue];
    v8 = [v12 stringForObjectValue:v13];

    if (-[HFNumberRangeFormatter simplifiesEqualValues](self, "simplifiesEqualValues") && [v7 isEqualToString:v8])
    {
      v9 = v7;
      v7 = v9;
    }

    else
    {
      if ([(HFNumberRangeFormatter *)self _shouldRemoveUnitFromMinimumFormattedValue:v7])
      {
        v14 = [objc_opt_class() _nonNumericCharacterSet];
        v15 = [v7 stringByTrimmingCharactersInSet:v14];

        v7 = v15;
      }

      if ([(HFNumberRangeFormatter *)self _shouldRemoveUnitFromMaximumFormattedValue:v8])
      {
        v22 = [objc_opt_class() _nonNumericCharacterSet];
        v23 = [v8 stringByTrimmingCharactersInSet:v22];

        v8 = v23;
      }

      v3 = 0;
      if (!v7 || !v8)
      {
        goto LABEL_15;
      }

      v9 = HFLocalizedStringWithFormat(@"HFNumberRangeFormatterRange", @"%1$@ %2$@", v16, v17, v18, v19, v20, v21, v7);
    }
  }

  else
  {
    if (v6)
    {
      goto LABEL_16;
    }

    v7 = [(HFNumberRangeFormatter *)self numberFormatter];
    v8 = [v5 midValue];
    v9 = [v7 stringForObjectValue:v8];
  }

  v3 = v9;
LABEL_15:

LABEL_16:

  return v3;
}

- (BOOL)_isRTL
{
  v2 = HFHomeBundle();
  v3 = [v2 preferredLocalizations];
  v4 = [v3 firstObject];

  if (v4)
  {
    v5 = MEMORY[0x277CBEAF8];
    v6 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:v4];
    v7 = [v5 characterDirectionForLanguage:v6] == 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldRemoveUnitFromMinimumFormattedValue:(id)a3
{
  v4 = a3;
  if (!-[HFNumberRangeFormatter consolidatesUnit](self, "consolidatesUnit") || ![v4 length])
  {
    goto LABEL_5;
  }

  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v6 = [v5 languageCode];
  if ([v6 isEqualToString:@"ar"])
  {
    v7 = [MEMORY[0x277CBEAF8] currentLocale];
    v8 = [v7 numberingSystem];
    v9 = [v8 isEqualToString:@"latn"];

    if (v9)
    {
LABEL_5:
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  if ([(HFNumberRangeFormatter *)self _isRTL])
  {
    v10 = 1;
  }

  else
  {
    v12 = [objc_opt_class() _nonNumericCharacterSet];
    v10 = [v12 characterIsMember:{objc_msgSend(v4, "characterAtIndex:", objc_msgSend(v4, "length") - 1)}];
  }

LABEL_6:

  return v10;
}

- (BOOL)_shouldRemoveUnitFromMaximumFormattedValue:(id)a3
{
  v4 = a3;
  if (-[HFNumberRangeFormatter consolidatesUnit](self, "consolidatesUnit") && [v4 length] && !-[HFNumberRangeFormatter _isRTL](self, "_isRTL"))
  {
    v7 = [objc_opt_class() _nonNumericCharacterSet];
    v5 = [v7 characterIsMember:{objc_msgSend(v4, "characterAtIndex:", 0)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
@interface HFNumberRangeFormatter
+ (id)_nonNumericCharacterSet;
- (BOOL)_isRTL;
- (BOOL)_shouldRemoveUnitFromMaximumFormattedValue:(id)value;
- (BOOL)_shouldRemoveUnitFromMinimumFormattedValue:(id)value;
- (HFNumberRangeFormatter)initWithNumberFormatter:(id)formatter;
- (id)stringForNumberRange:(id)range;
- (id)stringForObjectValue:(id)value;
@end

@implementation HFNumberRangeFormatter

+ (id)_nonNumericCharacterSet
{
  decimalDigitCharacterSet = [MEMORY[0x277CCAB50] decimalDigitCharacterSet];
  [decimalDigitCharacterSet addCharactersInString:@"-–"];
  invertedSet = [decimalDigitCharacterSet invertedSet];

  return invertedSet;
}

- (HFNumberRangeFormatter)initWithNumberFormatter:(id)formatter
{
  formatterCopy = formatter;
  v9.receiver = self;
  v9.super_class = HFNumberRangeFormatter;
  v6 = [(HFNumberRangeFormatter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_numberFormatter, formatter);
    v7->_consolidatesUnit = 0;
    v7->_simplifiesEqualValues = 0;
  }

  return v7;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v5 = valueCopy;
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

- (id)stringForNumberRange:(id)range
{
  rangeCopy = range;
  type = [rangeCopy type];
  if (type == 1)
  {
    numberFormatter = [(HFNumberRangeFormatter *)self numberFormatter];
    minValue = [rangeCopy minValue];
    numberFormatter3 = [numberFormatter stringForObjectValue:minValue];

    numberFormatter2 = [(HFNumberRangeFormatter *)self numberFormatter];
    maxValue = [rangeCopy maxValue];
    midValue = [numberFormatter2 stringForObjectValue:maxValue];

    if (-[HFNumberRangeFormatter simplifiesEqualValues](self, "simplifiesEqualValues") && [numberFormatter3 isEqualToString:midValue])
    {
      v9 = numberFormatter3;
      numberFormatter3 = v9;
    }

    else
    {
      if ([(HFNumberRangeFormatter *)self _shouldRemoveUnitFromMinimumFormattedValue:numberFormatter3])
      {
        _nonNumericCharacterSet = [objc_opt_class() _nonNumericCharacterSet];
        v15 = [numberFormatter3 stringByTrimmingCharactersInSet:_nonNumericCharacterSet];

        numberFormatter3 = v15;
      }

      if ([(HFNumberRangeFormatter *)self _shouldRemoveUnitFromMaximumFormattedValue:midValue])
      {
        _nonNumericCharacterSet2 = [objc_opt_class() _nonNumericCharacterSet];
        v23 = [midValue stringByTrimmingCharactersInSet:_nonNumericCharacterSet2];

        midValue = v23;
      }

      v3 = 0;
      if (!numberFormatter3 || !midValue)
      {
        goto LABEL_15;
      }

      v9 = HFLocalizedStringWithFormat(@"HFNumberRangeFormatterRange", @"%1$@ %2$@", v16, v17, v18, v19, v20, v21, numberFormatter3);
    }
  }

  else
  {
    if (type)
    {
      goto LABEL_16;
    }

    numberFormatter3 = [(HFNumberRangeFormatter *)self numberFormatter];
    midValue = [rangeCopy midValue];
    v9 = [numberFormatter3 stringForObjectValue:midValue];
  }

  v3 = v9;
LABEL_15:

LABEL_16:

  return v3;
}

- (BOOL)_isRTL
{
  v2 = HFHomeBundle();
  preferredLocalizations = [v2 preferredLocalizations];
  firstObject = [preferredLocalizations firstObject];

  if (firstObject)
  {
    v5 = MEMORY[0x277CBEAF8];
    v6 = [MEMORY[0x277CBEAF8] canonicalLanguageIdentifierFromString:firstObject];
    v7 = [v5 characterDirectionForLanguage:v6] == 2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldRemoveUnitFromMinimumFormattedValue:(id)value
{
  valueCopy = value;
  if (!-[HFNumberRangeFormatter consolidatesUnit](self, "consolidatesUnit") || ![valueCopy length])
  {
    goto LABEL_5;
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];
  if ([languageCode isEqualToString:@"ar"])
  {
    currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
    numberingSystem = [currentLocale2 numberingSystem];
    v9 = [numberingSystem isEqualToString:@"latn"];

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
    _nonNumericCharacterSet = [objc_opt_class() _nonNumericCharacterSet];
    v10 = [_nonNumericCharacterSet characterIsMember:{objc_msgSend(valueCopy, "characterAtIndex:", objc_msgSend(valueCopy, "length") - 1)}];
  }

LABEL_6:

  return v10;
}

- (BOOL)_shouldRemoveUnitFromMaximumFormattedValue:(id)value
{
  valueCopy = value;
  if (-[HFNumberRangeFormatter consolidatesUnit](self, "consolidatesUnit") && [valueCopy length] && !-[HFNumberRangeFormatter _isRTL](self, "_isRTL"))
  {
    _nonNumericCharacterSet = [objc_opt_class() _nonNumericCharacterSet];
    v5 = [_nonNumericCharacterSet characterIsMember:{objc_msgSend(valueCopy, "characterAtIndex:", 0)}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
@interface HKCodedQuantity(Display)
- (id)_shortDisplayStringForComparatorCode:()Display;
- (id)displayString;
@end

@implementation HKCodedQuantity(Display)

- (id)displayString
{
  comparatorCoding = [self comparatorCoding];

  if (comparatorCoding)
  {
    comparatorCoding2 = [self comparatorCoding];
    code = [comparatorCoding2 code];
    v5 = [self _shortDisplayStringForComparatorCode:code];

    localizedValue = [self localizedValue];
    localizedValue2 = [v5 stringByAppendingString:localizedValue];
  }

  else
  {
    localizedValue2 = [self localizedValue];
  }

  return localizedValue2;
}

- (id)_shortDisplayStringForComparatorCode:()Display
{
  v3 = _shortDisplayStringForComparatorCode__onceToken;
  v4 = a3;
  if (v3 != -1)
  {
    [HKCodedQuantity(Display) _shortDisplayStringForComparatorCode:];
  }

  v5 = [_shortDisplayStringForComparatorCode__shortDisplayStringComparatorDictionary objectForKeyedSubscript:v4];

  return v5;
}

@end
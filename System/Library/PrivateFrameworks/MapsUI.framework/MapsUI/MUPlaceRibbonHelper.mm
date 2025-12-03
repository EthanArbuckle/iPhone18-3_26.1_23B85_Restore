@interface MUPlaceRibbonHelper
+ (id)costStringForValue:(unint64_t)value locale:(id)locale;
+ (id)priceRangeForMapItem:(id)item locale:(id)locale;
@end

@implementation MUPlaceRibbonHelper

+ (id)priceRangeForMapItem:(id)item locale:(id)locale
{
  itemCopy = item;
  localeCopy = locale;
  if (localeCopy)
  {
    _geoMapItem = [itemCopy _geoMapItem];

    if (_geoMapItem)
    {
      _geoMapItem2 = [itemCopy _geoMapItem];
      v10 = [self costStringForValue:objc_msgSend(_geoMapItem2 locale:{"_priceRange"), localeCopy}];
    }

    else
    {
      v10 = &stru_1F44CA030;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)costStringForValue:(unint64_t)value locale:(id)locale
{
  if (value)
  {
    v5 = MKCurrencySymbolForLocale();
    v6 = &stru_1F44CA030;
    v7 = 1;
    do
    {
      v8 = v6;
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v6, v5];

      v9 = v7++;
    }

    while (v9 < value);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
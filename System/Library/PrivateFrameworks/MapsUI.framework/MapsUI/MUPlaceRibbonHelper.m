@interface MUPlaceRibbonHelper
+ (id)costStringForValue:(unint64_t)a3 locale:(id)a4;
+ (id)priceRangeForMapItem:(id)a3 locale:(id)a4;
@end

@implementation MUPlaceRibbonHelper

+ (id)priceRangeForMapItem:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [v6 _geoMapItem];

    if (v8)
    {
      v9 = [v6 _geoMapItem];
      v10 = [a1 costStringForValue:objc_msgSend(v9 locale:{"_priceRange"), v7}];
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

+ (id)costStringForValue:(unint64_t)a3 locale:(id)a4
{
  if (a3)
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

    while (v9 < a3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
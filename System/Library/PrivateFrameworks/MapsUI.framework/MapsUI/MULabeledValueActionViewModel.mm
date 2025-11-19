@interface MULabeledValueActionViewModel
+ (id)messageItemWithMapItem:(id)a3;
@end

@implementation MULabeledValueActionViewModel

+ (id)messageItemWithMapItem:(id)a3
{
  v3 = a3;
  v4 = _MULocalizedStringFromThisBundle(@"Messages [Placecard]");
  v21 = [v3 _localizedResponseTime];
  v5 = MEMORY[0x1E69A21D0];
  v6 = [v3 _geoMapItem];
  v7 = [v6 _messageLink];
  v8 = [v7 messageBusinessHours];
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [v3 _geoMapItem];
  v11 = [v10 _messageLink];
  v12 = [v11 timeZone];
  v13 = [v5 _geoMapItemOpeningHoursOptionsForBusinessHours:v8 compareDate:v9 timeZone:v12];

  if (v13 == 8 || v13 == 4)
  {
    v14 = _MULocalizedStringFromThisBundle(@"Messages Closed [Placecard]");

    v15 = [v3 _localizedNextOpeningStringShort:1];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = v21;
    }

    v4 = v14;
  }

  else
  {
    v17 = v21;
  }

  v18 = objc_alloc_init(MULabeledValueActionViewModel);
  [(MULabeledValueActionViewModel *)v18 setTitleString:v4];
  [(MULabeledValueActionViewModel *)v18 setValueString:v17];
  if (MapKitIdiomIsMacCatalyst())
  {
    v19 = @"message";
  }

  else
  {
    v19 = @"message.fill";
  }

  [(MULabeledValueActionViewModel *)v18 setSymbolName:v19];

  return v18;
}

@end
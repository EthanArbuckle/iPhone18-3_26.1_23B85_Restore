@interface MULabeledValueActionViewModel
+ (id)messageItemWithMapItem:(id)item;
@end

@implementation MULabeledValueActionViewModel

+ (id)messageItemWithMapItem:(id)item
{
  itemCopy = item;
  v4 = _MULocalizedStringFromThisBundle(@"Messages [Placecard]");
  _localizedResponseTime = [itemCopy _localizedResponseTime];
  v5 = MEMORY[0x1E69A21D0];
  _geoMapItem = [itemCopy _geoMapItem];
  _messageLink = [_geoMapItem _messageLink];
  messageBusinessHours = [_messageLink messageBusinessHours];
  date = [MEMORY[0x1E695DF00] date];
  _geoMapItem2 = [itemCopy _geoMapItem];
  _messageLink2 = [_geoMapItem2 _messageLink];
  timeZone = [_messageLink2 timeZone];
  v13 = [v5 _geoMapItemOpeningHoursOptionsForBusinessHours:messageBusinessHours compareDate:date timeZone:timeZone];

  if (v13 == 8 || v13 == 4)
  {
    v14 = _MULocalizedStringFromThisBundle(@"Messages Closed [Placecard]");

    v15 = [itemCopy _localizedNextOpeningStringShort:1];
    v16 = v15;
    if (v15)
    {
      v17 = v15;
    }

    else
    {
      v17 = _localizedResponseTime;
    }

    v4 = v14;
  }

  else
  {
    v17 = _localizedResponseTime;
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
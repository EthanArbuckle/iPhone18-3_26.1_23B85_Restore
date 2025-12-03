@interface HKOverlayPillValueProvidingFactory
+ (id)overlayPillValueProviderForDisplayType:(id)type selectedRangeFormatter:(id)formatter interfaceLayout:(int64_t)layout;
+ (int64_t)interfaceLayoutForController:(id)controller;
@end

@implementation HKOverlayPillValueProvidingFactory

+ (id)overlayPillValueProviderForDisplayType:(id)type selectedRangeFormatter:(id)formatter interfaceLayout:(int64_t)layout
{
  typeCopy = type;
  formatterCopy = formatter;
  behavior = [typeCopy behavior];
  chartsRelativeData = [behavior chartsRelativeData];

  if (chartsRelativeData)
  {
    v11 = HKOverlayRoomPillValueProviderRelativeData;
  }

  else
  {
    objectType = [typeCopy objectType];
    identifier = [objectType identifier];
    v14 = *MEMORY[0x1E696B698];

    if (identifier == v14)
    {
      v11 = HKOverlayRoomPillValueProviderSleep;
    }

    else
    {
      objectType2 = [typeCopy objectType];
      identifier2 = [objectType2 identifier];
      v17 = *MEMORY[0x1E696C6A8];

      if (identifier2 == v17)
      {
        v11 = HKOverlayRoomPillValueProviderBalance;
      }

      else
      {
        if (formatterCopy)
        {
          v18 = [[HKOverlayRoomPillValueProviderCurrentValue alloc] initWithSelectedRangeFormatter:formatterCopy interfaceLayout:layout];
          goto LABEL_11;
        }

        v11 = HKOverlayPillValueProvider;
      }
    }
  }

  v18 = objc_alloc_init(v11);
LABEL_11:
  v19 = v18;

  return v19;
}

+ (int64_t)interfaceLayoutForController:(id)controller
{
  view = [controller view];
  effectiveUserInterfaceLayoutDirection = [view effectiveUserInterfaceLayoutDirection];

  return effectiveUserInterfaceLayoutDirection;
}

@end
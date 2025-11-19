@interface HKOverlayPillValueProvidingFactory
+ (id)overlayPillValueProviderForDisplayType:(id)a3 selectedRangeFormatter:(id)a4 interfaceLayout:(int64_t)a5;
+ (int64_t)interfaceLayoutForController:(id)a3;
@end

@implementation HKOverlayPillValueProvidingFactory

+ (id)overlayPillValueProviderForDisplayType:(id)a3 selectedRangeFormatter:(id)a4 interfaceLayout:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 behavior];
  v10 = [v9 chartsRelativeData];

  if (v10)
  {
    v11 = HKOverlayRoomPillValueProviderRelativeData;
  }

  else
  {
    v12 = [v7 objectType];
    v13 = [v12 identifier];
    v14 = *MEMORY[0x1E696B698];

    if (v13 == v14)
    {
      v11 = HKOverlayRoomPillValueProviderSleep;
    }

    else
    {
      v15 = [v7 objectType];
      v16 = [v15 identifier];
      v17 = *MEMORY[0x1E696C6A8];

      if (v16 == v17)
      {
        v11 = HKOverlayRoomPillValueProviderBalance;
      }

      else
      {
        if (v8)
        {
          v18 = [[HKOverlayRoomPillValueProviderCurrentValue alloc] initWithSelectedRangeFormatter:v8 interfaceLayout:a5];
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

+ (int64_t)interfaceLayoutForController:(id)a3
{
  v3 = [a3 view];
  v4 = [v3 effectiveUserInterfaceLayoutDirection];

  return v4;
}

@end
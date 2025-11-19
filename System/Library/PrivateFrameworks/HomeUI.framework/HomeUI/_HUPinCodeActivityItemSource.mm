@interface _HUPinCodeActivityItemSource
- (_HUPinCodeActivityItemSource)initWithPinCodeItem:(id)a3;
- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4;
- (id)activityViewController:(id)a3 itemForActivityType:(id)a4;
- (id)activityViewControllerLinkMetadata:(id)a3;
@end

@implementation _HUPinCodeActivityItemSource

- (_HUPinCodeActivityItemSource)initWithPinCodeItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _HUPinCodeActivityItemSource;
  v6 = [(_HUPinCodeActivityItemSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pinCodeItem, a3);
  }

  return v7;
}

- (id)activityViewController:(id)a3 itemForActivityType:(id)a4
{
  v4 = [(_HUPinCodeActivityItemSource *)self pinCodeItem:a3];
  v5 = [v4 pinCodeValue];
  v12 = HULocalizedStringWithFormat(@"HUPinCodeShareFormatString", @"%@", v6, v7, v8, v9, v10, v11, v5);

  return v12;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769A8] scale:3];
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:@"number.square.fill"];
  v6 = [v5 imageWithConfiguration:v4];
  v7 = [v6 imageWithRenderingMode:2];

  v8 = [objc_alloc(MEMORY[0x277CD46B0]) initWithPlatformImage:v7];
  v9 = [(_HUPinCodeActivityItemSource *)self pinCodeItem];
  v10 = [v9 latestResults];
  v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v12 = objc_alloc_init(MEMORY[0x277CD46C8]);
  [v12 setTitle:v11];
  v13 = _HULocalizedStringWithDefaultValue(@"HUPinCodeValueCellTitle", @"HUPinCodeValueCellTitle", 1);
  [v12 setSummary:v13];

  [v12 setIcon:v8];

  return v12;
}

- (id)activityViewController:(id)a3 attachmentNameForActivityType:(id)a4
{
  v4 = [(_HUPinCodeActivityItemSource *)self pinCodeItem:a3];
  v5 = [v4 latestResults];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  if (v6)
  {
    HULocalizedStringWithFormat(@"HUPinCodeShareAirDropFilename", @"%@", v7, v8, v9, v10, v11, v12, v6);
  }

  else
  {
    _HULocalizedStringWithDefaultValue(@"HUPinCodeShareAirDropUnknownGuestFilename", @"HUPinCodeShareAirDropUnknownGuestFilename", 1);
  }
  v13 = ;
  v14 = [v13 stringByAppendingPathExtension:@"txt"];

  return v14;
}

@end
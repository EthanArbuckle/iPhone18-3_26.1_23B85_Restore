@interface _HUPinCodeActivityItemSource
- (_HUPinCodeActivityItemSource)initWithPinCodeItem:(id)item;
- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type;
- (id)activityViewController:(id)controller itemForActivityType:(id)type;
- (id)activityViewControllerLinkMetadata:(id)metadata;
@end

@implementation _HUPinCodeActivityItemSource

- (_HUPinCodeActivityItemSource)initWithPinCodeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = _HUPinCodeActivityItemSource;
  v6 = [(_HUPinCodeActivityItemSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_pinCodeItem, item);
  }

  return v7;
}

- (id)activityViewController:(id)controller itemForActivityType:(id)type
{
  v4 = [(_HUPinCodeActivityItemSource *)self pinCodeItem:controller];
  pinCodeValue = [v4 pinCodeValue];
  v12 = HULocalizedStringWithFormat(@"HUPinCodeShareFormatString", @"%@", v6, v7, v8, v9, v10, v11, pinCodeValue);

  return v12;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v4 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769A8] scale:3];
  v5 = [MEMORY[0x277D755B8] _systemImageNamed:@"number.square.fill"];
  v6 = [v5 imageWithConfiguration:v4];
  v7 = [v6 imageWithRenderingMode:2];

  v8 = [objc_alloc(MEMORY[0x277CD46B0]) initWithPlatformImage:v7];
  pinCodeItem = [(_HUPinCodeActivityItemSource *)self pinCodeItem];
  latestResults = [pinCodeItem latestResults];
  v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v12 = objc_alloc_init(MEMORY[0x277CD46C8]);
  [v12 setTitle:v11];
  v13 = _HULocalizedStringWithDefaultValue(@"HUPinCodeValueCellTitle", @"HUPinCodeValueCellTitle", 1);
  [v12 setSummary:v13];

  [v12 setIcon:v8];

  return v12;
}

- (id)activityViewController:(id)controller attachmentNameForActivityType:(id)type
{
  v4 = [(_HUPinCodeActivityItemSource *)self pinCodeItem:controller];
  latestResults = [v4 latestResults];
  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];

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
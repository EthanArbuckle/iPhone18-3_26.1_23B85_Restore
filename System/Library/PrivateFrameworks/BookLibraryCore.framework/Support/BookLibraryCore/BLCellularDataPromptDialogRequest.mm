@interface BLCellularDataPromptDialogRequest
+ (id)_bodyStringWithKind:(id)kind andSize:(unint64_t)size remaining:(BOOL)remaining;
+ (id)_buttonActions;
+ (id)_dialogForDownloadWithKind:(id)kind andSize:(unint64_t)size forRoaming:(BOOL)roaming remaining:(BOOL)remaining;
+ (id)dialogForDownload:(id)download roaming:(BOOL)roaming;
@end

@implementation BLCellularDataPromptDialogRequest

+ (id)dialogForDownload:(id)download roaming:(BOOL)roaming
{
  roamingCopy = roaming;
  downloadCopy = download;
  kind = [downloadCopy kind];
  bytes = [downloadCopy bytes];
  isRemaining = [downloadCopy isRemaining];

  v10 = [self _dialogForDownloadWithKind:kind andSize:bytes forRoaming:roamingCopy remaining:isRemaining];

  return v10;
}

+ (id)_dialogForDownloadWithKind:(id)kind andSize:(unint64_t)size forRoaming:(BOOL)roaming remaining:(BOOL)remaining
{
  remainingCopy = remaining;
  roamingCopy = roaming;
  kindCopy = kind;
  v11 = objc_alloc_init(AMSDialogRequest);
  v12 = BLBundle();
  v13 = v12;
  if (roamingCopy)
  {
    v14 = @"Download Using Data Roaming?";
  }

  else
  {
    v14 = @"Download Over Cellular?";
  }

  v15 = [v12 localizedStringForKey:v14 value:&stru_100125DB0 table:@"Localizable"];
  [v11 setTitle:v15];

  v16 = [self _bodyStringWithKind:kindCopy andSize:size remaining:remainingCopy];

  [v11 setMessage:v16];
  _buttonActions = [self _buttonActions];
  [v11 setButtonActions:_buttonActions];

  buttonActions = [v11 buttonActions];
  lastObject = [buttonActions lastObject];
  [v11 setDefaultAction:lastObject];

  return v11;
}

+ (id)_buttonActions
{
  v3 = objc_alloc_init(AMSDialogAction);
  v4 = BLBundle();
  v5 = [v4 localizedStringForKey:@"Download Over Cellular" value:&stru_100125DB0 table:@"Localizable"];
  [v3 setTitle:v5];

  [v3 setIdentifier:@"BLCellularDataPromptActionDownloadNow"];
  v6 = objc_alloc_init(AMSDialogAction);
  LODWORD(self) = [self _hasWAPICapability];
  v7 = BLBundle();
  v8 = v7;
  if (self)
  {
    v9 = @"Wait for WLAN";
  }

  else
  {
    v9 = @"Wait for Wi-Fi";
  }

  v10 = [v7 localizedStringForKey:v9 value:&stru_100125DB0 table:@"Localizable"];
  [v6 setTitle:v10];

  [v6 setIdentifier:@"BLCellularDataPromptActionDownloadLater"];
  [v6 setStyle:2];
  v13[0] = v6;
  v13[1] = v3;
  v11 = [NSArray arrayWithObjects:v13 count:2];

  return v11;
}

+ (id)_bodyStringWithKind:(id)kind andSize:(unint64_t)size remaining:(BOOL)remaining
{
  if (size)
  {
    remainingCopy = remaining;
    v7 = [kind isEqualToString:@"book"];
    v8 = BLBundle();
    v9 = v8;
    v10 = @"This book has %@ remaining to download. Downloading over a cellular network may incur additional fees.";
    if (v7)
    {
      v10 = @"This audiobook has %@ remaining to download. Downloading over a cellular network may incur additional fees.";
    }

    v11 = @"This audiobook is %@. Downloading over a cellular network may incur additional fees.";
    if (!v7)
    {
      v11 = @"This book is %@. Downloading over a cellular network may incur additional fees.";
    }

    if (remainingCopy)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v8 localizedStringForKey:v12 value:&stru_100125DB0 table:@"Localizable"];

    v14 = [BLEvaluatorDownload formatSize:size];
    v15 = [NSString stringWithFormat:v13, v14];
  }

  else
  {
    v13 = BLBundle();
    v15 = [v13 localizedStringForKey:@"Downloading over a cellular network may incur additional fees." value:&stru_100125DB0 table:@"Localizable"];
  }

  return v15;
}

@end
@interface BRShareLinkPresentationPropertyProvider
- (BRShareLinkPresentationPropertyProvider)initWithDocumentName:(id)a3 appName:(id)a4 bundleIdentifier:(id)a5;
- (BRShareLinkPresentationPropertyProvider)initWithItemName:(id)a3 appName:(id)a4 bundleIdentifier:(id)a5;
- (id)captionBar;
- (id)icon;
- (void)_commonInitWithTitle:(id)a3 appName:(id)a4 resolvedAppIdentifier:(id)a5;
@end

@implementation BRShareLinkPresentationPropertyProvider

- (void)_commonInitWithTitle:(id)a3 appName:(id)a4 resolvedAppIdentifier:(id)a5
{
  if (a3)
  {
    v9 = a5;
    v10 = a4;
    [(BRShareLinkPresentationPropertyProvider *)self setTitle:a3];
    [(BRShareLinkPresentationPropertyProvider *)self setSubtitle:v10];
  }

  else
  {
    v11 = a5;
    v12 = a4;
    v10 = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v13 = [v10 localizedStringForKey:@"Shared from %@" value:@"Shared from %@" table:@"Localizable"];
    v14 = [NSString localizedStringWithFormat:v13, v12];

    [(BRShareLinkPresentationPropertyProvider *)self setTitle:v14];
  }

  v16 = [LSApplicationProxy applicationProxyForIdentifier:a5];

  v15 = [UIImage _iconForResourceProxy:v16 format:1];
  [(BRShareLinkPresentationPropertyProvider *)self setAppIcon:v15];
}

- (BRShareLinkPresentationPropertyProvider)initWithDocumentName:(id)a3 appName:(id)a4 bundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = BRShareLinkPresentationPropertyProvider;
  v11 = [(BRShareLinkPresentationPropertyProvider *)&v15 init];
  if (v11)
  {
    v12 = [(__CFString *)v10 lowercaseString];
    v13 = [&off_100050F18 containsObject:v12];

    if ((v13 & 1) == 0)
    {

      v10 = @"com.apple.iCloudDriveApp";
      v9 = @"iCloud Drive";
    }

    [(BRShareLinkPresentationPropertyProvider *)v11 _commonInitWithTitle:v8 appName:v9 resolvedAppIdentifier:v10];
  }

  return v11;
}

- (BRShareLinkPresentationPropertyProvider)initWithItemName:(id)a3 appName:(id)a4 bundleIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = BRShareLinkPresentationPropertyProvider;
  v11 = [(BRShareLinkPresentationPropertyProvider *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(BRShareLinkPresentationPropertyProvider *)v11 _commonInitWithTitle:v8 appName:v9 resolvedAppIdentifier:v10];
  }

  return v12;
}

- (id)captionBar
{
  v3 = objc_alloc_init(LPCaptionBarPresentationProperties);
  title = self->_title;
  v5 = [v3 top];
  v6 = [v5 leading];
  [v6 setText:title];

  subtitle = self->_subtitle;
  v8 = [v3 bottom];
  v9 = [v8 leading];
  [v9 setText:subtitle];

  return v3;
}

- (id)icon
{
  v2 = [[LPImage alloc] initWithPlatformImage:self->_appIcon];

  return v2;
}

@end
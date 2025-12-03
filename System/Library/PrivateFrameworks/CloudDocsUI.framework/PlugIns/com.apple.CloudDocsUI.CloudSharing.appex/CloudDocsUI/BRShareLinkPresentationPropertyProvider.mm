@interface BRShareLinkPresentationPropertyProvider
- (BRShareLinkPresentationPropertyProvider)initWithDocumentName:(id)name appName:(id)appName bundleIdentifier:(id)identifier;
- (BRShareLinkPresentationPropertyProvider)initWithItemName:(id)name appName:(id)appName bundleIdentifier:(id)identifier;
- (id)captionBar;
- (id)icon;
- (void)_commonInitWithTitle:(id)title appName:(id)name resolvedAppIdentifier:(id)identifier;
@end

@implementation BRShareLinkPresentationPropertyProvider

- (void)_commonInitWithTitle:(id)title appName:(id)name resolvedAppIdentifier:(id)identifier
{
  if (title)
  {
    identifierCopy = identifier;
    nameCopy = name;
    [(BRShareLinkPresentationPropertyProvider *)self setTitle:title];
    [(BRShareLinkPresentationPropertyProvider *)self setSubtitle:nameCopy];
  }

  else
  {
    identifierCopy2 = identifier;
    nameCopy2 = name;
    nameCopy = [NSBundle bundleWithIdentifier:@"com.apple.CloudDocsUI"];
    v13 = [nameCopy localizedStringForKey:@"Shared from %@" value:@"Shared from %@" table:@"Localizable"];
    nameCopy2 = [NSString localizedStringWithFormat:v13, nameCopy2];

    [(BRShareLinkPresentationPropertyProvider *)self setTitle:nameCopy2];
  }

  v16 = [LSApplicationProxy applicationProxyForIdentifier:identifier];

  v15 = [UIImage _iconForResourceProxy:v16 format:1];
  [(BRShareLinkPresentationPropertyProvider *)self setAppIcon:v15];
}

- (BRShareLinkPresentationPropertyProvider)initWithDocumentName:(id)name appName:(id)appName bundleIdentifier:(id)identifier
{
  nameCopy = name;
  appNameCopy = appName;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = BRShareLinkPresentationPropertyProvider;
  v11 = [(BRShareLinkPresentationPropertyProvider *)&v15 init];
  if (v11)
  {
    lowercaseString = [(__CFString *)identifierCopy lowercaseString];
    v13 = [&off_100050F18 containsObject:lowercaseString];

    if ((v13 & 1) == 0)
    {

      identifierCopy = @"com.apple.iCloudDriveApp";
      appNameCopy = @"iCloud Drive";
    }

    [(BRShareLinkPresentationPropertyProvider *)v11 _commonInitWithTitle:nameCopy appName:appNameCopy resolvedAppIdentifier:identifierCopy];
  }

  return v11;
}

- (BRShareLinkPresentationPropertyProvider)initWithItemName:(id)name appName:(id)appName bundleIdentifier:(id)identifier
{
  nameCopy = name;
  appNameCopy = appName;
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = BRShareLinkPresentationPropertyProvider;
  v11 = [(BRShareLinkPresentationPropertyProvider *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(BRShareLinkPresentationPropertyProvider *)v11 _commonInitWithTitle:nameCopy appName:appNameCopy resolvedAppIdentifier:identifierCopy];
  }

  return v12;
}

- (id)captionBar
{
  v3 = objc_alloc_init(LPCaptionBarPresentationProperties);
  title = self->_title;
  v5 = [v3 top];
  leading = [v5 leading];
  [leading setText:title];

  subtitle = self->_subtitle;
  bottom = [v3 bottom];
  leading2 = [bottom leading];
  [leading2 setText:subtitle];

  return v3;
}

- (id)icon
{
  v2 = [[LPImage alloc] initWithPlatformImage:self->_appIcon];

  return v2;
}

@end
@interface DBAppLinkLeafIcon
- (CAFAppLink)appLink;
- (DBAppLinkLeafIcon)initWithAppLink:(id)link;
@end

@implementation DBAppLinkLeafIcon

- (DBAppLinkLeafIcon)initWithAppLink:(id)link
{
  v16 = *MEMORY[0x277D85DE8];
  linkCopy = link;
  identifier = [linkCopy identifier];
  identifier2 = [linkCopy identifier];
  v13.receiver = self;
  v13.super_class = DBAppLinkLeafIcon;
  v7 = [(SBLeafIcon *)&v13 initWithLeafIdentifier:identifier applicationBundleID:identifier2];

  if (v7)
  {
    v8 = DBLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = linkCopy;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Creating DBAppLinkLeafIcon from: %@", buf, 0xCu);
    }

    v9 = [_TtC9DashBoard27DBAppLinkLeafIconDataSource alloc];
    identifier3 = [linkCopy identifier];
    v11 = [(DBAppLinkLeafIconDataSource *)v9 initWithIdentifier:identifier3 application:0 sessionConfiguration:0];

    [(DBAppLinkLeafIconDataSource *)v11 setAppLink:linkCopy];
    [(SBLeafIcon *)v7 addIconDataSource:v11];
  }

  return v7;
}

- (CAFAppLink)appLink
{
  objc_opt_class();
  activeDataSource = [(SBLeafIcon *)self activeDataSource];
  if (activeDataSource && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = activeDataSource;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    v5 = DBLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(DBAppLinkLeafIcon *)v5 appLink];
    }
  }

  appLink = [v4 appLink];

  return appLink;
}

@end
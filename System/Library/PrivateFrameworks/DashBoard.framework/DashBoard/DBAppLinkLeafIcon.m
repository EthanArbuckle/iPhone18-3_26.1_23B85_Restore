@interface DBAppLinkLeafIcon
- (CAFAppLink)appLink;
- (DBAppLinkLeafIcon)initWithAppLink:(id)a3;
@end

@implementation DBAppLinkLeafIcon

- (DBAppLinkLeafIcon)initWithAppLink:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 identifier];
  v13.receiver = self;
  v13.super_class = DBAppLinkLeafIcon;
  v7 = [(SBLeafIcon *)&v13 initWithLeafIdentifier:v5 applicationBundleID:v6];

  if (v7)
  {
    v8 = DBLogForCategory(0x1CuLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v4;
      _os_log_impl(&dword_248146000, v8, OS_LOG_TYPE_DEFAULT, "Creating DBAppLinkLeafIcon from: %@", buf, 0xCu);
    }

    v9 = [_TtC9DashBoard27DBAppLinkLeafIconDataSource alloc];
    v10 = [v4 identifier];
    v11 = [(DBAppLinkLeafIconDataSource *)v9 initWithIdentifier:v10 application:0 sessionConfiguration:0];

    [(DBAppLinkLeafIconDataSource *)v11 setAppLink:v4];
    [(SBLeafIcon *)v7 addIconDataSource:v11];
  }

  return v7;
}

- (CAFAppLink)appLink
{
  objc_opt_class();
  v3 = [(SBLeafIcon *)self activeDataSource];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
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

  v6 = [v4 appLink];

  return v6;
}

@end
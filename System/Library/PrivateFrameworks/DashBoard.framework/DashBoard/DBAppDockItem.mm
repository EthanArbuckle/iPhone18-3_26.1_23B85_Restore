@interface DBAppDockItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAppDockItem:(id)a3;
- (DBAppDockItem)initWithBundleIdentifier:(id)a3 category:(unint64_t)a4 active:(BOOL)a5;
@end

@implementation DBAppDockItem

- (DBAppDockItem)initWithBundleIdentifier:(id)a3 category:(unint64_t)a4 active:(BOOL)a5
{
  v8 = a3;
  v13.receiver = self;
  v13.super_class = DBAppDockItem;
  v9 = [(DBAppDockItem *)&v13 init];
  if (v9)
  {
    v10 = [v8 copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;

    v9->_category = a4;
    v9->_active = a5;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  v6 = v5 && (objc_opt_isKindOfClass() & 1) != 0 && [(DBAppDockItem *)self isEqualToAppDockItem:v5];

  return v6;
}

- (BOOL)isEqualToAppDockItem:(id)a3
{
  v4 = a3;
  v5 = [(DBAppDockItem *)self bundleIdentifier];
  v6 = [v4 bundleIdentifier];
  if ((v5 == v6 || [v5 isEqual:v6]) && (v7 = -[DBAppDockItem category](self, "category"), v7 == objc_msgSend(v4, "category")))
  {
    v8 = [(DBAppDockItem *)self isActive];
    v9 = v8 ^ [v4 isActive] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end
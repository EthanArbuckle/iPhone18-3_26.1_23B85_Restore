@interface DBAppDockItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAppDockItem:(id)item;
- (DBAppDockItem)initWithBundleIdentifier:(id)identifier category:(unint64_t)category active:(BOOL)active;
@end

@implementation DBAppDockItem

- (DBAppDockItem)initWithBundleIdentifier:(id)identifier category:(unint64_t)category active:(BOOL)active
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = DBAppDockItem;
  v9 = [(DBAppDockItem *)&v13 init];
  if (v9)
  {
    v10 = [identifierCopy copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;

    v9->_category = category;
    v9->_active = active;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = equalCopy;
  v6 = v5 && (objc_opt_isKindOfClass() & 1) != 0 && [(DBAppDockItem *)self isEqualToAppDockItem:v5];

  return v6;
}

- (BOOL)isEqualToAppDockItem:(id)item
{
  itemCopy = item;
  bundleIdentifier = [(DBAppDockItem *)self bundleIdentifier];
  bundleIdentifier2 = [itemCopy bundleIdentifier];
  if ((bundleIdentifier == bundleIdentifier2 || [bundleIdentifier isEqual:bundleIdentifier2]) && (v7 = -[DBAppDockItem category](self, "category"), v7 == objc_msgSend(itemCopy, "category")))
  {
    isActive = [(DBAppDockItem *)self isActive];
    v9 = isActive ^ [itemCopy isActive] ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

@end
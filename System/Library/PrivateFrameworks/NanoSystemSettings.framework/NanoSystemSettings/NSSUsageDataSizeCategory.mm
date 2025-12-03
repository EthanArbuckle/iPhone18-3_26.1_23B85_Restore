@interface NSSUsageDataSizeCategory
- (NSSUsageDataSizeCategory)initWithIdentifier:(id)identifier size:(id)size name:(id)name;
@end

@implementation NSSUsageDataSizeCategory

- (NSSUsageDataSizeCategory)initWithIdentifier:(id)identifier size:(id)size name:(id)name
{
  identifierCopy = identifier;
  sizeCopy = size;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = NSSUsageDataSizeCategory;
  v12 = [(NSSUsageDataSizeCategory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, name);
    objc_storeStrong(&v13->_size, size);
    objc_storeStrong(&v13->_categoryIdentifier, identifier);
  }

  return v13;
}

@end
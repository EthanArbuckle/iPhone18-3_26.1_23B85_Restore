@interface NSSUsageDataSizeCategory
- (NSSUsageDataSizeCategory)initWithIdentifier:(id)a3 size:(id)a4 name:(id)a5;
@end

@implementation NSSUsageDataSizeCategory

- (NSSUsageDataSizeCategory)initWithIdentifier:(id)a3 size:(id)a4 name:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = NSSUsageDataSizeCategory;
  v12 = [(NSSUsageDataSizeCategory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_name, a5);
    objc_storeStrong(&v13->_size, a4);
    objc_storeStrong(&v13->_categoryIdentifier, a3);
  }

  return v13;
}

@end
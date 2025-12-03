@interface GDViewAccessInfo
- (GDViewAccessInfo)initWithCoder:(id)coder;
- (GDViewAccessInfo)initWithTableName:(id)name alwaysAvailable:(BOOL)available;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GDViewAccessInfo

- (GDViewAccessInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = GDViewAccessInfo;
  v5 = [(GDViewAccessInfo *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tableName"];
    tableName = v5->_tableName;
    v5->_tableName = v6;

    v5->_alwaysAvailable = [coderCopy decodeBoolForKey:@"alwaysAvailable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  tableName = self->_tableName;
  coderCopy = coder;
  [coderCopy encodeObject:tableName forKey:@"tableName"];
  [coderCopy encodeBool:self->_alwaysAvailable forKey:@"alwaysAvailable"];
}

- (GDViewAccessInfo)initWithTableName:(id)name alwaysAvailable:(BOOL)available
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = GDViewAccessInfo;
  v7 = [(GDViewAccessInfo *)&v11 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    tableName = v7->_tableName;
    v7->_tableName = v8;

    v7->_alwaysAvailable = available;
  }

  return v7;
}

@end
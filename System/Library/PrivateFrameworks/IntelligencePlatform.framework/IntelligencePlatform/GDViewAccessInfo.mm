@interface GDViewAccessInfo
- (GDViewAccessInfo)initWithCoder:(id)a3;
- (GDViewAccessInfo)initWithTableName:(id)a3 alwaysAvailable:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GDViewAccessInfo

- (GDViewAccessInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = GDViewAccessInfo;
  v5 = [(GDViewAccessInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"tableName"];
    tableName = v5->_tableName;
    v5->_tableName = v6;

    v5->_alwaysAvailable = [v4 decodeBoolForKey:@"alwaysAvailable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  tableName = self->_tableName;
  v5 = a3;
  [v5 encodeObject:tableName forKey:@"tableName"];
  [v5 encodeBool:self->_alwaysAvailable forKey:@"alwaysAvailable"];
}

- (GDViewAccessInfo)initWithTableName:(id)a3 alwaysAvailable:(BOOL)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = GDViewAccessInfo;
  v7 = [(GDViewAccessInfo *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    tableName = v7->_tableName;
    v7->_tableName = v8;

    v7->_alwaysAvailable = a4;
  }

  return v7;
}

@end
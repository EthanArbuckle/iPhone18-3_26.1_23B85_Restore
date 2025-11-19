@interface DVTKTraceSessionConfiguration
- (DVTKTraceSessionConfiguration)init;
- (DVTKTraceSessionConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DVTKTraceSessionConfiguration

- (DVTKTraceSessionConfiguration)init
{
  v3.receiver = self;
  v3.super_class = DVTKTraceSessionConfiguration;
  result = [(DVTKTraceSessionConfiguration *)&v3 init];
  if (result)
  {
    result->_collectionInterval = 100;
  }

  return result;
}

- (DVTKTraceSessionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DVTKTraceSessionConfiguration;
  v5 = [(DVTKTraceSessionConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bitmap"];
    bitmap = v5->_bitmap;
    v5->_bitmap = v6;

    v5->_useExisting = [v4 decodeBoolForKey:@"_useExisting"];
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"_providers"];
    providers = v5->_providers;
    v5->_providers = v10;

    v5->_collectionInterval = [v4 decodeInt64ForKey:@"_collectionInterval"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bitmap = self->_bitmap;
  v5 = a3;
  [v5 encodeObject:bitmap forKey:@"_bitmap"];
  [v5 encodeBool:self->_useExisting forKey:@"_useExisting"];
  [v5 encodeObject:self->_providers forKey:@"_providers"];
  [v5 encodeInt64:self->_collectionInterval forKey:@"_collectionInterval"];
}

@end
@interface DVTKTraceSessionConfiguration
- (DVTKTraceSessionConfiguration)init;
- (DVTKTraceSessionConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (DVTKTraceSessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DVTKTraceSessionConfiguration;
  v5 = [(DVTKTraceSessionConfiguration *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bitmap"];
    bitmap = v5->_bitmap;
    v5->_bitmap = v6;

    v5->_useExisting = [coderCopy decodeBoolForKey:@"_useExisting"];
    v8 = objc_opt_class();
    v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"_providers"];
    providers = v5->_providers;
    v5->_providers = v10;

    v5->_collectionInterval = [coderCopy decodeInt64ForKey:@"_collectionInterval"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bitmap = self->_bitmap;
  coderCopy = coder;
  [coderCopy encodeObject:bitmap forKey:@"_bitmap"];
  [coderCopy encodeBool:self->_useExisting forKey:@"_useExisting"];
  [coderCopy encodeObject:self->_providers forKey:@"_providers"];
  [coderCopy encodeInt64:self->_collectionInterval forKey:@"_collectionInterval"];
}

@end
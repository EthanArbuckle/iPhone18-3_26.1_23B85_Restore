@interface GDFactObjectString
- (GDFactObjectString)initWithValue:(id)value;
@end

@implementation GDFactObjectString

- (GDFactObjectString)initWithValue:(id)value
{
  valueCopy = value;
  v9.receiver = self;
  v9.super_class = GDFactObjectString;
  v6 = [(GDFactObjectString *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, value);
  }

  return v7;
}

@end
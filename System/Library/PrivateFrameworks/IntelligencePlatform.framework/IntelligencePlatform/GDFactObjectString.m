@interface GDFactObjectString
- (GDFactObjectString)initWithValue:(id)a3;
@end

@implementation GDFactObjectString

- (GDFactObjectString)initWithValue:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDFactObjectString;
  v6 = [(GDFactObjectString *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_value, a3);
  }

  return v7;
}

@end
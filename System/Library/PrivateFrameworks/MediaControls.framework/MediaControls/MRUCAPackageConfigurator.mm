@interface MRUCAPackageConfigurator
+ (MRUCAPackageConfigurator)configuratorWithIdentifier:(id)a3 configurationBlock:(id)a4;
- (BOOL)isEqual:(id)a3;
- (MRUCAPackageConfigurator)initWithIdentifier:(id)a3 configurationBlock:(id)a4;
@end

@implementation MRUCAPackageConfigurator

+ (MRUCAPackageConfigurator)configuratorWithIdentifier:(id)a3 configurationBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithIdentifier:v7 configurationBlock:v6];

  return v8;
}

- (MRUCAPackageConfigurator)initWithIdentifier:(id)a3 configurationBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MRUCAPackageConfigurator;
  v9 = [(MRUCAPackageConfigurator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    v11 = _Block_copy(v8);
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(MRUCAPackageConfigurator *)v4 identifier];
      v6 = [v5 isEqualToString:self->_identifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end
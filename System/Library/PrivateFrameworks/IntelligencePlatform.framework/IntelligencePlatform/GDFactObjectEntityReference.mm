@interface GDFactObjectEntityReference
- (GDFactObjectEntityReference)initWithEntityIdentifier:(id)a3;
@end

@implementation GDFactObjectEntityReference

- (GDFactObjectEntityReference)initWithEntityIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDFactObjectEntityReference;
  v6 = [(GDFactObjectEntityReference *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entityIdentifier, a3);
  }

  return v7;
}

@end
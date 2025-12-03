@interface GDFactObjectEntityReference
- (GDFactObjectEntityReference)initWithEntityIdentifier:(id)identifier;
@end

@implementation GDFactObjectEntityReference

- (GDFactObjectEntityReference)initWithEntityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = GDFactObjectEntityReference;
  v6 = [(GDFactObjectEntityReference *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entityIdentifier, identifier);
  }

  return v7;
}

@end
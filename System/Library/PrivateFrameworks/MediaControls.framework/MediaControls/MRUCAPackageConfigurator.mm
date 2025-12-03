@interface MRUCAPackageConfigurator
+ (MRUCAPackageConfigurator)configuratorWithIdentifier:(id)identifier configurationBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (MRUCAPackageConfigurator)initWithIdentifier:(id)identifier configurationBlock:(id)block;
@end

@implementation MRUCAPackageConfigurator

+ (MRUCAPackageConfigurator)configuratorWithIdentifier:(id)identifier configurationBlock:(id)block
{
  blockCopy = block;
  identifierCopy = identifier;
  v8 = [[self alloc] initWithIdentifier:identifierCopy configurationBlock:blockCopy];

  return v8;
}

- (MRUCAPackageConfigurator)initWithIdentifier:(id)identifier configurationBlock:(id)block
{
  identifierCopy = identifier;
  blockCopy = block;
  v14.receiver = self;
  v14.super_class = MRUCAPackageConfigurator;
  v9 = [(MRUCAPackageConfigurator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    v11 = _Block_copy(blockCopy);
    block = v10->_block;
    v10->_block = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = [(MRUCAPackageConfigurator *)equalCopy identifier];
      v6 = [identifier isEqualToString:self->_identifier];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

@end
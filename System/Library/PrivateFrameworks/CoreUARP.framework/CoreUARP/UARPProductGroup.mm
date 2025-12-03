@interface UARPProductGroup
- (UARPProductGroup)initWithIdentifier:(id)identifier;
@end

@implementation UARPProductGroup

- (UARPProductGroup)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = UARPProductGroup;
  v5 = [(UARPProductGroup *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

@end
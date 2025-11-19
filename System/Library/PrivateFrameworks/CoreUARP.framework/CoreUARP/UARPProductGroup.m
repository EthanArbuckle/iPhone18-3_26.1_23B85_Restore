@interface UARPProductGroup
- (UARPProductGroup)initWithIdentifier:(id)a3;
@end

@implementation UARPProductGroup

- (UARPProductGroup)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = UARPProductGroup;
  v5 = [(UARPProductGroup *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

@end
@interface IEDirectInvocation
- (IEDirectInvocation)initWithIdentifier:(id)identifier;
- (IEDirectInvocation)initWithIdentifier:(id)identifier withUserData:(id)data;
@end

@implementation IEDirectInvocation

- (IEDirectInvocation)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v10.receiver = self;
  v10.super_class = IEDirectInvocation;
  v6 = [(IEDirectInvocation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    userData = v7->_userData;
    v7->_userData = MEMORY[0x277CBEC10];
  }

  return v7;
}

- (IEDirectInvocation)initWithIdentifier:(id)identifier withUserData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = IEDirectInvocation;
  v9 = [(IEDirectInvocation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_userData, data);
  }

  return v10;
}

@end
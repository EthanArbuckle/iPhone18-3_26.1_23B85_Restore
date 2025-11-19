@interface IEDirectInvocation
- (IEDirectInvocation)initWithIdentifier:(id)a3;
- (IEDirectInvocation)initWithIdentifier:(id)a3 withUserData:(id)a4;
@end

@implementation IEDirectInvocation

- (IEDirectInvocation)initWithIdentifier:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = IEDirectInvocation;
  v6 = [(IEDirectInvocation *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    userData = v7->_userData;
    v7->_userData = MEMORY[0x277CBEC10];
  }

  return v7;
}

- (IEDirectInvocation)initWithIdentifier:(id)a3 withUserData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IEDirectInvocation;
  v9 = [(IEDirectInvocation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_userData, a4);
  }

  return v10;
}

@end
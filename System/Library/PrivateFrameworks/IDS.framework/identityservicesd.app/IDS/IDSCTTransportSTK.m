@interface IDSCTTransportSTK
- (IDSCTTransportSTK)initWithSTK:(id)a3 forIdx:(int)a4 epki:(id)a5;
- (id)description;
@end

@implementation IDSCTTransportSTK

- (IDSCTTransportSTK)initWithSTK:(id)a3 forIdx:(int)a4 epki:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = IDSCTTransportSTK;
  v11 = [(IDSCTTransportSTK *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_stk, a3);
    v12->_index = a4;
    objc_storeStrong(&v12->_keyEPKI, a5);
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSCTTransportSTK *)self stk];
  v5 = [(IDSCTTransportSTK *)self index];
  v6 = [(IDSCTTransportSTK *)self keyEPKI];
  v7 = [NSString stringWithFormat:@"<%@: %p { stk: %@, index: %d  keyEPKI: %@}>", v3, self, v4, v5, v6];

  return v7;
}

@end
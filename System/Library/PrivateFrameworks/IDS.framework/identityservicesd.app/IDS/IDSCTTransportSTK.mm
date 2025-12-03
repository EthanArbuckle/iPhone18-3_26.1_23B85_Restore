@interface IDSCTTransportSTK
- (IDSCTTransportSTK)initWithSTK:(id)k forIdx:(int)idx epki:(id)epki;
- (id)description;
@end

@implementation IDSCTTransportSTK

- (IDSCTTransportSTK)initWithSTK:(id)k forIdx:(int)idx epki:(id)epki
{
  kCopy = k;
  epkiCopy = epki;
  v14.receiver = self;
  v14.super_class = IDSCTTransportSTK;
  v11 = [(IDSCTTransportSTK *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_stk, k);
    v12->_index = idx;
    objc_storeStrong(&v12->_keyEPKI, epki);
  }

  return v12;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSCTTransportSTK *)self stk];
  index = [(IDSCTTransportSTK *)self index];
  keyEPKI = [(IDSCTTransportSTK *)self keyEPKI];
  v7 = [NSString stringWithFormat:@"<%@: %p { stk: %@, index: %d  keyEPKI: %@}>", v3, self, v4, index, keyEPKI];

  return v7;
}

@end
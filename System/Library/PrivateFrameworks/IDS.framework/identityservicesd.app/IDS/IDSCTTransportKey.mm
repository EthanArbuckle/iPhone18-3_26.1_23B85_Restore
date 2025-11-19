@interface IDSCTTransportKey
- (IDSCTTransportKey)initWithKey:(id)a3 epki:(id)a4 forIdx:(int)a5 repki:(id)a6 lastResort:(BOOL)a7;
- (id)description;
@end

@implementation IDSCTTransportKey

- (IDSCTTransportKey)initWithKey:(id)a3 epki:(id)a4 forIdx:(int)a5 repki:(id)a6 lastResort:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = IDSCTTransportKey;
  v16 = [(IDSCTTransportKey *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_key, a3);
    v17->_index = a5;
    objc_storeStrong(&v17->_keyEPKI, a4);
    objc_storeStrong(&v17->_retiredEPKI, a6);
    v17->_lastResort = a7;
  }

  return v17;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSCTTransportKey *)self key];
  v5 = [(IDSCTTransportKey *)self index];
  v6 = [(IDSCTTransportKey *)self keyEPKI];
  v7 = [(IDSCTTransportKey *)self retiredEPKI];
  v8 = [(IDSCTTransportKey *)self lastResort];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = [NSString stringWithFormat:@"<%@: %p { key: %@, index: %d, keyEPKI: %@ retiredEPKI: %@, lastResort: %@ }>", v3, self, v4, v5, v6, v7, v9];

  return v10;
}

@end
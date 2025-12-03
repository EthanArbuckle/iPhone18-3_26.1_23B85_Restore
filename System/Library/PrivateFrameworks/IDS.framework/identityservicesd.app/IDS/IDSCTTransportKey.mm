@interface IDSCTTransportKey
- (IDSCTTransportKey)initWithKey:(id)key epki:(id)epki forIdx:(int)idx repki:(id)repki lastResort:(BOOL)resort;
- (id)description;
@end

@implementation IDSCTTransportKey

- (IDSCTTransportKey)initWithKey:(id)key epki:(id)epki forIdx:(int)idx repki:(id)repki lastResort:(BOOL)resort
{
  keyCopy = key;
  epkiCopy = epki;
  repkiCopy = repki;
  v19.receiver = self;
  v19.super_class = IDSCTTransportKey;
  v16 = [(IDSCTTransportKey *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_key, key);
    v17->_index = idx;
    objc_storeStrong(&v17->_keyEPKI, epki);
    objc_storeStrong(&v17->_retiredEPKI, repki);
    v17->_lastResort = resort;
  }

  return v17;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSCTTransportKey *)self key];
  index = [(IDSCTTransportKey *)self index];
  keyEPKI = [(IDSCTTransportKey *)self keyEPKI];
  retiredEPKI = [(IDSCTTransportKey *)self retiredEPKI];
  lastResort = [(IDSCTTransportKey *)self lastResort];
  v9 = @"NO";
  if (lastResort)
  {
    v9 = @"YES";
  }

  v10 = [NSString stringWithFormat:@"<%@: %p { key: %@, index: %d, keyEPKI: %@ retiredEPKI: %@, lastResort: %@ }>", v3, self, v4, index, keyEPKI, retiredEPKI, v9];

  return v10;
}

@end
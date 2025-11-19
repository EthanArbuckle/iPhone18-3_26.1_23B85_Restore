@interface _HMDNEHelperClientCacheEntry
- (_HMDNEHelperClientCacheEntry)initWithSigningId:(id)a3 identifiers:(id)a4;
@end

@implementation _HMDNEHelperClientCacheEntry

- (_HMDNEHelperClientCacheEntry)initWithSigningId:(id)a3 identifiers:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = _HMDNEHelperClientCacheEntry;
  v9 = [(_HMDNEHelperClientCacheEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signingId, a3);
    objc_storeStrong(&v10->_identifiers, a4);
  }

  return v10;
}

@end
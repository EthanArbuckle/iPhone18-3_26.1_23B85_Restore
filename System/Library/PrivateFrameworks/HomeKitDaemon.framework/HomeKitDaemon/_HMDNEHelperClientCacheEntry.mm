@interface _HMDNEHelperClientCacheEntry
- (_HMDNEHelperClientCacheEntry)initWithSigningId:(id)id identifiers:(id)identifiers;
@end

@implementation _HMDNEHelperClientCacheEntry

- (_HMDNEHelperClientCacheEntry)initWithSigningId:(id)id identifiers:(id)identifiers
{
  idCopy = id;
  identifiersCopy = identifiers;
  v12.receiver = self;
  v12.super_class = _HMDNEHelperClientCacheEntry;
  v9 = [(_HMDNEHelperClientCacheEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_signingId, id);
    objc_storeStrong(&v10->_identifiers, identifiers);
  }

  return v10;
}

@end
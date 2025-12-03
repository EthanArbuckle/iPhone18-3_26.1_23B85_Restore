@interface _NTKPigmentSyncProviderFaceDomain
- (_NTKPigmentSyncProviderFaceDomain)initWithFace:(id)face domain:(id)domain;
@end

@implementation _NTKPigmentSyncProviderFaceDomain

- (_NTKPigmentSyncProviderFaceDomain)initWithFace:(id)face domain:(id)domain
{
  faceCopy = face;
  domainCopy = domain;
  v14.receiver = self;
  v14.super_class = _NTKPigmentSyncProviderFaceDomain;
  v9 = [(_NTKPigmentSyncProviderFaceDomain *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_face, face);
    v11 = [domainCopy copy];
    domain = v10->_domain;
    v10->_domain = v11;
  }

  return v10;
}

@end
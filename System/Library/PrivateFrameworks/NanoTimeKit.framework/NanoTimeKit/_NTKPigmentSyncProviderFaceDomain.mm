@interface _NTKPigmentSyncProviderFaceDomain
- (_NTKPigmentSyncProviderFaceDomain)initWithFace:(id)a3 domain:(id)a4;
@end

@implementation _NTKPigmentSyncProviderFaceDomain

- (_NTKPigmentSyncProviderFaceDomain)initWithFace:(id)a3 domain:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _NTKPigmentSyncProviderFaceDomain;
  v9 = [(_NTKPigmentSyncProviderFaceDomain *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_face, a3);
    v11 = [v8 copy];
    domain = v10->_domain;
    v10->_domain = v11;
  }

  return v10;
}

@end
@interface HMDCompositeSettingMetadata
- (HMDCompositeSettingMetadata)initWithKeyPath:(id)a3 constraint:(id)a4 privileges:(id)a5;
@end

@implementation HMDCompositeSettingMetadata

- (HMDCompositeSettingMetadata)initWithKeyPath:(id)a3 constraint:(id)a4 privileges:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v11 = v10;
  if (!v10)
  {
LABEL_7:
    v16 = _HMFPreconditionFailure();
    [(HMDRemoteEventRouterProtoChangeRegistrationsMessage *)v16 .cxx_destruct];
    return result;
  }

  v18.receiver = self;
  v18.super_class = HMDCompositeSettingMetadata;
  v12 = [(HMDCompositeSettingMetadata *)&v18 init];
  if (v12)
  {
    v13 = [v8 copy];
    keyPath = v12->_keyPath;
    v12->_keyPath = v13;

    objc_storeStrong(&v12->_constraint, a4);
    objc_storeStrong(&v12->_privileges, a5);
  }

  return v12;
}

@end
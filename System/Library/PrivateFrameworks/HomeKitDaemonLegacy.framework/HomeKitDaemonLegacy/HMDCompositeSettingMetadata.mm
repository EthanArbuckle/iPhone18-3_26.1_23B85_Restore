@interface HMDCompositeSettingMetadata
- (HMDCompositeSettingMetadata)initWithKeyPath:(id)path constraint:(id)constraint privileges:(id)privileges;
@end

@implementation HMDCompositeSettingMetadata

- (HMDCompositeSettingMetadata)initWithKeyPath:(id)path constraint:(id)constraint privileges:(id)privileges
{
  pathCopy = path;
  constraintCopy = constraint;
  privilegesCopy = privileges;
  if (!pathCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v11 = privilegesCopy;
  if (!privilegesCopy)
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
    v13 = [pathCopy copy];
    keyPath = v12->_keyPath;
    v12->_keyPath = v13;

    objc_storeStrong(&v12->_constraint, constraint);
    objc_storeStrong(&v12->_privileges, privileges);
  }

  return v12;
}

@end
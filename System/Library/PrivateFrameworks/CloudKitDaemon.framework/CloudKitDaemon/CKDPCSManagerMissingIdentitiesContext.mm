@interface CKDPCSManagerMissingIdentitiesContext
- (CKDContainer)container;
- (CKDPCSManagerMissingIdentitiesContext)initWithContainer:(id)container;
- (NSMutableSet)missingIdentityPublicKeys;
- (NSMutableSet)servicesWithMissingIdentities;
- (id)copyOfMissingIdentityPublicKeys;
- (id)copyOfServicesWithMissingIdentities;
@end

@implementation CKDPCSManagerMissingIdentitiesContext

- (id)copyOfServicesWithMissingIdentities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  servicesWithMissingIdentities = selfCopy->_servicesWithMissingIdentities;
  if (!servicesWithMissingIdentities)
  {
    v6 = objc_opt_new();
    v7 = selfCopy->_servicesWithMissingIdentities;
    selfCopy->_servicesWithMissingIdentities = v6;

    servicesWithMissingIdentities = selfCopy->_servicesWithMissingIdentities;
  }

  v8 = objc_msgSend_copy(servicesWithMissingIdentities, v3, v4);
  objc_sync_exit(selfCopy);

  return v8;
}

- (id)copyOfMissingIdentityPublicKeys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  missingIdentityPublicKeys = selfCopy->_missingIdentityPublicKeys;
  if (!missingIdentityPublicKeys)
  {
    v6 = objc_opt_new();
    v7 = selfCopy->_missingIdentityPublicKeys;
    selfCopy->_missingIdentityPublicKeys = v6;

    missingIdentityPublicKeys = selfCopy->_missingIdentityPublicKeys;
  }

  v8 = objc_msgSend_copy(missingIdentityPublicKeys, v3, v4);
  objc_sync_exit(selfCopy);

  return v8;
}

- (CKDPCSManagerMissingIdentitiesContext)initWithContainer:(id)container
{
  containerCopy = container;
  v8.receiver = self;
  v8.super_class = CKDPCSManagerMissingIdentitiesContext;
  v5 = [(CKDPCSManagerMissingIdentitiesContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, containerCopy);
  }

  return v6;
}

- (NSMutableSet)servicesWithMissingIdentities
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  servicesWithMissingIdentities = selfCopy->_servicesWithMissingIdentities;
  if (!servicesWithMissingIdentities)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_servicesWithMissingIdentities;
    selfCopy->_servicesWithMissingIdentities = v4;

    servicesWithMissingIdentities = selfCopy->_servicesWithMissingIdentities;
  }

  v6 = servicesWithMissingIdentities;
  objc_sync_exit(selfCopy);

  return v6;
}

- (NSMutableSet)missingIdentityPublicKeys
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  missingIdentityPublicKeys = selfCopy->_missingIdentityPublicKeys;
  if (!missingIdentityPublicKeys)
  {
    v4 = objc_opt_new();
    v5 = selfCopy->_missingIdentityPublicKeys;
    selfCopy->_missingIdentityPublicKeys = v4;

    missingIdentityPublicKeys = selfCopy->_missingIdentityPublicKeys;
  }

  v6 = missingIdentityPublicKeys;
  objc_sync_exit(selfCopy);

  return v6;
}

- (CKDContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end
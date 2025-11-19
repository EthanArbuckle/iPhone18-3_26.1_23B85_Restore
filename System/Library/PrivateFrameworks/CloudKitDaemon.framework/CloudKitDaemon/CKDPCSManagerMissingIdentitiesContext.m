@interface CKDPCSManagerMissingIdentitiesContext
- (CKDContainer)container;
- (CKDPCSManagerMissingIdentitiesContext)initWithContainer:(id)a3;
- (NSMutableSet)missingIdentityPublicKeys;
- (NSMutableSet)servicesWithMissingIdentities;
- (id)copyOfMissingIdentityPublicKeys;
- (id)copyOfServicesWithMissingIdentities;
@end

@implementation CKDPCSManagerMissingIdentitiesContext

- (id)copyOfServicesWithMissingIdentities
{
  v2 = self;
  objc_sync_enter(v2);
  servicesWithMissingIdentities = v2->_servicesWithMissingIdentities;
  if (!servicesWithMissingIdentities)
  {
    v6 = objc_opt_new();
    v7 = v2->_servicesWithMissingIdentities;
    v2->_servicesWithMissingIdentities = v6;

    servicesWithMissingIdentities = v2->_servicesWithMissingIdentities;
  }

  v8 = objc_msgSend_copy(servicesWithMissingIdentities, v3, v4);
  objc_sync_exit(v2);

  return v8;
}

- (id)copyOfMissingIdentityPublicKeys
{
  v2 = self;
  objc_sync_enter(v2);
  missingIdentityPublicKeys = v2->_missingIdentityPublicKeys;
  if (!missingIdentityPublicKeys)
  {
    v6 = objc_opt_new();
    v7 = v2->_missingIdentityPublicKeys;
    v2->_missingIdentityPublicKeys = v6;

    missingIdentityPublicKeys = v2->_missingIdentityPublicKeys;
  }

  v8 = objc_msgSend_copy(missingIdentityPublicKeys, v3, v4);
  objc_sync_exit(v2);

  return v8;
}

- (CKDPCSManagerMissingIdentitiesContext)initWithContainer:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CKDPCSManagerMissingIdentitiesContext;
  v5 = [(CKDPCSManagerMissingIdentitiesContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_container, v4);
  }

  return v6;
}

- (NSMutableSet)servicesWithMissingIdentities
{
  v2 = self;
  objc_sync_enter(v2);
  servicesWithMissingIdentities = v2->_servicesWithMissingIdentities;
  if (!servicesWithMissingIdentities)
  {
    v4 = objc_opt_new();
    v5 = v2->_servicesWithMissingIdentities;
    v2->_servicesWithMissingIdentities = v4;

    servicesWithMissingIdentities = v2->_servicesWithMissingIdentities;
  }

  v6 = servicesWithMissingIdentities;
  objc_sync_exit(v2);

  return v6;
}

- (NSMutableSet)missingIdentityPublicKeys
{
  v2 = self;
  objc_sync_enter(v2);
  missingIdentityPublicKeys = v2->_missingIdentityPublicKeys;
  if (!missingIdentityPublicKeys)
  {
    v4 = objc_opt_new();
    v5 = v2->_missingIdentityPublicKeys;
    v2->_missingIdentityPublicKeys = v4;

    missingIdentityPublicKeys = v2->_missingIdentityPublicKeys;
  }

  v6 = missingIdentityPublicKeys;
  objc_sync_exit(v2);

  return v6;
}

- (CKDContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end
@interface _HDAssociationInsertionContext
- (HDProfile)profile;
- (_HDAssociationInsertionContext)initWithParentUUID:(id)d enforceSameSource:(BOOL)source permitPendingAssociations:(BOOL)associations profile:(id)profile transaction:(id)transaction;
@end

@implementation _HDAssociationInsertionContext

- (_HDAssociationInsertionContext)initWithParentUUID:(id)d enforceSameSource:(BOOL)source permitPendingAssociations:(BOOL)associations profile:(id)profile transaction:(id)transaction
{
  dCopy = d;
  profileCopy = profile;
  transactionCopy = transaction;
  v19.receiver = self;
  v19.super_class = _HDAssociationInsertionContext;
  v15 = [(_HDAssociationInsertionContext *)&v19 init];
  if (v15)
  {
    v16 = [dCopy copy];
    parentUUID = v15->_parentUUID;
    v15->_parentUUID = v16;

    v15->_enforceSameSource = source;
    v15->_permitPendingAssociations = associations;
    objc_storeWeak(&v15->_profile, profileCopy);
    objc_storeStrong(&v15->_transaction, transaction);
  }

  return v15;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end
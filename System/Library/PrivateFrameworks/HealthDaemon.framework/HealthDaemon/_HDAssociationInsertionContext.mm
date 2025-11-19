@interface _HDAssociationInsertionContext
- (HDProfile)profile;
- (_HDAssociationInsertionContext)initWithParentUUID:(id)a3 enforceSameSource:(BOOL)a4 permitPendingAssociations:(BOOL)a5 profile:(id)a6 transaction:(id)a7;
@end

@implementation _HDAssociationInsertionContext

- (_HDAssociationInsertionContext)initWithParentUUID:(id)a3 enforceSameSource:(BOOL)a4 permitPendingAssociations:(BOOL)a5 profile:(id)a6 transaction:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v19.receiver = self;
  v19.super_class = _HDAssociationInsertionContext;
  v15 = [(_HDAssociationInsertionContext *)&v19 init];
  if (v15)
  {
    v16 = [v12 copy];
    parentUUID = v15->_parentUUID;
    v15->_parentUUID = v16;

    v15->_enforceSameSource = a4;
    v15->_permitPendingAssociations = a5;
    objc_storeWeak(&v15->_profile, v13);
    objc_storeStrong(&v15->_transaction, a7);
  }

  return v15;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end
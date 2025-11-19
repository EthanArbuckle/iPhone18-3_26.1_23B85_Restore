@interface PKPassEntitlementsComposerEntitlementEntryNode
- (PKPassEntitlementsComposerEntitlementEntryNode)initWithDisplayableEntitlement:(id)a3 sharedEntitlement:(id)a4 parentEntitlementComposer:(id)a5;
- (id)allPossibleManageability;
- (id)allPossibleShareability;
- (id)allPossibleVisibility;
- (id)copyWithZone:(_NSZone *)a3;
- (id)possibleTimeConfiguration;
- (unint64_t)possibleManageability;
- (unint64_t)possibleShareability;
- (unint64_t)possibleVisibility;
@end

@implementation PKPassEntitlementsComposerEntitlementEntryNode

- (PKPassEntitlementsComposerEntitlementEntryNode)initWithDisplayableEntitlement:(id)a3 sharedEntitlement:(id)a4 parentEntitlementComposer:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 entitlementIdentifier];
  v15.receiver = self;
  v15.super_class = PKPassEntitlementsComposerEntitlementEntryNode;
  v13 = [(PKPassEntitlementsComposerEntryNode *)&v15 initWithIdentifier:v12 parentEntitlementComposer:v11];

  if (v13)
  {
    objc_storeStrong(&v13->_displayableEntitlement, a3);
    objc_storeStrong(&v13->_sharedEntitlement, a4);
  }

  return v13;
}

- (unint64_t)possibleShareability
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  v3 = [v2 shareability];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (v7 <= [v10 unsignedIntegerValue])
        {
          v7 = [v10 unsignedIntegerValue];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)possibleVisibility
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  v3 = [v2 visibility];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (v7 <= [v10 unsignedIntegerValue])
        {
          v7 = [v10 unsignedIntegerValue];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)possibleManageability
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  v3 = [v2 manageability];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (v7 <= [v10 unsignedIntegerValue])
        {
          v7 = [v10 unsignedIntegerValue];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)allPossibleShareability
{
  v2 = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  v3 = [v2 shareability];

  return v3;
}

- (id)allPossibleVisibility
{
  v2 = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  v3 = [v2 visibility];

  return v3;
}

- (id)allPossibleManageability
{
  v2 = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  v3 = [v2 manageability];

  return v3;
}

- (id)possibleTimeConfiguration
{
  v2 = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  v3 = [v2 timeConfiguration];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = PKPassEntitlementsComposerEntitlementEntryNode;
  v4 = [(PKPassEntitlementsComposerEntryNode *)&v10 copyWithZone:a3];
  v5 = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement copy];
  v6 = v4[7];
  v4[7] = v5;

  v7 = [(PKPassSharedEntitlement *)self->_sharedEntitlement copy];
  v8 = v4[8];
  v4[8] = v7;

  return v4;
}

@end
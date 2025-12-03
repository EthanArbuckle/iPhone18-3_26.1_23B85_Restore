@interface PKPassEntitlementsComposerEntitlementEntryNode
- (PKPassEntitlementsComposerEntitlementEntryNode)initWithDisplayableEntitlement:(id)entitlement sharedEntitlement:(id)sharedEntitlement parentEntitlementComposer:(id)composer;
- (id)allPossibleManageability;
- (id)allPossibleShareability;
- (id)allPossibleVisibility;
- (id)copyWithZone:(_NSZone *)zone;
- (id)possibleTimeConfiguration;
- (unint64_t)possibleManageability;
- (unint64_t)possibleShareability;
- (unint64_t)possibleVisibility;
@end

@implementation PKPassEntitlementsComposerEntitlementEntryNode

- (PKPassEntitlementsComposerEntitlementEntryNode)initWithDisplayableEntitlement:(id)entitlement sharedEntitlement:(id)sharedEntitlement parentEntitlementComposer:(id)composer
{
  entitlementCopy = entitlement;
  sharedEntitlementCopy = sharedEntitlement;
  composerCopy = composer;
  entitlementIdentifier = [entitlementCopy entitlementIdentifier];
  v15.receiver = self;
  v15.super_class = PKPassEntitlementsComposerEntitlementEntryNode;
  v13 = [(PKPassEntitlementsComposerEntryNode *)&v15 initWithIdentifier:entitlementIdentifier parentEntitlementComposer:composerCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_displayableEntitlement, entitlement);
    objc_storeStrong(&v13->_sharedEntitlement, sharedEntitlement);
  }

  return v13;
}

- (unint64_t)possibleShareability
{
  v17 = *MEMORY[0x1E69E9840];
  entitlement = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  shareability = [entitlement shareability];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = shareability;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    unsignedIntegerValue = 0;
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
        if (unsignedIntegerValue <= [v10 unsignedIntegerValue])
        {
          unsignedIntegerValue = [v10 unsignedIntegerValue];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)possibleVisibility
{
  v17 = *MEMORY[0x1E69E9840];
  entitlement = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  visibility = [entitlement visibility];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = visibility;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    unsignedIntegerValue = 0;
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
        if (unsignedIntegerValue <= [v10 unsignedIntegerValue])
        {
          unsignedIntegerValue = [v10 unsignedIntegerValue];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (unint64_t)possibleManageability
{
  v17 = *MEMORY[0x1E69E9840];
  entitlement = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  manageability = [entitlement manageability];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = manageability;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    unsignedIntegerValue = 0;
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
        if (unsignedIntegerValue <= [v10 unsignedIntegerValue])
        {
          unsignedIntegerValue = [v10 unsignedIntegerValue];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (id)allPossibleShareability
{
  entitlement = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  shareability = [entitlement shareability];

  return shareability;
}

- (id)allPossibleVisibility
{
  entitlement = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  visibility = [entitlement visibility];

  return visibility;
}

- (id)allPossibleManageability
{
  entitlement = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  manageability = [entitlement manageability];

  return manageability;
}

- (id)possibleTimeConfiguration
{
  entitlement = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement entitlement];
  timeConfiguration = [entitlement timeConfiguration];

  return timeConfiguration;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = PKPassEntitlementsComposerEntitlementEntryNode;
  v4 = [(PKPassEntitlementsComposerEntryNode *)&v10 copyWithZone:zone];
  v5 = [(PKDisplayablePassEntitlement *)self->_displayableEntitlement copy];
  v6 = v4[7];
  v4[7] = v5;

  v7 = [(PKPassSharedEntitlement *)self->_sharedEntitlement copy];
  v8 = v4[8];
  v4[8] = v7;

  return v4;
}

@end
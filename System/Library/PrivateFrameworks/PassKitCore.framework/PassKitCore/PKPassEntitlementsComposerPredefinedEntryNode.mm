@interface PKPassEntitlementsComposerPredefinedEntryNode
- (BOOL)possibleIntraAccountSharing;
- (PKPassEntitlementsComposerPredefinedEntryNode)initWithPredefinedSelection:(id)selection parentEntitlementComposer:(id)composer;
- (id)allPossibleManageability;
- (id)allPossibleShareability;
- (id)allPossibleVisibility;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)possibleManageability;
- (unint64_t)possibleShareability;
- (unint64_t)possibleVisibility;
@end

@implementation PKPassEntitlementsComposerPredefinedEntryNode

- (PKPassEntitlementsComposerPredefinedEntryNode)initWithPredefinedSelection:(id)selection parentEntitlementComposer:(id)composer
{
  selectionCopy = selection;
  composerCopy = composer;
  identifier = [selectionCopy identifier];
  v12.receiver = self;
  v12.super_class = PKPassEntitlementsComposerPredefinedEntryNode;
  v10 = [(PKPassEntitlementsComposerEntryNode *)&v12 initWithIdentifier:identifier parentEntitlementComposer:composerCopy];

  if (v10)
  {
    objc_storeStrong(&v10->_predefinedSelection, selection);
    [(PKPassEntitlementsComposerEntryNode *)v10 setEditable:0];
  }

  return v10;
}

- (unint64_t)possibleShareability
{
  sharedEntitlements = [(PKPredefinedSharedEntitlementSelection *)self->_predefinedSelection sharedEntitlements];
  firstObject = [sharedEntitlements firstObject];
  recipientShareability = [firstObject recipientShareability];

  return recipientShareability;
}

- (unint64_t)possibleVisibility
{
  sharedEntitlements = [(PKPredefinedSharedEntitlementSelection *)self->_predefinedSelection sharedEntitlements];
  firstObject = [sharedEntitlements firstObject];
  recipientVisibility = [firstObject recipientVisibility];

  return recipientVisibility;
}

- (unint64_t)possibleManageability
{
  sharedEntitlements = [(PKPredefinedSharedEntitlementSelection *)self->_predefinedSelection sharedEntitlements];
  firstObject = [sharedEntitlements firstObject];
  recipientManageability = [firstObject recipientManageability];

  return recipientManageability;
}

- (BOOL)possibleIntraAccountSharing
{
  sharedEntitlements = [(PKPredefinedSharedEntitlementSelection *)self->_predefinedSelection sharedEntitlements];
  firstObject = [sharedEntitlements firstObject];
  intraAccountSharingEnabled = [firstObject intraAccountSharingEnabled];

  return intraAccountSharingEnabled;
}

- (id)allPossibleShareability
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPassEntitlementsComposerPredefinedEntryNode possibleShareability](self, "possibleShareability")}];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)allPossibleVisibility
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPassEntitlementsComposerPredefinedEntryNode possibleVisibility](self, "possibleVisibility")}];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)allPossibleManageability
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKPassEntitlementsComposerPredefinedEntryNode possibleManageability](self, "possibleManageability")}];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PKPassEntitlementsComposerPredefinedEntryNode;
  v4 = [(PKPassEntitlementsComposerEntryNode *)&v6 copyWithZone:zone];
  objc_storeStrong(v4 + 7, self->_predefinedSelection);
  return v4;
}

@end
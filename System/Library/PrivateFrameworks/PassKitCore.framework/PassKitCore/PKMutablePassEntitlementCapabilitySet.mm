@interface PKMutablePassEntitlementCapabilitySet
- (void)_updateCapabilityRoleValue;
- (void)setIntraAccountSharingEnabled:(BOOL)enabled;
- (void)setManageability:(unint64_t)manageability;
- (void)setShareability:(unint64_t)shareability;
- (void)setVisibility:(unint64_t)visibility;
@end

@implementation PKMutablePassEntitlementCapabilitySet

- (void)setShareability:(unint64_t)shareability
{
  if ([(PKPassEntitlementCapabilitySet *)self shareability]!= shareability)
  {
    v5.receiver = self;
    v5.super_class = PKMutablePassEntitlementCapabilitySet;
    [(PKPassEntitlementCapabilitySet *)&v5 setShareability:shareability];
    [(PKMutablePassEntitlementCapabilitySet *)self _updateCapabilityRoleValue];
  }
}

- (void)setManageability:(unint64_t)manageability
{
  v4.receiver = self;
  v4.super_class = PKMutablePassEntitlementCapabilitySet;
  [(PKPassEntitlementCapabilitySet *)&v4 setManageability:manageability];
  [(PKMutablePassEntitlementCapabilitySet *)self _updateCapabilityRoleValue];
}

- (void)setVisibility:(unint64_t)visibility
{
  if ([(PKPassEntitlementCapabilitySet *)self visibility]!= visibility)
  {
    v5.receiver = self;
    v5.super_class = PKMutablePassEntitlementCapabilitySet;
    [(PKPassEntitlementCapabilitySet *)&v5 setVisibility:visibility];
    [(PKMutablePassEntitlementCapabilitySet *)self _updateCapabilityRoleValue];
  }
}

- (void)setIntraAccountSharingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if ([(PKPassEntitlementCapabilitySet *)self intraAccountSharingEnabled]!= enabled)
  {
    v5.receiver = self;
    v5.super_class = PKMutablePassEntitlementCapabilitySet;
    [(PKPassEntitlementCapabilitySet *)&v5 setIntraAccountSharingEnabled:enabledCopy];
    [(PKMutablePassEntitlementCapabilitySet *)self _updateCapabilityRoleValue];
  }
}

- (void)_updateCapabilityRoleValue
{
  capabilityRoleValue = [(PKPassEntitlementCapabilitySet *)self capabilityRoleValue];

  if (capabilityRoleValue)
  {
    capabilityRoleValue2 = [(PKPassEntitlementCapabilitySet *)self capabilityRoleValue];
    unsignedShortValue = [capabilityRoleValue2 unsignedShortValue];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{PKPassEntitlementCapabilityRoleValueFrom(-[PKPassEntitlementCapabilitySet shareability](self, "shareability"), -[PKPassEntitlementCapabilitySet visibility](self, "visibility"), -[PKPassEntitlementCapabilitySet manageability](self, "manageability"), -[PKPassEntitlementCapabilitySet intraAccountSharingEnabled](self, "intraAccountSharingEnabled"), -[PKPassEntitlementCapabilitySet isOwner](self, "isOwner")) | unsignedShortValue & 0x7760}];
    [(PKPassEntitlementCapabilitySet *)self setCapabilityRoleValue:v6];
  }
}

@end
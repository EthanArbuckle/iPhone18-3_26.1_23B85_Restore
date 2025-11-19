@interface PKMutablePassEntitlementCapabilitySet
- (void)_updateCapabilityRoleValue;
- (void)setIntraAccountSharingEnabled:(BOOL)a3;
- (void)setManageability:(unint64_t)a3;
- (void)setShareability:(unint64_t)a3;
- (void)setVisibility:(unint64_t)a3;
@end

@implementation PKMutablePassEntitlementCapabilitySet

- (void)setShareability:(unint64_t)a3
{
  if ([(PKPassEntitlementCapabilitySet *)self shareability]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PKMutablePassEntitlementCapabilitySet;
    [(PKPassEntitlementCapabilitySet *)&v5 setShareability:a3];
    [(PKMutablePassEntitlementCapabilitySet *)self _updateCapabilityRoleValue];
  }
}

- (void)setManageability:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = PKMutablePassEntitlementCapabilitySet;
  [(PKPassEntitlementCapabilitySet *)&v4 setManageability:a3];
  [(PKMutablePassEntitlementCapabilitySet *)self _updateCapabilityRoleValue];
}

- (void)setVisibility:(unint64_t)a3
{
  if ([(PKPassEntitlementCapabilitySet *)self visibility]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PKMutablePassEntitlementCapabilitySet;
    [(PKPassEntitlementCapabilitySet *)&v5 setVisibility:a3];
    [(PKMutablePassEntitlementCapabilitySet *)self _updateCapabilityRoleValue];
  }
}

- (void)setIntraAccountSharingEnabled:(BOOL)a3
{
  v3 = a3;
  if ([(PKPassEntitlementCapabilitySet *)self intraAccountSharingEnabled]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PKMutablePassEntitlementCapabilitySet;
    [(PKPassEntitlementCapabilitySet *)&v5 setIntraAccountSharingEnabled:v3];
    [(PKMutablePassEntitlementCapabilitySet *)self _updateCapabilityRoleValue];
  }
}

- (void)_updateCapabilityRoleValue
{
  v3 = [(PKPassEntitlementCapabilitySet *)self capabilityRoleValue];

  if (v3)
  {
    v4 = [(PKPassEntitlementCapabilitySet *)self capabilityRoleValue];
    v5 = [v4 unsignedShortValue];

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{PKPassEntitlementCapabilityRoleValueFrom(-[PKPassEntitlementCapabilitySet shareability](self, "shareability"), -[PKPassEntitlementCapabilitySet visibility](self, "visibility"), -[PKPassEntitlementCapabilitySet manageability](self, "manageability"), -[PKPassEntitlementCapabilitySet intraAccountSharingEnabled](self, "intraAccountSharingEnabled"), -[PKPassEntitlementCapabilitySet isOwner](self, "isOwner")) | v5 & 0x7760}];
    [(PKPassEntitlementCapabilitySet *)self setCapabilityRoleValue:v6];
  }
}

@end
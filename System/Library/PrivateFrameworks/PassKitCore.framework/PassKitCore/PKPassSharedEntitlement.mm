@interface PKPassSharedEntitlement
- (BOOL)hasCanonicallyEquivalentRightsToPassEntitlement:(id)entitlement;
- (BOOL)hasCanonicallyEquivalentRoleToPassEntitlement:(id)entitlement;
- (BOOL)hasCanonicallyEquivalentRoleToPassSharedEntitlement:(id)entitlement;
- (BOOL)hasCanonicallyEquivalentSharingCapabilityToPassEntitlement:(id)entitlement;
- (BOOL)intraAccountSharingEnabled;
- (BOOL)isEqual:(id)equal;
- (PKPassSharedEntitlement)initWithCarKeyEntitlementValue:(unint64_t)value;
- (PKPassSharedEntitlement)initWithCarKeyEntitlementValue:(unint64_t)value role:(id)role;
- (PKPassSharedEntitlement)initWithCoder:(id)coder;
- (PKPassSharedEntitlement)initWithDictionary:(id)dictionary;
- (PKPassSharedEntitlement)initWithEntitlement:(id)entitlement;
- (PKPassSharedEntitlement)initWithSubcredentialDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)carKeyEntitlementValue;
- (unint64_t)hash;
- (void)_recalculateRecipientCapabilityRole;
- (void)encodeWithCoder:(id)coder;
- (void)setIntraAccountSharingEnabled:(BOOL)enabled;
- (void)setRecipientManageability:(unint64_t)manageability;
- (void)setRecipientShareability:(unint64_t)shareability;
- (void)setRecipientVisibility:(unint64_t)visibility;
@end

@implementation PKPassSharedEntitlement

- (PKPassSharedEntitlement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    goto LABEL_16;
  }

  v22.receiver = self;
  v22.super_class = PKPassSharedEntitlement;
  self = [(PKPassSharedEntitlement *)&v22 init];
  if (!self)
  {
LABEL_13:
    self = self;
    selfCopy = self;
    goto LABEL_17;
  }

  v5 = [dictionaryCopy PKStringForKey:@"entitlementIdentifier"];
  entitlementIdentifier = self->_entitlementIdentifier;
  self->_entitlementIdentifier = v5;

  if (!self->_entitlementIdentifier)
  {
LABEL_16:
    selfCopy = 0;
    goto LABEL_17;
  }

  v7 = [PKPassShareTimeConfiguration alloc];
  v8 = [dictionaryCopy PKDictionaryForKey:@"timeConfiguration"];
  v9 = [(PKPassShareTimeConfiguration *)v7 initWithDictionary:v8];
  timeConfiguration = self->_timeConfiguration;
  self->_timeConfiguration = v9;

  v11 = [dictionaryCopy PKStringForKey:@"recipientShareability"];
  selfCopy = v11;
  if (v11)
  {
    self->_recipientShareability = PKSharingCapabilityShareabilityFromString(v11);
    v13 = [dictionaryCopy PKStringForKey:@"recipientManageability"];
    if (v13)
    {
      v14 = v13;
      self->_recipientManageability = PKSharingCapabilityManageabilityFromString(v13);
      v15 = [dictionaryCopy PKStringForKey:@"recipientVisibility"];
      v16 = v15;
      if (v15)
      {
        self->_recipientVisibility = PKSharingCapabilityVisibilityFromString(v15);
        v17 = [dictionaryCopy objectForKeyedSubscript:@"version"];
        v18 = v17 ? [dictionaryCopy PKIntegerForKey:@"version"] : 1;
        self->_creationVersion = v18;

        if (self->_creationVersion < 2 || ([dictionaryCopy PKNumberForKey:@"recipientCapabilityRole"], v19 = objc_claimAutoreleasedReturnValue(), recipientCapabilityRole = self->_recipientCapabilityRole, self->_recipientCapabilityRole = v19, recipientCapabilityRole, self->_recipientCapabilityRole))
        {
          [(PKPassSharedEntitlement *)self _recalculateRecipientCapabilityRole];

          goto LABEL_13;
        }
      }
    }

    goto LABEL_16;
  }

LABEL_17:

  return selfCopy;
}

- (void)_recalculateRecipientCapabilityRole
{
  if (self)
  {
    v2 = *(self + 48);
    v3 = [PKMutablePassEntitlementCapabilitySet alloc];
    if (v2)
    {
      v6 = -[PKPassEntitlementCapabilitySet initWithIntRole:](v3, "initWithIntRole:", [*(self + 48) unsignedShortValue]);
      [(PKMutablePassEntitlementCapabilitySet *)v6 setShareability:*(self + 24)];
      [(PKMutablePassEntitlementCapabilitySet *)v6 setVisibility:*(self + 40)];
      [(PKMutablePassEntitlementCapabilitySet *)v6 setManageability:*(self + 32)];
    }

    else
    {
      v6 = [(PKPassEntitlementCapabilitySet *)v3 initWithLocalizedName:&stru_1F227FD28 isOwner:0 shareability:*(self + 24) manageability:*(self + 32) visibility:*(self + 40)];
    }

    if (*(self + 56) < 2)
    {
      capabilityRoleValue = 0;
    }

    else
    {
      capabilityRoleValue = [(PKPassEntitlementCapabilitySet *)v6 capabilityRoleValue];
    }

    v5 = *(self + 48);
    *(self + 48) = capabilityRoleValue;
  }
}

- (PKPassSharedEntitlement)initWithSubcredentialDictionary:(id)dictionary
{
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v5 = [dictionaryCopy PKStringForKey:@"accountRole"];
    v6 = [dictionaryCopy PKNumberForKey:@"accessProfile"];

    selfCopy = 0;
    if (v5 && v6)
    {
      v18.receiver = self;
      v18.super_class = PKPassSharedEntitlement;
      v8 = [(PKPassSharedEntitlement *)&v18 init];
      if (v8)
      {
        v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", @"CarKeyEntitlement-", v6];
        entitlementIdentifier = v8->_entitlementIdentifier;
        v8->_entitlementIdentifier = v9;

        v8->_creationVersion = 2;
        v11 = [[PKPassEntitlementCapabilitySet alloc] initWithRole:v5];
        v12 = v11;
        if (v11)
        {
          if ([(PKPassEntitlementCapabilitySet *)v11 isOwner])
          {
            v13 = [(NSString *)v8->_entitlementIdentifier stringByAppendingString:@"-Owner"];
            v14 = v8->_entitlementIdentifier;
            v8->_entitlementIdentifier = v13;
          }

          v8->_recipientShareability = [(PKPassEntitlementCapabilitySet *)v12 shareability];
          v8->_recipientVisibility = [(PKPassEntitlementCapabilitySet *)v12 visibility];
          v8->_recipientManageability = [(PKPassEntitlementCapabilitySet *)v12 manageability];
          if (v8->_creationVersion < 2)
          {
            capabilityRoleValue = 0;
          }

          else
          {
            capabilityRoleValue = [(PKPassEntitlementCapabilitySet *)v12 capabilityRoleValue];
          }

          recipientCapabilityRole = v8->_recipientCapabilityRole;
          v8->_recipientCapabilityRole = capabilityRoleValue;
        }

        [(PKPassSharedEntitlement *)v8 _recalculateRecipientCapabilityRole];
      }

      self = v8;
      selfCopy = self;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKPassSharedEntitlement)initWithCarKeyEntitlementValue:(unint64_t)value
{
  v8.receiver = self;
  v8.super_class = PKPassSharedEntitlement;
  v4 = [(PKPassSharedEntitlement *)&v8 init];
  if (v4)
  {
    value = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%lu", @"CarKeyEntitlement-", value];
    entitlementIdentifier = v4->_entitlementIdentifier;
    v4->_entitlementIdentifier = value;

    [(PKPassSharedEntitlement *)v4 _recalculateRecipientCapabilityRole];
  }

  return v4;
}

- (PKPassSharedEntitlement)initWithCarKeyEntitlementValue:(unint64_t)value role:(id)role
{
  roleCopy = role;
  v17.receiver = self;
  v17.super_class = PKPassSharedEntitlement;
  v7 = [(PKPassSharedEntitlement *)&v17 init];
  if (v7)
  {
    value = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%lu", @"CarKeyEntitlement-", value];
    entitlementIdentifier = v7->_entitlementIdentifier;
    v7->_entitlementIdentifier = value;

    v7->_creationVersion = 2;
    v10 = [[PKPassEntitlementCapabilitySet alloc] initWithRole:roleCopy];
    v11 = v10;
    if (v10)
    {
      if ([(PKPassEntitlementCapabilitySet *)v10 isOwner])
      {
        v12 = [(NSString *)v7->_entitlementIdentifier stringByAppendingString:@"-Owner"];
        v13 = v7->_entitlementIdentifier;
        v7->_entitlementIdentifier = v12;
      }

      v7->_recipientShareability = [(PKPassEntitlementCapabilitySet *)v11 shareability];
      v7->_recipientVisibility = [(PKPassEntitlementCapabilitySet *)v11 visibility];
      v7->_recipientManageability = [(PKPassEntitlementCapabilitySet *)v11 manageability];
      capabilityRoleValue = [(PKPassEntitlementCapabilitySet *)v11 capabilityRoleValue];
      recipientCapabilityRole = v7->_recipientCapabilityRole;
      v7->_recipientCapabilityRole = capabilityRoleValue;
    }

    [(PKPassSharedEntitlement *)v7 _recalculateRecipientCapabilityRole];
  }

  return v7;
}

- (PKPassSharedEntitlement)initWithEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v10.receiver = self;
  v10.super_class = PKPassSharedEntitlement;
  v5 = [(PKPassSharedEntitlement *)&v10 init];
  if (v5)
  {
    identifier = [entitlementCopy identifier];
    entitlementIdentifier = v5->_entitlementIdentifier;
    v5->_entitlementIdentifier = identifier;

    activeCapabilityRole = [entitlementCopy activeCapabilityRole];

    if (activeCapabilityRole)
    {
      v5->_creationVersion = 2;
    }

    [(PKPassSharedEntitlement *)v5 _recalculateRecipientCapabilityRole];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_entitlementIdentifier forKeyedSubscript:@"entitlementIdentifier"];
  dictionaryRepresentation = [(PKPassShareTimeConfiguration *)self->_timeConfiguration dictionaryRepresentation];
  [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"timeConfiguration"];

  v5 = PKSharingCapabilityShareabilityToString(self->_recipientShareability);
  [v3 setObject:v5 forKeyedSubscript:@"recipientShareability"];

  v6 = PKSharingCapabilityVisibilityToString(self->_recipientVisibility);
  [v3 setObject:v6 forKeyedSubscript:@"recipientVisibility"];

  v7 = PKSharingCapabilityManageabilityToString(self->_recipientManageability);
  [v3 setObject:v7 forKeyedSubscript:@"recipientManageability"];

  [v3 setObject:self->_recipientCapabilityRole forKeyedSubscript:@"recipientCapabilityRole"];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_creationVersion];
  [v3 setObject:v8 forKeyedSubscript:@"version"];

  v9 = [v3 copy];

  return v9;
}

- (unint64_t)carKeyEntitlementValue
{
  v2 = [(NSString *)self->_entitlementIdentifier stringByReplacingOccurrencesOfString:@"CarKeyEntitlement-" withString:&stru_1F227FD28];
  v3 = [v2 stringByReplacingOccurrencesOfString:@"-Owner" withString:&stru_1F227FD28];

  integerValue = [v3 integerValue];
  return integerValue;
}

- (BOOL)intraAccountSharingEnabled
{
  if (!self->_recipientCapabilityRole)
  {
    return 0;
  }

  v2 = [[PKPassEntitlementCapabilitySet alloc] initWithIntRole:[(NSNumber *)self->_recipientCapabilityRole unsignedShortValue]];
  intraAccountSharingEnabled = [(PKPassEntitlementCapabilitySet *)v2 intraAccountSharingEnabled];

  return intraAccountSharingEnabled;
}

- (void)setRecipientShareability:(unint64_t)shareability
{
  if (self->_recipientShareability != shareability)
  {
    self->_recipientShareability = shareability;
    [(PKPassSharedEntitlement *)self _recalculateRecipientCapabilityRole];
  }
}

- (void)setRecipientVisibility:(unint64_t)visibility
{
  if (self->_recipientVisibility != visibility)
  {
    self->_recipientVisibility = visibility;
    [(PKPassSharedEntitlement *)self _recalculateRecipientCapabilityRole];
  }
}

- (void)setRecipientManageability:(unint64_t)manageability
{
  if (self->_recipientManageability != manageability)
  {
    self->_recipientManageability = manageability;
    [(PKPassSharedEntitlement *)self _recalculateRecipientCapabilityRole];
  }
}

- (void)setIntraAccountSharingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  [(PKPassSharedEntitlement *)self _recalculateRecipientCapabilityRole];
  v7 = [(PKPassEntitlementCapabilitySet *)[PKMutablePassEntitlementCapabilitySet alloc] initWithIntRole:[(NSNumber *)self->_recipientCapabilityRole unsignedShortValue]];
  [(PKMutablePassEntitlementCapabilitySet *)v7 setIntraAccountSharingEnabled:enabledCopy];
  if (self->_creationVersion < 2)
  {
    capabilityRoleValue = 0;
  }

  else
  {
    capabilityRoleValue = [(PKPassEntitlementCapabilitySet *)v7 capabilityRoleValue];
  }

  recipientCapabilityRole = self->_recipientCapabilityRole;
  self->_recipientCapabilityRole = capabilityRoleValue;
}

- (BOOL)hasCanonicallyEquivalentRightsToPassEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  timeConfiguration = self->_timeConfiguration;
  v6 = entitlementCopy[2];
  if (timeConfiguration)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (timeConfiguration == v6)
    {
LABEL_9:
      v8 = [(PKPassSharedEntitlement *)self hasCanonicallyEquivalentSharingCapabilityToPassEntitlement:entitlementCopy];
      goto LABEL_10;
    }
  }

  else if ([(PKPassShareTimeConfiguration *)timeConfiguration isEqual:?])
  {
    goto LABEL_9;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (BOOL)hasCanonicallyEquivalentSharingCapabilityToPassEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v5 = entitlementCopy;
  if (self->_recipientShareability != entitlementCopy[3])
  {
    goto LABEL_11;
  }

  v6 = entitlementCopy;
  v7 = v6;
  recipientVisibility = self->_recipientVisibility;
  if (recipientVisibility < 2)
  {
    v9 = v6[5];

    if (v9 >= 2)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (recipientVisibility != 2)
  {
    goto LABEL_15;
  }

  v10 = v6[5];

  if (v10 == 2)
  {
LABEL_7:
    v6 = v7;
    v11 = v6;
    recipientManageability = self->_recipientManageability;
    if (recipientManageability < 2)
    {
      v15 = v6[4];

      if (v15 >= 2)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    if (recipientManageability == -1 || recipientManageability == 2)
    {
      v13 = v6[4];

      if (recipientManageability != v13)
      {
        goto LABEL_11;
      }

LABEL_14:
      intraAccountSharingEnabled = [(PKPassSharedEntitlement *)self intraAccountSharingEnabled];
      v14 = intraAccountSharingEnabled ^ [v11 intraAccountSharingEnabled] ^ 1;
      goto LABEL_12;
    }

LABEL_15:
    __break(1u);
    return v6;
  }

LABEL_11:
  LOBYTE(v14) = 0;
LABEL_12:

  LOBYTE(v6) = v14;
  return v6;
}

- (BOOL)hasCanonicallyEquivalentRoleToPassEntitlement:(id)entitlement
{
  activeCapabilityRole = [entitlement activeCapabilityRole];
  if (activeCapabilityRole)
  {
    v5 = [(NSNumber *)self->_recipientCapabilityRole isEqualToNumber:activeCapabilityRole];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)hasCanonicallyEquivalentRoleToPassSharedEntitlement:(id)entitlement
{
  recipientCapabilityRole = [entitlement recipientCapabilityRole];
  if (recipientCapabilityRole)
  {
    v5 = [(NSNumber *)self->_recipientCapabilityRole isEqualToNumber:recipientCapabilityRole];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKPassSharedEntitlement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKPassSharedEntitlement;
  v5 = [(PKPassSharedEntitlement *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entitlementIdentifier"];
    entitlementIdentifier = v5->_entitlementIdentifier;
    v5->_entitlementIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeConfiguration"];
    timeConfiguration = v5->_timeConfiguration;
    v5->_timeConfiguration = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientShareability"];
    v5->_recipientShareability = PKSharingCapabilityShareabilityFromString(v10);

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientManageability"];
    v5->_recipientManageability = PKSharingCapabilityManageabilityFromString(v11);

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientVisibility"];
    v5->_recipientVisibility = PKSharingCapabilityVisibilityFromString(v12);

    v13 = [coderCopy decodeIntegerForKey:@"version"];
    v5->_creationVersion = v13;
    if (v13 >= 2)
    {
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientCapabilityRole"];
      recipientCapabilityRole = v5->_recipientCapabilityRole;
      v5->_recipientCapabilityRole = v14;
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  entitlementIdentifier = self->_entitlementIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:entitlementIdentifier forKey:@"entitlementIdentifier"];
  [coderCopy encodeObject:self->_timeConfiguration forKey:@"timeConfiguration"];
  v5 = PKSharingCapabilityShareabilityToString(self->_recipientShareability);
  [coderCopy encodeObject:v5 forKey:@"recipientShareability"];

  v6 = PKSharingCapabilityManageabilityToString(self->_recipientManageability);
  [coderCopy encodeObject:v6 forKey:@"recipientManageability"];

  v7 = PKSharingCapabilityVisibilityToString(self->_recipientVisibility);
  [coderCopy encodeObject:v7 forKey:@"recipientVisibility"];

  [coderCopy encodeObject:self->_recipientCapabilityRole forKey:@"recipientCapabilityRole"];
  [coderCopy encodeInteger:self->_creationVersion forKey:@"version"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"entitlementIdentifier: '%@'; ", self->_entitlementIdentifier];
  [v6 appendFormat:@"timeConfiguration: '%@'; ", self->_timeConfiguration];
  v7 = PKSharingCapabilityShareabilityToString(self->_recipientShareability);
  [v6 appendFormat:@"recipientShareability: '%@'; ", v7];

  v8 = PKSharingCapabilityManageabilityToString(self->_recipientManageability);
  [v6 appendFormat:@"recipientManageability: '%@'; ", v8];

  v9 = PKSharingCapabilityVisibilityToString(self->_recipientVisibility);
  [v6 appendFormat:@"recipientVisibility: '%@'; ", v9];

  if (self->_recipientCapabilityRole)
  {
    [v6 appendFormat:@"recipientCapabilityRole: '%@'; ", self->_recipientCapabilityRole];
  }

  [v6 appendFormat:@"version: '%lu'; ", self->_creationVersion];
  [v6 appendFormat:@">"];
  v10 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v10;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_entitlementIdentifier)
  {
    [array addObject:?];
  }

  if (self->_timeConfiguration)
  {
    [v4 addObject:?];
  }

  if (self->_recipientCapabilityRole)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_recipientShareability - v5 + 32 * v5;
  v7 = self->_recipientManageability - v6 + 32 * v6;
  v8 = self->_recipientVisibility - v7 + 32 * v7;
  v9 = self->_creationVersion - v8 + 32 * v8;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        if (!self)
        {
          goto LABEL_27;
        }

        entitlementIdentifier = self->_entitlementIdentifier;
        v8 = v6->_entitlementIdentifier;
        if (entitlementIdentifier && v8)
        {
          if (([(NSString *)entitlementIdentifier isEqual:?]& 1) == 0)
          {
            goto LABEL_26;
          }
        }

        else if (entitlementIdentifier != v8)
        {
          goto LABEL_26;
        }

        timeConfiguration = self->_timeConfiguration;
        v10 = v6->_timeConfiguration;
        if (timeConfiguration && v10)
        {
          if (![(PKPassShareTimeConfiguration *)timeConfiguration isEqual:?])
          {
            goto LABEL_26;
          }
        }

        else if (timeConfiguration != v10)
        {
          goto LABEL_26;
        }

        recipientCapabilityRole = self->_recipientCapabilityRole;
        v12 = v6->_recipientCapabilityRole;
        if (recipientCapabilityRole && v12)
        {
          if (([(NSNumber *)recipientCapabilityRole isEqual:?]& 1) == 0)
          {
            goto LABEL_26;
          }

          goto LABEL_22;
        }

        if (recipientCapabilityRole == v12)
        {
LABEL_22:
          if (self->_recipientShareability != v6->_recipientShareability || self->_recipientManageability != v6->_recipientManageability || self->_recipientVisibility != v6->_recipientVisibility)
          {
            goto LABEL_26;
          }

          LOBYTE(self) = self->_creationVersion == v6->_creationVersion;
LABEL_27:

          goto LABEL_28;
        }

LABEL_26:
        LOBYTE(self) = 0;
        goto LABEL_27;
      }
    }

    LOBYTE(self) = 0;
  }

LABEL_28:

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[PKPassSharedEntitlement allocWithZone:?]];
  v5 = [(NSString *)self->_entitlementIdentifier copy];
  entitlementIdentifier = v4->_entitlementIdentifier;
  v4->_entitlementIdentifier = v5;

  v7 = [(PKPassShareTimeConfiguration *)self->_timeConfiguration copy];
  timeConfiguration = v4->_timeConfiguration;
  v4->_timeConfiguration = v7;

  v4->_recipientShareability = self->_recipientShareability;
  v4->_recipientManageability = self->_recipientManageability;
  v4->_recipientVisibility = self->_recipientVisibility;
  objc_storeStrong(&v4->_recipientCapabilityRole, self->_recipientCapabilityRole);
  v4->_creationVersion = self->_creationVersion;
  return v4;
}

@end
@interface PKPassEntitlementCapabilitySet
+ (id)predefinedSets;
- (PKPassEntitlementCapabilitySet)initWithIntRole:(unsigned __int16)role;
- (PKPassEntitlementCapabilitySet)initWithLocalizedName:(id)name isOwner:(BOOL)owner shareability:(unint64_t)shareability manageability:(unint64_t)manageability visibility:(unint64_t)visibility;
- (PKPassEntitlementCapabilitySet)initWithRole:(id)role;
- (id)_initWithLocalizationKey:(id)key isOwner:(BOOL)owner shareability:(unint64_t)shareability manageability:(unint64_t)manageability visibility:(unint64_t)visibility;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopy;
@end

@implementation PKPassEntitlementCapabilitySet

- (PKPassEntitlementCapabilitySet)initWithLocalizedName:(id)name isOwner:(BOOL)owner shareability:(unint64_t)shareability manageability:(unint64_t)manageability visibility:(unint64_t)visibility
{
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = PKPassEntitlementCapabilitySet;
  v14 = [(PKPassEntitlementCapabilitySet *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_isOwner = owner;
    objc_storeStrong(&v14->_localizedName, name);
    v15->_shareability = shareability;
    v15->_manageability = manageability;
    v15->_visibility = visibility;
  }

  return v15;
}

- (PKPassEntitlementCapabilitySet)initWithRole:(id)role
{
  roleCopy = role;
  if ([roleCopy length] == 4)
  {
    v8 = 0;
    pk_decodeHexadecimal = [roleCopy pk_decodeHexadecimal];
    [pk_decodeHexadecimal getBytes:&v8 length:2];

    v8 = bswap32(v8) >> 16;
    self = [(PKPassEntitlementCapabilitySet *)self initWithIntRole:?];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKPassEntitlementCapabilitySet)initWithIntRole:(unsigned __int16)role
{
  roleCopy = role;
  v4 = 3;
  v5 = 2;
  if ((role & 2) == 0)
  {
    v5 = role & 1;
  }

  if ((~role & 3) != 0)
  {
    v4 = v5;
  }

  if ((~role & 7) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 999;
  }

  if ((role & 0x80) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if ((~role & 0x90) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -1;
  }

  if ((role & 0x800) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(PKPassEntitlementCapabilitySet *)self initWithLocalizedName:&stru_1F227FD28 isOwner:role >> 15 shareability:v6 manageability:v8 visibility:v9];
  v11 = v10;
  if (v10)
  {
    shareability = v10->_shareability;
    if (shareability == 999)
    {
      v13 = 65520;
    }

    else
    {
      v13 = 65527;
    }

    if (shareability == 3)
    {
      v14 = 65524;
    }

    else
    {
      v14 = v13;
    }

    if (shareability == 2)
    {
      v15 = 65525;
    }

    else
    {
      v15 = 65527;
    }

    if (shareability == 1)
    {
      v15 = 65526;
    }

    if (shareability <= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v10->_intraAccountSharingEnabled = (v16 | roleCopy) == 0xFFFF;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:roleCopy];
    capabilityRoleValue = v11->_capabilityRoleValue;
    v11->_capabilityRoleValue = v17;
  }

  return v11;
}

- (id)_initWithLocalizationKey:(id)key isOwner:(BOOL)owner shareability:(unint64_t)shareability manageability:(unint64_t)manageability visibility:(unint64_t)visibility
{
  ownerCopy = owner;
  v12 = PKLocalizedShareableCredentialString(key, 0);
  v13 = [(PKPassEntitlementCapabilitySet *)self initWithLocalizedName:v12 isOwner:ownerCopy shareability:shareability manageability:manageability visibility:visibility];

  return v13;
}

+ (id)predefinedSets
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [[PKPassEntitlementCapabilitySet alloc] _initWithLocalizationKey:@"SHARED_ENTITLEMENT_CAPABILITY_SET_OWNER" isOwner:1 shareability:999 manageability:-1 visibility:2];
  [v2 addObject:v3];

  v4 = [[PKPassEntitlementCapabilitySet alloc] _initWithLocalizationKey:@"SHARED_ENTITLEMENT_CAPABILITY_SET_SUPER_ADMIN" isOwner:0 shareability:999 manageability:-1 visibility:2];
  [v2 addObject:v4];

  v5 = [[PKPassEntitlementCapabilitySet alloc] _initWithLocalizationKey:@"SHARED_ENTITLEMENT_CAPABILITY_SET_ADMIN" isOwner:0 shareability:2 manageability:2 visibility:2];
  [v2 addObject:v5];

  v6 = [[PKPassEntitlementCapabilitySet alloc] _initWithLocalizationKey:@"SHARED_ENTITLEMENT_CAPABILITY_SET_FAMILY" isOwner:0 shareability:2 manageability:1 visibility:2];
  [v2 addObject:v6];

  v7 = [[PKPassEntitlementCapabilitySet alloc] _initWithLocalizationKey:@"SHARED_ENTITLEMENT_CAPABILITY_SET_FRIEND" isOwner:0 shareability:1 manageability:1 visibility:1];
  [v2 addObject:v7];

  v8 = [[PKPassEntitlementCapabilitySet alloc] _initWithLocalizationKey:@"SHARED_ENTITLEMENT_CAPABILITY_SET_GUEST" isOwner:0 shareability:0 manageability:1 visibility:1];
  [v2 addObject:v8];

  v9 = [v2 copy];

  return v9;
}

- (id)mutableCopy
{
  capabilityRoleValue = self->_capabilityRoleValue;
  v4 = [PKMutablePassEntitlementCapabilitySet alloc];
  if (capabilityRoleValue)
  {
    v5 = [(PKPassEntitlementCapabilitySet *)v4 initWithIntRole:[(NSNumber *)self->_capabilityRoleValue unsignedShortValue]];
    v6 = [(NSString *)self->_localizedName copy];
    [(PKPassEntitlementCapabilitySet *)v5 setLocalizedName:v6];

    return v5;
  }

  else
  {
    isOwner = self->_isOwner;
    localizedName = self->_localizedName;
    shareability = self->_shareability;
    manageability = self->_manageability;
    visibility = self->_visibility;

    return [(PKPassEntitlementCapabilitySet *)v4 initWithLocalizedName:localizedName isOwner:isOwner shareability:shareability manageability:manageability visibility:visibility];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PKPassEntitlementCapabilitySet alloc];
  v4->_isOwner = self->_isOwner;
  v5 = [(NSString *)self->_localizedName copy];
  localizedName = v4->_localizedName;
  v4->_localizedName = v5;

  v4->_shareability = self->_shareability;
  v4->_manageability = self->_manageability;
  v4->_visibility = self->_visibility;
  v4->_intraAccountSharingEnabled = self->_intraAccountSharingEnabled;
  objc_storeStrong(&v4->_capabilityRoleValue, self->_capabilityRoleValue);
  return v4;
}

@end
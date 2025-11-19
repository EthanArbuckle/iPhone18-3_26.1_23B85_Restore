@interface PKPassEntitlementCapabilitySet
+ (id)predefinedSets;
- (PKPassEntitlementCapabilitySet)initWithIntRole:(unsigned __int16)a3;
- (PKPassEntitlementCapabilitySet)initWithLocalizedName:(id)a3 isOwner:(BOOL)a4 shareability:(unint64_t)a5 manageability:(unint64_t)a6 visibility:(unint64_t)a7;
- (PKPassEntitlementCapabilitySet)initWithRole:(id)a3;
- (id)_initWithLocalizationKey:(id)a3 isOwner:(BOOL)a4 shareability:(unint64_t)a5 manageability:(unint64_t)a6 visibility:(unint64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopy;
@end

@implementation PKPassEntitlementCapabilitySet

- (PKPassEntitlementCapabilitySet)initWithLocalizedName:(id)a3 isOwner:(BOOL)a4 shareability:(unint64_t)a5 manageability:(unint64_t)a6 visibility:(unint64_t)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = PKPassEntitlementCapabilitySet;
  v14 = [(PKPassEntitlementCapabilitySet *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_isOwner = a4;
    objc_storeStrong(&v14->_localizedName, a3);
    v15->_shareability = a5;
    v15->_manageability = a6;
    v15->_visibility = a7;
  }

  return v15;
}

- (PKPassEntitlementCapabilitySet)initWithRole:(id)a3
{
  v4 = a3;
  if ([v4 length] == 4)
  {
    v8 = 0;
    v5 = [v4 pk_decodeHexadecimal];
    [v5 getBytes:&v8 length:2];

    v8 = bswap32(v8) >> 16;
    self = [(PKPassEntitlementCapabilitySet *)self initWithIntRole:?];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PKPassEntitlementCapabilitySet)initWithIntRole:(unsigned __int16)a3
{
  v3 = a3;
  v4 = 3;
  v5 = 2;
  if ((a3 & 2) == 0)
  {
    v5 = a3 & 1;
  }

  if ((~a3 & 3) != 0)
  {
    v4 = v5;
  }

  if ((~a3 & 7) != 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = 999;
  }

  if ((a3 & 0x80) != 0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if ((~a3 & 0x90) != 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -1;
  }

  if ((a3 & 0x800) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = [(PKPassEntitlementCapabilitySet *)self initWithLocalizedName:&stru_1F227FD28 isOwner:a3 >> 15 shareability:v6 manageability:v8 visibility:v9];
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

    v10->_intraAccountSharingEnabled = (v16 | v3) == 0xFFFF;
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v3];
    capabilityRoleValue = v11->_capabilityRoleValue;
    v11->_capabilityRoleValue = v17;
  }

  return v11;
}

- (id)_initWithLocalizationKey:(id)a3 isOwner:(BOOL)a4 shareability:(unint64_t)a5 manageability:(unint64_t)a6 visibility:(unint64_t)a7
{
  v10 = a4;
  v12 = PKLocalizedShareableCredentialString(a3, 0);
  v13 = [(PKPassEntitlementCapabilitySet *)self initWithLocalizedName:v12 isOwner:v10 shareability:a5 manageability:a6 visibility:a7];

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

- (id)copyWithZone:(_NSZone *)a3
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
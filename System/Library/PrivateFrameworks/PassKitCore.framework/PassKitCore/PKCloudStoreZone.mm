@interface PKCloudStoreZone
+ (void)zoneValueForZoneName:(id)name outZoneType:(unint64_t *)type outAccountIdentifier:(id *)identifier altDSID:(id *)d;
- (BOOL)isEqual:(id)equal;
- (PKCloudStoreZone)initWithCoder:(id)coder;
- (PKCloudStoreZone)initWithZoneID:(id)d containerName:(id)name scope:(int64_t)scope;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)recordZone;
- (id)shareParticipantWithHandle:(id)handle;
- (id)shareParticipantWithLookupInfo:(id)info;
- (id)zoneID;
- (id)zoneSubscription;
- (unint64_t)hash;
- (unint64_t)zoneType;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudStoreZone

- (PKCloudStoreZone)initWithZoneID:(id)d containerName:(id)name scope:(int64_t)scope
{
  dCopy = d;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = PKCloudStoreZone;
  v10 = [(PKCloudStoreZone *)&v18 init];
  if (v10)
  {
    zoneName = [dCopy zoneName];
    zoneName = v10->_zoneName;
    v10->_zoneName = zoneName;

    ownerName = [dCopy ownerName];
    ownerName = v10->_ownerName;
    v10->_ownerName = ownerName;

    objc_storeStrong(&v10->_containerName, name);
    v10->_scope = scope;
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    shareParticipants = v10->_shareParticipants;
    v10->_shareParticipants = v15;
  }

  return v10;
}

- (PKCloudStoreZone)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKCloudStoreZone;
  v5 = [(PKCloudStoreZone *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerName"];
    ownerName = v5->_ownerName;
    v5->_ownerName = v8;

    v5->_scope = [coderCopy decodeIntegerForKey:@"scope"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerName"];
    containerName = v5->_containerName;
    v5->_containerName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneSubscriptionIdentifier"];
    zoneSubscriptionIdentifier = v5->_zoneSubscriptionIdentifier;
    v5->_zoneSubscriptionIdentifier = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"shareParticipants"];
    shareParticipants = v5->_shareParticipants;
    v5->_shareParticipants = v17;
  }

  return v5;
}

+ (void)zoneValueForZoneName:(id)name outZoneType:(unint64_t *)type outAccountIdentifier:(id *)identifier altDSID:(id *)d
{
  nameCopy = name;
  v28 = nameCopy;
  if (@"transactions" == nameCopy)
  {

    goto LABEL_7;
  }

  if (!nameCopy || !@"transactions")
  {

    goto LABEL_9;
  }

  v10 = [(__CFString *)nameCopy isEqualToString:@"transactions"];

  if (v10)
  {
LABEL_7:
    v11 = 0;
    v12 = 0;
    v13 = 1;
    goto LABEL_32;
  }

LABEL_9:
  if ([(__CFString *)v28 hasPrefix:@"cash-"])
  {
    v12 = [(__CFString *)v28 stringByReplacingOccurrencesOfString:@"cash-" withString:&stru_1F227FD28];
    v11 = 0;
    v13 = 3;
    goto LABEL_32;
  }

  if ([(__CFString *)v28 hasPrefix:@"card-joint-"])
  {
    v12 = [(__CFString *)v28 stringByReplacingOccurrencesOfString:@"card-joint-" withString:&stru_1F227FD28];
    v11 = 0;
    v13 = 4;
    goto LABEL_32;
  }

  if (![(__CFString *)v28 hasPrefix:@"card-participant-"])
  {
    if ([(__CFString *)v28 hasPrefix:@"card-"])
    {
      v12 = -[__CFString stringByReplacingOccurrencesOfString:withString:options:range:](v28, "stringByReplacingOccurrencesOfString:withString:options:range:", @"card-", &stru_1F227FD28, 0, 0, [@"card-" length]);
      v11 = 0;
      v13 = 2;
      goto LABEL_32;
    }

    if ([(__CFString *)v28 hasPrefix:@"savings-"])
    {
      v12 = -[__CFString stringByReplacingOccurrencesOfString:withString:options:range:](v28, "stringByReplacingOccurrencesOfString:withString:options:range:", @"savings-", &stru_1F227FD28, 0, 0, [@"savings-" length]);
      v11 = 0;
      v13 = 8;
      goto LABEL_32;
    }

    v22 = v28;
    if (@"apple-account" == v22)
    {
      goto LABEL_52;
    }

    if (v28 && @"apple-account")
    {
      v23 = [(__CFString *)v22 isEqualToString:@"apple-account"];

      if (v23)
      {
        goto LABEL_53;
      }
    }

    else
    {
    }

    v22 = v22;
    if (@"apple-account-transactions" == v22)
    {
LABEL_52:
    }

    else
    {
      if (!v28 || !@"apple-account-transactions")
      {

        goto LABEL_55;
      }

      v24 = [(__CFString *)v22 isEqualToString:@"apple-account-transactions"];

      if ((v24 & 1) == 0)
      {
LABEL_55:
        v25 = v22;
        v26 = v25;
        if (@"messages" == v25)
        {
        }

        else
        {
          if (!v28 || !@"messages")
          {

LABEL_63:
            v13 = 0;
            v11 = 0;
            v12 = 0;
            goto LABEL_32;
          }

          v27 = [(__CFString *)v25 isEqualToString:@"messages"];

          if (!v27)
          {
            goto LABEL_63;
          }
        }

        v11 = 0;
        v12 = 0;
        v13 = 9;
        goto LABEL_32;
      }
    }

LABEL_53:
    v11 = 0;
    v12 = 0;
    v13 = 7;
    goto LABEL_32;
  }

  v14 = [(__CFString *)v28 stringByReplacingOccurrencesOfString:@"card-participant-" withString:&stru_1F227FD28];
  v15 = @"individual-";
  if ([v14 hasPrefix:@"individual-"])
  {
    v13 = 5;
LABEL_20:
    v16 = [v14 stringByReplacingOccurrencesOfString:v15 withString:&stru_1F227FD28];

    v14 = v16;
    goto LABEL_24;
  }

  v15 = @"joint-";
  if ([v14 hasPrefix:@"joint-"])
  {
    v13 = 6;
    goto LABEL_20;
  }

  v13 = 0;
LABEL_24:
  v18 = [v14 rangeOfString:@"-altDSID-"];
  if (v18 == 0x7FFFFFFFFFFFFFFFLL || v17 >= [v14 length])
  {
    v12 = 0;
  }

  else
  {
    v12 = [v14 substringToIndex:v18];
  }

  v19 = [@"-altDSID-" length] + v18;
  if (v19 >= [v14 length])
  {
    v11 = 0;
  }

  else
  {
    v11 = [v14 substringFromIndex:v19];
  }

LABEL_32:
  if (identifier)
  {
    v20 = v12;
    *identifier = v12;
  }

  if (d)
  {
    v21 = v11;
    *d = v11;
  }

  if (type)
  {
    *type = v13;
  }
}

- (unint64_t)zoneType
{
  v3 = 0;
  [objc_opt_class() zoneValueForZoneName:self->_zoneName outZoneType:&v3 outAccountIdentifier:0 altDSID:0];
  return v3;
}

- (id)shareParticipantWithHandle:(id)handle
{
  v21 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_shareParticipants;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        participantHandle = [v9 participantHandle];
        v11 = handleCopy;
        v12 = participantHandle;
        v13 = v12;
        if (v12 == v11)
        {

LABEL_16:
          v6 = v9;
          goto LABEL_17;
        }

        if (handleCopy && v12)
        {
          v14 = [v11 isEqualToString:v12];

          if (v14)
          {
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  return v6;
}

- (id)shareParticipantWithLookupInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_shareParticipants;
  v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        lookupInfo = [v9 lookupInfo];
        v11 = lookupInfo;
        if (infoCopy && lookupInfo)
        {
          v12 = [infoCopy isEqual:lookupInfo];

          if (v12)
          {
            goto LABEL_14;
          }
        }

        else
        {

          if (v11 == infoCopy)
          {
LABEL_14:
            v6 = v9;
            goto LABEL_15;
          }
        }
      }

      v6 = [(NSSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v6;
}

- (id)recordZone
{
  zoneID = [(PKCloudStoreZone *)self zoneID];
  if (zoneID)
  {
    v3 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:zoneID];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)zoneID
{
  if (self->_zoneName)
  {
    if (self->_ownerName)
    {
      v3 = [objc_alloc(MEMORY[0x1E695BA90]) initWithZoneName:self->_zoneName ownerName:self->_ownerName];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)zoneSubscription
{
  if (self->_zoneSubscriptionIdentifier)
  {
    v3 = objc_alloc(MEMORY[0x1E695BAA0]);
    recordZone = [(PKCloudStoreZone *)self recordZone];
    zoneID = [recordZone zoneID];
    v6 = [v3 initWithZoneID:zoneID subscriptionID:self->_zoneSubscriptionIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  zoneName = self->_zoneName;
  coderCopy = coder;
  [coderCopy encodeObject:zoneName forKey:@"zoneName"];
  [coderCopy encodeObject:self->_zoneSubscriptionIdentifier forKey:@"zoneSubscriptionIdentifier"];
  [coderCopy encodeObject:self->_ownerName forKey:@"ownerName"];
  [coderCopy encodeInteger:self->_scope forKey:@"scope"];
  [coderCopy encodeObject:self->_shareParticipants forKey:@"shareParticipants"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKCloudStoreZone allocWithZone:](PKCloudStoreZone init];
  v6 = [(NSString *)self->_zoneName copyWithZone:zone];
  zoneName = v5->_zoneName;
  v5->_zoneName = v6;

  v8 = [(NSString *)self->_containerName copyWithZone:zone];
  containerName = v5->_containerName;
  v5->_containerName = v8;

  v10 = [(NSString *)self->_zoneSubscriptionIdentifier copyWithZone:zone];
  zoneSubscriptionIdentifier = v5->_zoneSubscriptionIdentifier;
  v5->_zoneSubscriptionIdentifier = v10;

  v12 = [(NSString *)self->_ownerName copyWithZone:zone];
  ownerName = v5->_ownerName;
  v5->_ownerName = v12;

  v5->_scope = self->_scope;
  v14 = [(NSSet *)self->_shareParticipants copyWithZone:zone];
  shareParticipants = v5->_shareParticipants;
  v5->_shareParticipants = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_17;
  }

  zoneName = self->_zoneName;
  v8 = v6[2];
  if (zoneName && v8)
  {
    if (([(NSString *)zoneName isEqual:?]& 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (zoneName != v8)
  {
    goto LABEL_17;
  }

  ownerName = self->_ownerName;
  v10 = v6[3];
  if (!ownerName || !v10)
  {
    if (ownerName == v10)
    {
      goto LABEL_13;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (([(NSString *)ownerName isEqual:?]& 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_13:
  containerName = self->_containerName;
  v12 = v6[1];
  if (containerName && v12)
  {
    v13 = [(NSString *)containerName isEqual:?];
  }

  else
  {
    v13 = containerName == v12;
  }

LABEL_18:

  return v13;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_zoneName];
  [array safelyAddObject:self->_zoneSubscriptionIdentifier];
  [array safelyAddObject:self->_containerName];
  [array safelyAddObject:self->_ownerName];
  [array safelyAddObject:self->_shareParticipants];
  v4 = PKCombinedHash(17, array);
  v5 = self->_scope - v4 + 32 * v4;

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"zoneName: '%@'; ", self->_zoneName];
  [v3 appendFormat:@"containerName: '%@'; ", self->_containerName];
  [v3 appendFormat:@"ownerName: '%@'; ", self->_ownerName];
  v4 = CKDatabaseScopeString();
  [v3 appendFormat:@"scope: '%@'; ", v4];

  [v3 appendFormat:@"zoneSubscriptionIdentifier: '%@'; ", self->_zoneSubscriptionIdentifier];
  if ([(NSSet *)self->_shareParticipants count])
  {
    [v3 appendFormat:@"shareParticipants: '%@'; ", self->_shareParticipants];
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end
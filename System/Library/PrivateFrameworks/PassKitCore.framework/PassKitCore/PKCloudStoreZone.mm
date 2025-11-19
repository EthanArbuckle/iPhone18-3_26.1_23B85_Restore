@interface PKCloudStoreZone
+ (void)zoneValueForZoneName:(id)a3 outZoneType:(unint64_t *)a4 outAccountIdentifier:(id *)a5 altDSID:(id *)a6;
- (BOOL)isEqual:(id)a3;
- (PKCloudStoreZone)initWithCoder:(id)a3;
- (PKCloudStoreZone)initWithZoneID:(id)a3 containerName:(id)a4 scope:(int64_t)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)recordZone;
- (id)shareParticipantWithHandle:(id)a3;
- (id)shareParticipantWithLookupInfo:(id)a3;
- (id)zoneID;
- (id)zoneSubscription;
- (unint64_t)hash;
- (unint64_t)zoneType;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudStoreZone

- (PKCloudStoreZone)initWithZoneID:(id)a3 containerName:(id)a4 scope:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v18.receiver = self;
  v18.super_class = PKCloudStoreZone;
  v10 = [(PKCloudStoreZone *)&v18 init];
  if (v10)
  {
    v11 = [v8 zoneName];
    zoneName = v10->_zoneName;
    v10->_zoneName = v11;

    v13 = [v8 ownerName];
    ownerName = v10->_ownerName;
    v10->_ownerName = v13;

    objc_storeStrong(&v10->_containerName, a4);
    v10->_scope = a5;
    v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    shareParticipants = v10->_shareParticipants;
    v10->_shareParticipants = v15;
  }

  return v10;
}

- (PKCloudStoreZone)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKCloudStoreZone;
  v5 = [(PKCloudStoreZone *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerName"];
    ownerName = v5->_ownerName;
    v5->_ownerName = v8;

    v5->_scope = [v4 decodeIntegerForKey:@"scope"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerName"];
    containerName = v5->_containerName;
    v5->_containerName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneSubscriptionIdentifier"];
    zoneSubscriptionIdentifier = v5->_zoneSubscriptionIdentifier;
    v5->_zoneSubscriptionIdentifier = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"shareParticipants"];
    shareParticipants = v5->_shareParticipants;
    v5->_shareParticipants = v17;
  }

  return v5;
}

+ (void)zoneValueForZoneName:(id)a3 outZoneType:(unint64_t *)a4 outAccountIdentifier:(id *)a5 altDSID:(id *)a6
{
  v9 = a3;
  v28 = v9;
  if (@"transactions" == v9)
  {

    goto LABEL_7;
  }

  if (!v9 || !@"transactions")
  {

    goto LABEL_9;
  }

  v10 = [(__CFString *)v9 isEqualToString:@"transactions"];

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
  if (a5)
  {
    v20 = v12;
    *a5 = v12;
  }

  if (a6)
  {
    v21 = v11;
    *a6 = v11;
  }

  if (a4)
  {
    *a4 = v13;
  }
}

- (unint64_t)zoneType
{
  v3 = 0;
  [objc_opt_class() zoneValueForZoneName:self->_zoneName outZoneType:&v3 outAccountIdentifier:0 altDSID:0];
  return v3;
}

- (id)shareParticipantWithHandle:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v10 = [v9 participantHandle];
        v11 = v4;
        v12 = v10;
        v13 = v12;
        if (v12 == v11)
        {

LABEL_16:
          v6 = v9;
          goto LABEL_17;
        }

        if (v4 && v12)
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

- (id)shareParticipantWithLookupInfo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v10 = [v9 lookupInfo];
        v11 = v10;
        if (v4 && v10)
        {
          v12 = [v4 isEqual:v10];

          if (v12)
          {
            goto LABEL_14;
          }
        }

        else
        {

          if (v11 == v4)
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
  v2 = [(PKCloudStoreZone *)self zoneID];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695BA80]) initWithZoneID:v2];
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
    v4 = [(PKCloudStoreZone *)self recordZone];
    v5 = [v4 zoneID];
    v6 = [v3 initWithZoneID:v5 subscriptionID:self->_zoneSubscriptionIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  zoneName = self->_zoneName;
  v5 = a3;
  [v5 encodeObject:zoneName forKey:@"zoneName"];
  [v5 encodeObject:self->_zoneSubscriptionIdentifier forKey:@"zoneSubscriptionIdentifier"];
  [v5 encodeObject:self->_ownerName forKey:@"ownerName"];
  [v5 encodeInteger:self->_scope forKey:@"scope"];
  [v5 encodeObject:self->_shareParticipants forKey:@"shareParticipants"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKCloudStoreZone allocWithZone:](PKCloudStoreZone init];
  v6 = [(NSString *)self->_zoneName copyWithZone:a3];
  zoneName = v5->_zoneName;
  v5->_zoneName = v6;

  v8 = [(NSString *)self->_containerName copyWithZone:a3];
  containerName = v5->_containerName;
  v5->_containerName = v8;

  v10 = [(NSString *)self->_zoneSubscriptionIdentifier copyWithZone:a3];
  zoneSubscriptionIdentifier = v5->_zoneSubscriptionIdentifier;
  v5->_zoneSubscriptionIdentifier = v10;

  v12 = [(NSString *)self->_ownerName copyWithZone:a3];
  ownerName = v5->_ownerName;
  v5->_ownerName = v12;

  v5->_scope = self->_scope;
  v14 = [(NSSet *)self->_shareParticipants copyWithZone:a3];
  shareParticipants = v5->_shareParticipants;
  v5->_shareParticipants = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_zoneName];
  [v3 safelyAddObject:self->_zoneSubscriptionIdentifier];
  [v3 safelyAddObject:self->_containerName];
  [v3 safelyAddObject:self->_ownerName];
  [v3 safelyAddObject:self->_shareParticipants];
  v4 = PKCombinedHash(17, v3);
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
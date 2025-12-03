@interface PKSharedAccountCloudStore
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSharedAccountCloudStore:(id)store;
- (PKSharedAccountCloudStore)initWithArray:(id)array lastUpdated:(id)updated;
- (PKSharedAccountCloudStore)initWithCoder:(id)coder;
- (id)allPossibleZonesForAccountUser:(id)user access:(unint64_t)access;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)primaryZoneForAccountUser:(id)user inAccountUserCollection:(id)collection access:(unint64_t)access;
- (id)sharedAccountCloudStoreZonesWithAccess:(unint64_t)access;
- (id)sharedAccountCloudStoreZonesWithAccess:(unint64_t)access forAccountUser:(id)user;
- (id)sharedAccountZoneWithName:(id)name access:(unint64_t)access;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSharedAccountCloudStore

- (PKSharedAccountCloudStore)initWithArray:(id)array lastUpdated:(id)updated
{
  v28 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  updatedCopy = updated;
  v26.receiver = self;
  v26.super_class = PKSharedAccountCloudStore;
  v8 = [(PKSharedAccountCloudStore *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lastUpdated, updated);
    v9->_dirty = 0;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = arrayCopy;
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        v15 = 0;
        do
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * v15);
          v17 = [PKSharedAccountCloudStoreZone alloc];
          v18 = [(PKSharedAccountCloudStoreZone *)v17 initWithDictionary:v16, v22];
          [v10 addObject:v18];

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v13);
    }

    v19 = [v10 copy];
    sharedAccountCloudStoreZones = v9->_sharedAccountCloudStoreZones;
    v9->_sharedAccountCloudStoreZones = v19;
  }

  return v9;
}

- (id)sharedAccountCloudStoreZonesWithAccess:(unint64_t)access
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_sharedAccountCloudStoreZones;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 access] == access)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (id)sharedAccountCloudStoreZonesWithAccess:(unint64_t)access forAccountUser:(id)user
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_sharedAccountCloudStoreZones;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) access];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = [v5 copy];

  return v11;
}

- (id)sharedAccountZoneWithName:(id)name access:(unint64_t)access
{
  v26 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (nameCopy)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = self->_sharedAccountCloudStoreZones;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          zoneName = [v12 zoneName];
          v14 = nameCopy;
          v15 = zoneName;
          v16 = v15;
          if (v15 == v14)
          {
          }

          else
          {
            if (!v15)
            {

LABEL_15:
              continue;
            }

            v17 = [v14 isEqualToString:v15];

            if (!v17)
            {
              goto LABEL_15;
            }
          }

          access = [v12 access];

          if (access == access)
          {
            v19 = v12;
            goto LABEL_20;
          }
        }

        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }

    v19 = 0;
LABEL_20:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)primaryZoneForAccountUser:(id)user inAccountUserCollection:(id)collection access:(unint64_t)access
{
  userCopy = user;
  collectionCopy = collection;
  accountIdentifier = [userCopy accountIdentifier];
  altDSID = self->_accountIdentifier;
  v12 = accountIdentifier;
  v13 = v12;
  if (altDSID == v12)
  {
  }

  else
  {
    if (!v12 || !altDSID)
    {

LABEL_12:
      v15 = 0;
      goto LABEL_18;
    }

    v14 = [(NSString *)altDSID isEqualToString:v12];

    if (!v14)
    {
      v15 = 0;
      goto LABEL_19;
    }
  }

  altDSID = [userCopy altDSID];
  accessLevel = [userCopy accessLevel];
  if (accessLevel != 2)
  {
    if (accessLevel == 1)
    {
      accountUsers = [collectionCopy accountUsers];
      v18 = [accountUsers objectsPassingTest:&__block_literal_global_219];
      v19 = [v18 count];

      if (v19 >= 2)
      {
        v20 = PKSharedAccountMergedCloudStoreZoneName(v13);
LABEL_15:
        v22 = v20;
        v15 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:v20 access:access];

        goto LABEL_18;
      }

      if ([userCopy isCurrentUser])
      {
        v15 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:@"transactions" access:access];
        goto LABEL_18;
      }
    }

    goto LABEL_12;
  }

  v21 = PKSharedAccountParticpantCloudStoreZoneName(v13, altDSID, 1);
  v15 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:v21 access:access];

  if (!v15)
  {
    v20 = PKSharedAccountParticpantCloudStoreZoneName(v13, altDSID, 0);
    goto LABEL_15;
  }

LABEL_18:

LABEL_19:

  return v15;
}

- (id)allPossibleZonesForAccountUser:(id)user access:(unint64_t)access
{
  userCopy = user;
  accountIdentifier = [userCopy accountIdentifier];
  altDSID = self->_accountIdentifier;
  v9 = accountIdentifier;
  v10 = v9;
  if (altDSID == v9)
  {
  }

  else
  {
    v11 = 0;
    if (!v9 || !altDSID)
    {
      v18 = v9;
LABEL_16:

      goto LABEL_17;
    }

    v12 = [(NSString *)altDSID isEqualToString:v9];

    if (!v12)
    {
      v11 = 0;
      goto LABEL_18;
    }
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  altDSID = [userCopy altDSID];
  accessLevel = [userCopy accessLevel];
  if (accessLevel != 2)
  {
    if (accessLevel != 1)
    {
      goto LABEL_17;
    }

    if (access - 1 > 1)
    {
      goto LABEL_17;
    }

    v14 = PKSharedAccountMergedCloudStoreZoneName(v10);
    v15 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:v14 access:access];
    [v11 safelyAddObject:v15];

    if (![userCopy isCurrentUser])
    {
      goto LABEL_17;
    }

    v16 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:@"transactions" access:access];
    [v11 safelyAddObject:v16];

    v17 = PKSharedAccountCardCloudStoreZoneName(v10);
    goto LABEL_15;
  }

  if (access - 1 <= 1)
  {
    v19 = PKSharedAccountParticpantCloudStoreZoneName(v10, altDSID, 1);
    v20 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:v19 access:access];
    [v11 safelyAddObject:v20];

    v17 = PKSharedAccountParticpantCloudStoreZoneName(v10, altDSID, 0);
LABEL_15:
    v18 = v17;
    v21 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:v17 access:access];
    [v11 safelyAddObject:v21];

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:

  return v11;
}

- (PKSharedAccountCloudStore)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKSharedAccountCloudStore;
  v5 = [(PKSharedAccountCloudStore *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sharedAccountCloudStoreZones"];
    sharedAccountCloudStoreZones = v5->_sharedAccountCloudStoreZones;
    v5->_sharedAccountCloudStoreZones = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v11;

    v5->_dirty = [coderCopy decodeBoolForKey:@"dirty"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sharedAccountCloudStoreZones = self->_sharedAccountCloudStoreZones;
  coderCopy = coder;
  [coderCopy encodeObject:sharedAccountCloudStoreZones forKey:@"sharedAccountCloudStoreZones"];
  [coderCopy encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [coderCopy encodeBool:self->_dirty forKey:@"dirty"];
  [coderCopy encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKSharedAccountCloudStore *)self isEqualToSharedAccountCloudStore:v5];
  }

  return v6;
}

- (BOOL)isEqualToSharedAccountCloudStore:(id)store
{
  sharedAccountCloudStoreZones = self->_sharedAccountCloudStoreZones;
  v4 = *(store + 2);
  if (sharedAccountCloudStoreZones)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return sharedAccountCloudStoreZones == v4;
  }

  else
  {
    return [(NSArray *)sharedAccountCloudStoreZones isEqual:?];
  }
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_sharedAccountCloudStoreZones];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKSharedAccountCloudStore allocWithZone:](PKSharedAccountCloudStore init];
  v6 = [(NSArray *)self->_sharedAccountCloudStoreZones copyWithZone:zone];
  sharedAccountCloudStoreZones = v5->_sharedAccountCloudStoreZones;
  v5->_sharedAccountCloudStoreZones = v6;

  v8 = [(NSDate *)self->_lastUpdated copyWithZone:zone];
  lastUpdated = v5->_lastUpdated;
  v5->_lastUpdated = v8;

  v5->_dirty = self->_dirty;
  objc_storeStrong(&v5->_accountIdentifier, self->_accountIdentifier);
  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"sharedAccountCloudStoreZones: %@; ", self->_sharedAccountCloudStoreZones];
  [v3 appendFormat:@"lastUpdated: %@; ", self->_lastUpdated];
  if (self->_dirty)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"dirty: %@; ", v4];
  [v3 appendFormat:@"accountIdentifier: %@; ", self->_accountIdentifier];
  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

@end
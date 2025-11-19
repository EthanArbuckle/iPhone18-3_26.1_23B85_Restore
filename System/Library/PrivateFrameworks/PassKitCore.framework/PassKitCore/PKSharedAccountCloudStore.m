@interface PKSharedAccountCloudStore
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSharedAccountCloudStore:(id)a3;
- (PKSharedAccountCloudStore)initWithArray:(id)a3 lastUpdated:(id)a4;
- (PKSharedAccountCloudStore)initWithCoder:(id)a3;
- (id)allPossibleZonesForAccountUser:(id)a3 access:(unint64_t)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)primaryZoneForAccountUser:(id)a3 inAccountUserCollection:(id)a4 access:(unint64_t)a5;
- (id)sharedAccountCloudStoreZonesWithAccess:(unint64_t)a3;
- (id)sharedAccountCloudStoreZonesWithAccess:(unint64_t)a3 forAccountUser:(id)a4;
- (id)sharedAccountZoneWithName:(id)a3 access:(unint64_t)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSharedAccountCloudStore

- (PKSharedAccountCloudStore)initWithArray:(id)a3 lastUpdated:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26.receiver = self;
  v26.super_class = PKSharedAccountCloudStore;
  v8 = [(PKSharedAccountCloudStore *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lastUpdated, a4);
    v9->_dirty = 0;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v6;
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

- (id)sharedAccountCloudStoreZonesWithAccess:(unint64_t)a3
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
        if ([v11 access] == a3)
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

- (id)sharedAccountCloudStoreZonesWithAccess:(unint64_t)a3 forAccountUser:(id)a4
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

- (id)sharedAccountZoneWithName:(id)a3 access:(unint64_t)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
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
          v13 = [v12 zoneName];
          v14 = v6;
          v15 = v13;
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

          v18 = [v12 access];

          if (v18 == a4)
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

- (id)primaryZoneForAccountUser:(id)a3 inAccountUserCollection:(id)a4 access:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 accountIdentifier];
  v11 = self->_accountIdentifier;
  v12 = v10;
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    if (!v12 || !v11)
    {

LABEL_12:
      v15 = 0;
      goto LABEL_18;
    }

    v14 = [(NSString *)v11 isEqualToString:v12];

    if (!v14)
    {
      v15 = 0;
      goto LABEL_19;
    }
  }

  v11 = [v8 altDSID];
  v16 = [v8 accessLevel];
  if (v16 != 2)
  {
    if (v16 == 1)
    {
      v17 = [v9 accountUsers];
      v18 = [v17 objectsPassingTest:&__block_literal_global_219];
      v19 = [v18 count];

      if (v19 >= 2)
      {
        v20 = PKSharedAccountMergedCloudStoreZoneName(v13);
LABEL_15:
        v22 = v20;
        v15 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:v20 access:a5];

        goto LABEL_18;
      }

      if ([v8 isCurrentUser])
      {
        v15 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:@"transactions" access:a5];
        goto LABEL_18;
      }
    }

    goto LABEL_12;
  }

  v21 = PKSharedAccountParticpantCloudStoreZoneName(v13, v11, 1);
  v15 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:v21 access:a5];

  if (!v15)
  {
    v20 = PKSharedAccountParticpantCloudStoreZoneName(v13, v11, 0);
    goto LABEL_15;
  }

LABEL_18:

LABEL_19:

  return v15;
}

- (id)allPossibleZonesForAccountUser:(id)a3 access:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 accountIdentifier];
  v8 = self->_accountIdentifier;
  v9 = v7;
  v10 = v9;
  if (v8 == v9)
  {
  }

  else
  {
    v11 = 0;
    if (!v9 || !v8)
    {
      v18 = v9;
LABEL_16:

      goto LABEL_17;
    }

    v12 = [(NSString *)v8 isEqualToString:v9];

    if (!v12)
    {
      v11 = 0;
      goto LABEL_18;
    }
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [v6 altDSID];
  v13 = [v6 accessLevel];
  if (v13 != 2)
  {
    if (v13 != 1)
    {
      goto LABEL_17;
    }

    if (a4 - 1 > 1)
    {
      goto LABEL_17;
    }

    v14 = PKSharedAccountMergedCloudStoreZoneName(v10);
    v15 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:v14 access:a4];
    [v11 safelyAddObject:v15];

    if (![v6 isCurrentUser])
    {
      goto LABEL_17;
    }

    v16 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:@"transactions" access:a4];
    [v11 safelyAddObject:v16];

    v17 = PKSharedAccountCardCloudStoreZoneName(v10);
    goto LABEL_15;
  }

  if (a4 - 1 <= 1)
  {
    v19 = PKSharedAccountParticpantCloudStoreZoneName(v10, v8, 1);
    v20 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:v19 access:a4];
    [v11 safelyAddObject:v20];

    v17 = PKSharedAccountParticpantCloudStoreZoneName(v10, v8, 0);
LABEL_15:
    v18 = v17;
    v21 = [(PKSharedAccountCloudStore *)self sharedAccountZoneWithName:v17 access:a4];
    [v11 safelyAddObject:v21];

    goto LABEL_16;
  }

LABEL_17:

LABEL_18:

  return v11;
}

- (PKSharedAccountCloudStore)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKSharedAccountCloudStore;
  v5 = [(PKSharedAccountCloudStore *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"sharedAccountCloudStoreZones"];
    sharedAccountCloudStoreZones = v5->_sharedAccountCloudStoreZones;
    v5->_sharedAccountCloudStoreZones = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v11;

    v5->_dirty = [v4 decodeBoolForKey:@"dirty"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  sharedAccountCloudStoreZones = self->_sharedAccountCloudStoreZones;
  v5 = a3;
  [v5 encodeObject:sharedAccountCloudStoreZones forKey:@"sharedAccountCloudStoreZones"];
  [v5 encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [v5 encodeBool:self->_dirty forKey:@"dirty"];
  [v5 encodeObject:self->_accountIdentifier forKey:@"accountIdentifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKSharedAccountCloudStore *)self isEqualToSharedAccountCloudStore:v5];
  }

  return v6;
}

- (BOOL)isEqualToSharedAccountCloudStore:(id)a3
{
  sharedAccountCloudStoreZones = self->_sharedAccountCloudStoreZones;
  v4 = *(a3 + 2);
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKSharedAccountCloudStore allocWithZone:](PKSharedAccountCloudStore init];
  v6 = [(NSArray *)self->_sharedAccountCloudStoreZones copyWithZone:a3];
  sharedAccountCloudStoreZones = v5->_sharedAccountCloudStoreZones;
  v5->_sharedAccountCloudStoreZones = v6;

  v8 = [(NSDate *)self->_lastUpdated copyWithZone:a3];
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
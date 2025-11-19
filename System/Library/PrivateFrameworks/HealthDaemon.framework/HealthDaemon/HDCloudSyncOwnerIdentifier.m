@interface HDCloudSyncOwnerIdentifier
+ (id)unitTest_ownerIdentifierWithDatabaseIdentifer:(id)a3 deviceIdentifier:(id)a4 ownerDifferentiator:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)string;
- (id)_initWithDatabaseIdentifer:(id)a3 deviceIdentifier:(id)a4 ownerDifferentiator:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation HDCloudSyncOwnerIdentifier

+ (id)unitTest_ownerIdentifierWithDatabaseIdentifer:(id)a3 deviceIdentifier:(id)a4 ownerDifferentiator:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[HDCloudSyncOwnerIdentifier alloc] _initWithDatabaseIdentifer:v9 deviceIdentifier:v8 ownerDifferentiator:v7];

  return v10;
}

- (id)_initWithDatabaseIdentifer:(id)a3 deviceIdentifier:(id)a4 ownerDifferentiator:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v19.receiver = self;
  v19.super_class = HDCloudSyncOwnerIdentifier;
  v12 = [(HDCloudSyncOwnerIdentifier *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_databaseIdentifier, a3);
    v14 = [v10 copy];
    deviceIdentifier = v13->_deviceIdentifier;
    v13->_deviceIdentifier = v14;

    v16 = [v11 copy];
    ownerDifferentiator = v13->_ownerDifferentiator;
    v13->_ownerDifferentiator = v16;
  }

  return v13;
}

- (NSString)string
{
  v13[2] = *MEMORY[0x277D85DE8];
  ownerIdentifierString = self->_ownerIdentifierString;
  if (!ownerIdentifierString)
  {
    v4 = MEMORY[0x277CBEB18];
    databaseIdentifier = self->_databaseIdentifier;
    v13[0] = self->_deviceIdentifier;
    v6 = [(NSUUID *)databaseIdentifier UUIDString];
    v13[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v8 = [v4 arrayWithArray:v7];

    if (self->_ownerDifferentiator)
    {
      [v8 addObject:?];
    }

    v9 = [v8 componentsJoinedByString:@":"];
    v10 = self->_ownerIdentifierString;
    self->_ownerIdentifierString = v9;

    ownerIdentifierString = self->_ownerIdentifierString;
  }

  v11 = *MEMORY[0x277D85DE8];

  return ownerIdentifierString;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HDCloudSyncOwnerIdentifier *)self string];
    v6 = [v4 string];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(HDCloudSyncOwnerIdentifier *)self string];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HDCloudSyncOwnerIdentifier allocWithZone:a3];
  deviceIdentifier = self->_deviceIdentifier;
  databaseIdentifier = self->_databaseIdentifier;
  ownerDifferentiator = self->_ownerDifferentiator;

  return [(HDCloudSyncOwnerIdentifier *)v4 _initWithDatabaseIdentifer:databaseIdentifier deviceIdentifier:deviceIdentifier ownerDifferentiator:ownerDifferentiator];
}

@end
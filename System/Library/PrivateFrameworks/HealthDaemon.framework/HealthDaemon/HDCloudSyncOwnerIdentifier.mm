@interface HDCloudSyncOwnerIdentifier
+ (id)unitTest_ownerIdentifierWithDatabaseIdentifer:(id)identifer deviceIdentifier:(id)identifier ownerDifferentiator:(id)differentiator;
- (BOOL)isEqual:(id)equal;
- (NSString)string;
- (id)_initWithDatabaseIdentifer:(id)identifer deviceIdentifier:(id)identifier ownerDifferentiator:(id)differentiator;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HDCloudSyncOwnerIdentifier

+ (id)unitTest_ownerIdentifierWithDatabaseIdentifer:(id)identifer deviceIdentifier:(id)identifier ownerDifferentiator:(id)differentiator
{
  differentiatorCopy = differentiator;
  identifierCopy = identifier;
  identiferCopy = identifer;
  v10 = [[HDCloudSyncOwnerIdentifier alloc] _initWithDatabaseIdentifer:identiferCopy deviceIdentifier:identifierCopy ownerDifferentiator:differentiatorCopy];

  return v10;
}

- (id)_initWithDatabaseIdentifer:(id)identifer deviceIdentifier:(id)identifier ownerDifferentiator:(id)differentiator
{
  identiferCopy = identifer;
  identifierCopy = identifier;
  differentiatorCopy = differentiator;
  v19.receiver = self;
  v19.super_class = HDCloudSyncOwnerIdentifier;
  v12 = [(HDCloudSyncOwnerIdentifier *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_databaseIdentifier, identifer);
    v14 = [identifierCopy copy];
    deviceIdentifier = v13->_deviceIdentifier;
    v13->_deviceIdentifier = v14;

    v16 = [differentiatorCopy copy];
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
    uUIDString = [(NSUUID *)databaseIdentifier UUIDString];
    v13[1] = uUIDString;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [(HDCloudSyncOwnerIdentifier *)self string];
    string2 = [equalCopy string];
    v7 = [string isEqualToString:string2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  string = [(HDCloudSyncOwnerIdentifier *)self string];
  v3 = [string hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HDCloudSyncOwnerIdentifier allocWithZone:zone];
  deviceIdentifier = self->_deviceIdentifier;
  databaseIdentifier = self->_databaseIdentifier;
  ownerDifferentiator = self->_ownerDifferentiator;

  return [(HDCloudSyncOwnerIdentifier *)v4 _initWithDatabaseIdentifer:databaseIdentifier deviceIdentifier:deviceIdentifier ownerDifferentiator:ownerDifferentiator];
}

@end
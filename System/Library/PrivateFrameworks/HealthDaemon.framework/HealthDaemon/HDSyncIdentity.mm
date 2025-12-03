@interface HDSyncIdentity
+ (HDSyncIdentity)syncIdentityWithCodable:(id)codable error:(id *)error;
+ (id)legacySyncIdentity;
- (BOOL)isEqual:(id)equal;
- (HDSyncIdentity)init;
- (HDSyncIdentity)initWithCoder:(id)coder;
- (HDSyncIdentity)initWithHardwareIdentifier:(id)identifier databaseIdentifier:(id)databaseIdentifier instanceDiscriminator:(id)discriminator;
- (id)codableSyncIdentity;
- (id)description;
- (id)identityString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDSyncIdentity

+ (id)legacySyncIdentity
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  v3 = [[HDSyncIdentity alloc] initWithHardwareIdentifier:v2 databaseIdentifier:v2 instanceDiscriminator:&stru_283BF39C8];

  return v3;
}

- (HDSyncIdentity)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HDSyncIdentity)initWithHardwareIdentifier:(id)identifier databaseIdentifier:(id)databaseIdentifier instanceDiscriminator:(id)discriminator
{
  identifierCopy = identifier;
  databaseIdentifierCopy = databaseIdentifier;
  discriminatorCopy = discriminator;
  v19.receiver = self;
  v19.super_class = HDSyncIdentity;
  v11 = [(HDSyncIdentity *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    hardwareIdentifier = v11->_hardwareIdentifier;
    v11->_hardwareIdentifier = v12;

    v14 = [databaseIdentifierCopy copy];
    databaseIdentifier = v11->_databaseIdentifier;
    v11->_databaseIdentifier = v14;

    v16 = [discriminatorCopy copy];
    instanceDiscriminator = v11->_instanceDiscriminator;
    v11->_instanceDiscriminator = v16;
  }

  return v11;
}

+ (HDSyncIdentity)syncIdentityWithCodable:(id)codable error:(id *)error
{
  codableCopy = codable;
  v6 = MEMORY[0x277CCAD78];
  hardwareIdentifier = [codableCopy hardwareIdentifier];
  v8 = [v6 hk_UUIDWithData:hardwareIdentifier];

  if (v8)
  {
    v9 = MEMORY[0x277CCAD78];
    databaseIdentifier = [codableCopy databaseIdentifier];
    v11 = [v9 hk_UUIDWithData:databaseIdentifier];

    if (v11)
    {
      instanceDiscriminator = [codableCopy instanceDiscriminator];
      v13 = instanceDiscriminator;
      v14 = &stru_283BF39C8;
      if (instanceDiscriminator)
      {
        v14 = instanceDiscriminator;
      }

      v15 = v14;

      v16 = [[HDSyncIdentity alloc] initWithHardwareIdentifier:v8 databaseIdentifier:v11 instanceDiscriminator:v15];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Missing database identifier."];
      v16 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:error code:3 format:@"Missing hardware identifier."];
    v16 = 0;
  }

  return v16;
}

- (id)codableSyncIdentity
{
  v3 = objc_alloc_init(HDCodableSyncIdentity);
  hk_dataForUUIDBytes = [(NSUUID *)self->_hardwareIdentifier hk_dataForUUIDBytes];
  [(HDCodableSyncIdentity *)v3 setHardwareIdentifier:hk_dataForUUIDBytes];

  hk_dataForUUIDBytes2 = [(NSUUID *)self->_databaseIdentifier hk_dataForUUIDBytes];
  [(HDCodableSyncIdentity *)v3 setDatabaseIdentifier:hk_dataForUUIDBytes2];

  [(HDCodableSyncIdentity *)v3 setInstanceDiscriminator:self->_instanceDiscriminator];

  return v3;
}

- (id)identityString
{
  v3 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->_hardwareIdentifier UUIDString];
  uUIDString2 = [(NSUUID *)self->_databaseIdentifier UUIDString];
  v6 = [v3 stringWithFormat:@"%@:%@:%@", uUIDString, uUIDString2, self->_instanceDiscriminator];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSUUID *)self->_hardwareIdentifier isEqual:equalCopy->_hardwareIdentifier]&& [(NSUUID *)self->_databaseIdentifier isEqual:equalCopy->_databaseIdentifier])
    {
      v5 = [(NSString *)self->_instanceDiscriminator isEqual:equalCopy->_instanceDiscriminator];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_hardwareIdentifier hash];
  v4 = [(NSUUID *)self->_databaseIdentifier hash]^ v3;
  return v4 ^ [(NSString *)self->_instanceDiscriminator hash];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  uUIDString = [(NSUUID *)self->_hardwareIdentifier UUIDString];
  uUIDString2 = [(NSUUID *)self->_databaseIdentifier UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@:%@:%@>", v5, uUIDString, uUIDString2, self->_instanceDiscriminator];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  hardwareIdentifier = self->_hardwareIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:hardwareIdentifier forKey:@"hwID"];
  [coderCopy encodeObject:self->_databaseIdentifier forKey:@"dbID"];
  [coderCopy encodeObject:self->_instanceDiscriminator forKey:@"instanceDisc"];
}

- (HDSyncIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hwID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dbID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"instanceDisc"];

  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || v7 == 0)
  {
    selfCopy = 0;
  }

  else
  {
    self = [(HDSyncIdentity *)self initWithHardwareIdentifier:v5 databaseIdentifier:v6 instanceDiscriminator:v7];
    selfCopy = self;
  }

  return selfCopy;
}

@end
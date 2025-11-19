@interface HDSyncIdentity
+ (HDSyncIdentity)syncIdentityWithCodable:(id)a3 error:(id *)a4;
+ (id)legacySyncIdentity;
- (BOOL)isEqual:(id)a3;
- (HDSyncIdentity)init;
- (HDSyncIdentity)initWithCoder:(id)a3;
- (HDSyncIdentity)initWithHardwareIdentifier:(id)a3 databaseIdentifier:(id)a4 instanceDiscriminator:(id)a5;
- (id)codableSyncIdentity;
- (id)description;
- (id)identityString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HDSyncIdentity)initWithHardwareIdentifier:(id)a3 databaseIdentifier:(id)a4 instanceDiscriminator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HDSyncIdentity;
  v11 = [(HDSyncIdentity *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    hardwareIdentifier = v11->_hardwareIdentifier;
    v11->_hardwareIdentifier = v12;

    v14 = [v9 copy];
    databaseIdentifier = v11->_databaseIdentifier;
    v11->_databaseIdentifier = v14;

    v16 = [v10 copy];
    instanceDiscriminator = v11->_instanceDiscriminator;
    v11->_instanceDiscriminator = v16;
  }

  return v11;
}

+ (HDSyncIdentity)syncIdentityWithCodable:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CCAD78];
  v7 = [v5 hardwareIdentifier];
  v8 = [v6 hk_UUIDWithData:v7];

  if (v8)
  {
    v9 = MEMORY[0x277CCAD78];
    v10 = [v5 databaseIdentifier];
    v11 = [v9 hk_UUIDWithData:v10];

    if (v11)
    {
      v12 = [v5 instanceDiscriminator];
      v13 = v12;
      v14 = &stru_283BF39C8;
      if (v12)
      {
        v14 = v12;
      }

      v15 = v14;

      v16 = [[HDSyncIdentity alloc] initWithHardwareIdentifier:v8 databaseIdentifier:v11 instanceDiscriminator:v15];
    }

    else
    {
      [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Missing database identifier."];
      v16 = 0;
    }
  }

  else
  {
    [MEMORY[0x277CCA9B8] hk_assignError:a4 code:3 format:@"Missing hardware identifier."];
    v16 = 0;
  }

  return v16;
}

- (id)codableSyncIdentity
{
  v3 = objc_alloc_init(HDCodableSyncIdentity);
  v4 = [(NSUUID *)self->_hardwareIdentifier hk_dataForUUIDBytes];
  [(HDCodableSyncIdentity *)v3 setHardwareIdentifier:v4];

  v5 = [(NSUUID *)self->_databaseIdentifier hk_dataForUUIDBytes];
  [(HDCodableSyncIdentity *)v3 setDatabaseIdentifier:v5];

  [(HDCodableSyncIdentity *)v3 setInstanceDiscriminator:self->_instanceDiscriminator];

  return v3;
}

- (id)identityString
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSUUID *)self->_hardwareIdentifier UUIDString];
  v5 = [(NSUUID *)self->_databaseIdentifier UUIDString];
  v6 = [v3 stringWithFormat:@"%@:%@:%@", v4, v5, self->_instanceDiscriminator];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSUUID *)self->_hardwareIdentifier isEqual:v4->_hardwareIdentifier]&& [(NSUUID *)self->_databaseIdentifier isEqual:v4->_databaseIdentifier])
    {
      v5 = [(NSString *)self->_instanceDiscriminator isEqual:v4->_instanceDiscriminator];
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
  v6 = [(NSUUID *)self->_hardwareIdentifier UUIDString];
  v7 = [(NSUUID *)self->_databaseIdentifier UUIDString];
  v8 = [v3 stringWithFormat:@"<%@ %@:%@:%@>", v5, v6, v7, self->_instanceDiscriminator];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  hardwareIdentifier = self->_hardwareIdentifier;
  v5 = a3;
  [v5 encodeObject:hardwareIdentifier forKey:@"hwID"];
  [v5 encodeObject:self->_databaseIdentifier forKey:@"dbID"];
  [v5 encodeObject:self->_instanceDiscriminator forKey:@"instanceDisc"];
}

- (HDSyncIdentity)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hwID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dbID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"instanceDisc"];

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
    v10 = 0;
  }

  else
  {
    self = [(HDSyncIdentity *)self initWithHardwareIdentifier:v5 databaseIdentifier:v6 instanceDiscriminator:v7];
    v10 = self;
  }

  return v10;
}

@end
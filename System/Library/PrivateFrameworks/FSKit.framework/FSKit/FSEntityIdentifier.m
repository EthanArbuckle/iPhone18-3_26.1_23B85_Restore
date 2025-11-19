@interface FSEntityIdentifier
+ (id)defaultInstanceUUID;
- (BOOL)isEqual:(id)a3;
- (FSEntityIdentifier)init;
- (FSEntityIdentifier)initWithCoder:(id)a3;
- (FSEntityIdentifier)initWithCopiedUUID:(id)a3 data:(id)a4;
- (FSEntityIdentifier)initWithUUID:(id)a3;
- (FSEntityIdentifier)initWithUUID:(id)a3 data:(id)a4;
- (FSEntityIdentifier)initWithUUID:(id)a3 qualifier:(unint64_t)a4;
- (NSData)uuidData;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FSEntityIdentifier

- (FSEntityIdentifier)initWithUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FSEntityIdentifier;
  v6 = [(FSEntityIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
  }

  return v7;
}

- (FSEntityIdentifier)init
{
  v3 = objc_opt_new();
  v4 = [(FSEntityIdentifier *)self initWithUUID:v3];

  return v4;
}

- (FSEntityIdentifier)initWithCopiedUUID:(id)a3 data:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([v8 length] == 8)
  {
    v13.receiver = self;
    v13.super_class = FSEntityIdentifier;
    v9 = [(FSEntityIdentifier *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_uuid, a3);
      objc_storeStrong(p_isa + 2, a4);
    }

    self = p_isa;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (FSEntityIdentifier)initWithUUID:(id)a3 data:(id)a4
{
  v6 = a3;
  v7 = [a4 copy];
  v8 = [(FSEntityIdentifier *)self initWithCopiedUUID:v6 data:v7];

  return v8;
}

- (FSEntityIdentifier)initWithUUID:(id)a3 qualifier:(unint64_t)a4
{
  v10 = a4;
  v5 = MEMORY[0x277CBEA90];
  v6 = a3;
  v7 = [[v5 alloc] initWithBytes:&v10 length:8];
  v8 = [(FSEntityIdentifier *)self initWithCopiedUUID:v6 data:v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  uuid = self->_uuid;
  qualifier = self->_qualifier;
  v8 = v5;
  v9 = [(NSUUID *)uuid copyWithZone:a3];
  if (qualifier)
  {
    v10 = [(NSData *)self->_qualifier copyWithZone:a3];
    v11 = [v8 initWithCopiedUUID:v9 data:v10];

    v8 = v10;
  }

  else
  {
    v11 = [v8 initWithUUID:v9];
  }

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = v4;
    qualifier = self->_qualifier;
    if (!qualifier || v5[2] && [(NSData *)qualifier isEqual:?])
    {
      v7 = [(NSUUID *)self->_uuid isEqual:v5[1]];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  qualifier = self->_qualifier;
  if (qualifier)
  {
    v4 = 997 * [(NSData *)qualifier hash];
  }

  else
  {
    v4 = 0;
  }

  return [(NSUUID *)self->_uuid hash]+ v4;
}

- (id)description
{
  qualifier = self->_qualifier;
  if (qualifier)
  {
    v4 = 2 * [(NSData *)qualifier length];
    v5 = [(NSData *)self->_qualifier debugDescription];
    v6 = [v5 substringWithRange:{1, v4}];

    v7 = MEMORY[0x277CCACA8];
    v8 = [(NSUUID *)self->_uuid description];
    v9 = [v7 stringWithFormat:@"%@-%@", v8, v6];
  }

  else
  {
    v9 = [(NSUUID *)self->_uuid description];
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_uuid forKey:@"FSEntityID.uuid"];
  qualifier = self->_qualifier;
  if (qualifier)
  {
    [v5 encodeObject:qualifier forKey:@"FSEntityID.qual"];
  }
}

- (FSEntityIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FSEntityIdentifier;
  v5 = [(FSEntityIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSEntityID.uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FSEntityID.qual"];
    qualifier = v5->_qualifier;
    v5->_qualifier = v8;
  }

  return v5;
}

- (NSData)uuidData
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v5[1] = 0;
  [(NSUUID *)self->_uuid getUUIDBytes:v5];
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:v5 length:16];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)defaultInstanceUUID
{
  v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&defaultUUIDBytes];

  return v2;
}

@end
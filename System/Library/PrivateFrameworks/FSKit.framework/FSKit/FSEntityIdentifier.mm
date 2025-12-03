@interface FSEntityIdentifier
+ (id)defaultInstanceUUID;
- (BOOL)isEqual:(id)equal;
- (FSEntityIdentifier)init;
- (FSEntityIdentifier)initWithCoder:(id)coder;
- (FSEntityIdentifier)initWithCopiedUUID:(id)d data:(id)data;
- (FSEntityIdentifier)initWithUUID:(id)d;
- (FSEntityIdentifier)initWithUUID:(id)d data:(id)data;
- (FSEntityIdentifier)initWithUUID:(id)d qualifier:(unint64_t)qualifier;
- (NSData)uuidData;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FSEntityIdentifier

- (FSEntityIdentifier)initWithUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = FSEntityIdentifier;
  v6 = [(FSEntityIdentifier *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
  }

  return v7;
}

- (FSEntityIdentifier)init
{
  v3 = objc_opt_new();
  v4 = [(FSEntityIdentifier *)self initWithUUID:v3];

  return v4;
}

- (FSEntityIdentifier)initWithCopiedUUID:(id)d data:(id)data
{
  dCopy = d;
  dataCopy = data;
  if ([dataCopy length] == 8)
  {
    v13.receiver = self;
    v13.super_class = FSEntityIdentifier;
    v9 = [(FSEntityIdentifier *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_uuid, d);
      objc_storeStrong(p_isa + 2, data);
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FSEntityIdentifier)initWithUUID:(id)d data:(id)data
{
  dCopy = d;
  v7 = [data copy];
  v8 = [(FSEntityIdentifier *)self initWithCopiedUUID:dCopy data:v7];

  return v8;
}

- (FSEntityIdentifier)initWithUUID:(id)d qualifier:(unint64_t)qualifier
{
  qualifierCopy = qualifier;
  v5 = MEMORY[0x277CBEA90];
  dCopy = d;
  v7 = [[v5 alloc] initWithBytes:&qualifierCopy length:8];
  v8 = [(FSEntityIdentifier *)self initWithCopiedUUID:dCopy data:v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  uuid = self->_uuid;
  qualifier = self->_qualifier;
  v8 = v5;
  v9 = [(NSUUID *)uuid copyWithZone:zone];
  if (qualifier)
  {
    v10 = [(NSData *)self->_qualifier copyWithZone:zone];
    v11 = [v8 initWithCopiedUUID:v9 data:v10];

    v8 = v10;
  }

  else
  {
    v11 = [v8 initWithUUID:v9];
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_uuid forKey:@"FSEntityID.uuid"];
  qualifier = self->_qualifier;
  if (qualifier)
  {
    [coderCopy encodeObject:qualifier forKey:@"FSEntityID.qual"];
  }
}

- (FSEntityIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = FSEntityIdentifier;
  v5 = [(FSEntityIdentifier *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSEntityID.uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSEntityID.qual"];
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
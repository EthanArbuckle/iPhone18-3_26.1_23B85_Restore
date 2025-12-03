@interface DCLegacySESlotInfo
- (DCLegacySESlotInfo)initWithCoder:(id)coder;
- (DCLegacySESlotInfo)initWithSESlot:(int64_t)slot isMissing:(BOOL)missing partition:(id)partition credentialIdentifier:(id)identifier presentmentKeyIdentifier:(id)keyIdentifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DCLegacySESlotInfo

- (DCLegacySESlotInfo)initWithSESlot:(int64_t)slot isMissing:(BOOL)missing partition:(id)partition credentialIdentifier:(id)identifier presentmentKeyIdentifier:(id)keyIdentifier
{
  partitionCopy = partition;
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  v22.receiver = self;
  v22.super_class = DCLegacySESlotInfo;
  v15 = [(DCLegacySESlotInfo *)&v22 init];
  v15->_isMissing = missing;
  partition = v15->_partition;
  v15->_seSlot = slot;
  v15->_partition = partitionCopy;
  v17 = partitionCopy;

  credentialIdentifier = v15->_credentialIdentifier;
  v15->_credentialIdentifier = identifierCopy;
  v19 = identifierCopy;

  presentmentKeyIdentifier = v15->_presentmentKeyIdentifier;
  v15->_presentmentKeyIdentifier = keyIdentifierCopy;

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[DCLegacySESlotInfo seSlot](self forKey:{"seSlot"), 0x28586CF00}];
  [coderCopy encodeBool:-[DCLegacySESlotInfo isMissing](self forKey:{"isMissing"), 0x28586CF60}];
  partition = [(DCLegacySESlotInfo *)self partition];
  [coderCopy encodeObject:partition forKey:0x28586CD40];

  credentialIdentifier = [(DCLegacySESlotInfo *)self credentialIdentifier];
  [coderCopy encodeObject:credentialIdentifier forKey:0x28586CD20];

  presentmentKeyIdentifier = [(DCLegacySESlotInfo *)self presentmentKeyIdentifier];
  [coderCopy encodeObject:presentmentKeyIdentifier forKey:0x28586CF20];
}

- (DCLegacySESlotInfo)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = DCLegacySESlotInfo;
  coderCopy = coder;
  v4 = [(DCLegacySESlotInfo *)&v9 init];
  -[DCLegacySESlotInfo setSeSlot:](v4, "setSeSlot:", [coderCopy decodeIntegerForKey:{0x28586CF00, v9.receiver, v9.super_class}]);
  -[DCLegacySESlotInfo setIsMissing:](v4, "setIsMissing:", [coderCopy decodeBoolForKey:0x28586CF60]);
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CD40];
  [(DCLegacySESlotInfo *)v4 setPartition:v5];

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CD20];
  [(DCLegacySESlotInfo *)v4 setCredentialIdentifier:v6];

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:0x28586CF20];

  [(DCLegacySESlotInfo *)v4 setPresentmentKeyIdentifier:v7];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  seSlot = [(DCLegacySESlotInfo *)self seSlot];
  isMissing = [(DCLegacySESlotInfo *)self isMissing];
  partition = [(DCLegacySESlotInfo *)self partition];
  credentialIdentifier = [(DCLegacySESlotInfo *)self credentialIdentifier];
  presentmentKeyIdentifier = [(DCLegacySESlotInfo *)self presentmentKeyIdentifier];
  v9 = [v3 stringWithFormat:@"DCLegacySESlotInfo slot = %d isMissing = %d partition = %@ credentialIdentifier = %@ presentmentKeyIdentifier = %@", seSlot, isMissing, partition, credentialIdentifier, presentmentKeyIdentifier];

  return v9;
}

@end
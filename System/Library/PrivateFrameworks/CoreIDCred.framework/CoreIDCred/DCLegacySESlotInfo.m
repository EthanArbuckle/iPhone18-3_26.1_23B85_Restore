@interface DCLegacySESlotInfo
- (DCLegacySESlotInfo)initWithCoder:(id)a3;
- (DCLegacySESlotInfo)initWithSESlot:(int64_t)a3 isMissing:(BOOL)a4 partition:(id)a5 credentialIdentifier:(id)a6 presentmentKeyIdentifier:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DCLegacySESlotInfo

- (DCLegacySESlotInfo)initWithSESlot:(int64_t)a3 isMissing:(BOOL)a4 partition:(id)a5 credentialIdentifier:(id)a6 presentmentKeyIdentifier:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v22.receiver = self;
  v22.super_class = DCLegacySESlotInfo;
  v15 = [(DCLegacySESlotInfo *)&v22 init];
  v15->_isMissing = a4;
  partition = v15->_partition;
  v15->_seSlot = a3;
  v15->_partition = v12;
  v17 = v12;

  credentialIdentifier = v15->_credentialIdentifier;
  v15->_credentialIdentifier = v13;
  v19 = v13;

  presentmentKeyIdentifier = v15->_presentmentKeyIdentifier;
  v15->_presentmentKeyIdentifier = v14;

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[DCLegacySESlotInfo seSlot](self forKey:{"seSlot"), 0x28586CF00}];
  [v4 encodeBool:-[DCLegacySESlotInfo isMissing](self forKey:{"isMissing"), 0x28586CF60}];
  v5 = [(DCLegacySESlotInfo *)self partition];
  [v4 encodeObject:v5 forKey:0x28586CD40];

  v6 = [(DCLegacySESlotInfo *)self credentialIdentifier];
  [v4 encodeObject:v6 forKey:0x28586CD20];

  v7 = [(DCLegacySESlotInfo *)self presentmentKeyIdentifier];
  [v4 encodeObject:v7 forKey:0x28586CF20];
}

- (DCLegacySESlotInfo)initWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = DCLegacySESlotInfo;
  v3 = a3;
  v4 = [(DCLegacySESlotInfo *)&v9 init];
  -[DCLegacySESlotInfo setSeSlot:](v4, "setSeSlot:", [v3 decodeIntegerForKey:{0x28586CF00, v9.receiver, v9.super_class}]);
  -[DCLegacySESlotInfo setIsMissing:](v4, "setIsMissing:", [v3 decodeBoolForKey:0x28586CF60]);
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586CD40];
  [(DCLegacySESlotInfo *)v4 setPartition:v5];

  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586CD20];
  [(DCLegacySESlotInfo *)v4 setCredentialIdentifier:v6];

  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:0x28586CF20];

  [(DCLegacySESlotInfo *)v4 setPresentmentKeyIdentifier:v7];
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DCLegacySESlotInfo *)self seSlot];
  v5 = [(DCLegacySESlotInfo *)self isMissing];
  v6 = [(DCLegacySESlotInfo *)self partition];
  v7 = [(DCLegacySESlotInfo *)self credentialIdentifier];
  v8 = [(DCLegacySESlotInfo *)self presentmentKeyIdentifier];
  v9 = [v3 stringWithFormat:@"DCLegacySESlotInfo slot = %d isMissing = %d partition = %@ credentialIdentifier = %@ presentmentKeyIdentifier = %@", v4, v5, v6, v7, v8];

  return v9;
}

@end
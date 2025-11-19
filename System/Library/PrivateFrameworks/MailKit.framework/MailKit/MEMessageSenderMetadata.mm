@interface MEMessageSenderMetadata
- (BOOL)isEqual:(id)a3;
- (MEMessageSenderMetadata)initWithCoder:(id)a3;
- (MEMessageSenderMetadata)initWithSenderEmailAddress:(id)a3 isVIP:(BOOL)a4 isContact:(BOOL)a5 isUnsubscribeHeaderPresent:(BOOL)a6 isPrimarySender:(BOOL)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MEMessageSenderMetadata

- (MEMessageSenderMetadata)initWithSenderEmailAddress:(id)a3 isVIP:(BOOL)a4 isContact:(BOOL)a5 isUnsubscribeHeaderPresent:(BOOL)a6 isPrimarySender:(BOOL)a7
{
  v13 = a3;
  v17.receiver = self;
  v17.super_class = MEMessageSenderMetadata;
  v14 = [(MEMessageSenderMetadata *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_senderEmailAddress, a3);
    v15->_isVIP = a4;
    v15->_isContact = a5;
    v15->_isUnsubscribeHeaderPresent = a6;
    v15->_isPrimarySender = a7;
  }

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeBool:-[MEMessageSenderMetadata isVIP](self forKey:{"isVIP"), @"EFPropertyKey_isVIP"}];
  [v5 encodeBool:-[MEMessageSenderMetadata isContact](self forKey:{"isContact"), @"EFPropertyKey_isContact"}];
  [v5 encodeBool:-[MEMessageSenderMetadata isUnsubscribeHeaderPresent](self forKey:{"isUnsubscribeHeaderPresent"), @"EFPropertyKey_isUnsubscribeHeaderPresent"}];
  v4 = [(MEMessageSenderMetadata *)self senderEmailAddress];
  [v5 encodeObject:v4 forKey:@"EFPropertyKey_senderEmailAddress"];

  [v5 encodeBool:-[MEMessageSenderMetadata isPrimarySender](self forKey:{"isPrimarySender"), @"EFPropertyKey_isPrimarySender"}];
}

- (MEMessageSenderMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"EFPropertyKey_isVIP"];
  self->_isVIP = v5;
  v6 = [v4 decodeBoolForKey:@"EFPropertyKey_isContact"];
  self->_isContact = v6;
  v7 = [v4 decodeBoolForKey:@"EFPropertyKey_isUnsubscribeHeaderPresent"];
  self->_isUnsubscribeHeaderPresent = v7;
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_senderEmailAddress"];
  v9 = [v4 decodeBoolForKey:@"EFPropertyKey_isPrimarySender"];
  self->_isPrimarySender = v9;
  v10 = [(MEMessageSenderMetadata *)self initWithSenderEmailAddress:v8 isVIP:v5 isContact:v6 isUnsubscribeHeaderPresent:v7 isPrimarySender:v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = v4;
    v7 = [(MEMessageSenderMetadata *)self senderEmailAddress];
    v8 = [v6 senderEmailAddress];
    if ([v7 isEqual:v8] && (v9 = -[MEMessageSenderMetadata isVIP](self, "isVIP"), v9 == objc_msgSend(v6, "isVIP")) && (v10 = -[MEMessageSenderMetadata isContact](self, "isContact"), v10 == objc_msgSend(v6, "isContact")) && (v11 = -[MEMessageSenderMetadata isUnsubscribeHeaderPresent](self, "isUnsubscribeHeaderPresent"), v11 == objc_msgSend(v6, "isUnsubscribeHeaderPresent")))
    {
      v14 = [(MEMessageSenderMetadata *)self isPrimarySender];
      v12 = v14 ^ [v6 isPrimarySender] ^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(MEMessageSenderMetadata *)self senderEmailAddress];
  v4 = [v3 hash];

  v5 = 33 * (33 * v4 + [(MEMessageSenderMetadata *)self isVIP]);
  v6 = 33 * (v5 + [(MEMessageSenderMetadata *)self isContact]);
  v7 = 33 * (v6 + [(MEMessageSenderMetadata *)self isUnsubscribeHeaderPresent]);
  return v7 + [(MEMessageSenderMetadata *)self isPrimarySender]+ 0x3107FF0025;
}

@end
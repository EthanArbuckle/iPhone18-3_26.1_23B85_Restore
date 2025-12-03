@interface MEMessageSenderMetadata
- (BOOL)isEqual:(id)equal;
- (MEMessageSenderMetadata)initWithCoder:(id)coder;
- (MEMessageSenderMetadata)initWithSenderEmailAddress:(id)address isVIP:(BOOL)p isContact:(BOOL)contact isUnsubscribeHeaderPresent:(BOOL)present isPrimarySender:(BOOL)sender;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MEMessageSenderMetadata

- (MEMessageSenderMetadata)initWithSenderEmailAddress:(id)address isVIP:(BOOL)p isContact:(BOOL)contact isUnsubscribeHeaderPresent:(BOOL)present isPrimarySender:(BOOL)sender
{
  addressCopy = address;
  v17.receiver = self;
  v17.super_class = MEMessageSenderMetadata;
  v14 = [(MEMessageSenderMetadata *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_senderEmailAddress, address);
    v15->_isVIP = p;
    v15->_isContact = contact;
    v15->_isUnsubscribeHeaderPresent = present;
    v15->_isPrimarySender = sender;
  }

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[MEMessageSenderMetadata isVIP](self forKey:{"isVIP"), @"EFPropertyKey_isVIP"}];
  [coderCopy encodeBool:-[MEMessageSenderMetadata isContact](self forKey:{"isContact"), @"EFPropertyKey_isContact"}];
  [coderCopy encodeBool:-[MEMessageSenderMetadata isUnsubscribeHeaderPresent](self forKey:{"isUnsubscribeHeaderPresent"), @"EFPropertyKey_isUnsubscribeHeaderPresent"}];
  senderEmailAddress = [(MEMessageSenderMetadata *)self senderEmailAddress];
  [coderCopy encodeObject:senderEmailAddress forKey:@"EFPropertyKey_senderEmailAddress"];

  [coderCopy encodeBool:-[MEMessageSenderMetadata isPrimarySender](self forKey:{"isPrimarySender"), @"EFPropertyKey_isPrimarySender"}];
}

- (MEMessageSenderMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"EFPropertyKey_isVIP"];
  self->_isVIP = v5;
  v6 = [coderCopy decodeBoolForKey:@"EFPropertyKey_isContact"];
  self->_isContact = v6;
  v7 = [coderCopy decodeBoolForKey:@"EFPropertyKey_isUnsubscribeHeaderPresent"];
  self->_isUnsubscribeHeaderPresent = v7;
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_senderEmailAddress"];
  v9 = [coderCopy decodeBoolForKey:@"EFPropertyKey_isPrimarySender"];
  self->_isPrimarySender = v9;
  v10 = [(MEMessageSenderMetadata *)self initWithSenderEmailAddress:v8 isVIP:v5 isContact:v6 isUnsubscribeHeaderPresent:v7 isPrimarySender:v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()])
  {
    v6 = equalCopy;
    senderEmailAddress = [(MEMessageSenderMetadata *)self senderEmailAddress];
    senderEmailAddress2 = [v6 senderEmailAddress];
    if ([senderEmailAddress isEqual:senderEmailAddress2] && (v9 = -[MEMessageSenderMetadata isVIP](self, "isVIP"), v9 == objc_msgSend(v6, "isVIP")) && (v10 = -[MEMessageSenderMetadata isContact](self, "isContact"), v10 == objc_msgSend(v6, "isContact")) && (v11 = -[MEMessageSenderMetadata isUnsubscribeHeaderPresent](self, "isUnsubscribeHeaderPresent"), v11 == objc_msgSend(v6, "isUnsubscribeHeaderPresent")))
    {
      isPrimarySender = [(MEMessageSenderMetadata *)self isPrimarySender];
      v12 = isPrimarySender ^ [v6 isPrimarySender] ^ 1;
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
  senderEmailAddress = [(MEMessageSenderMetadata *)self senderEmailAddress];
  v4 = [senderEmailAddress hash];

  v5 = 33 * (33 * v4 + [(MEMessageSenderMetadata *)self isVIP]);
  v6 = 33 * (v5 + [(MEMessageSenderMetadata *)self isContact]);
  v7 = 33 * (v6 + [(MEMessageSenderMetadata *)self isUnsubscribeHeaderPresent]);
  return v7 + [(MEMessageSenderMetadata *)self isPrimarySender]+ 0x3107FF0025;
}

@end
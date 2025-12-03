@interface PKPeerPaymentRecipient
+ (PKPeerPaymentRecipient)recipientWithDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentRecipient)initWithCoder:(id)coder;
- (PKPeerPaymentRecipient)initWithDictionary:(id)dictionary;
- (id)cacheableCopy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAddress:(id)address;
@end

@implementation PKPeerPaymentRecipient

+ (PKPeerPaymentRecipient)recipientWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (PKPeerPaymentRecipient)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = PKPeerPaymentRecipient;
  v5 = [(PKPeerPaymentRecipient *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"recipientStatus"];
    v5->_status = PKPeerPaymentRecipientStatusFromString(v6);

    v7 = [dictionaryCopy PKStringForKey:@"recipientStatusReason"];
    v5->_statusReason = PKPeerPaymentRecipientStatusReasonFromString(v7);

    v8 = [dictionaryCopy PKStringForKey:@"recipientIdentifier"];
    v9 = [v8 copy];
    identifier = v5->_identifier;
    v5->_identifier = v9;

    v11 = [dictionaryCopy PKStringForKey:@"receiveMethod"];
    v5->_receiveMethod = [@"iMessage" isEqualToString:v11];

    v12 = [dictionaryCopy PKStringForKey:@"receiveCurrency"];
    v13 = [v12 copy];
    receiveCurrency = v5->_receiveCurrency;
    v5->_receiveCurrency = v13;

    v15 = [dictionaryCopy PKStringForKey:@"recipientAddress"];
    v16 = [v15 copy];
    idsQualifiedNormalizedAddress = v5->_idsQualifiedNormalizedAddress;
    v5->_idsQualifiedNormalizedAddress = v16;

    v18 = [dictionaryCopy PKStringForKey:@"minimumReceiveAmount"];
    v19 = v18;
    if (v18)
    {
      v18 = [MEMORY[0x1E696AB90] decimalNumberWithString:v18];
    }

    minimumReceiveAmount = v5->_minimumReceiveAmount;
    v5->_minimumReceiveAmount = v18;

    v21 = [dictionaryCopy PKStringForKey:@"maximumReceiveAmount"];
    v22 = v21;
    if (v21)
    {
      v21 = [MEMORY[0x1E696AB90] decimalNumberWithString:v21];
    }

    maximumReceiveAmount = v5->_maximumReceiveAmount;
    v5->_maximumReceiveAmount = v21;

    v24 = [dictionaryCopy PKNumberForKey:@"allowsFormalPaymentRequests"];
    v25 = v24;
    if (!v24)
    {
      v24 = MEMORY[0x1E695E118];
    }

    v5->_allowsFormalPaymentRequests = [v24 BOOLValue];

    v26 = [dictionaryCopy PKDateForKey:@"cacheUntil"];
    cacheUntil = v5->_cacheUntil;
    v5->_cacheUntil = v26;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 24) = self->_status;
  *(v5 + 32) = self->_statusReason;
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 40) = self->_receiveMethod;
  v8 = [(NSString *)self->_receiveCurrency copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSDecimalNumber *)self->_minimumReceiveAmount copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSDecimalNumber *)self->_maximumReceiveAmount copyWithZone:zone];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  *(v5 + 8) = self->_allowsFormalPaymentRequests;
  v14 = [(NSDate *)self->_cacheUntil copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(NSString *)self->_conversationAddress copyWithZone:zone];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSString *)self->_normalizedAddress copyWithZone:zone];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  v20 = [(NSString *)self->_idsQualifiedNormalizedAddress copyWithZone:zone];
  v21 = *(v5 + 96);
  *(v5 + 96) = v20;

  v22 = [(NSString *)self->_displayName copyWithZone:zone];
  v23 = *(v5 + 104);
  *(v5 + 104) = v22;

  return v5;
}

- (id)cacheableCopy
{
  v2 = [(PKPeerPaymentRecipient *)self copyWithZone:0];
  [v2 setDisplayName:0];

  return v2;
}

- (PKPeerPaymentRecipient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = PKPeerPaymentRecipient;
  v5 = [(PKPeerPaymentRecipient *)&v27 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientStatus"];
    v5->_status = PKPeerPaymentRecipientStatusFromString(v6);

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientStatusReason"];
    v5->_statusReason = PKPeerPaymentRecipientStatusReasonFromString(v7);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_receiveMethod = [coderCopy decodeIntegerForKey:@"receiveMethod"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"receiveCurrency"];
    receiveCurrency = v5->_receiveCurrency;
    v5->_receiveCurrency = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumReceiveAmount"];
    minimumReceiveAmount = v5->_minimumReceiveAmount;
    v5->_minimumReceiveAmount = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumReceiveAmount"];
    maximumReceiveAmount = v5->_maximumReceiveAmount;
    v5->_maximumReceiveAmount = v14;

    v5->_allowsFormalPaymentRequests = [coderCopy decodeBoolForKey:@"allowsFormalPaymentRequests"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cacheUntil"];
    cacheUntil = v5->_cacheUntil;
    v5->_cacheUntil = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"conversationAddress"];
    conversationAddress = v5->_conversationAddress;
    v5->_conversationAddress = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"normalizedAddress"];
    normalizedAddress = v5->_normalizedAddress;
    v5->_normalizedAddress = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientAddress"];
    idsQualifiedNormalizedAddress = v5->_idsQualifiedNormalizedAddress;
    v5->_idsQualifiedNormalizedAddress = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"recipientIdentifier"];
  status = self->_status;
  v6 = @"unknown";
  if (status == 2)
  {
    v6 = @"invalid";
  }

  if (status == 1)
  {
    v7 = @"valid";
  }

  else
  {
    v7 = v6;
  }

  [coderCopy encodeObject:v7 forKey:@"recipientStatus"];
  statusReason = self->_statusReason;
  v9 = @"none";
  if (statusReason == 2)
  {
    v9 = @"notInFamily";
  }

  if (statusReason == 1)
  {
    v10 = @"accountClosed";
  }

  else
  {
    v10 = v9;
  }

  [coderCopy encodeObject:v10 forKey:@"recipientStatusReason"];
  [coderCopy encodeInteger:self->_receiveMethod forKey:@"receiveMethod"];
  [coderCopy encodeObject:self->_receiveCurrency forKey:@"receiveCurrency"];
  [coderCopy encodeObject:self->_minimumReceiveAmount forKey:@"minimumReceiveAmount"];
  [coderCopy encodeObject:self->_maximumReceiveAmount forKey:@"maximumReceiveAmount"];
  [coderCopy encodeBool:self->_allowsFormalPaymentRequests forKey:@"allowsFormalPaymentRequests"];
  [coderCopy encodeObject:self->_cacheUntil forKey:@"cacheUntil"];
  [coderCopy encodeObject:self->_conversationAddress forKey:@"conversationAddress"];
  [coderCopy encodeObject:self->_normalizedAddress forKey:@"normalizedAddress"];
  [coderCopy encodeObject:self->_idsQualifiedNormalizedAddress forKey:@"recipientAddress"];
  [coderCopy encodeObject:self->_displayName forKey:@"displayName"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_receiveCurrency];
  [array safelyAddObject:self->_minimumReceiveAmount];
  [array safelyAddObject:self->_maximumReceiveAmount];
  [array safelyAddObject:self->_cacheUntil];
  [array safelyAddObject:self->_conversationAddress];
  [array safelyAddObject:self->_normalizedAddress];
  [array safelyAddObject:self->_idsQualifiedNormalizedAddress];
  [array safelyAddObject:self->_displayName];
  v4 = PKCombinedHash(17, array);
  v5 = self->_status - v4 + 32 * v4;
  v6 = self->_statusReason - v5 + 32 * v5;
  v7 = self->_receiveMethod - v6 + 32 * v6;
  v8 = self->_allowsFormalPaymentRequests - v7 + 32 * v7;

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_51;
  }

  identifier = self->_identifier;
  v6 = equalCopy[2];
  if (identifier && v6)
  {
    if (([(NSString *)identifier isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (identifier != v6)
  {
    goto LABEL_51;
  }

  receiveCurrency = self->_receiveCurrency;
  v8 = equalCopy[6];
  if (receiveCurrency && v8)
  {
    if (([(NSString *)receiveCurrency isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (receiveCurrency != v8)
  {
    goto LABEL_51;
  }

  minimumReceiveAmount = self->_minimumReceiveAmount;
  v10 = equalCopy[7];
  if (minimumReceiveAmount && v10)
  {
    if (([(NSDecimalNumber *)minimumReceiveAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (minimumReceiveAmount != v10)
  {
    goto LABEL_51;
  }

  maximumReceiveAmount = self->_maximumReceiveAmount;
  v12 = equalCopy[8];
  if (maximumReceiveAmount && v12)
  {
    if (([(NSDecimalNumber *)maximumReceiveAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (maximumReceiveAmount != v12)
  {
    goto LABEL_51;
  }

  cacheUntil = self->_cacheUntil;
  v14 = equalCopy[9];
  if (cacheUntil && v14)
  {
    if (([(NSDate *)cacheUntil isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (cacheUntil != v14)
  {
    goto LABEL_51;
  }

  conversationAddress = self->_conversationAddress;
  v16 = equalCopy[10];
  if (conversationAddress && v16)
  {
    if (([(NSString *)conversationAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (conversationAddress != v16)
  {
    goto LABEL_51;
  }

  normalizedAddress = self->_normalizedAddress;
  v18 = equalCopy[11];
  if (normalizedAddress && v18)
  {
    if (([(NSString *)normalizedAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (normalizedAddress != v18)
  {
    goto LABEL_51;
  }

  idsQualifiedNormalizedAddress = self->_idsQualifiedNormalizedAddress;
  v20 = equalCopy[12];
  if (idsQualifiedNormalizedAddress && v20)
  {
    if (([(NSString *)idsQualifiedNormalizedAddress isEqual:?]& 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (idsQualifiedNormalizedAddress != v20)
  {
    goto LABEL_51;
  }

  displayName = self->_displayName;
  v22 = equalCopy[13];
  if (!displayName || !v22)
  {
    if (displayName == v22)
    {
      goto LABEL_47;
    }

LABEL_51:
    v23 = 0;
    goto LABEL_52;
  }

  if (([(NSString *)displayName isEqual:?]& 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_47:
  if (self->_status != equalCopy[3] || self->_statusReason != equalCopy[4] || self->_receiveMethod != equalCopy[5])
  {
    goto LABEL_51;
  }

  v23 = self->_allowsFormalPaymentRequests == *(equalCopy + 8);
LABEL_52:

  return v23;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  status = self->_status;
  v5 = @"invalid";
  if (status != 2)
  {
    v5 = @"unknown";
  }

  if (status == 1)
  {
    v6 = @"valid";
  }

  else
  {
    v6 = v5;
  }

  [v3 appendFormat:@"status: '%@'; ", v6];
  statusReason = self->_statusReason;
  v8 = @"none";
  if (statusReason == 2)
  {
    v8 = @"notInFamily";
  }

  if (statusReason == 1)
  {
    v9 = @"accountClosed";
  }

  else
  {
    v9 = v8;
  }

  [v3 appendFormat:@"statusReason: '%@'; ", v9];
  if (self->_receiveMethod == 1)
  {
    v10 = @"iMessage";
  }

  else
  {
    v10 = @"unknown";
  }

  [v3 appendFormat:@"receiveMethod: '%@'; ", v10];
  [v3 appendFormat:@"receiveCurrency: '%@'; ", self->_receiveCurrency];
  [v3 appendFormat:@"minimumReceiveAmount: '%@'; ", self->_minimumReceiveAmount];
  [v3 appendFormat:@"maximumReceiveAmount: '%@'; ", self->_maximumReceiveAmount];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_allowsFormalPaymentRequests];
  [v3 appendFormat:@"allowsFormalPaymentRequests: '%@'; ", v11];

  [v3 appendFormat:@"cacheUntil: '%@'; ", self->_cacheUntil];
  [v3 appendFormat:@"conversationAddress: '%@'; ", self->_conversationAddress];
  [v3 appendFormat:@"normalizedAddress: '%@'; ", self->_normalizedAddress];
  [v3 appendFormat:@"idsQualifiedNormalizedAddress: '%@'; ", self->_idsQualifiedNormalizedAddress];
  [v3 appendFormat:@"displayName: '%@'; ", self->_displayName];
  [v3 appendFormat:@">"];

  return v3;
}

- (void)setAddress:(id)address
{
  addressCopy = address;
  conversationAddress = self->_conversationAddress;
  v6 = addressCopy;
  v10 = v6;
  if (conversationAddress == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !conversationAddress)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)conversationAddress isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    conversationAddress = self->_conversationAddress;
    self->_conversationAddress = v9;
    goto LABEL_9;
  }

LABEL_10:
}

@end
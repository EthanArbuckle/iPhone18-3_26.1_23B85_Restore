@interface PKPeerPaymentRecipient
+ (PKPeerPaymentRecipient)recipientWithDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentRecipient)initWithCoder:(id)a3;
- (PKPeerPaymentRecipient)initWithDictionary:(id)a3;
- (id)cacheableCopy;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAddress:(id)a3;
@end

@implementation PKPeerPaymentRecipient

+ (PKPeerPaymentRecipient)recipientWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (PKPeerPaymentRecipient)initWithDictionary:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = PKPeerPaymentRecipient;
  v5 = [(PKPeerPaymentRecipient *)&v29 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"recipientStatus"];
    v5->_status = PKPeerPaymentRecipientStatusFromString(v6);

    v7 = [v4 PKStringForKey:@"recipientStatusReason"];
    v5->_statusReason = PKPeerPaymentRecipientStatusReasonFromString(v7);

    v8 = [v4 PKStringForKey:@"recipientIdentifier"];
    v9 = [v8 copy];
    identifier = v5->_identifier;
    v5->_identifier = v9;

    v11 = [v4 PKStringForKey:@"receiveMethod"];
    v5->_receiveMethod = [@"iMessage" isEqualToString:v11];

    v12 = [v4 PKStringForKey:@"receiveCurrency"];
    v13 = [v12 copy];
    receiveCurrency = v5->_receiveCurrency;
    v5->_receiveCurrency = v13;

    v15 = [v4 PKStringForKey:@"recipientAddress"];
    v16 = [v15 copy];
    idsQualifiedNormalizedAddress = v5->_idsQualifiedNormalizedAddress;
    v5->_idsQualifiedNormalizedAddress = v16;

    v18 = [v4 PKStringForKey:@"minimumReceiveAmount"];
    v19 = v18;
    if (v18)
    {
      v18 = [MEMORY[0x1E696AB90] decimalNumberWithString:v18];
    }

    minimumReceiveAmount = v5->_minimumReceiveAmount;
    v5->_minimumReceiveAmount = v18;

    v21 = [v4 PKStringForKey:@"maximumReceiveAmount"];
    v22 = v21;
    if (v21)
    {
      v21 = [MEMORY[0x1E696AB90] decimalNumberWithString:v21];
    }

    maximumReceiveAmount = v5->_maximumReceiveAmount;
    v5->_maximumReceiveAmount = v21;

    v24 = [v4 PKNumberForKey:@"allowsFormalPaymentRequests"];
    v25 = v24;
    if (!v24)
    {
      v24 = MEMORY[0x1E695E118];
    }

    v5->_allowsFormalPaymentRequests = [v24 BOOLValue];

    v26 = [v4 PKDateForKey:@"cacheUntil"];
    cacheUntil = v5->_cacheUntil;
    v5->_cacheUntil = v26;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 24) = self->_status;
  *(v5 + 32) = self->_statusReason;
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 40) = self->_receiveMethod;
  v8 = [(NSString *)self->_receiveCurrency copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSDecimalNumber *)self->_minimumReceiveAmount copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSDecimalNumber *)self->_maximumReceiveAmount copyWithZone:a3];
  v13 = *(v5 + 64);
  *(v5 + 64) = v12;

  *(v5 + 8) = self->_allowsFormalPaymentRequests;
  v14 = [(NSDate *)self->_cacheUntil copyWithZone:a3];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  v16 = [(NSString *)self->_conversationAddress copyWithZone:a3];
  v17 = *(v5 + 80);
  *(v5 + 80) = v16;

  v18 = [(NSString *)self->_normalizedAddress copyWithZone:a3];
  v19 = *(v5 + 88);
  *(v5 + 88) = v18;

  v20 = [(NSString *)self->_idsQualifiedNormalizedAddress copyWithZone:a3];
  v21 = *(v5 + 96);
  *(v5 + 96) = v20;

  v22 = [(NSString *)self->_displayName copyWithZone:a3];
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

- (PKPeerPaymentRecipient)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = PKPeerPaymentRecipient;
  v5 = [(PKPeerPaymentRecipient *)&v27 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientStatus"];
    v5->_status = PKPeerPaymentRecipientStatusFromString(v6);

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientStatusReason"];
    v5->_statusReason = PKPeerPaymentRecipientStatusReasonFromString(v7);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_receiveMethod = [v4 decodeIntegerForKey:@"receiveMethod"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiveCurrency"];
    receiveCurrency = v5->_receiveCurrency;
    v5->_receiveCurrency = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumReceiveAmount"];
    minimumReceiveAmount = v5->_minimumReceiveAmount;
    v5->_minimumReceiveAmount = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumReceiveAmount"];
    maximumReceiveAmount = v5->_maximumReceiveAmount;
    v5->_maximumReceiveAmount = v14;

    v5->_allowsFormalPaymentRequests = [v4 decodeBoolForKey:@"allowsFormalPaymentRequests"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cacheUntil"];
    cacheUntil = v5->_cacheUntil;
    v5->_cacheUntil = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"conversationAddress"];
    conversationAddress = v5->_conversationAddress;
    v5->_conversationAddress = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"normalizedAddress"];
    normalizedAddress = v5->_normalizedAddress;
    v5->_normalizedAddress = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientAddress"];
    idsQualifiedNormalizedAddress = v5->_idsQualifiedNormalizedAddress;
    v5->_idsQualifiedNormalizedAddress = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v11 = a3;
  [v11 encodeObject:identifier forKey:@"recipientIdentifier"];
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

  [v11 encodeObject:v7 forKey:@"recipientStatus"];
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

  [v11 encodeObject:v10 forKey:@"recipientStatusReason"];
  [v11 encodeInteger:self->_receiveMethod forKey:@"receiveMethod"];
  [v11 encodeObject:self->_receiveCurrency forKey:@"receiveCurrency"];
  [v11 encodeObject:self->_minimumReceiveAmount forKey:@"minimumReceiveAmount"];
  [v11 encodeObject:self->_maximumReceiveAmount forKey:@"maximumReceiveAmount"];
  [v11 encodeBool:self->_allowsFormalPaymentRequests forKey:@"allowsFormalPaymentRequests"];
  [v11 encodeObject:self->_cacheUntil forKey:@"cacheUntil"];
  [v11 encodeObject:self->_conversationAddress forKey:@"conversationAddress"];
  [v11 encodeObject:self->_normalizedAddress forKey:@"normalizedAddress"];
  [v11 encodeObject:self->_idsQualifiedNormalizedAddress forKey:@"recipientAddress"];
  [v11 encodeObject:self->_displayName forKey:@"displayName"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_receiveCurrency];
  [v3 safelyAddObject:self->_minimumReceiveAmount];
  [v3 safelyAddObject:self->_maximumReceiveAmount];
  [v3 safelyAddObject:self->_cacheUntil];
  [v3 safelyAddObject:self->_conversationAddress];
  [v3 safelyAddObject:self->_normalizedAddress];
  [v3 safelyAddObject:self->_idsQualifiedNormalizedAddress];
  [v3 safelyAddObject:self->_displayName];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_status - v4 + 32 * v4;
  v6 = self->_statusReason - v5 + 32 * v5;
  v7 = self->_receiveMethod - v6 + 32 * v6;
  v8 = self->_allowsFormalPaymentRequests - v7 + 32 * v7;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_51;
  }

  identifier = self->_identifier;
  v6 = v4[2];
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
  v8 = v4[6];
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
  v10 = v4[7];
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
  v12 = v4[8];
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
  v14 = v4[9];
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
  v16 = v4[10];
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
  v18 = v4[11];
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
  v20 = v4[12];
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
  v22 = v4[13];
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
  if (self->_status != v4[3] || self->_statusReason != v4[4] || self->_receiveMethod != v4[5])
  {
    goto LABEL_51;
  }

  v23 = self->_allowsFormalPaymentRequests == *(v4 + 8);
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

- (void)setAddress:(id)a3
{
  v4 = a3;
  conversationAddress = self->_conversationAddress;
  v6 = v4;
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
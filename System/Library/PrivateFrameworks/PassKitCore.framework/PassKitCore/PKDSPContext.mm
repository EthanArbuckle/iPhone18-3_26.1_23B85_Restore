@interface PKDSPContext
- (BOOL)isEqual:(id)equal;
- (PKDSPContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setPrimaryAppleAccount:(id)account;
@end

@implementation PKDSPContext

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKDSPContext allocWithZone:](PKDSPContext init];
  v6 = [(NSString *)self->_secureElementID copyWithZone:zone];
  secureElementID = v5->_secureElementID;
  v5->_secureElementID = v6;

  v8 = [(NSString *)self->_phoneNumber copyWithZone:zone];
  phoneNumber = v5->_phoneNumber;
  v5->_phoneNumber = v8;

  v10 = [(NSString *)self->_cardholderName copyWithZone:zone];
  cardholderName = v5->_cardholderName;
  v5->_cardholderName = v10;

  v12 = [(NSString *)self->_primaryAppleAccountFirstName copyWithZone:zone];
  primaryAppleAccountFirstName = v5->_primaryAppleAccountFirstName;
  v5->_primaryAppleAccountFirstName = v12;

  v14 = [(NSString *)self->_primaryAppleAccountLastName copyWithZone:zone];
  primaryAppleAccountLastName = v5->_primaryAppleAccountLastName;
  v5->_primaryAppleAccountLastName = v14;

  v16 = [(NSString *)self->_serverEndpointIdentifier copyWithZone:zone];
  serverEndpointIdentifier = v5->_serverEndpointIdentifier;
  v5->_serverEndpointIdentifier = v16;

  v18 = [(NSString *)self->_peerPaymentRecipientAddress copyWithZone:zone];
  peerPaymentRecipientAddress = v5->_peerPaymentRecipientAddress;
  v5->_peerPaymentRecipientAddress = v18;

  v5->_eventFrequency = self->_eventFrequency;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_40;
  }

  secureElementID = self->_secureElementID;
  v8 = v6[1];
  if (secureElementID && v8)
  {
    if (([(NSString *)secureElementID isEqual:?]& 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (secureElementID != v8)
  {
    goto LABEL_40;
  }

  cardholderName = self->_cardholderName;
  v10 = v6[3];
  if (cardholderName && v10)
  {
    if (([(NSString *)cardholderName isEqual:?]& 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (cardholderName != v10)
  {
    goto LABEL_40;
  }

  phoneNumber = self->_phoneNumber;
  v12 = v6[4];
  if (phoneNumber && v12)
  {
    if (([(NSString *)phoneNumber isEqual:?]& 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (phoneNumber != v12)
  {
    goto LABEL_40;
  }

  primaryAppleAccountFirstName = self->_primaryAppleAccountFirstName;
  v14 = v6[7];
  if (primaryAppleAccountFirstName && v14)
  {
    if (([(NSString *)primaryAppleAccountFirstName isEqual:?]& 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (primaryAppleAccountFirstName != v14)
  {
    goto LABEL_40;
  }

  primaryAppleAccountLastName = self->_primaryAppleAccountLastName;
  v16 = v6[8];
  if (primaryAppleAccountLastName && v16)
  {
    if (([(NSString *)primaryAppleAccountLastName isEqual:?]& 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (primaryAppleAccountLastName != v16)
  {
    goto LABEL_40;
  }

  serverEndpointIdentifier = self->_serverEndpointIdentifier;
  v18 = v6[2];
  if (serverEndpointIdentifier && v18)
  {
    if (([(NSString *)serverEndpointIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (serverEndpointIdentifier != v18)
  {
    goto LABEL_40;
  }

  peerPaymentRecipientAddress = self->_peerPaymentRecipientAddress;
  v20 = v6[5];
  if (!peerPaymentRecipientAddress || !v20)
  {
    if (peerPaymentRecipientAddress == v20)
    {
      goto LABEL_38;
    }

LABEL_40:
    v21 = 0;
    goto LABEL_41;
  }

  if (([(NSString *)peerPaymentRecipientAddress isEqual:?]& 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_38:
  v21 = self->_eventFrequency == v6[6];
LABEL_41:

  return v21;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_secureElementID];
  [array safelyAddObject:self->_cardholderName];
  [array safelyAddObject:self->_phoneNumber];
  [array safelyAddObject:self->_primaryAppleAccountLastName];
  [array safelyAddObject:self->_primaryAppleAccountFirstName];
  [array safelyAddObject:self->_serverEndpointIdentifier];
  [array safelyAddObject:self->_peerPaymentRecipientAddress];
  v4 = PKCombinedHash(17, array);
  v5 = self->_eventFrequency - v4 + 32 * v4;

  return v5;
}

- (void)setPrimaryAppleAccount:(id)account
{
  accountCopy = account;
  firstName = [accountCopy firstName];
  v6 = [firstName copy];
  primaryAppleAccountFirstName = self->_primaryAppleAccountFirstName;
  self->_primaryAppleAccountFirstName = v6;

  lastName = [accountCopy lastName];

  v8 = [lastName copy];
  primaryAppleAccountLastName = self->_primaryAppleAccountLastName;
  self->_primaryAppleAccountLastName = v8;
}

- (PKDSPContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = PKDSPContext;
  v5 = [(PKDSPContext *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secureElementID"];
    secureElementID = v5->_secureElementID;
    v5->_secureElementID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverEndpointIdentifier"];
    serverEndpointIdentifier = v5->_serverEndpointIdentifier;
    v5->_serverEndpointIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardholderName"];
    cardholderName = v5->_cardholderName;
    v5->_cardholderName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerPaymentRecipientAddress"];
    peerPaymentRecipientAddress = v5->_peerPaymentRecipientAddress;
    v5->_peerPaymentRecipientAddress = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventFrequency"];
    v5->_eventFrequency = [v16 unsignedIntegerValue];

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAppleAccountFirstName"];
    primaryAppleAccountFirstName = v5->_primaryAppleAccountFirstName;
    v5->_primaryAppleAccountFirstName = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAppleAccountLastName"];
    primaryAppleAccountLastName = v5->_primaryAppleAccountLastName;
    v5->_primaryAppleAccountLastName = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  secureElementID = self->_secureElementID;
  coderCopy = coder;
  [coderCopy encodeObject:secureElementID forKey:@"secureElementID"];
  [coderCopy encodeObject:self->_serverEndpointIdentifier forKey:@"serverEndpointIdentifier"];
  [coderCopy encodeObject:self->_cardholderName forKey:@"cardholderName"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [coderCopy encodeObject:self->_peerPaymentRecipientAddress forKey:@"peerPaymentRecipientAddress"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_eventFrequency];
  [coderCopy encodeObject:v5 forKey:@"eventFrequency"];

  [coderCopy encodeObject:self->_primaryAppleAccountFirstName forKey:@"primaryAppleAccountFirstName"];
  [coderCopy encodeObject:self->_primaryAppleAccountLastName forKey:@"primaryAppleAccountLastName"];
}

@end
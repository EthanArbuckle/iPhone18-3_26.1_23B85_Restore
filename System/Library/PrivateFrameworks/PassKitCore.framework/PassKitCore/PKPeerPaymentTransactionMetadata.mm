@interface PKPeerPaymentTransactionMetadata
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPeerPaymentTransactionMetadata:(id)metadata;
- (PKPeerPaymentTransactionMetadata)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentTransactionMetadata

- (PKPeerPaymentTransactionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKPeerPaymentTransactionMetadata;
  v5 = [(PKPeerPaymentTransactionMetadata *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dpanIdentifier"];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceIdentifier"];
    serviceIdentifier = v5->_serviceIdentifier;
    v5->_serviceIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestDeviceScoreIdentifier"];
    requestDeviceScoreIdentifier = v5->_requestDeviceScoreIdentifier;
    v5->_requestDeviceScoreIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sendDeviceScoreIdentifier"];
    sendDeviceScoreIdentifier = v5->_sendDeviceScoreIdentifier;
    v5->_sendDeviceScoreIdentifier = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  dpanIdentifier = self->_dpanIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:dpanIdentifier forKey:@"dpanIdentifier"];
  [coderCopy encodeObject:self->_serviceIdentifier forKey:@"serviceIdentifier"];
  [coderCopy encodeObject:self->_requestDeviceScoreIdentifier forKey:@"requestDeviceScoreIdentifier"];
  [coderCopy encodeObject:self->_sendDeviceScoreIdentifier forKey:@"sendDeviceScoreIdentifier"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"dpanIdentifier: '%@'; ", self->_dpanIdentifier];
  [v6 appendFormat:@"serviceIdentifier: '%@'; ", self->_serviceIdentifier];
  [v6 appendFormat:@"requestDeviceScoreIdentifier: '%@'; ", self->_requestDeviceScoreIdentifier];
  [v6 appendFormat:@"sendDeviceScoreIdentifier: '%@'; ", self->_sendDeviceScoreIdentifier];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_dpanIdentifier)
  {
    [array addObject:?];
  }

  if (self->_serviceIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_requestDeviceScoreIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_sendDeviceScoreIdentifier)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentTransactionMetadata *)self isEqualToPeerPaymentTransactionMetadata:v5];
  }

  return v6;
}

- (BOOL)isEqualToPeerPaymentTransactionMetadata:(id)metadata
{
  metadataCopy = metadata;
  dpanIdentifier = self->_dpanIdentifier;
  v6 = metadataCopy[1];
  if (dpanIdentifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (dpanIdentifier != v6)
    {
      goto LABEL_21;
    }
  }

  else if (([(NSString *)dpanIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_21;
  }

  serviceIdentifier = self->_serviceIdentifier;
  v9 = metadataCopy[2];
  if (serviceIdentifier && v9)
  {
    if (([(NSString *)serviceIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (serviceIdentifier != v9)
  {
    goto LABEL_21;
  }

  requestDeviceScoreIdentifier = self->_requestDeviceScoreIdentifier;
  v11 = metadataCopy[3];
  if (!requestDeviceScoreIdentifier || !v11)
  {
    if (requestDeviceScoreIdentifier == v11)
    {
      goto LABEL_17;
    }

LABEL_21:
    v14 = 0;
    goto LABEL_22;
  }

  if (([(NSUUID *)requestDeviceScoreIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  sendDeviceScoreIdentifier = self->_sendDeviceScoreIdentifier;
  v13 = metadataCopy[4];
  if (sendDeviceScoreIdentifier && v13)
  {
    v14 = [(NSUUID *)sendDeviceScoreIdentifier isEqual:?];
  }

  else
  {
    v14 = sendDeviceScoreIdentifier == v13;
  }

LABEL_22:

  return v14;
}

@end
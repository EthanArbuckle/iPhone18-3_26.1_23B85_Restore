@interface PKPeerPaymentRequestToken
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentRequestToken)initWithCoder:(id)coder;
- (PKPeerPaymentRequestToken)initWithRequestToken:(id)token;
- (PKPeerPaymentRequestToken)initWithRequestToken:(id)token deviceScoreIdentifier:(id)identifier expiryDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentRequestToken

- (PKPeerPaymentRequestToken)initWithRequestToken:(id)token
{
  tokenCopy = token;
  if (tokenCopy)
  {
    v9.receiver = self;
    v9.super_class = PKPeerPaymentRequestToken;
    v5 = [(PKPeerPaymentRequestToken *)&v9 init];
    if (v5)
    {
      v6 = [tokenCopy copy];
      requestToken = v5->_requestToken;
      v5->_requestToken = v6;
    }
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (PKPeerPaymentRequestToken)initWithRequestToken:(id)token deviceScoreIdentifier:(id)identifier expiryDate:(id)date
{
  tokenCopy = token;
  identifierCopy = identifier;
  dateCopy = date;
  if (!tokenCopy)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v11 = tokenCopy;
  if (v11 == @"PKPeerPaymentInformalRequestToken" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"PKPeerPaymentInformalRequestToken"], v12, v13))
  {
    v14 = +[PKPeerPaymentInformalRequestToken token];
LABEL_8:

    goto LABEL_9;
  }

  v14 = [(PKPeerPaymentRequestToken *)self initWithRequestToken:v12];
  if (v14)
  {
    v15 = [identifierCopy copy];
    deviceScoreIdentifier = v14->_deviceScoreIdentifier;
    v14->_deviceScoreIdentifier = v15;

    v17 = [dateCopy copy];
    self = v14->_expiryDate;
    v14->_expiryDate = v17;
    goto LABEL_8;
  }

LABEL_9:

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_requestToken copyWithZone:zone];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSUUID *)self->_deviceScoreIdentifier copyWithZone:zone];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(NSDate *)self->_expiryDate copyWithZone:zone];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (PKPeerPaymentRequestToken)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPeerPaymentRequestToken;
  v5 = [(PKPeerPaymentRequestToken *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestToken"];
    requestToken = v5->_requestToken;
    v5->_requestToken = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceScoreIdentifier"];
    deviceScoreIdentifier = v5->_deviceScoreIdentifier;
    v5->_deviceScoreIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  requestToken = self->_requestToken;
  coderCopy = coder;
  [coderCopy encodeObject:requestToken forKey:@"requestToken"];
  [coderCopy encodeObject:self->_deviceScoreIdentifier forKey:@"deviceScoreIdentifier"];
  [coderCopy encodeObject:self->_expiryDate forKey:@"expiryDate"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestToken = self->_requestToken;
      v7 = v5->_requestToken;
      if (requestToken && v7)
      {
        if (([(NSString *)requestToken isEqual:?]& 1) == 0)
        {
          goto LABEL_17;
        }
      }

      else if (requestToken != v7)
      {
        goto LABEL_17;
      }

      deviceScoreIdentifier = self->_deviceScoreIdentifier;
      v10 = v5->_deviceScoreIdentifier;
      if (deviceScoreIdentifier && v10)
      {
        if (([(NSUUID *)deviceScoreIdentifier isEqual:?]& 1) != 0)
        {
LABEL_13:
          expiryDate = self->_expiryDate;
          v12 = v5->_expiryDate;
          if (expiryDate && v12)
          {
            v8 = [(NSDate *)expiryDate isEqual:?];
          }

          else
          {
            v8 = expiryDate == v12;
          }

          goto LABEL_18;
        }
      }

      else if (deviceScoreIdentifier == v10)
      {
        goto LABEL_13;
      }

LABEL_17:
      v8 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v8 = 0;
  }

LABEL_19:

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"requestToken: '%@'; ", self->_requestToken];
  [v6 appendFormat:@"deviceScoreIdentifier: '%@'; ", self->_deviceScoreIdentifier];
  [v6 appendFormat:@"expiryDate: '%@'; ", self->_expiryDate];
  [v6 appendFormat:@">"];
  v7 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v7;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_requestToken)
  {
    [array addObject:?];
  }

  if (self->_deviceScoreIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_expiryDate)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);

  return v5;
}

@end
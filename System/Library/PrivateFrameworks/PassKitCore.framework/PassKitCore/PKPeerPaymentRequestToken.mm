@interface PKPeerPaymentRequestToken
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentRequestToken)initWithCoder:(id)a3;
- (PKPeerPaymentRequestToken)initWithRequestToken:(id)a3;
- (PKPeerPaymentRequestToken)initWithRequestToken:(id)a3 deviceScoreIdentifier:(id)a4 expiryDate:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentRequestToken

- (PKPeerPaymentRequestToken)initWithRequestToken:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9.receiver = self;
    v9.super_class = PKPeerPaymentRequestToken;
    v5 = [(PKPeerPaymentRequestToken *)&v9 init];
    if (v5)
    {
      v6 = [v4 copy];
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

- (PKPeerPaymentRequestToken)initWithRequestToken:(id)a3 deviceScoreIdentifier:(id)a4 expiryDate:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    v14 = 0;
    goto LABEL_8;
  }

  v11 = v8;
  if (v11 == @"PKPeerPaymentInformalRequestToken" || (v12 = v11, v13 = [(__CFString *)v11 isEqualToString:@"PKPeerPaymentInformalRequestToken"], v12, v13))
  {
    v14 = +[PKPeerPaymentInformalRequestToken token];
LABEL_8:

    goto LABEL_9;
  }

  v14 = [(PKPeerPaymentRequestToken *)self initWithRequestToken:v12];
  if (v14)
  {
    v15 = [v9 copy];
    deviceScoreIdentifier = v14->_deviceScoreIdentifier;
    v14->_deviceScoreIdentifier = v15;

    v17 = [v10 copy];
    self = v14->_expiryDate;
    v14->_expiryDate = v17;
    goto LABEL_8;
  }

LABEL_9:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (v5)
  {
    v6 = [(NSString *)self->_requestToken copyWithZone:a3];
    v7 = v5[1];
    v5[1] = v6;

    v8 = [(NSUUID *)self->_deviceScoreIdentifier copyWithZone:a3];
    v9 = v5[2];
    v5[2] = v8;

    v10 = [(NSDate *)self->_expiryDate copyWithZone:a3];
    v11 = v5[3];
    v5[3] = v10;
  }

  return v5;
}

- (PKPeerPaymentRequestToken)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPeerPaymentRequestToken;
  v5 = [(PKPeerPaymentRequestToken *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestToken"];
    requestToken = v5->_requestToken;
    v5->_requestToken = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceScoreIdentifier"];
    deviceScoreIdentifier = v5->_deviceScoreIdentifier;
    v5->_deviceScoreIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expiryDate"];
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requestToken = self->_requestToken;
  v5 = a3;
  [v5 encodeObject:requestToken forKey:@"requestToken"];
  [v5 encodeObject:self->_deviceScoreIdentifier forKey:@"deviceScoreIdentifier"];
  [v5 encodeObject:self->_expiryDate forKey:@"expiryDate"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_requestToken)
  {
    [v3 addObject:?];
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
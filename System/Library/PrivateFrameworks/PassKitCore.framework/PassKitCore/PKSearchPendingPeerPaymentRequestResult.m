@interface PKSearchPendingPeerPaymentRequestResult
- (BOOL)isEqual:(id)a3;
- (PKSearchPendingPeerPaymentRequestResult)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation PKSearchPendingPeerPaymentRequestResult

- (PKSearchPendingPeerPaymentRequestResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKSearchPendingPeerPaymentRequestResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pendingRequest"];
    pendingRequest = v5->_pendingRequest;
    v5->_pendingRequest = v6;
  }

  return v5;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = PKSearchPendingPeerPaymentRequestResult;
  v3 = [(PKSearchPendingPeerPaymentRequestResult *)&v6 description];
  v4 = [v3 mutableCopy];

  [v4 appendFormat:@"pendingRequest: '%@'; ", self->_pendingRequest];
  [v4 appendFormat:@">"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    pendingRequest = self->_pendingRequest;
    v6 = v4[1];
    if (pendingRequest && v6)
    {
      v7 = [(PKPeerPaymentPendingRequest *)pendingRequest isEqual:?];
    }

    else
    {
      v7 = pendingRequest == v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_pendingRequest];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

@end
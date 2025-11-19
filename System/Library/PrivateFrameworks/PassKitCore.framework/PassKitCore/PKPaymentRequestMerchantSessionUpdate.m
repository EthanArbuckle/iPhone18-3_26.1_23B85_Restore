@interface PKPaymentRequestMerchantSessionUpdate
- (PKPaymentRequestMerchantSessionUpdate)initWithCoder:(id)a3;
- (PKPaymentRequestMerchantSessionUpdate)initWithStatus:(PKPaymentAuthorizationStatus)status merchantSession:(PKPaymentMerchantSession *)session;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentRequestMerchantSessionUpdate

- (PKPaymentRequestMerchantSessionUpdate)initWithStatus:(PKPaymentAuthorizationStatus)status merchantSession:(PKPaymentMerchantSession *)session
{
  v7 = session;
  v11.receiver = self;
  v11.super_class = PKPaymentRequestMerchantSessionUpdate;
  v8 = [(PKPaymentRequestMerchantSessionUpdate *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_status = status;
    objc_storeStrong(&v8->_session, session);
  }

  return v9;
}

- (PKPaymentRequestMerchantSessionUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPaymentRequestMerchantSessionUpdate;
  v5 = [(PKPaymentRequestMerchantSessionUpdate *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"session"];
    session = v5->_session;
    v5->_session = v6;

    v5->_status = [v4 decodeIntegerForKey:@"status"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  session = self->_session;
  v5 = a3;
  [v5 encodeObject:session forKey:@"session"];
  [v5 encodeInteger:self->_status forKey:@"status"];
}

@end
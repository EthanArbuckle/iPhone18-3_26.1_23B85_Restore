@interface PKPeerPaymentPendingRequestSummary
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentPendingRequestSummary)initWithDictionary:(id)a3;
@end

@implementation PKPeerPaymentPendingRequestSummary

- (PKPeerPaymentPendingRequestSummary)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPeerPaymentPendingRequestSummary;
  v5 = [(PKPeerPaymentPendingRequestSummary *)&v16 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"requestToken"];
    requestToken = v5->_requestToken;
    v5->_requestToken = v6;

    v8 = [v4 objectForKey:@"status"];
    status = v5->_status;
    v5->_status = v8;

    v10 = [v4 PKArrayContaining:objc_opt_class() forKey:@"actions"];
    actions = v5->_actions;
    v5->_actions = v10;

    v12 = [v4 objectForKey:@"expiryDate"];
    v13 = PKISO8601DateFromDateStringContainingFractionalSeconds(v12);
    expiryDate = v5->_expiryDate;
    v5->_expiryDate = v13;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  requestToken = self->_requestToken;
  v6 = v4[1];
  if (requestToken && v6)
  {
    if (([(NSString *)requestToken isEqual:?]& 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (requestToken != v6)
  {
    goto LABEL_19;
  }

  status = self->_status;
  v8 = v4[2];
  if (status && v8)
  {
    if (([(NSString *)status isEqual:?]& 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (status != v8)
  {
    goto LABEL_19;
  }

  actions = self->_actions;
  v10 = v4[3];
  if (!actions || !v10)
  {
    if (actions == v10)
    {
      goto LABEL_15;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  if (([(NSArray *)actions isEqual:?]& 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  expiryDate = self->_expiryDate;
  v12 = v4[4];
  if (expiryDate && v12)
  {
    v13 = [(NSDate *)expiryDate isEqual:?];
  }

  else
  {
    v13 = expiryDate == v12;
  }

LABEL_20:

  return v13;
}

@end
@interface PKPeerPaymentDynamicFraudAlertContent
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentDynamicFraudAlertContent)initWithCoder:(id)a3;
- (PKPeerPaymentDynamicFraudAlertContent)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentDynamicFraudAlertContent

- (PKPeerPaymentDynamicFraudAlertContent)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentDynamicFraudAlertContent;
  v5 = [(PKPeerPaymentDynamicFraudTitleMessageContent *)&v11 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"cancelButtonTitle"];
    cancelButtonTitle = v5->_cancelButtonTitle;
    v5->_cancelButtonTitle = v6;

    v8 = [v4 PKStringForKey:@"confirmButtonTitle"];
    confirmButtonTitle = v5->_confirmButtonTitle;
    v5->_confirmButtonTitle = v8;
  }

  return v5;
}

- (PKPeerPaymentDynamicFraudAlertContent)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentDynamicFraudAlertContent;
  v5 = [(PKPeerPaymentDynamicFraudTitleMessageContent *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cancelButtonTitle"];
    cancelButtonTitle = v5->_cancelButtonTitle;
    v5->_cancelButtonTitle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmButtonTitle"];
    confirmButtonTitle = v5->_confirmButtonTitle;
    v5->_confirmButtonTitle = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPeerPaymentDynamicFraudAlertContent;
  v4 = a3;
  [(PKPeerPaymentDynamicFraudTitleMessageContent *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_cancelButtonTitle forKey:{@"cancelButtonTitle", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_confirmButtonTitle forKey:@"confirmButtonTitle"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKPeerPaymentDynamicFraudTitleMessageContent *)self title];
  [v3 appendFormat:@"title: '%@'; ", v4];

  v5 = [(PKPeerPaymentDynamicFraudTitleMessageContent *)self message];
  [v3 appendFormat:@"message: '%@'; ", v5];

  [v3 appendFormat:@"cancelButtonTitle: '%@'; ", self->_cancelButtonTitle];
  [v3 appendFormat:@"otherButtonTitle: '%@'; ", self->_confirmButtonTitle];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  v13.receiver = self;
  v13.super_class = PKPeerPaymentDynamicFraudAlertContent;
  if (![(PKPeerPaymentDynamicFraudTitleMessageContent *)&v13 isEqual:v4])
  {
    goto LABEL_9;
  }

  cancelButtonTitle = self->_cancelButtonTitle;
  v6 = v4[3];
  if (cancelButtonTitle)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (([(NSString *)cancelButtonTitle isEqual:?]& 1) != 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (cancelButtonTitle != v6)
  {
    goto LABEL_9;
  }

LABEL_12:
  confirmButtonTitle = self->_confirmButtonTitle;
  v11 = v4[4];
  if (confirmButtonTitle)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v8 = confirmButtonTitle == v11;
  }

  else
  {
    v8 = [(NSString *)confirmButtonTitle isEqual:?];
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_cancelButtonTitle];
  [v3 safelyAddObject:self->_confirmButtonTitle];
  v7.receiver = self;
  v7.super_class = PKPeerPaymentDynamicFraudAlertContent;
  v4 = [(PKPeerPaymentDynamicFraudTitleMessageContent *)&v7 hash];
  v5 = PKCombinedHash(v4, v3);

  return v5;
}

@end
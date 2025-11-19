@interface PKAccountAction
- (PKAccountAction)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountAction

- (PKAccountAction)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKAccountAction;
  v5 = [(PKAccountAction *)&v13 init];
  if (v5)
  {
    v5->_actionType = [v4 decodeIntegerForKey:@"action"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v10;

    v5->_redemptionType = [v4 decodeIntegerForKey:@"rewardRedemptionType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  actionType = self->_actionType;
  v5 = a3;
  [v5 encodeInteger:actionType forKey:@"action"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_amount forKey:@"amount"];
  [v5 encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [v5 encodeInteger:self->_redemptionType forKey:@"rewardRedemptionType"];
}

@end
@interface PKAccountAction
- (PKAccountAction)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountAction

- (PKAccountAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKAccountAction;
  v5 = [(PKAccountAction *)&v13 init];
  if (v5)
  {
    v5->_actionType = [coderCopy decodeIntegerForKey:@"action"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v10;

    v5->_redemptionType = [coderCopy decodeIntegerForKey:@"rewardRedemptionType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  actionType = self->_actionType;
  coderCopy = coder;
  [coderCopy encodeInteger:actionType forKey:@"action"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_amount forKey:@"amount"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeInteger:self->_redemptionType forKey:@"rewardRedemptionType"];
}

@end
@interface PKBillPaymentSuggestedAmount
+ (id)roundingAmount:(id)amount;
- (BOOL)isEqual:(id)equal;
- (PKBillPaymentSuggestedAmount)initWithAmount:(id)amount category:(unint64_t)category;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation PKBillPaymentSuggestedAmount

- (PKBillPaymentSuggestedAmount)initWithAmount:(id)amount category:(unint64_t)category
{
  amountCopy = amount;
  v11.receiver = self;
  v11.super_class = PKBillPaymentSuggestedAmount;
  v7 = [(PKBillPaymentSuggestedAmount *)&v11 init];
  if (v7)
  {
    v8 = [PKBillPaymentSuggestedAmount roundingAmount:amountCopy];
    amount = v7->_amount;
    v7->_amount = v8;

    v7->_category = category;
  }

  return v7;
}

+ (id)roundingAmount:(id)amount
{
  v3 = MEMORY[0x1E696AB98];
  amountCopy = amount;
  v5 = [v3 decimalNumberHandlerWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v6 = [amountCopy decimalNumberByRoundingAccordingToBehavior:v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    amount = self->_amount;
    v6 = equalCopy[4];
    if (amount && v6)
    {
      v7 = [(NSDecimalNumber *)amount isEqual:?];
    }

    else
    {
      v7 = amount == v6;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  amount = self->_amount;
  amount = [compare amount];
  v5 = [(NSDecimalNumber *)amount compare:amount];

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_message];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_category - v4 + 32 * v4;
  v6 = self->_priority - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"amount: '%@'; ", self->_amount];
  v4 = PKBillPaymentSuggestedAmountCategoryToString(self->_category);
  [v3 appendFormat:@"category: '%@'; ", v4];

  [v3 appendFormat:@"title: '%@'; ", self->_title];
  [v3 appendFormat:@"message: '%@'; ", self->_message];
  [v3 appendFormat:@"priority: %ld; ", self->_priority];
  [v3 appendFormat:@">"];

  return v3;
}

@end
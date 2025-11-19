@interface PKBillPaymentSuggestedAmount
+ (id)roundingAmount:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKBillPaymentSuggestedAmount)initWithAmount:(id)a3 category:(unint64_t)a4;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation PKBillPaymentSuggestedAmount

- (PKBillPaymentSuggestedAmount)initWithAmount:(id)a3 category:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PKBillPaymentSuggestedAmount;
  v7 = [(PKBillPaymentSuggestedAmount *)&v11 init];
  if (v7)
  {
    v8 = [PKBillPaymentSuggestedAmount roundingAmount:v6];
    amount = v7->_amount;
    v7->_amount = v8;

    v7->_category = a4;
  }

  return v7;
}

+ (id)roundingAmount:(id)a3
{
  v3 = MEMORY[0x1E696AB98];
  v4 = a3;
  v5 = [v3 decimalNumberHandlerWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v6 = [v4 decimalNumberByRoundingAccordingToBehavior:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    amount = self->_amount;
    v6 = v4[4];
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

- (int64_t)compare:(id)a3
{
  amount = self->_amount;
  v4 = [a3 amount];
  v5 = [(NSDecimalNumber *)amount compare:v4];

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
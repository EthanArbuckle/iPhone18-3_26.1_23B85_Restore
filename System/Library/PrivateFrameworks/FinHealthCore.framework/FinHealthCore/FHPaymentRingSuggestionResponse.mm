@interface FHPaymentRingSuggestionResponse
+ (id)roundingAmount:(id)amount;
- (BOOL)isEqual:(id)equal;
- (FHPaymentRingSuggestionResponse)initWithAmount:(id)amount category:(unint64_t)category;
- (id)description;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation FHPaymentRingSuggestionResponse

- (FHPaymentRingSuggestionResponse)initWithAmount:(id)amount category:(unint64_t)category
{
  amountCopy = amount;
  v11.receiver = self;
  v11.super_class = FHPaymentRingSuggestionResponse;
  v7 = [(FHPaymentRingSuggestionResponse *)&v11 init];
  if (v7)
  {
    v8 = [FHPaymentRingSuggestionResponse roundingAmount:amountCopy];
    amount = v7->_amount;
    v7->_amount = v8;

    v7->_category = category;
  }

  return v7;
}

+ (id)roundingAmount:(id)amount
{
  v3 = MEMORY[0x277CCA988];
  amountCopy = amount;
  v5 = [v3 decimalNumberHandlerWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v6 = [amountCopy decimalNumberByRoundingAccordingToBehavior:v5];

  return v6;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  amount = self->_amount;
  amount = [compareCopy amount];
  if ([(NSDecimalNumber *)amount compare:amount])
  {
    category = self->_category;
    v8 = category == [compareCopy category];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  amount = [(FHPaymentRingSuggestionResponse *)self amount];
  v4 = [amount hash];

  v5 = 17 * (17 * v4 + [(FHPaymentRingSuggestionResponse *)self category]);
  return v5 + [(FHPaymentRingSuggestionResponse *)self priority]+ 4913;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    amount = [(FHPaymentRingSuggestionResponse *)self amount];
    amount2 = [(FHPaymentRingSuggestionResponse *)v5 amount];
    if ([amount isEqual:amount2] && (v8 = -[FHPaymentRingSuggestionResponse category](self, "category"), v8 == -[FHPaymentRingSuggestionResponse category](v5, "category")))
    {
      priority = [(FHPaymentRingSuggestionResponse *)self priority];
      v10 = priority == [(FHPaymentRingSuggestionResponse *)v5 priority];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"amount: '%@'; ", self->_amount];
  v4 = FHPaymentRingSuggestionCategoryToString(self->_category);
  [v3 appendFormat:@"category: '%@'; ", v4];

  [v3 appendFormat:@"priority: %ld; ", self->_priority];
  [v3 appendFormat:@">"];

  return v3;
}

@end
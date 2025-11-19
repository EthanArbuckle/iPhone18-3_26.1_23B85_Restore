@interface FHPaymentRingSuggestionResponse
+ (id)roundingAmount:(id)a3;
- (BOOL)isEqual:(id)a3;
- (FHPaymentRingSuggestionResponse)initWithAmount:(id)a3 category:(unint64_t)a4;
- (id)description;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation FHPaymentRingSuggestionResponse

- (FHPaymentRingSuggestionResponse)initWithAmount:(id)a3 category:(unint64_t)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = FHPaymentRingSuggestionResponse;
  v7 = [(FHPaymentRingSuggestionResponse *)&v11 init];
  if (v7)
  {
    v8 = [FHPaymentRingSuggestionResponse roundingAmount:v6];
    amount = v7->_amount;
    v7->_amount = v8;

    v7->_category = a4;
  }

  return v7;
}

+ (id)roundingAmount:(id)a3
{
  v3 = MEMORY[0x277CCA988];
  v4 = a3;
  v5 = [v3 decimalNumberHandlerWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
  v6 = [v4 decimalNumberByRoundingAccordingToBehavior:v5];

  return v6;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  amount = self->_amount;
  v6 = [v4 amount];
  if ([(NSDecimalNumber *)amount compare:v6])
  {
    category = self->_category;
    v8 = category == [v4 category];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(FHPaymentRingSuggestionResponse *)self amount];
  v4 = [v3 hash];

  v5 = 17 * (17 * v4 + [(FHPaymentRingSuggestionResponse *)self category]);
  return v5 + [(FHPaymentRingSuggestionResponse *)self priority]+ 4913;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(FHPaymentRingSuggestionResponse *)self amount];
    v7 = [(FHPaymentRingSuggestionResponse *)v5 amount];
    if ([v6 isEqual:v7] && (v8 = -[FHPaymentRingSuggestionResponse category](self, "category"), v8 == -[FHPaymentRingSuggestionResponse category](v5, "category")))
    {
      v9 = [(FHPaymentRingSuggestionResponse *)self priority];
      v10 = v9 == [(FHPaymentRingSuggestionResponse *)v5 priority];
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
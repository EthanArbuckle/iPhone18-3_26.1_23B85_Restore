@interface PKAutomaticReloadPaymentSummaryItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAutomaticReloadPaymentSummaryItem:(id)a3;
- (PKAutomaticReloadPaymentSummaryItem)initWithCoder:(id)a3;
- (PKAutomaticReloadPaymentSummaryItem)initWithDictionary:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAutomaticReloadPaymentSummaryItem

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = PKAutomaticReloadPaymentSummaryItem;
  v5 = [(PKPaymentSummaryItem *)&v9 copyWithZone:?];
  v6 = [(NSDecimalNumber *)self->_thresholdAmount copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  return v5;
}

- (PKAutomaticReloadPaymentSummaryItem)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKAutomaticReloadPaymentSummaryItem;
  v5 = [(PKPaymentSummaryItem *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"thresholdAmount"];
    [(PKAutomaticReloadPaymentSummaryItem *)v5 setThresholdAmount:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKAutomaticReloadPaymentSummaryItem;
  v4 = a3;
  [(PKPaymentSummaryItem *)&v6 encodeWithCoder:v4];
  v5 = [(PKAutomaticReloadPaymentSummaryItem *)self thresholdAmount:v6.receiver];
  [v4 encodeObject:v5 forKey:@"thresholdAmount"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_thresholdAmount];
  v7.receiver = self;
  v7.super_class = PKAutomaticReloadPaymentSummaryItem;
  v4 = [(PKPaymentSummaryItem *)&v7 hash];
  v5 = PKCombinedHash(v4, v3);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAutomaticReloadPaymentSummaryItem *)self isEqualToAutomaticReloadPaymentSummaryItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToAutomaticReloadPaymentSummaryItem:(id)a3
{
  v4 = a3;
  if ([(PKPaymentSummaryItem *)self isEqualToPaymentSummaryItem:v4])
  {
    thresholdAmount = self->_thresholdAmount;
    v6 = v4[7];
    if (thresholdAmount)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = thresholdAmount == v6;
    }

    else
    {
      v8 = [(NSDecimalNumber *)thresholdAmount isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PKAutomaticReloadPaymentSummaryItem)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = PKAutomaticReloadPaymentSummaryItem;
  v7 = [(PKPaymentSummaryItem *)&v10 initWithDictionary:v6 error:a4];
  if (v7)
  {
    v8 = [v6 PKDecimalNumberFromStringForKey:@"thresholdAmount"];
    if (v8)
    {
      objc_storeStrong(&v7->_thresholdAmount, v8);
    }
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v9.receiver = self;
  v9.super_class = PKAutomaticReloadPaymentSummaryItem;
  v3 = [(PKPaymentSummaryItem *)&v9 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

  thresholdAmount = self->_thresholdAmount;
  if (thresholdAmount)
  {
    v6 = [(NSDecimalNumber *)thresholdAmount stringValue];
    [v4 setObject:v6 forKeyedSubscript:@"thresholdAmount"];
  }

  v7 = [v4 copy];

  return v7;
}

@end
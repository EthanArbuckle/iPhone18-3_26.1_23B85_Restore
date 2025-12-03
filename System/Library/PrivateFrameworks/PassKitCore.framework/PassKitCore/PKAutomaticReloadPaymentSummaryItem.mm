@interface PKAutomaticReloadPaymentSummaryItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAutomaticReloadPaymentSummaryItem:(id)item;
- (PKAutomaticReloadPaymentSummaryItem)initWithCoder:(id)coder;
- (PKAutomaticReloadPaymentSummaryItem)initWithDictionary:(id)dictionary error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAutomaticReloadPaymentSummaryItem

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = PKAutomaticReloadPaymentSummaryItem;
  v5 = [(PKPaymentSummaryItem *)&v9 copyWithZone:?];
  v6 = [(NSDecimalNumber *)self->_thresholdAmount copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  return v5;
}

- (PKAutomaticReloadPaymentSummaryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKAutomaticReloadPaymentSummaryItem;
  v5 = [(PKPaymentSummaryItem *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"thresholdAmount"];
    [(PKAutomaticReloadPaymentSummaryItem *)v5 setThresholdAmount:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKAutomaticReloadPaymentSummaryItem;
  coderCopy = coder;
  [(PKPaymentSummaryItem *)&v6 encodeWithCoder:coderCopy];
  v5 = [(PKAutomaticReloadPaymentSummaryItem *)self thresholdAmount:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"thresholdAmount"];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAutomaticReloadPaymentSummaryItem *)self isEqualToAutomaticReloadPaymentSummaryItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToAutomaticReloadPaymentSummaryItem:(id)item
{
  itemCopy = item;
  if ([(PKPaymentSummaryItem *)self isEqualToPaymentSummaryItem:itemCopy])
  {
    thresholdAmount = self->_thresholdAmount;
    v6 = itemCopy[7];
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

- (PKAutomaticReloadPaymentSummaryItem)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PKAutomaticReloadPaymentSummaryItem;
  v7 = [(PKPaymentSummaryItem *)&v10 initWithDictionary:dictionaryCopy error:error];
  if (v7)
  {
    v8 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"thresholdAmount"];
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
  dictionaryRepresentation = [(PKPaymentSummaryItem *)&v9 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  thresholdAmount = self->_thresholdAmount;
  if (thresholdAmount)
  {
    stringValue = [(NSDecimalNumber *)thresholdAmount stringValue];
    [v4 setObject:stringValue forKeyedSubscript:@"thresholdAmount"];
  }

  v7 = [v4 copy];

  return v7;
}

@end
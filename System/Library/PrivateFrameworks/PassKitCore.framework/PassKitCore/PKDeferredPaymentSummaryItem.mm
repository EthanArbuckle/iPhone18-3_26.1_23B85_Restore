@interface PKDeferredPaymentSummaryItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeferredPaymentSummaryItem:(id)item;
- (PKDeferredPaymentSummaryItem)initWithCoder:(id)coder;
- (PKDeferredPaymentSummaryItem)initWithDictionary:(id)dictionary error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKDeferredPaymentSummaryItem

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = PKDeferredPaymentSummaryItem;
  v5 = [(PKPaymentSummaryItem *)&v9 copyWithZone:?];
  v6 = [(NSDate *)self->_deferredDate copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  return v5;
}

- (PKDeferredPaymentSummaryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKDeferredPaymentSummaryItem;
  v5 = [(PKPaymentSummaryItem *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deferredDate"];
    [(PKDeferredPaymentSummaryItem *)v5 setDeferredDate:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKDeferredPaymentSummaryItem;
  coderCopy = coder;
  [(PKPaymentSummaryItem *)&v6 encodeWithCoder:coderCopy];
  v5 = [(PKDeferredPaymentSummaryItem *)self deferredDate:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"deferredDate"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_deferredDate];
  v7.receiver = self;
  v7.super_class = PKDeferredPaymentSummaryItem;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDeferredPaymentSummaryItem *)self isEqualToDeferredPaymentSummaryItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToDeferredPaymentSummaryItem:(id)item
{
  itemCopy = item;
  if ([(PKPaymentSummaryItem *)self isEqualToPaymentSummaryItem:itemCopy])
  {
    deferredDate = self->_deferredDate;
    v6 = itemCopy[7];
    if (deferredDate)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = deferredDate == v6;
    }

    else
    {
      v8 = [(NSDate *)deferredDate isEqual:?];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PKDeferredPaymentSummaryItem)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PKDeferredPaymentSummaryItem;
  v7 = [(PKPaymentSummaryItem *)&v10 initWithDictionary:dictionaryCopy error:error];
  if (v7)
  {
    v8 = [dictionaryCopy PKDateForKey:@"deferredDate"];
    if (v8)
    {
      objc_storeStrong(&v7->_deferredDate, v8);
    }
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v9.receiver = self;
  v9.super_class = PKDeferredPaymentSummaryItem;
  dictionaryRepresentation = [(PKPaymentSummaryItem *)&v9 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  deferredDate = self->_deferredDate;
  if (deferredDate)
  {
    v6 = PKW3CDateStringFromDate(deferredDate);
    [v4 setObject:v6 forKeyedSubscript:@"deferredDate"];
  }

  v7 = [v4 copy];

  return v7;
}

@end
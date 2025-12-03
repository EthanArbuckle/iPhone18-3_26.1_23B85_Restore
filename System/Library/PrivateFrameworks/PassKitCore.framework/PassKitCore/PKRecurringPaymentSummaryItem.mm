@interface PKRecurringPaymentSummaryItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecurringPaymentSummaryItem:(id)item;
- (PKRecurringPaymentSummaryItem)init;
- (PKRecurringPaymentSummaryItem)initWithCoder:(id)coder;
- (PKRecurringPaymentSummaryItem)initWithDictionary:(id)dictionary error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKRecurringPaymentSummaryItem

- (PKRecurringPaymentSummaryItem)init
{
  v3.receiver = self;
  v3.super_class = PKRecurringPaymentSummaryItem;
  result = [(PKRecurringPaymentSummaryItem *)&v3 init];
  if (result)
  {
    result->_intervalUnit = 8;
    result->_intervalCount = 1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = PKRecurringPaymentSummaryItem;
  v5 = [(PKPaymentSummaryItem *)&v11 copyWithZone:?];
  v6 = [(NSDate *)self->_startDate copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSDate *)self->_endDate copyWithZone:zone];
  v9 = v5[10];
  v5[10] = v8;

  v5[8] = self->_intervalUnit;
  v5[9] = self->_intervalCount;
  return v5;
}

- (PKRecurringPaymentSummaryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKRecurringPaymentSummaryItem;
  v5 = [(PKPaymentSummaryItem *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(PKRecurringPaymentSummaryItem *)v5 setStartDate:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(PKRecurringPaymentSummaryItem *)v5 setEndDate:v7];

    -[PKRecurringPaymentSummaryItem setIntervalUnit:](v5, "setIntervalUnit:", [coderCopy decodeIntegerForKey:@"intervalUnit"]);
    -[PKRecurringPaymentSummaryItem setIntervalCount:](v5, "setIntervalCount:", [coderCopy decodeIntegerForKey:@"intervalCount"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = PKRecurringPaymentSummaryItem;
  coderCopy = coder;
  [(PKPaymentSummaryItem *)&v7 encodeWithCoder:coderCopy];
  v5 = [(PKRecurringPaymentSummaryItem *)self startDate:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"startDate"];

  endDate = [(PKRecurringPaymentSummaryItem *)self endDate];
  [coderCopy encodeObject:endDate forKey:@"endDate"];

  [coderCopy encodeInteger:-[PKRecurringPaymentSummaryItem intervalUnit](self forKey:{"intervalUnit"), @"intervalUnit"}];
  [coderCopy encodeInteger:-[PKRecurringPaymentSummaryItem intervalCount](self forKey:{"intervalCount"), @"intervalCount"}];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_startDate];
  [v3 safelyAddObject:self->_endDate];
  v9.receiver = self;
  v9.super_class = PKRecurringPaymentSummaryItem;
  v4 = [(PKPaymentSummaryItem *)&v9 hash];
  v5 = PKCombinedHash(v4, v3);
  v6 = self->_intervalUnit - v5 + 32 * v5;
  v7 = self->_intervalCount - v6 + 32 * v6;

  return v7;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRecurringPaymentSummaryItem *)self isEqualToRecurringPaymentSummaryItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToRecurringPaymentSummaryItem:(id)item
{
  itemCopy = item;
  if (![(PKPaymentSummaryItem *)self isEqualToPaymentSummaryItem:itemCopy])
  {
    goto LABEL_20;
  }

  startDate = self->_startDate;
  v6 = itemCopy[7];
  if (startDate)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (startDate != v6)
    {
      goto LABEL_20;
    }
  }

  else if (([(NSDate *)startDate isEqual:?]& 1) == 0)
  {
    goto LABEL_20;
  }

  endDate = self->_endDate;
  v9 = itemCopy[10];
  if (endDate)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    if (([(NSDate *)endDate isEqual:?]& 1) != 0)
    {
      goto LABEL_18;
    }

LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  if (endDate != v9)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (self->_intervalUnit != itemCopy[8])
  {
    goto LABEL_20;
  }

  v11 = self->_intervalCount == itemCopy[9];
LABEL_21:

  return v11;
}

- (PKRecurringPaymentSummaryItem)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = PKRecurringPaymentSummaryItem;
  v7 = [(PKPaymentSummaryItem *)&v17 initWithDictionary:dictionaryCopy error:error];
  if (v7)
  {
    v8 = [dictionaryCopy PKDateForKey:@"startDate"];
    startDate = v7->_startDate;
    v7->_startDate = v8;

    v10 = [dictionaryCopy PKDateForKey:@"endDate"];
    endDate = v7->_endDate;
    v7->_endDate = v10;

    v12 = [dictionaryCopy PKIntegerForKey:@"intervalCount"];
    if (v12 >= 1)
    {
      v7->_intervalCount = v12;
    }

    v13 = [dictionaryCopy PKStringForKey:@"intervalUnit"];
    v14 = v13;
    if (v13)
    {
      v15 = PKCalendarUnitForString(v13);
      if (v15)
      {
        v7->_intervalUnit = v15;
      }
    }
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v13.receiver = self;
  v13.super_class = PKRecurringPaymentSummaryItem;
  dictionaryRepresentation = [(PKPaymentSummaryItem *)&v13 dictionaryRepresentation];
  v4 = [dictionaryRepresentation mutableCopy];

  startDate = self->_startDate;
  if (startDate)
  {
    v6 = PKW3CDateStringFromDate(startDate);
    [v4 setObject:v6 forKeyedSubscript:@"startDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v8 = PKW3CDateStringFromDate(endDate);
    [v4 setObject:v8 forKeyedSubscript:@"endDate"];
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_intervalCount];
  [v4 setObject:v9 forKeyedSubscript:@"intervalCount"];

  v10 = PKCalendarUnitString(self->_intervalUnit);
  if (v10)
  {
    [v4 setObject:v10 forKeyedSubscript:@"intervalUnit"];
  }

  v11 = [v4 copy];

  return v11;
}

@end
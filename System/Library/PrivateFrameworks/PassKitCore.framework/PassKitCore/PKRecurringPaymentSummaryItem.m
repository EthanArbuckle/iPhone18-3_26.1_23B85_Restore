@interface PKRecurringPaymentSummaryItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecurringPaymentSummaryItem:(id)a3;
- (PKRecurringPaymentSummaryItem)init;
- (PKRecurringPaymentSummaryItem)initWithCoder:(id)a3;
- (PKRecurringPaymentSummaryItem)initWithDictionary:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = PKRecurringPaymentSummaryItem;
  v5 = [(PKPaymentSummaryItem *)&v11 copyWithZone:?];
  v6 = [(NSDate *)self->_startDate copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSDate *)self->_endDate copyWithZone:a3];
  v9 = v5[10];
  v5[10] = v8;

  v5[8] = self->_intervalUnit;
  v5[9] = self->_intervalCount;
  return v5;
}

- (PKRecurringPaymentSummaryItem)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKRecurringPaymentSummaryItem;
  v5 = [(PKPaymentSummaryItem *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    [(PKRecurringPaymentSummaryItem *)v5 setStartDate:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    [(PKRecurringPaymentSummaryItem *)v5 setEndDate:v7];

    -[PKRecurringPaymentSummaryItem setIntervalUnit:](v5, "setIntervalUnit:", [v4 decodeIntegerForKey:@"intervalUnit"]);
    -[PKRecurringPaymentSummaryItem setIntervalCount:](v5, "setIntervalCount:", [v4 decodeIntegerForKey:@"intervalCount"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = PKRecurringPaymentSummaryItem;
  v4 = a3;
  [(PKPaymentSummaryItem *)&v7 encodeWithCoder:v4];
  v5 = [(PKRecurringPaymentSummaryItem *)self startDate:v7.receiver];
  [v4 encodeObject:v5 forKey:@"startDate"];

  v6 = [(PKRecurringPaymentSummaryItem *)self endDate];
  [v4 encodeObject:v6 forKey:@"endDate"];

  [v4 encodeInteger:-[PKRecurringPaymentSummaryItem intervalUnit](self forKey:{"intervalUnit"), @"intervalUnit"}];
  [v4 encodeInteger:-[PKRecurringPaymentSummaryItem intervalCount](self forKey:{"intervalCount"), @"intervalCount"}];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKRecurringPaymentSummaryItem *)self isEqualToRecurringPaymentSummaryItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToRecurringPaymentSummaryItem:(id)a3
{
  v4 = a3;
  if (![(PKPaymentSummaryItem *)self isEqualToPaymentSummaryItem:v4])
  {
    goto LABEL_20;
  }

  startDate = self->_startDate;
  v6 = v4[7];
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
  v9 = v4[10];
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
  if (self->_intervalUnit != v4[8])
  {
    goto LABEL_20;
  }

  v11 = self->_intervalCount == v4[9];
LABEL_21:

  return v11;
}

- (PKRecurringPaymentSummaryItem)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = self;
  v17.super_class = PKRecurringPaymentSummaryItem;
  v7 = [(PKPaymentSummaryItem *)&v17 initWithDictionary:v6 error:a4];
  if (v7)
  {
    v8 = [v6 PKDateForKey:@"startDate"];
    startDate = v7->_startDate;
    v7->_startDate = v8;

    v10 = [v6 PKDateForKey:@"endDate"];
    endDate = v7->_endDate;
    v7->_endDate = v10;

    v12 = [v6 PKIntegerForKey:@"intervalCount"];
    if (v12 >= 1)
    {
      v7->_intervalCount = v12;
    }

    v13 = [v6 PKStringForKey:@"intervalUnit"];
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
  v3 = [(PKPaymentSummaryItem *)&v13 dictionaryRepresentation];
  v4 = [v3 mutableCopy];

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
@interface PKPaymentSummaryItem
+ (PKPaymentSummaryItem)itemWithProtobuf:(id)a3;
+ (PKPaymentSummaryItem)summaryItemWithLabel:(NSString *)label amount:(NSDecimalNumber *)amount;
+ (PKPaymentSummaryItem)summaryItemWithLabel:(NSString *)label amount:(NSDecimalNumber *)amount type:(PKPaymentSummaryItemType)type;
+ (id)_automaticReloadPaymentSummaryItemWithProtobuf:(id)a3;
+ (id)_deferredSummaryItemWithProtobuf:(id)a3;
+ (id)_recurringSummaryItemWithProtobuf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPaymentSummaryItem:(id)a3;
- (PKPaymentSummaryItem)initWithCoder:(id)a3;
- (PKPaymentSummaryItem)initWithDictionary:(id)a3 error:(id *)a4;
- (id)_protobufAutomaticReloadPaymentSummaryItemForItem:(id)a3;
- (id)_protobufDeferredSummaryItemForItem:(id)a3;
- (id)_protobufRecurringSummaryItemForItem:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)summaryItemProtobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAmount:(NSDecimalNumber *)amount;
@end

@implementation PKPaymentSummaryItem

+ (PKPaymentSummaryItem)itemWithProtobuf:(id)a3
{
  v4 = a3;
  if ([v4 hasRecurringPaymentSummaryItem])
  {
    v5 = [v4 recurringPaymentSummaryItem];
    v6 = [a1 _recurringSummaryItemWithProtobuf:v5];
LABEL_9:
    v7 = v6;

    goto LABEL_10;
  }

  if ([v4 hasDeferredPaymentSummaryItem])
  {
    v5 = [v4 deferredPaymentSummaryItem];
    v6 = [a1 _deferredSummaryItemWithProtobuf:v5];
    goto LABEL_9;
  }

  if ([v4 hasShippingMethodSummaryItem])
  {
    v5 = [v4 shippingMethodSummaryItem];
    v6 = [PKShippingMethod shippingMethodWithProtobuf:v5];
    goto LABEL_9;
  }

  if ([v4 hasAutomaticReloadPaymentSummaryItem])
  {
    v5 = [v4 automaticReloadPaymentSummaryItem];
    v6 = [(PKPaymentSummaryItem *)PKAutomaticReloadPaymentSummaryItem _automaticReloadPaymentSummaryItemWithProtobuf:v5];
    goto LABEL_9;
  }

  if ([v4 hasInstantFundsOutFeeSummaryItem])
  {
    v13 = PKInstantFundsOutFeeSummaryItem;
  }

  else if ([v4 hasDisbursementSummaryItem])
  {
    v13 = PKDisbursementSummaryItem;
  }

  else
  {
    v13 = PKPaymentSummaryItem;
  }

  v7 = objc_alloc_init(v13);
LABEL_10:
  if ([v4 hasDecimalAmount])
  {
    v8 = [v4 decimalAmount];
    v9 = PKProtoSupportDecimalNumberFromProtobuf(v8);
LABEL_14:
    v10 = v9;
    [v7 setAmount:v9];

    goto LABEL_16;
  }

  if ([v4 hasCustomPrecisionAmount])
  {
    v8 = [v4 customPrecisionAmount];
    v9 = PKLegacyCurrencyStorageIntegerToDecimal([v8 amount], 1);
    goto LABEL_14;
  }

  v8 = PKLegacyCurrencyStorageIntegerToDecimal([v4 amount], 0);
  [v7 setAmount:v8];
LABEL_16:

  v11 = [v4 label];
  [v7 setLabel:v11];

  [v7 setType:{objc_msgSend(v4, "type")}];

  return v7;
}

- (id)summaryItemProtobuf
{
  v3 = objc_alloc_init(PKProtobufPaymentSummaryItem);
  v4 = [(PKPaymentSummaryItem *)self amount];
  [(PKProtobufPaymentSummaryItem *)v3 setAmount:PKCurrencyDecimalToLegacyStorageInteger(v4, 0)];

  v5 = [(PKPaymentSummaryItem *)self amount];
  v6 = DecimalToCustomPrecisionProtobuf(v5);
  [(PKProtobufPaymentSummaryItem *)v3 setCustomPrecisionAmount:v6];

  v7 = [(PKPaymentSummaryItem *)self amount];
  v8 = PKProtoSupportProtoDecimalNumberFromDecimalNumber(v7);
  [(PKProtobufPaymentSummaryItem *)v3 setDecimalAmount:v8];

  v9 = [(PKPaymentSummaryItem *)self label];
  [(PKProtobufPaymentSummaryItem *)v3 setLabel:v9];

  [(PKProtobufPaymentSummaryItem *)v3 setType:[(PKPaymentSummaryItem *)self type]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [(PKPaymentSummaryItem *)self _protobufRecurringSummaryItemForItem:self];
    [(PKProtobufPaymentSummaryItem *)v3 setRecurringPaymentSummaryItem:v10];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [(PKPaymentSummaryItem *)self _protobufDeferredSummaryItemForItem:self];
      [(PKProtobufPaymentSummaryItem *)v3 setDeferredPaymentSummaryItem:v10];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(PKPaymentSummaryItem *)self shippingMethodProtobuf];
        [(PKProtobufPaymentSummaryItem *)v3 setShippingMethodSummaryItem:v10];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [(PKPaymentSummaryItem *)self _protobufAutomaticReloadPaymentSummaryItemForItem:self];
          [(PKProtobufPaymentSummaryItem *)v3 setAutomaticReloadPaymentSummaryItem:v10];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = objc_alloc_init(PKProtobufInstantFundsOutFeeSummaryItem);
            [(PKProtobufPaymentSummaryItem *)v3 setInstantFundsOutFeeSummaryItem:v10];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_14;
            }

            v10 = objc_alloc_init(PKProtobufDisbursementSummaryItem);
            [(PKProtobufPaymentSummaryItem *)v3 setDisbursementSummaryItem:v10];
          }
        }
      }
    }
  }

LABEL_14:

  return v3;
}

+ (id)_recurringSummaryItemWithProtobuf:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKRecurringPaymentSummaryItem);
  if ([v3 hasStartDate])
  {
    v5 = MEMORY[0x1E695DF00];
    [v3 startDate];
    v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
    [(PKRecurringPaymentSummaryItem *)v4 setStartDate:v6];
  }

  if ([v3 hasEndDate])
  {
    v7 = MEMORY[0x1E695DF00];
    [v3 endDate];
    v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
    [(PKRecurringPaymentSummaryItem *)v4 setEndDate:v8];
  }

  -[PKRecurringPaymentSummaryItem setIntervalUnit:](v4, "setIntervalUnit:", [v3 intervalUnit]);
  -[PKRecurringPaymentSummaryItem setIntervalCount:](v4, "setIntervalCount:", [v3 intervalCount]);

  return v4;
}

+ (id)_deferredSummaryItemWithProtobuf:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKDeferredPaymentSummaryItem);
  v5 = MEMORY[0x1E695DF00];
  [v3 deferredDate];
  v7 = v6;

  v8 = [v5 dateWithTimeIntervalSinceReferenceDate:v7];
  [(PKDeferredPaymentSummaryItem *)v4 setDeferredDate:v8];

  return v4;
}

+ (id)_automaticReloadPaymentSummaryItemWithProtobuf:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKAutomaticReloadPaymentSummaryItem);
  if ([v3 hasThresholdDecimalAmount])
  {
    v5 = [v3 thresholdDecimalAmount];

    PKProtoSupportDecimalNumberFromProtobuf(v5);
  }

  else
  {
    v5 = [v3 thresholdAmount];

    PKLegacyCurrencyStorageIntegerToDecimal([v5 amount], 1);
  }
  v6 = ;
  [(PKAutomaticReloadPaymentSummaryItem *)v4 setThresholdAmount:v6];

  return v4;
}

- (id)_protobufRecurringSummaryItemForItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKProtobufRecurringPaymentSummaryItem);
  v5 = [v3 startDate];

  if (v5)
  {
    v6 = [v3 startDate];
    [v6 timeIntervalSinceReferenceDate];
    [(PKProtobufRecurringPaymentSummaryItem *)v4 setStartDate:?];
  }

  v7 = [v3 endDate];

  if (v7)
  {
    v8 = [v3 endDate];
    [v8 timeIntervalSinceReferenceDate];
    [(PKProtobufRecurringPaymentSummaryItem *)v4 setEndDate:?];
  }

  -[PKProtobufRecurringPaymentSummaryItem setIntervalUnit:](v4, "setIntervalUnit:", [v3 intervalUnit]);
  -[PKProtobufRecurringPaymentSummaryItem setIntervalCount:](v4, "setIntervalCount:", [v3 intervalCount]);

  return v4;
}

- (id)_protobufDeferredSummaryItemForItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKProtobufDeferredPaymentSummaryItem);
  v5 = [v3 deferredDate];

  [v5 timeIntervalSinceReferenceDate];
  [(PKProtobufDeferredPaymentSummaryItem *)v4 setDeferredDate:?];

  return v4;
}

- (id)_protobufAutomaticReloadPaymentSummaryItemForItem:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKProtobufAutomaticReloadPaymentSummaryItem);
  v5 = [v3 thresholdAmount];
  v6 = DecimalToCustomPrecisionProtobuf(v5);
  [(PKProtobufAutomaticReloadPaymentSummaryItem *)v4 setThresholdAmount:v6];

  v7 = [v3 thresholdAmount];

  v8 = PKProtoSupportProtoDecimalNumberFromDecimalNumber(v7);
  [(PKProtobufAutomaticReloadPaymentSummaryItem *)v4 setThresholdDecimalAmount:v8];

  return v4;
}

+ (PKPaymentSummaryItem)summaryItemWithLabel:(NSString *)label amount:(NSDecimalNumber *)amount
{
  v5 = amount;
  v6 = label;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setLabel:v6];

  [v7 setAmount:v5];

  return v7;
}

+ (PKPaymentSummaryItem)summaryItemWithLabel:(NSString *)label amount:(NSDecimalNumber *)amount type:(PKPaymentSummaryItemType)type
{
  v7 = amount;
  v8 = label;
  v9 = [objc_opt_class() summaryItemWithLabel:v8 amount:v7];

  [v9 setType:type];

  return v9;
}

- (void)setAmount:(NSDecimalNumber *)amount
{
  v4 = PKCurrencyDecimalAmountRound(amount);
  v5 = self->_amount;
  self->_amount = v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSString *)self->_label copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSDecimalNumber *)self->_amount copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_localizedTitle copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_localizedAmount copyWithZone:a3];
  v13 = v5[6];
  v5[6] = v12;

  *(v5 + 8) = self->_useDarkColor;
  *(v5 + 9) = self->_useLargeFont;
  return v5;
}

- (PKPaymentSummaryItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPaymentSummaryItem;
  v5 = [(PKPaymentSummaryItem *)&v11 init];
  if (v5)
  {
    v6 = PKCurrencyStorageIntegerToCurrencyDecimalWithPrecision([v4 decodeInt64ForKey:@"amount"], 4);
    [(PKPaymentSummaryItem *)v5 setAmount:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    [(PKPaymentSummaryItem *)v5 setLabel:v7];

    -[PKPaymentSummaryItem setType:](v5, "setType:", [v4 decodeIntegerForKey:@"type"]);
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    [(PKPaymentSummaryItem *)v5 setLocalizedTitle:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedAmount"];
    [(PKPaymentSummaryItem *)v5 setLocalizedAmount:v9];

    -[PKPaymentSummaryItem setUseDarkColor:](v5, "setUseDarkColor:", [v4 decodeBoolForKey:@"useDarkColor"]);
    -[PKPaymentSummaryItem setUseLargeFont:](v5, "setUseLargeFont:", [v4 decodeBoolForKey:@"useLargeFont"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  amount = self->_amount;
  v6 = a3;
  [v6 encodeInt64:PKCurrencyDecimalToStorageIntegerWithPrecision(amount forKey:{4), @"amount"}];
  v5 = [(PKPaymentSummaryItem *)self label];
  [v6 encodeObject:v5 forKey:@"label"];

  [v6 encodeInteger:self->_type forKey:@"type"];
  [v6 encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [v6 encodeObject:self->_localizedAmount forKey:@"localizedAmount"];
  [v6 encodeBool:self->_useDarkColor forKey:@"useDarkColor"];
  [v6 encodeBool:self->_useLargeFont forKey:@"useLargeFont"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_label];
  [v3 safelyAddObject:self->_amount];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentSummaryItem *)self isEqualToPaymentSummaryItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentSummaryItem:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_type != v4[4])
  {
    goto LABEL_12;
  }

  v6 = v4[2];
  v7 = self->_label;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {

LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  amount = self->_amount;
  v12 = v5[3];
  if (amount && v12)
  {
    v13 = [(NSDecimalNumber *)amount isEqual:?];
  }

  else
  {
    v13 = amount == v12;
  }

LABEL_13:

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PKPaymentSummaryItem *)self label];
  v5 = v4;
  if (v4)
  {
    [v3 appendFormat:@"label: %@; ", v4];
  }

  v6 = [(PKPaymentSummaryItem *)self amount];
  v7 = v6;
  if (v6)
  {
    [v3 appendFormat:@"amount: %@; ", v6];
  }

  if (self->_type == 1)
  {
    v8 = @"Pending";
  }

  else
  {
    v8 = @"Final";
  }

  [v3 appendFormat:@"type: %@; ", v8];
  [v3 appendFormat:@">"];
  v9 = [v3 copy];

  return v9;
}

- (PKPaymentSummaryItem)initWithDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [(PKPaymentSummaryItem *)self init];
  if (v6)
  {
    v7 = [v5 PKStringForKey:@"amount"];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AB90] decimalNumberWithString:v7];
      amount = v6->_amount;
      v6->_amount = v8;
    }

    v10 = [v5 PKStringForKey:@"label"];
    label = v6->_label;
    v6->_label = v10;

    v12 = [v5 PKStringForKey:@"type"];
    if ([v12 isEqualToString:@"Pending"])
    {
      v6->_type = 1;
    }
  }

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  if (self->_type == 1)
  {
    v5 = @"Pending";
  }

  else
  {
    v5 = @"Final";
  }

  [v3 setObject:v5 forKeyedSubscript:@"type"];
  label = self->_label;
  if (label)
  {
    [v4 setObject:label forKeyedSubscript:@"label"];
  }

  amount = self->_amount;
  if (amount)
  {
    v8 = [(NSDecimalNumber *)amount stringValue];
    [v4 setObject:v8 forKeyedSubscript:@"amount"];
  }

  v9 = [v4 copy];

  return v9;
}

@end
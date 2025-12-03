@interface PKPaymentSummaryItem
+ (PKPaymentSummaryItem)itemWithProtobuf:(id)protobuf;
+ (PKPaymentSummaryItem)summaryItemWithLabel:(NSString *)label amount:(NSDecimalNumber *)amount;
+ (PKPaymentSummaryItem)summaryItemWithLabel:(NSString *)label amount:(NSDecimalNumber *)amount type:(PKPaymentSummaryItemType)type;
+ (id)_automaticReloadPaymentSummaryItemWithProtobuf:(id)protobuf;
+ (id)_deferredSummaryItemWithProtobuf:(id)protobuf;
+ (id)_recurringSummaryItemWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPaymentSummaryItem:(id)item;
- (PKPaymentSummaryItem)initWithCoder:(id)coder;
- (PKPaymentSummaryItem)initWithDictionary:(id)dictionary error:(id *)error;
- (id)_protobufAutomaticReloadPaymentSummaryItemForItem:(id)item;
- (id)_protobufDeferredSummaryItemForItem:(id)item;
- (id)_protobufRecurringSummaryItemForItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)summaryItemProtobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAmount:(NSDecimalNumber *)amount;
@end

@implementation PKPaymentSummaryItem

+ (PKPaymentSummaryItem)itemWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if ([protobufCopy hasRecurringPaymentSummaryItem])
  {
    recurringPaymentSummaryItem = [protobufCopy recurringPaymentSummaryItem];
    v6 = [self _recurringSummaryItemWithProtobuf:recurringPaymentSummaryItem];
LABEL_9:
    v7 = v6;

    goto LABEL_10;
  }

  if ([protobufCopy hasDeferredPaymentSummaryItem])
  {
    recurringPaymentSummaryItem = [protobufCopy deferredPaymentSummaryItem];
    v6 = [self _deferredSummaryItemWithProtobuf:recurringPaymentSummaryItem];
    goto LABEL_9;
  }

  if ([protobufCopy hasShippingMethodSummaryItem])
  {
    recurringPaymentSummaryItem = [protobufCopy shippingMethodSummaryItem];
    v6 = [PKShippingMethod shippingMethodWithProtobuf:recurringPaymentSummaryItem];
    goto LABEL_9;
  }

  if ([protobufCopy hasAutomaticReloadPaymentSummaryItem])
  {
    recurringPaymentSummaryItem = [protobufCopy automaticReloadPaymentSummaryItem];
    v6 = [(PKPaymentSummaryItem *)PKAutomaticReloadPaymentSummaryItem _automaticReloadPaymentSummaryItemWithProtobuf:recurringPaymentSummaryItem];
    goto LABEL_9;
  }

  if ([protobufCopy hasInstantFundsOutFeeSummaryItem])
  {
    v13 = PKInstantFundsOutFeeSummaryItem;
  }

  else if ([protobufCopy hasDisbursementSummaryItem])
  {
    v13 = PKDisbursementSummaryItem;
  }

  else
  {
    v13 = PKPaymentSummaryItem;
  }

  v7 = objc_alloc_init(v13);
LABEL_10:
  if ([protobufCopy hasDecimalAmount])
  {
    decimalAmount = [protobufCopy decimalAmount];
    v9 = PKProtoSupportDecimalNumberFromProtobuf(decimalAmount);
LABEL_14:
    v10 = v9;
    [v7 setAmount:v9];

    goto LABEL_16;
  }

  if ([protobufCopy hasCustomPrecisionAmount])
  {
    decimalAmount = [protobufCopy customPrecisionAmount];
    v9 = PKLegacyCurrencyStorageIntegerToDecimal([decimalAmount amount], 1);
    goto LABEL_14;
  }

  decimalAmount = PKLegacyCurrencyStorageIntegerToDecimal([protobufCopy amount], 0);
  [v7 setAmount:decimalAmount];
LABEL_16:

  label = [protobufCopy label];
  [v7 setLabel:label];

  [v7 setType:{objc_msgSend(protobufCopy, "type")}];

  return v7;
}

- (id)summaryItemProtobuf
{
  v3 = objc_alloc_init(PKProtobufPaymentSummaryItem);
  amount = [(PKPaymentSummaryItem *)self amount];
  [(PKProtobufPaymentSummaryItem *)v3 setAmount:PKCurrencyDecimalToLegacyStorageInteger(amount, 0)];

  amount2 = [(PKPaymentSummaryItem *)self amount];
  v6 = DecimalToCustomPrecisionProtobuf(amount2);
  [(PKProtobufPaymentSummaryItem *)v3 setCustomPrecisionAmount:v6];

  amount3 = [(PKPaymentSummaryItem *)self amount];
  v8 = PKProtoSupportProtoDecimalNumberFromDecimalNumber(amount3);
  [(PKProtobufPaymentSummaryItem *)v3 setDecimalAmount:v8];

  label = [(PKPaymentSummaryItem *)self label];
  [(PKProtobufPaymentSummaryItem *)v3 setLabel:label];

  [(PKProtobufPaymentSummaryItem *)v3 setType:[(PKPaymentSummaryItem *)self type]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shippingMethodProtobuf = [(PKPaymentSummaryItem *)self _protobufRecurringSummaryItemForItem:self];
    [(PKProtobufPaymentSummaryItem *)v3 setRecurringPaymentSummaryItem:shippingMethodProtobuf];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      shippingMethodProtobuf = [(PKPaymentSummaryItem *)self _protobufDeferredSummaryItemForItem:self];
      [(PKProtobufPaymentSummaryItem *)v3 setDeferredPaymentSummaryItem:shippingMethodProtobuf];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        shippingMethodProtobuf = [(PKPaymentSummaryItem *)self shippingMethodProtobuf];
        [(PKProtobufPaymentSummaryItem *)v3 setShippingMethodSummaryItem:shippingMethodProtobuf];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          shippingMethodProtobuf = [(PKPaymentSummaryItem *)self _protobufAutomaticReloadPaymentSummaryItemForItem:self];
          [(PKProtobufPaymentSummaryItem *)v3 setAutomaticReloadPaymentSummaryItem:shippingMethodProtobuf];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            shippingMethodProtobuf = objc_alloc_init(PKProtobufInstantFundsOutFeeSummaryItem);
            [(PKProtobufPaymentSummaryItem *)v3 setInstantFundsOutFeeSummaryItem:shippingMethodProtobuf];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_14;
            }

            shippingMethodProtobuf = objc_alloc_init(PKProtobufDisbursementSummaryItem);
            [(PKProtobufPaymentSummaryItem *)v3 setDisbursementSummaryItem:shippingMethodProtobuf];
          }
        }
      }
    }
  }

LABEL_14:

  return v3;
}

+ (id)_recurringSummaryItemWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKRecurringPaymentSummaryItem);
  if ([protobufCopy hasStartDate])
  {
    v5 = MEMORY[0x1E695DF00];
    [protobufCopy startDate];
    v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
    [(PKRecurringPaymentSummaryItem *)v4 setStartDate:v6];
  }

  if ([protobufCopy hasEndDate])
  {
    v7 = MEMORY[0x1E695DF00];
    [protobufCopy endDate];
    v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
    [(PKRecurringPaymentSummaryItem *)v4 setEndDate:v8];
  }

  -[PKRecurringPaymentSummaryItem setIntervalUnit:](v4, "setIntervalUnit:", [protobufCopy intervalUnit]);
  -[PKRecurringPaymentSummaryItem setIntervalCount:](v4, "setIntervalCount:", [protobufCopy intervalCount]);

  return v4;
}

+ (id)_deferredSummaryItemWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKDeferredPaymentSummaryItem);
  v5 = MEMORY[0x1E695DF00];
  [protobufCopy deferredDate];
  v7 = v6;

  v8 = [v5 dateWithTimeIntervalSinceReferenceDate:v7];
  [(PKDeferredPaymentSummaryItem *)v4 setDeferredDate:v8];

  return v4;
}

+ (id)_automaticReloadPaymentSummaryItemWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKAutomaticReloadPaymentSummaryItem);
  if ([protobufCopy hasThresholdDecimalAmount])
  {
    thresholdDecimalAmount = [protobufCopy thresholdDecimalAmount];

    PKProtoSupportDecimalNumberFromProtobuf(thresholdDecimalAmount);
  }

  else
  {
    thresholdDecimalAmount = [protobufCopy thresholdAmount];

    PKLegacyCurrencyStorageIntegerToDecimal([thresholdDecimalAmount amount], 1);
  }
  v6 = ;
  [(PKAutomaticReloadPaymentSummaryItem *)v4 setThresholdAmount:v6];

  return v4;
}

- (id)_protobufRecurringSummaryItemForItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(PKProtobufRecurringPaymentSummaryItem);
  startDate = [itemCopy startDate];

  if (startDate)
  {
    startDate2 = [itemCopy startDate];
    [startDate2 timeIntervalSinceReferenceDate];
    [(PKProtobufRecurringPaymentSummaryItem *)v4 setStartDate:?];
  }

  endDate = [itemCopy endDate];

  if (endDate)
  {
    endDate2 = [itemCopy endDate];
    [endDate2 timeIntervalSinceReferenceDate];
    [(PKProtobufRecurringPaymentSummaryItem *)v4 setEndDate:?];
  }

  -[PKProtobufRecurringPaymentSummaryItem setIntervalUnit:](v4, "setIntervalUnit:", [itemCopy intervalUnit]);
  -[PKProtobufRecurringPaymentSummaryItem setIntervalCount:](v4, "setIntervalCount:", [itemCopy intervalCount]);

  return v4;
}

- (id)_protobufDeferredSummaryItemForItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(PKProtobufDeferredPaymentSummaryItem);
  deferredDate = [itemCopy deferredDate];

  [deferredDate timeIntervalSinceReferenceDate];
  [(PKProtobufDeferredPaymentSummaryItem *)v4 setDeferredDate:?];

  return v4;
}

- (id)_protobufAutomaticReloadPaymentSummaryItemForItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(PKProtobufAutomaticReloadPaymentSummaryItem);
  thresholdAmount = [itemCopy thresholdAmount];
  v6 = DecimalToCustomPrecisionProtobuf(thresholdAmount);
  [(PKProtobufAutomaticReloadPaymentSummaryItem *)v4 setThresholdAmount:v6];

  thresholdAmount2 = [itemCopy thresholdAmount];

  v8 = PKProtoSupportProtoDecimalNumberFromDecimalNumber(thresholdAmount2);
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(NSString *)self->_label copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSDecimalNumber *)self->_amount copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_localizedTitle copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSString *)self->_localizedAmount copyWithZone:zone];
  v13 = v5[6];
  v5[6] = v12;

  *(v5 + 8) = self->_useDarkColor;
  *(v5 + 9) = self->_useLargeFont;
  return v5;
}

- (PKPaymentSummaryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKPaymentSummaryItem;
  v5 = [(PKPaymentSummaryItem *)&v11 init];
  if (v5)
  {
    v6 = PKCurrencyStorageIntegerToCurrencyDecimalWithPrecision([coderCopy decodeInt64ForKey:@"amount"], 4);
    [(PKPaymentSummaryItem *)v5 setAmount:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    [(PKPaymentSummaryItem *)v5 setLabel:v7];

    -[PKPaymentSummaryItem setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedTitle"];
    [(PKPaymentSummaryItem *)v5 setLocalizedTitle:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedAmount"];
    [(PKPaymentSummaryItem *)v5 setLocalizedAmount:v9];

    -[PKPaymentSummaryItem setUseDarkColor:](v5, "setUseDarkColor:", [coderCopy decodeBoolForKey:@"useDarkColor"]);
    -[PKPaymentSummaryItem setUseLargeFont:](v5, "setUseLargeFont:", [coderCopy decodeBoolForKey:@"useLargeFont"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  amount = self->_amount;
  coderCopy = coder;
  [coderCopy encodeInt64:PKCurrencyDecimalToStorageIntegerWithPrecision(amount forKey:{4), @"amount"}];
  label = [(PKPaymentSummaryItem *)self label];
  [coderCopy encodeObject:label forKey:@"label"];

  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_localizedTitle forKey:@"localizedTitle"];
  [coderCopy encodeObject:self->_localizedAmount forKey:@"localizedAmount"];
  [coderCopy encodeBool:self->_useDarkColor forKey:@"useDarkColor"];
  [coderCopy encodeBool:self->_useLargeFont forKey:@"useLargeFont"];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentSummaryItem *)self isEqualToPaymentSummaryItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentSummaryItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (self->_type != itemCopy[4])
  {
    goto LABEL_12;
  }

  v6 = itemCopy[2];
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
  label = [(PKPaymentSummaryItem *)self label];
  v5 = label;
  if (label)
  {
    [v3 appendFormat:@"label: %@; ", label];
  }

  amount = [(PKPaymentSummaryItem *)self amount];
  v7 = amount;
  if (amount)
  {
    [v3 appendFormat:@"amount: %@; ", amount];
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

- (PKPaymentSummaryItem)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v6 = [(PKPaymentSummaryItem *)self init];
  if (v6)
  {
    v7 = [dictionaryCopy PKStringForKey:@"amount"];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AB90] decimalNumberWithString:v7];
      amount = v6->_amount;
      v6->_amount = v8;
    }

    v10 = [dictionaryCopy PKStringForKey:@"label"];
    label = v6->_label;
    v6->_label = v10;

    v12 = [dictionaryCopy PKStringForKey:@"type"];
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
    stringValue = [(NSDecimalNumber *)amount stringValue];
    [v4 setObject:stringValue forKeyedSubscript:@"amount"];
  }

  v9 = [v4 copy];

  return v9;
}

@end
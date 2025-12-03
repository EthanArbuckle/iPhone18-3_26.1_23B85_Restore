@interface PKShippingMethod
+ (PKShippingMethod)shippingMethodWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToShippingMethod:(id)method;
- (PKShippingMethod)initWithCoder:(id)coder;
- (PKShippingMethod)initWithDictionary:(id)dictionary error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)shippingMethodProtobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKShippingMethod

+ (PKShippingMethod)shippingMethodWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKShippingMethod);
  if ([protobufCopy hasDecimalAmount])
  {
    decimalAmount = [protobufCopy decimalAmount];
    v6 = PKProtoSupportDecimalNumberFromProtobuf(decimalAmount);
LABEL_5:
    v7 = v6;
    [(PKPaymentSummaryItem *)v4 setAmount:v6];

    goto LABEL_7;
  }

  if ([protobufCopy hasCustomPrecisionAmount])
  {
    decimalAmount = [protobufCopy customPrecisionAmount];
    v6 = PKLegacyCurrencyStorageIntegerToDecimal([decimalAmount amount], 1);
    goto LABEL_5;
  }

  decimalAmount = PKLegacyCurrencyStorageIntegerToDecimal([protobufCopy amount], 0);
  [(PKPaymentSummaryItem *)v4 setAmount:decimalAmount];
LABEL_7:

  label = [protobufCopy label];
  [(PKPaymentSummaryItem *)v4 setLabel:label];

  -[PKPaymentSummaryItem setType:](v4, "setType:", [protobufCopy type]);
  identifier = [protobufCopy identifier];
  [(PKShippingMethod *)v4 setIdentifier:identifier];

  detail = [protobufCopy detail];
  [(PKShippingMethod *)v4 setDetail:detail];

  return v4;
}

- (id)shippingMethodProtobuf
{
  v3 = objc_alloc_init(PKProtobufShippingMethod);
  amount = [(PKPaymentSummaryItem *)self amount];
  [(PKProtobufShippingMethod *)v3 setAmount:PKCurrencyDecimalToLegacyStorageInteger(amount, 0)];

  amount2 = [(PKPaymentSummaryItem *)self amount];
  v6 = DecimalToCustomPrecisionProtobuf(amount2);
  [(PKProtobufShippingMethod *)v3 setCustomPrecisionAmount:v6];

  amount3 = [(PKPaymentSummaryItem *)self amount];
  v8 = PKProtoSupportProtoDecimalNumberFromDecimalNumber(amount3);
  [(PKProtobufShippingMethod *)v3 setDecimalAmount:v8];

  label = [(PKPaymentSummaryItem *)self label];
  [(PKProtobufShippingMethod *)v3 setLabel:label];

  [(PKProtobufShippingMethod *)v3 setType:[(PKPaymentSummaryItem *)self type]];
  identifier = [(PKShippingMethod *)self identifier];
  [(PKProtobufShippingMethod *)v3 setIdentifier:identifier];

  detail = [(PKShippingMethod *)self detail];
  [(PKProtobufShippingMethod *)v3 setDetail:detail];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v13.receiver = self;
  v13.super_class = PKShippingMethod;
  v5 = [(PKPaymentSummaryItem *)&v13 copyWithZone:?];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_detail copyWithZone:zone];
  v9 = v5[8];
  v5[8] = v8;

  v10 = [(PKDateComponentsRange *)self->_dateComponentsRange copyWithZone:zone];
  v11 = v5[9];
  v5[9] = v10;

  return v5;
}

- (PKShippingMethod)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKShippingMethod;
  v5 = [(PKPaymentSummaryItem *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(PKShippingMethod *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"detail"];
    [(PKShippingMethod *)v5 setDetail:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateComponentsRange"];
    [(PKShippingMethod *)v5 setDateComponentsRange:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = PKShippingMethod;
  coderCopy = coder;
  [(PKPaymentSummaryItem *)&v8 encodeWithCoder:coderCopy];
  v5 = [(PKShippingMethod *)self identifier:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"identifier"];

  detail = [(PKShippingMethod *)self detail];
  [coderCopy encodeObject:detail forKey:@"detail"];

  dateComponentsRange = [(PKShippingMethod *)self dateComponentsRange];
  [coderCopy encodeObject:dateComponentsRange forKey:@"dateComponentsRange"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_identifier];
  [array safelyAddObject:self->_detail];
  [array safelyAddObject:self->_dateComponentsRange];
  v7.receiver = self;
  v7.super_class = PKShippingMethod;
  v4 = [(PKPaymentSummaryItem *)&v7 hash];
  v5 = PKCombinedHash(v4, array);

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKShippingMethod *)self isEqualToShippingMethod:v5];
  }

  return v6;
}

- (BOOL)isEqualToShippingMethod:(id)method
{
  methodCopy = method;
  if (![(PKPaymentSummaryItem *)self isEqualToPaymentSummaryItem:methodCopy])
  {
    goto LABEL_17;
  }

  v5 = methodCopy[7];
  v6 = self->_identifier;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v6)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_16;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_17;
    }
  }

  v11 = methodCopy[8];
  v6 = self->_detail;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {

    goto LABEL_21;
  }

  if (v6)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_16:

LABEL_17:
    v14 = 0;
    goto LABEL_18;
  }

  v16 = [(NSString *)v6 isEqualToString:v12];

  if (!v16)
  {
    goto LABEL_17;
  }

LABEL_21:
  dateComponentsRange = self->_dateComponentsRange;
  v18 = methodCopy[9];
  if (dateComponentsRange && v18)
  {
    v14 = [(PKDateComponentsRange *)dateComponentsRange isEqual:?];
  }

  else
  {
    v14 = dateComponentsRange == v18;
  }

LABEL_18:

  return v14;
}

- (PKShippingMethod)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v13.receiver = self;
  v13.super_class = PKShippingMethod;
  v7 = [(PKPaymentSummaryItem *)&v13 initWithDictionary:dictionaryCopy error:error];
  if (v7)
  {
    v8 = [dictionaryCopy PKStringForKey:@"detail"];
    detail = v7->_detail;
    v7->_detail = v8;

    v10 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v7->_identifier;
    v7->_identifier = v10;
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = MEMORY[0x1E695DF90];
  v10.receiver = self;
  v10.super_class = PKShippingMethod;
  dictionaryRepresentation = [(PKPaymentSummaryItem *)&v10 dictionaryRepresentation];
  v5 = [v3 dictionaryWithDictionary:dictionaryRepresentation];

  detail = self->_detail;
  if (detail)
  {
    [v5 setObject:detail forKeyedSubscript:@"detail"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v5 setObject:identifier forKeyedSubscript:@"identifier"];
  }

  v8 = [v5 copy];

  return v8;
}

@end
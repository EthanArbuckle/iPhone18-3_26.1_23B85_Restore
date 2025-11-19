@interface PKShippingMethod
+ (PKShippingMethod)shippingMethodWithProtobuf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToShippingMethod:(id)a3;
- (PKShippingMethod)initWithCoder:(id)a3;
- (PKShippingMethod)initWithDictionary:(id)a3 error:(id *)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)shippingMethodProtobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKShippingMethod

+ (PKShippingMethod)shippingMethodWithProtobuf:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKShippingMethod);
  if ([v3 hasDecimalAmount])
  {
    v5 = [v3 decimalAmount];
    v6 = PKProtoSupportDecimalNumberFromProtobuf(v5);
LABEL_5:
    v7 = v6;
    [(PKPaymentSummaryItem *)v4 setAmount:v6];

    goto LABEL_7;
  }

  if ([v3 hasCustomPrecisionAmount])
  {
    v5 = [v3 customPrecisionAmount];
    v6 = PKLegacyCurrencyStorageIntegerToDecimal([v5 amount], 1);
    goto LABEL_5;
  }

  v5 = PKLegacyCurrencyStorageIntegerToDecimal([v3 amount], 0);
  [(PKPaymentSummaryItem *)v4 setAmount:v5];
LABEL_7:

  v8 = [v3 label];
  [(PKPaymentSummaryItem *)v4 setLabel:v8];

  -[PKPaymentSummaryItem setType:](v4, "setType:", [v3 type]);
  v9 = [v3 identifier];
  [(PKShippingMethod *)v4 setIdentifier:v9];

  v10 = [v3 detail];
  [(PKShippingMethod *)v4 setDetail:v10];

  return v4;
}

- (id)shippingMethodProtobuf
{
  v3 = objc_alloc_init(PKProtobufShippingMethod);
  v4 = [(PKPaymentSummaryItem *)self amount];
  [(PKProtobufShippingMethod *)v3 setAmount:PKCurrencyDecimalToLegacyStorageInteger(v4, 0)];

  v5 = [(PKPaymentSummaryItem *)self amount];
  v6 = DecimalToCustomPrecisionProtobuf(v5);
  [(PKProtobufShippingMethod *)v3 setCustomPrecisionAmount:v6];

  v7 = [(PKPaymentSummaryItem *)self amount];
  v8 = PKProtoSupportProtoDecimalNumberFromDecimalNumber(v7);
  [(PKProtobufShippingMethod *)v3 setDecimalAmount:v8];

  v9 = [(PKPaymentSummaryItem *)self label];
  [(PKProtobufShippingMethod *)v3 setLabel:v9];

  [(PKProtobufShippingMethod *)v3 setType:[(PKPaymentSummaryItem *)self type]];
  v10 = [(PKShippingMethod *)self identifier];
  [(PKProtobufShippingMethod *)v3 setIdentifier:v10];

  v11 = [(PKShippingMethod *)self detail];
  [(PKProtobufShippingMethod *)v3 setDetail:v11];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v13.receiver = self;
  v13.super_class = PKShippingMethod;
  v5 = [(PKPaymentSummaryItem *)&v13 copyWithZone:?];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[7];
  v5[7] = v6;

  v8 = [(NSString *)self->_detail copyWithZone:a3];
  v9 = v5[8];
  v5[8] = v8;

  v10 = [(PKDateComponentsRange *)self->_dateComponentsRange copyWithZone:a3];
  v11 = v5[9];
  v5[9] = v10;

  return v5;
}

- (PKShippingMethod)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKShippingMethod;
  v5 = [(PKPaymentSummaryItem *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(PKShippingMethod *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"detail"];
    [(PKShippingMethod *)v5 setDetail:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateComponentsRange"];
    [(PKShippingMethod *)v5 setDateComponentsRange:v8];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = PKShippingMethod;
  v4 = a3;
  [(PKPaymentSummaryItem *)&v8 encodeWithCoder:v4];
  v5 = [(PKShippingMethod *)self identifier:v8.receiver];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(PKShippingMethod *)self detail];
  [v4 encodeObject:v6 forKey:@"detail"];

  v7 = [(PKShippingMethod *)self dateComponentsRange];
  [v4 encodeObject:v7 forKey:@"dateComponentsRange"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_detail];
  [v3 safelyAddObject:self->_dateComponentsRange];
  v7.receiver = self;
  v7.super_class = PKShippingMethod;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKShippingMethod *)self isEqualToShippingMethod:v5];
  }

  return v6;
}

- (BOOL)isEqualToShippingMethod:(id)a3
{
  v4 = a3;
  if (![(PKPaymentSummaryItem *)self isEqualToPaymentSummaryItem:v4])
  {
    goto LABEL_17;
  }

  v5 = v4[7];
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

  v11 = v4[8];
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
  v18 = v4[9];
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

- (PKShippingMethod)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = PKShippingMethod;
  v7 = [(PKPaymentSummaryItem *)&v13 initWithDictionary:v6 error:a4];
  if (v7)
  {
    v8 = [v6 PKStringForKey:@"detail"];
    detail = v7->_detail;
    v7->_detail = v8;

    v10 = [v6 PKStringForKey:@"identifier"];
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
  v4 = [(PKPaymentSummaryItem *)&v10 dictionaryRepresentation];
  v5 = [v3 dictionaryWithDictionary:v4];

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
@interface PKTransactionReceiptSummaryItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransactionReceiptSummaryItem:(id)item;
- (PKCurrencyAmount)currencyAmount;
- (PKTransactionReceiptSummaryItem)initWithCoder:(id)coder;
- (PKTransactionReceiptSummaryItem)initWithDictionary:(id)dictionary bundle:(id)bundle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransactionReceiptSummaryItem

- (PKTransactionReceiptSummaryItem)initWithDictionary:(id)dictionary bundle:(id)bundle
{
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v31.receiver = self;
  v31.super_class = PKTransactionReceiptSummaryItem;
  v8 = [(PKTransactionReceiptSummaryItem *)&v31 init];
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = [dictionaryCopy PKStringForKey:@"type"];
  v10 = v9;
  if (v9 == @"tax")
  {
    goto LABEL_5;
  }

  if (!v9)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v11 = [(__CFString *)v9 isEqualToString:@"tax"];

  if ((v11 & 1) == 0)
  {
    v13 = v10;
    if (v13 == @"shipping" || (v14 = v13, v15 = [(__CFString *)v13 isEqualToString:@"shipping"], v14, (v15 & 1) != 0))
    {
      v12 = 2;
      goto LABEL_16;
    }

    v16 = v14;
    if (v16 == @"fee" || (v17 = v16, v18 = [(__CFString *)v16 isEqualToString:@"fee"], v17, (v18 & 1) != 0))
    {
      v12 = 3;
      goto LABEL_16;
    }

    v19 = v17;
    if (v19 == @"credit" || (v20 = v19, v21 = [(__CFString *)v19 isEqualToString:@"credit"], v20, v21))
    {
      v12 = 4;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_5:
  v12 = 1;
LABEL_16:

  v8->_type = v12;
  v22 = [dictionaryCopy PKStringForKey:@"itemDescription"];
  v23 = v22;
  if (v22)
  {
    v24 = PKLocalizedReceiptStringForReceiptBundle(v22, bundleCopy);
    label = v8->_label;
    v8->_label = v24;
  }

  v26 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"amount"];
  amount = v8->_amount;
  v8->_amount = v26;

  v28 = [dictionaryCopy PKStringForKey:@"currencyCode"];
  currencyCode = v8->_currencyCode;
  v8->_currencyCode = v28;

LABEL_19:
  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  [v3 appendFormat:@"type: '%@'; ", v4];

  [v3 appendFormat:@"label: '%@'; ", self->_label];
  [v3 appendFormat:@"amount: '%@'; ", self->_amount];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  [v3 appendFormat:@">"];
  v5 = [v3 copy];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransactionReceiptSummaryItem *)self isEqualToTransactionReceiptSummaryItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToTransactionReceiptSummaryItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy && self->_type == itemCopy[1])
  {
    v6 = itemCopy[2];
    v7 = self->_label;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v7 || !v8)
      {
LABEL_20:

        goto LABEL_18;
      }

      v10 = [(NSString *)v7 isEqualToString:v8];

      if (!v10)
      {
        goto LABEL_18;
      }
    }

    amount = self->_amount;
    v12 = v5[3];
    if (amount && v12)
    {
      if (([(NSDecimalNumber *)amount isEqual:?]& 1) != 0)
      {
        goto LABEL_12;
      }
    }

    else if (amount == v12)
    {
LABEL_12:
      currencyCode = self->_currencyCode;
      v14 = v5[4];
      v7 = currencyCode;
      v15 = v14;
      v9 = v15;
      if (v7 == v15)
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        LOBYTE(v10) = 0;
        if (v7 && v15)
        {
          LOBYTE(v10) = [(NSString *)v7 isEqualToString:v15];
        }
      }

      goto LABEL_20;
    }
  }

  LOBYTE(v10) = 0;
LABEL_18:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_label];
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_currencyCode];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;

  return v5;
}

- (PKTransactionReceiptSummaryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKTransactionReceiptSummaryItem;
  v5 = [(PKTransactionReceiptSummaryItem *)&v13 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemDescription"];
    label = v5->_label;
    v5->_label = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeObject:self->_label forKey:@"itemDescription"];
  [coderCopy encodeObject:self->_amount forKey:@"amount"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[1] = self->_type;
  v6 = [(NSString *)self->_label copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSDecimalNumber *)self->_amount copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_currencyCode copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  return v5;
}

- (PKCurrencyAmount)currencyAmount
{
  amount = self->_amount;
  if (!amount)
  {
LABEL_4:

    return amount;
  }

  currencyCode = self->_currencyCode;
  if (currencyCode)
  {
    amount = PKCurrencyAmountCreate(amount, currencyCode, 0);
    v2 = vars8;
    goto LABEL_4;
  }

  amount = 0;

  return amount;
}

@end
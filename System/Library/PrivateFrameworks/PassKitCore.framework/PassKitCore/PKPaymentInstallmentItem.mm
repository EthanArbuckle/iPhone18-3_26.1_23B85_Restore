@interface PKPaymentInstallmentItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInstallmentItem:(id)item;
- (PKPaymentInstallmentItem)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentInstallmentItem

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_currencyCode];
  [v3 safelyAddObject:self->_programIdentifier];
  [v3 safelyAddObject:self->_apr];
  [v3 safelyAddObject:self->_programTerms];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_installmentItemType - v4 + 32 * v4;

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentInstallmentItem *)self isEqualToInstallmentItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToInstallmentItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (itemCopy && self->_installmentItemType == itemCopy[1])
  {
    amount = self->_amount;
    v7 = v5[2];
    if (amount && v7)
    {
      if (([(NSDecimalNumber *)amount isEqual:?]& 1) != 0)
      {
LABEL_10:
        v10 = v5[3];
        v11 = self->_currencyCode;
        v12 = v10;
        v13 = v12;
        if (v11 == v12)
        {
        }

        else
        {
          LOBYTE(v8) = 0;
          if (!v11 || !v12)
          {
            goto LABEL_32;
          }

          v8 = [(NSString *)v11 isEqualToString:v12];

          if (!v8)
          {
            goto LABEL_9;
          }
        }

        v14 = v5[4];
        v11 = self->_programIdentifier;
        v15 = v14;
        v13 = v15;
        if (v11 == v15)
        {

LABEL_22:
          apr = self->_apr;
          v17 = v5[5];
          if (apr && v17)
          {
            if (([(NSDecimalNumber *)apr isEqual:?]& 1) != 0)
            {
LABEL_27:
              programTerms = self->_programTerms;
              v19 = v5[6];
              v11 = programTerms;
              v20 = v19;
              v13 = v20;
              if (v11 == v20)
              {
                LOBYTE(v8) = 1;
              }

              else
              {
                LOBYTE(v8) = 0;
                if (v11 && v20)
                {
                  LOBYTE(v8) = [(NSString *)v11 isEqualToString:v20];
                }
              }

              goto LABEL_32;
            }
          }

          else if (apr == v17)
          {
            goto LABEL_27;
          }

          goto LABEL_8;
        }

        LOBYTE(v8) = 0;
        if (v11 && v15)
        {
          v8 = [(NSString *)v11 isEqualToString:v15];

          if (!v8)
          {
            goto LABEL_9;
          }

          goto LABEL_22;
        }

LABEL_32:

        goto LABEL_9;
      }
    }

    else if (amount == v7)
    {
      goto LABEL_10;
    }
  }

LABEL_8:
  LOBYTE(v8) = 0;
LABEL_9:

  return v8;
}

- (PKPaymentInstallmentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKPaymentInstallmentItem;
  v5 = [(PKPaymentInstallmentItem *)&v17 init];
  if (v5)
  {
    v5->_installmentItemType = [coderCopy decodeIntegerForKey:@"installmentItemType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    programIdentifier = v5->_programIdentifier;
    v5->_programIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"apr"];
    apr = v5->_apr;
    v5->_apr = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"term"];
    programTerms = v5->_programTerms;
    v5->_programTerms = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  installmentItemType = self->_installmentItemType;
  coderCopy = coder;
  [coderCopy encodeInteger:installmentItemType forKey:@"installmentItemType"];
  [coderCopy encodeObject:self->_amount forKey:@"amount"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeObject:self->_programIdentifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_apr forKey:@"apr"];
  [coderCopy encodeObject:self->_programTerms forKey:@"term"];
}

@end
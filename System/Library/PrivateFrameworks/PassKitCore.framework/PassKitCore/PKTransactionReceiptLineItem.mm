@interface PKTransactionReceiptLineItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTransactionReceiptLineItem:(id)item;
- (PKCurrencyAmount)currencyAmount;
- (PKTransactionReceiptLineItem)initWithCoder:(id)coder;
- (PKTransactionReceiptLineItem)initWithDictionary:(id)dictionary bundle:(id)bundle;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKTransactionReceiptLineItem

- (PKTransactionReceiptLineItem)initWithDictionary:(id)dictionary bundle:(id)bundle
{
  dictionaryCopy = dictionary;
  bundleCopy = bundle;
  v37.receiver = self;
  v37.super_class = PKTransactionReceiptLineItem;
  v8 = [(PKTransactionReceiptLineItem *)&v37 init];
  if (v8)
  {
    v9 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [dictionaryCopy PKStringForKey:@"title"];
    v12 = v11;
    if (v11)
    {
      v13 = PKLocalizedReceiptStringForReceiptBundle(v11, bundleCopy);
      title = v8->_title;
      v8->_title = v13;
    }

    v15 = [dictionaryCopy PKStringForKey:@"subtitle"];
    v16 = v15;
    if (v15)
    {
      v17 = PKLocalizedReceiptStringForReceiptBundle(v15, bundleCopy);
      subtitle = v8->_subtitle;
      v8->_subtitle = v17;
    }

    v19 = [dictionaryCopy PKStringForKey:@"itemDescription"];
    v20 = v19;
    if (v19)
    {
      v21 = PKLocalizedReceiptStringForReceiptBundle(v19, bundleCopy);
      secondarySubtitle = v8->_secondarySubtitle;
      v8->_secondarySubtitle = v21;
    }

    v23 = [dictionaryCopy PKURLForKey:@"imageURL"];
    iconImageURL = v8->_iconImageURL;
    v8->_iconImageURL = v23;

    v8->_quantity = [dictionaryCopy PKIntegerForKey:@"quantity"];
    v25 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"amount"];
    amount = v8->_amount;
    v8->_amount = v25;

    v27 = [dictionaryCopy PKStringForKey:@"currencyCode"];
    currencyCode = v8->_currencyCode;
    v8->_currencyCode = v27;

    v8->_adamIdentifier = [dictionaryCopy PKIntegerForKey:@"adamID"];
    v29 = [dictionaryCopy PKStringForKey:@"imageName"];
    if (v29)
    {
      v30 = [PKImage imageNamed:v29 inBundle:bundleCopy];
      image = v8->_image;
      v8->_image = v30;
    }

    else
    {
      v32 = v8->_iconImageURL;
      if (!v32)
      {
LABEL_13:

        goto LABEL_14;
      }

      image = [(NSURL *)v32 pathExtension];
      v33 = [(NSString *)v8->_identifier stringByAppendingPathExtension:image];
      v34 = [PKImage imageNamed:v33 inBundle:bundleCopy];
      v35 = v8->_image;
      v8->_image = v34;
    }

    goto LABEL_13;
  }

LABEL_14:

  return v8;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"title: '%@'; ", self->_title];
  [v3 appendFormat:@"subtitle: '%@'; ", self->_subtitle];
  [v3 appendFormat:@"image: '%@'; ", self->_image];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_quantity];
  [v3 appendFormat:@"quantity: '%@'; ", v4];

  [v3 appendFormat:@"amount: '%@'; ", self->_amount];
  [v3 appendFormat:@"currencyCode: '%@'; ", self->_currencyCode];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_adamIdentifier];
  [v3 appendFormat:@"adamIdentifier: '%@'; ", v5];

  [v3 appendFormat:@">"];
  v6 = [v3 copy];

  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKTransactionReceiptLineItem *)self isEqualToTransactionReceiptLineItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToTransactionReceiptLineItem:(id)item
{
  itemCopy = item;
  v5 = itemCopy;
  if (!itemCopy)
  {
    goto LABEL_48;
  }

  v6 = itemCopy[1];
  v7 = self->_identifier;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {
      goto LABEL_47;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_48;
    }
  }

  v11 = v5[2];
  v7 = self->_title;
  v12 = v11;
  v9 = v12;
  if (v7 == v12)
  {
  }

  else
  {
    if (!v7 || !v12)
    {
      goto LABEL_47;
    }

    v13 = [(NSString *)v7 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_48;
    }
  }

  v14 = v5[3];
  v7 = self->_subtitle;
  v15 = v14;
  v9 = v15;
  if (v7 == v15)
  {
  }

  else
  {
    if (!v7 || !v15)
    {
      goto LABEL_47;
    }

    v16 = [(NSString *)v7 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_48;
    }
  }

  v17 = v5[4];
  v7 = self->_secondarySubtitle;
  v18 = v17;
  v9 = v18;
  if (v7 == v18)
  {
  }

  else
  {
    if (!v7 || !v18)
    {
      goto LABEL_47;
    }

    v19 = [(NSString *)v7 isEqualToString:v18];

    if (!v19)
    {
      goto LABEL_48;
    }
  }

  iconImageURL = self->_iconImageURL;
  v21 = v5[9];
  if (iconImageURL && v21)
  {
    if (([(NSURL *)iconImageURL isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (iconImageURL != v21)
  {
    goto LABEL_48;
  }

  image = self->_image;
  v23 = v5[5];
  if (image && v23)
  {
    if (![(PKImage *)image isEqual:?])
    {
      goto LABEL_48;
    }
  }

  else if (image != v23)
  {
    goto LABEL_48;
  }

  if (self->_quantity != v5[6])
  {
    goto LABEL_48;
  }

  amount = self->_amount;
  v25 = v5[7];
  if (amount && v25)
  {
    if (([(NSDecimalNumber *)amount isEqual:?]& 1) == 0)
    {
      goto LABEL_48;
    }
  }

  else if (amount != v25)
  {
    goto LABEL_48;
  }

  v26 = v5[8];
  v7 = self->_currencyCode;
  v27 = v26;
  v9 = v27;
  if (v7 == v27)
  {

LABEL_51:
    v29 = self->_adamIdentifier == v5[10];
    goto LABEL_49;
  }

  if (!v7 || !v27)
  {
LABEL_47:

    goto LABEL_48;
  }

  v28 = [(NSString *)v7 isEqualToString:v27];

  if (v28)
  {
    goto LABEL_51;
  }

LABEL_48:
  v29 = 0;
LABEL_49:

  return v29;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_subtitle];
  [v3 safelyAddObject:self->_secondarySubtitle];
  [v3 safelyAddObject:self->_iconImageURL];
  [v3 safelyAddObject:self->_image];
  [v3 safelyAddObject:self->_amount];
  [v3 safelyAddObject:self->_currencyCode];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_adamIdentifier - v4 + 32 * v4;
  v6 = self->_quantity - v5 + 32 * v5;

  return v6;
}

- (PKTransactionReceiptLineItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PKTransactionReceiptLineItem;
  v5 = [(PKTransactionReceiptLineItem *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemDescription"];
    secondarySubtitle = v5->_secondarySubtitle;
    v5->_secondarySubtitle = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    iconImageURL = v5->_iconImageURL;
    v5->_iconImageURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    image = v5->_image;
    v5->_image = v16;

    v5->_quantity = [coderCopy decodeIntegerForKey:@"quantity"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"amount"];
    amount = v5->_amount;
    v5->_amount = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currencyCode"];
    currencyCode = v5->_currencyCode;
    v5->_currencyCode = v20;

    v5->_adamIdentifier = [coderCopy decodeIntegerForKey:@"adamID"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_secondarySubtitle forKey:@"itemDescription"];
  [coderCopy encodeObject:self->_iconImageURL forKey:@"imageURL"];
  [coderCopy encodeObject:self->_image forKey:@"image"];
  [coderCopy encodeInteger:self->_quantity forKey:@"quantity"];
  [coderCopy encodeObject:self->_amount forKey:@"amount"];
  [coderCopy encodeObject:self->_currencyCode forKey:@"currencyCode"];
  [coderCopy encodeInteger:self->_adamIdentifier forKey:@"adamID"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_title copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_subtitle copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_secondarySubtitle copyWithZone:zone];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  v14 = [(NSURL *)self->_iconImageURL copyWithZone:zone];
  v15 = *(v5 + 72);
  *(v5 + 72) = v14;

  objc_storeStrong((v5 + 40), self->_image);
  *(v5 + 48) = self->_quantity;
  v16 = [(NSDecimalNumber *)self->_amount copyWithZone:zone];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  v18 = [(NSString *)self->_currencyCode copyWithZone:zone];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  *(v5 + 80) = self->_adamIdentifier;
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
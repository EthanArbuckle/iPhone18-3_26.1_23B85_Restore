@interface PKCreditInstallmentPlanProduct
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInstallmentPlanProduct:(id)product;
- (PKCreditInstallmentPlanProduct)initWithCoder:(id)coder;
- (PKCreditInstallmentPlanProduct)initWithDictionary:(id)dictionary;
- (id)_imageURLFromImageURLs:(id)ls forScale:(double)scale suffix:(id)suffix;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCreditInstallmentPlanProduct

- (PKCreditInstallmentPlanProduct)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v24.receiver = self;
  v24.super_class = PKCreditInstallmentPlanProduct;
  v5 = [(PKCreditInstallmentPlanProduct *)&v24 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"model"];
    model = v5->_model;
    v5->_model = v8;

    v10 = [dictionaryCopy PKStringForKey:@"capacity"];
    capacity = v5->_capacity;
    v5->_capacity = v10;

    v12 = [dictionaryCopy PKStringForKey:@"color"];
    color = v5->_color;
    v5->_color = v12;

    v5->_upgradeEligible = [dictionaryCopy PKBoolForKey:@"upgradeEligible"];
    v5->_warrantyYears = [dictionaryCopy PKIntegerForKey:@"warranty"];
    v14 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"features"];
    if (v14)
    {
      v15 = [MEMORY[0x1E695DFD8] setWithArray:v14];
      features = v5->_features;
      v5->_features = v15;
    }

    v17 = [dictionaryCopy PKStringForKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v17;

    v19 = [dictionaryCopy PKDictionaryForKey:@"icon"];
    iconURLs = v5->_iconURLs;
    v5->_iconURLs = v19;

    v21 = [dictionaryCopy PKDictionaryForKey:@"splashImage"];
    splashImageURLs = v5->_splashImageURLs;
    v5->_splashImageURLs = v21;
  }

  return v5;
}

- (id)_imageURLFromImageURLs:(id)ls forScale:(double)scale suffix:(id)suffix
{
  lsCopy = ls;
  suffixCopy = suffix;
  if (scale <= 2.0)
  {
    v9 = @"2x";
  }

  else
  {
    v9 = @"3x";
  }

  v10 = v9;
  if (suffixCopy)
  {
    v11 = [suffixCopy stringByAppendingString:v10];

    v10 = v11;
  }

  v12 = [lsCopy PKURLForKey:v10];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    if (scale >= 3.0)
    {
      v14 = @"2x";
    }

    else
    {
      v14 = @"3x";
    }

    v15 = v14;

    if (suffixCopy)
    {
      v16 = [suffixCopy stringByAppendingString:v15];

      v15 = v16;
    }

    v13 = [lsCopy PKURLForKey:v15];
    v10 = v15;
  }

  return v13;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCreditInstallmentPlanProduct *)self isEqualToInstallmentPlanProduct:v5];
  }

  return v6;
}

- (BOOL)isEqualToInstallmentPlanProduct:(id)product
{
  productCopy = product;
  v5 = productCopy;
  if (!productCopy)
  {
    goto LABEL_39;
  }

  v6 = *(productCopy + 2);
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
      goto LABEL_38;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_39;
    }
  }

  v11 = *(v5 + 3);
  v7 = self->_model;
  v12 = v11;
  v9 = v12;
  if (v7 == v12)
  {
  }

  else
  {
    if (!v7 || !v12)
    {
      goto LABEL_38;
    }

    v13 = [(NSString *)v7 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_39;
    }
  }

  v14 = *(v5 + 4);
  v7 = self->_capacity;
  v15 = v14;
  v9 = v15;
  if (v7 == v15)
  {
  }

  else
  {
    if (!v7 || !v15)
    {
      goto LABEL_38;
    }

    v16 = [(NSString *)v7 isEqualToString:v15];

    if (!v16)
    {
      goto LABEL_39;
    }
  }

  v17 = *(v5 + 5);
  v7 = self->_color;
  v18 = v17;
  v9 = v18;
  if (v7 == v18)
  {
  }

  else
  {
    if (!v7 || !v18)
    {
      goto LABEL_38;
    }

    v19 = [(NSString *)v7 isEqualToString:v18];

    if (!v19)
    {
      goto LABEL_39;
    }
  }

  if (self->_upgradeEligible != v5[8] || self->_warrantyYears != *(v5 + 6))
  {
    goto LABEL_39;
  }

  features = self->_features;
  v21 = *(v5 + 7);
  if (features && v21)
  {
    if (([(NSSet *)features isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (features != v21)
  {
    goto LABEL_39;
  }

  v22 = *(v5 + 8);
  v7 = self->_serialNumber;
  v23 = v22;
  v9 = v23;
  if (v7 == v23)
  {

    goto LABEL_42;
  }

  if (!v7 || !v23)
  {
LABEL_38:

    goto LABEL_39;
  }

  v24 = [(NSString *)v7 isEqualToString:v23];

  if (!v24)
  {
    goto LABEL_39;
  }

LABEL_42:
  iconURLs = self->_iconURLs;
  v28 = *(v5 + 9);
  if (iconURLs && v28)
  {
    if (([(NSDictionary *)iconURLs isEqual:?]& 1) != 0)
    {
      goto LABEL_47;
    }

LABEL_39:
    v25 = 0;
    goto LABEL_40;
  }

  if (iconURLs != v28)
  {
    goto LABEL_39;
  }

LABEL_47:
  splashImageURLs = self->_splashImageURLs;
  v30 = *(v5 + 10);
  if (splashImageURLs && v30)
  {
    v25 = [(NSDictionary *)splashImageURLs isEqual:?];
  }

  else
  {
    v25 = splashImageURLs == v30;
  }

LABEL_40:

  return v25;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_model];
  [v3 safelyAddObject:self->_capacity];
  [v3 safelyAddObject:self->_color];
  [v3 safelyAddObject:self->_features];
  [v3 safelyAddObject:self->_serialNumber];
  [v3 safelyAddObject:self->_iconURLs];
  [v3 safelyAddObject:self->_splashImageURLs];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_upgradeEligible - v4 + 32 * v4;
  v6 = self->_warrantyYears - v5 + 32 * v5;

  return v6;
}

- (PKCreditInstallmentPlanProduct)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = PKCreditInstallmentPlanProduct;
  v5 = [(PKCreditInstallmentPlanProduct *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"model"];
    model = v5->_model;
    v5->_model = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"capacity"];
    capacity = v5->_capacity;
    v5->_capacity = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"color"];
    color = v5->_color;
    v5->_color = v12;

    v5->_upgradeEligible = [coderCopy decodeBoolForKey:@"upgradeEligible"];
    v5->_warrantyYears = [coderCopy decodeIntegerForKey:@"warranty"];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"features"];
    features = v5->_features;
    v5->_features = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serialNumber"];
    serialNumber = v5->_serialNumber;
    v5->_serialNumber = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"iconURLs"];
    iconURLs = v5->_iconURLs;
    v5->_iconURLs = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"splashImageURLs"];
    splashImageURLs = v5->_splashImageURLs;
    v5->_splashImageURLs = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_model forKey:@"model"];
  [coderCopy encodeObject:self->_capacity forKey:@"capacity"];
  [coderCopy encodeObject:self->_color forKey:@"color"];
  [coderCopy encodeBool:self->_upgradeEligible forKey:@"upgradeEligible"];
  [coderCopy encodeInteger:self->_warrantyYears forKey:@"warranty"];
  [coderCopy encodeObject:self->_features forKey:@"features"];
  [coderCopy encodeObject:self->_serialNumber forKey:@"serialNumber"];
  [coderCopy encodeObject:self->_iconURLs forKey:@"iconURLs"];
  [coderCopy encodeObject:self->_splashImageURLs forKey:@"splashImageURLs"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_model copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_capacity copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_color copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  *(v5 + 8) = self->_upgradeEligible;
  *(v5 + 48) = self->_warrantyYears;
  v14 = [(NSSet *)self->_features copyWithZone:zone];
  v15 = *(v5 + 56);
  *(v5 + 56) = v14;

  v16 = [(NSString *)self->_serialNumber copyWithZone:zone];
  v17 = *(v5 + 64);
  *(v5 + 64) = v16;

  v18 = [(NSDictionary *)self->_iconURLs copyWithZone:zone];
  v19 = *(v5 + 72);
  *(v5 + 72) = v18;

  v20 = [(NSDictionary *)self->_splashImageURLs copyWithZone:zone];
  v21 = *(v5 + 80);
  *(v5 + 80) = v20;

  return v5;
}

@end
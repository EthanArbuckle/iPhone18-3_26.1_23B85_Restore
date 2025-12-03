@interface PKInstallmentPlanMerchant
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToInstallmentPlanMerchant:(id)merchant;
- (PKInstallmentPlanMerchant)initWithCoder:(id)coder;
- (PKInstallmentPlanMerchant)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKInstallmentPlanMerchant

- (PKInstallmentPlanMerchant)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = PKInstallmentPlanMerchant;
  v5 = [(PKInstallmentPlanMerchant *)&v19 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [dictionaryCopy PKStringForKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v5->_categoryCode = [dictionaryCopy PKIntegerForKey:@"categoryCode"];
    v10 = [dictionaryCopy PKStringForKey:@"city"];
    city = v5->_city;
    v5->_city = v10;

    v12 = [dictionaryCopy PKStringForKey:@"state"];
    state = v5->_state;
    v5->_state = v12;

    v14 = [dictionaryCopy PKStringForKey:@"postalCode"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v14;

    v16 = [dictionaryCopy PKStringForKey:@"country"];
    country = v5->_country;
    v5->_country = v16;
  }

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKInstallmentPlanMerchant *)self isEqualToInstallmentPlanMerchant:v5];
  }

  return v6;
}

- (BOOL)isEqualToInstallmentPlanMerchant:(id)merchant
{
  merchantCopy = merchant;
  v5 = merchantCopy;
  if (merchantCopy)
  {
    v6 = merchantCopy[1];
    v7 = self->_identifier;
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
        goto LABEL_39;
      }

      v10 = [(NSString *)v7 isEqualToString:v8];

      if (!v10)
      {
        goto LABEL_40;
      }
    }

    v11 = v5[2];
    v7 = self->_name;
    v12 = v11;
    v9 = v12;
    if (v7 == v12)
    {
    }

    else
    {
      LOBYTE(v10) = 0;
      if (!v7 || !v12)
      {
        goto LABEL_39;
      }

      v10 = [(NSString *)v7 isEqualToString:v12];

      if (!v10)
      {
        goto LABEL_40;
      }
    }

    if (self->_categoryCode == v5[3])
    {
      v13 = v5[4];
      v7 = self->_city;
      v14 = v13;
      v9 = v14;
      if (v7 == v14)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!v7 || !v14)
        {
          goto LABEL_39;
        }

        v10 = [(NSString *)v7 isEqualToString:v14];

        if (!v10)
        {
          goto LABEL_40;
        }
      }

      v15 = v5[5];
      v7 = self->_state;
      v16 = v15;
      v9 = v16;
      if (v7 == v16)
      {
      }

      else
      {
        LOBYTE(v10) = 0;
        if (!v7 || !v16)
        {
          goto LABEL_39;
        }

        v10 = [(NSString *)v7 isEqualToString:v16];

        if (!v10)
        {
          goto LABEL_40;
        }
      }

      v17 = v5[6];
      v7 = self->_postalCode;
      v18 = v17;
      v9 = v18;
      if (v7 == v18)
      {

LABEL_34:
        country = self->_country;
        v20 = v5[7];
        v7 = country;
        v21 = v20;
        v9 = v21;
        if (v7 == v21)
        {
          LOBYTE(v10) = 1;
        }

        else
        {
          LOBYTE(v10) = 0;
          if (v7 && v21)
          {
            LOBYTE(v10) = [(NSString *)v7 isEqualToString:v21];
          }
        }

        goto LABEL_39;
      }

      LOBYTE(v10) = 0;
      if (v7 && v18)
      {
        v10 = [(NSString *)v7 isEqualToString:v18];

        if (!v10)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

LABEL_39:

      goto LABEL_40;
    }
  }

  LOBYTE(v10) = 0;
LABEL_40:

  return v10;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_city];
  [v3 safelyAddObject:self->_state];
  [v3 safelyAddObject:self->_postalCode];
  [v3 safelyAddObject:self->_country];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_categoryCode - v4 + 32 * v4;

  return v5;
}

- (PKInstallmentPlanMerchant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PKInstallmentPlanMerchant;
  v5 = [(PKInstallmentPlanMerchant *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    city = v5->_city;
    v5->_city = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"postalCode"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"country"];
    country = v5->_country;
    v5->_country = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeObject:self->_city forKey:@"city"];
  [coderCopy encodeObject:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_postalCode forKey:@"postalCode"];
  [coderCopy encodeObject:self->_country forKey:@"country"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_name copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_city copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_state copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_postalCode copyWithZone:zone];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSString *)self->_country copyWithZone:zone];
  v17 = v5[7];
  v5[7] = v16;

  return v5;
}

@end
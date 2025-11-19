@interface PKInstallmentPlanMerchant
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToInstallmentPlanMerchant:(id)a3;
- (PKInstallmentPlanMerchant)initWithCoder:(id)a3;
- (PKInstallmentPlanMerchant)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKInstallmentPlanMerchant

- (PKInstallmentPlanMerchant)initWithDictionary:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKInstallmentPlanMerchant;
  v5 = [(PKInstallmentPlanMerchant *)&v19 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 PKStringForKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v5->_categoryCode = [v4 PKIntegerForKey:@"categoryCode"];
    v10 = [v4 PKStringForKey:@"city"];
    city = v5->_city;
    v5->_city = v10;

    v12 = [v4 PKStringForKey:@"state"];
    state = v5->_state;
    v5->_state = v12;

    v14 = [v4 PKStringForKey:@"postalCode"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v14;

    v16 = [v4 PKStringForKey:@"country"];
    country = v5->_country;
    v5->_country = v16;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKInstallmentPlanMerchant *)self isEqualToInstallmentPlanMerchant:v5];
  }

  return v6;
}

- (BOOL)isEqualToInstallmentPlanMerchant:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4[1];
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

- (PKInstallmentPlanMerchant)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKInstallmentPlanMerchant;
  v5 = [(PKInstallmentPlanMerchant *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"city"];
    city = v5->_city;
    v5->_city = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"state"];
    state = v5->_state;
    v5->_state = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"postalCode"];
    postalCode = v5->_postalCode;
    v5->_postalCode = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"country"];
    country = v5->_country;
    v5->_country = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeObject:self->_city forKey:@"city"];
  [v5 encodeObject:self->_state forKey:@"state"];
  [v5 encodeObject:self->_postalCode forKey:@"postalCode"];
  [v5 encodeObject:self->_country forKey:@"country"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_name copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_city copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSString *)self->_state copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSString *)self->_postalCode copyWithZone:a3];
  v15 = v5[6];
  v5[6] = v14;

  v16 = [(NSString *)self->_country copyWithZone:a3];
  v17 = v5[7];
  v5[7] = v16;

  return v5;
}

@end
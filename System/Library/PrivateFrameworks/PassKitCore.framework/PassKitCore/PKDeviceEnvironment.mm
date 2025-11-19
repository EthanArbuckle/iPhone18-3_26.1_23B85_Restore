@interface PKDeviceEnvironment
- (BOOL)isEqual:(id)a3;
- (BOOL)localeDiffersFromEnvironment:(id)a3;
- (PKDeviceEnvironment)initWithCountryCode:(id)a3 deviceLanguage:(id)a4;
- (id)_init;
- (unint64_t)hash;
@end

@implementation PKDeviceEnvironment

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKDeviceEnvironment;
  return [(PKDeviceEnvironment *)&v3 init];
}

- (PKDeviceEnvironment)initWithCountryCode:(id)a3 deviceLanguage:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKDeviceEnvironment;
  v9 = [(PKDeviceEnvironment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countryCode, a3);
    objc_storeStrong(&v10->_deviceLanguage, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    countryCode = self->_countryCode;
    v7 = [v5 countryCode];
    v8 = countryCode;
    v9 = v7;
    v10 = v9;
    if (v8 == v9)
    {
    }

    else
    {
      LOBYTE(v11) = 0;
      if (!v8 || !v9)
      {
        v14 = v9;
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v11 = [(NSString *)v8 isEqualToString:v9];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    deviceLanguage = self->_deviceLanguage;
    v13 = [v5 deviceLanguage];
    v14 = deviceLanguage;
    v15 = v13;
    v8 = v15;
    if (v14 == v15)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = 0;
      if (v14 && v15)
      {
        LOBYTE(v11) = [(NSString *)v14 isEqualToString:v15];
      }
    }

    goto LABEL_16;
  }

  LOBYTE(v11) = 0;
LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 addObject:self->_countryCode];
  [v3 addObject:self->_deviceLanguage];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)localeDiffersFromEnvironment:(id)a3
{
  v4 = a3;
  countryCode = self->_countryCode;
  v6 = [v4 countryCode];
  v7 = countryCode;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

LABEL_10:
    deviceLanguage = self->_deviceLanguage;
    v15 = [v4 deviceLanguage];
    v12 = deviceLanguage;
    v16 = v15;
    v7 = v16;
    if (v12 == v16)
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      LOBYTE(v11) = 1;
      if (v12 && v16)
      {
        v11 = ![(NSString *)v12 isEqualToString:v16];
      }
    }

    goto LABEL_16;
  }

  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v13 = [(NSString *)v7 isEqualToString:v8];

    if (!v13)
    {
      LOBYTE(v11) = 1;
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  LOBYTE(v11) = 1;
  v12 = v8;
LABEL_16:

LABEL_17:
  return v11;
}

@end
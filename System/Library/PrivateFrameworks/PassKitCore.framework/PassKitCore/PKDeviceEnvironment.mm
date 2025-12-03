@interface PKDeviceEnvironment
- (BOOL)isEqual:(id)equal;
- (BOOL)localeDiffersFromEnvironment:(id)environment;
- (PKDeviceEnvironment)initWithCountryCode:(id)code deviceLanguage:(id)language;
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

- (PKDeviceEnvironment)initWithCountryCode:(id)code deviceLanguage:(id)language
{
  codeCopy = code;
  languageCopy = language;
  v12.receiver = self;
  v12.super_class = PKDeviceEnvironment;
  v9 = [(PKDeviceEnvironment *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_countryCode, code);
    objc_storeStrong(&v10->_deviceLanguage, language);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    countryCode = self->_countryCode;
    countryCode = [v5 countryCode];
    v8 = countryCode;
    v9 = countryCode;
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
    deviceLanguage = [v5 deviceLanguage];
    v14 = deviceLanguage;
    v15 = deviceLanguage;
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

- (BOOL)localeDiffersFromEnvironment:(id)environment
{
  environmentCopy = environment;
  countryCode = self->_countryCode;
  countryCode = [environmentCopy countryCode];
  v7 = countryCode;
  v8 = countryCode;
  v9 = v8;
  if (v7 == v8)
  {

LABEL_10:
    deviceLanguage = self->_deviceLanguage;
    deviceLanguage = [environmentCopy deviceLanguage];
    v12 = deviceLanguage;
    v16 = deviceLanguage;
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
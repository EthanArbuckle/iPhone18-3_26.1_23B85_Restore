@interface PKDeviceVersion
+ (id)fromCurrentDeviceVersion;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeviceVersion:(id)version;
- (PKDeviceVersion)initWithCoder:(id)coder;
- (PKDeviceVersion)initWithDictionary:(id)dictionary;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKDeviceVersion

- (PKDeviceVersion)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = PKDeviceVersion;
  v5 = [(PKDeviceVersion *)&v22 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"deviceClass"];
  deviceClass = v5->_deviceClass;
  v5->_deviceClass = v6;

  v8 = [dictionaryCopy objectForKeyedSubscript:@"generation"];
  generation = v5->_generation;
  v5->_generation = v8;

  v10 = [dictionaryCopy objectForKeyedSubscript:@"model"];
  model = v5->_model;
  v5->_model = v10;

  v12 = [dictionaryCopy objectForKeyedSubscript:@"companion"];
  if (v12)
  {
    v13 = [[PKDeviceVersion alloc] initWithDictionary:v12];
    companion = v5->_companion;
    v5->_companion = v13;

    if (!v5->_companion)
    {
      v16 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        *buf = 138412546;
        v24 = v20;
        v25 = 2112;
        v26 = v12;
        v18 = v20;
        v19 = "Invalid companion for %@: %@";
        goto LABEL_13;
      }

LABEL_14:

      v15 = 0;
      goto LABEL_15;
    }
  }

  if (!v5->_deviceClass || !v5->_generation || !v5->_model)
  {
    v16 = PKLogFacilityTypeGetObject(0x11uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138412546;
      v24 = v17;
      v25 = 2112;
      v26 = dictionaryCopy;
      v18 = v17;
      v19 = "Invalid %@: %@";
LABEL_13:
      _os_log_impl(&dword_1AD337000, v16, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);

      goto LABEL_14;
    }

    goto LABEL_14;
  }

LABEL_8:
  v15 = v5;
LABEL_15:

  return v15;
}

+ (id)fromCurrentDeviceVersion
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = PKDeviceClass();
  v4 = PKProductType();
  [v2 setObject:v3 forKeyedSubscript:@"deviceClass"];
  [v2 setObject:v4 forKeyedSubscript:@"model"];
  v5 = v3;
  v6 = v4;
  v7 = v6;
  firstObject = 0;
  if (v5 && v6)
  {
    v9 = [v6 rangeOfString:v5];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = PKLogFacilityTypeGetObject(0x11uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = v7;
        _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Invalid deviceClass: '%@' for model: '%@'", &v16, 0x16u);
      }

      firstObject = 0;
    }

    else
    {
      v11 = [v7 substringFromIndex:v9 + v10];
      v12 = [v11 componentsSeparatedByString:@", "];
      if ([v12 count])
      {
        firstObject = [v12 firstObject];
      }

      else
      {
        v13 = PKLogFacilityTypeGetObject(0x11uLL);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = 138412546;
          v17 = v11;
          v18 = 2112;
          v19 = v7;
          _os_log_impl(&dword_1AD337000, v13, OS_LOG_TYPE_DEFAULT, "Invalid numeric substring: '%@' for model: '%@'", &v16, 0x16u);
        }

        firstObject = 0;
      }
    }
  }

  [v2 setObject:firstObject forKeyedSubscript:@"generation"];
  v14 = [[PKDeviceVersion alloc] initWithDictionary:v2];

  return v14;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_deviceClass forKeyedSubscript:@"deviceClass"];
  [v3 setObject:self->_generation forKeyedSubscript:@"generation"];
  [v3 setObject:self->_model forKeyedSubscript:@"model"];
  asDictionary = [(PKDeviceVersion *)self->_companion asDictionary];
  [v3 setObject:asDictionary forKeyedSubscript:@"companion"];

  v5 = [v3 copy];

  return v5;
}

- (PKDeviceVersion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PKDeviceVersion;
  v5 = [(PKDeviceVersion *)&v16 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"deviceClass"];
    deviceClass = v5->_deviceClass;
    v5->_deviceClass = v7;

    v9 = [coderCopy decodeObjectOfClass:v6 forKey:@"generation"];
    generation = v5->_generation;
    v5->_generation = v9;

    v11 = [coderCopy decodeObjectOfClass:v6 forKey:@"model"];
    model = v5->_model;
    v5->_model = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companion"];
    companion = v5->_companion;
    v5->_companion = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_deviceClass forKey:@"deviceClass"];
  [coderCopy encodeObject:self->_generation forKey:@"generation"];
  [coderCopy encodeObject:self->_model forKey:@"model"];
  companion = self->_companion;
  if (companion)
  {
    [coderCopy encodeObject:companion forKey:@"companion"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKDeviceVersion allocWithZone:](PKDeviceVersion init];
  v6 = [(NSString *)self->_deviceClass copyWithZone:zone];
  deviceClass = v5->_deviceClass;
  v5->_deviceClass = v6;

  v8 = [(NSString *)self->_generation copyWithZone:zone];
  generation = v5->_generation;
  v5->_generation = v8;

  v10 = [(NSString *)self->_model copyWithZone:zone];
  model = v5->_model;
  v5->_model = v10;

  v12 = [(PKDeviceVersion *)self->_companion copyWithZone:zone];
  companion = v5->_companion;
  v5->_companion = v12;

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDeviceVersion *)self isEqualToDeviceVersion:v5];
  }

  return v6;
}

- (BOOL)isEqualToDeviceVersion:(id)version
{
  versionCopy = version;
  v5 = versionCopy[1];
  v6 = self->_deviceClass;
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
      goto LABEL_20;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_21;
    }
  }

  v11 = versionCopy[2];
  v6 = self->_generation;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {
  }

  else
  {
    if (!v6 || !v12)
    {
      goto LABEL_20;
    }

    v13 = [(NSString *)v6 isEqualToString:v12];

    if (!v13)
    {
      goto LABEL_21;
    }
  }

  v14 = versionCopy[3];
  v6 = self->_model;
  v15 = v14;
  v8 = v15;
  if (v6 != v15)
  {
    if (v6 && v15)
    {
      v16 = [(NSString *)v6 isEqualToString:v15];

      if (v16)
      {
        goto LABEL_24;
      }

LABEL_21:
      v17 = 0;
      goto LABEL_22;
    }

LABEL_20:

    goto LABEL_21;
  }

LABEL_24:
  companion = self->_companion;
  v20 = versionCopy[4];
  if (companion && v20)
  {
    v17 = [(PKDeviceVersion *)companion isEqual:?];
  }

  else
  {
    v17 = companion == v20;
  }

LABEL_22:

  return v17;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_deviceClass];
  [array safelyAddObject:self->_generation];
  [array safelyAddObject:self->_model];
  [array safelyAddObject:self->_companion];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"deviceClass: '%@'; ", self->_deviceClass];
  [v3 appendFormat:@"generation: '%@'; ", self->_generation];
  [v3 appendFormat:@"model: '%@'; ", self->_model];
  [v3 appendFormat:@"companion: '%@'; ", self->_companion];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

@end
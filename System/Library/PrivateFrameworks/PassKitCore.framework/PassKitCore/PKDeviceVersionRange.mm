@interface PKDeviceVersionRange
- (BOOL)_matchesDeviceVersion:(id)version;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDeviceVersionRange:(id)range;
- (PKDeviceVersionRange)initWithCoder:(id)coder;
- (PKDeviceVersionRange)initWithDictionary:(id)dictionary;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKDeviceVersionRange

- (PKDeviceVersionRange)initWithDictionary:(id)dictionary
{
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v20.receiver = self;
  v20.super_class = PKDeviceVersionRange;
  v5 = [(PKDeviceVersionRange *)&v20 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [dictionaryCopy PKStringForKey:@"minimum"];
  minimum = v5->_minimum;
  v5->_minimum = v6;

  v8 = [dictionaryCopy PKStringForKey:@"maximum"];
  maximum = v5->_maximum;
  v5->_maximum = v8;

  v10 = [dictionaryCopy PKArrayForKey:@"models"];
  models = v5->_models;
  v5->_models = v10;

  v12 = [dictionaryCopy PKDictionaryForKey:@"companion"];
  if (v12)
  {
    v13 = [[PKDeviceVersionRange alloc] initWithDictionary:v12];
    companion = v5->_companion;
    v5->_companion = v13;
  }

  if (v5->_minimum || v5->_maximum || v5->_models)
  {

LABEL_8:
    v15 = v5;
    goto LABEL_9;
  }

  v17 = PKLogFacilityTypeGetObject(0x11uLL);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    *buf = 138412546;
    v22 = v18;
    v23 = 2112;
    v24 = dictionaryCopy;
    v19 = v18;
    _os_log_impl(&dword_1AD337000, v17, OS_LOG_TYPE_DEFAULT, "Invalid %@: %@", buf, 0x16u);
  }

  v15 = 0;
LABEL_9:

  return v15;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_minimum forKeyedSubscript:@"minimum"];
  [v3 setObject:self->_maximum forKeyedSubscript:@"maximum"];
  [v3 setObject:self->_models forKeyedSubscript:@"models"];
  asDictionary = [(PKDeviceVersionRange *)self->_companion asDictionary];
  [v3 setObject:asDictionary forKeyedSubscript:@"companion"];

  v5 = [v3 copy];

  return v5;
}

- (PKDeviceVersionRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKDeviceVersionRange;
  v5 = [(PKDeviceVersionRange *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"minimum"];
    minimum = v5->_minimum;
    v5->_minimum = v7;

    v9 = [coderCopy decodeObjectOfClass:v6 forKey:@"maximum"];
    maximum = v5->_maximum;
    v5->_maximum = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), v6, 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"models"];
    models = v5->_models;
    v5->_models = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"companion"];
    companion = v5->_companion;
    v5->_companion = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_minimum forKey:@"minimum"];
  [coderCopy encodeObject:self->_maximum forKey:@"maximum"];
  [coderCopy encodeObject:self->_models forKey:@"models"];
  companion = self->_companion;
  if (companion)
  {
    [coderCopy encodeObject:companion forKey:@"companion"];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKDeviceVersionRange allocWithZone:](PKDeviceVersionRange init];
  v6 = [(NSString *)self->_minimum copyWithZone:zone];
  minimum = v5->_minimum;
  v5->_minimum = v6;

  v8 = [(NSString *)self->_maximum copyWithZone:zone];
  maximum = v5->_maximum;
  v5->_maximum = v8;

  v10 = [(NSArray *)self->_models copyWithZone:zone];
  models = v5->_models;
  v5->_models = v10;

  v12 = [(PKDeviceVersionRange *)self->_companion copyWithZone:zone];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDeviceVersionRange *)self isEqualToDeviceVersionRange:v5];
  }

  return v6;
}

- (BOOL)isEqualToDeviceVersionRange:(id)range
{
  rangeCopy = range;
  v5 = rangeCopy[1];
  v6 = self->_minimum;
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
      goto LABEL_14;
    }

    v10 = [(NSString *)v6 isEqualToString:v7];

    if (!v10)
    {
      goto LABEL_15;
    }
  }

  v11 = rangeCopy[2];
  v6 = self->_maximum;
  v12 = v11;
  v8 = v12;
  if (v6 == v12)
  {

    goto LABEL_18;
  }

  if (!v6 || !v12)
  {
LABEL_14:

    goto LABEL_15;
  }

  v13 = [(NSString *)v6 isEqualToString:v12];

  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_18:
  models = self->_models;
  v17 = rangeCopy[3];
  if (models && v17)
  {
    if (([(NSArray *)models isEqual:?]& 1) != 0)
    {
      goto LABEL_23;
    }

LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if (models != v17)
  {
    goto LABEL_15;
  }

LABEL_23:
  companion = self->_companion;
  v19 = rangeCopy[4];
  if (companion && v19)
  {
    v14 = [(PKDeviceVersionRange *)companion isEqual:?];
  }

  else
  {
    v14 = companion == v19;
  }

LABEL_16:

  return v14;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_minimum];
  [array safelyAddObject:self->_maximum];
  [array safelyAddObject:self->_models];
  [array safelyAddObject:self->_companion];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (BOOL)_matchesDeviceVersion:(id)version
{
  versionCopy = version;
  models = [(PKDeviceVersionRange *)self models];

  if (models)
  {
    models2 = [(PKDeviceVersionRange *)self models];
    model = [versionCopy model];
    v8 = [models2 containsObject:model];
  }

  else
  {
    v8 = 0;
  }

  minimum = [(PKDeviceVersionRange *)self minimum];

  maximum = [(PKDeviceVersionRange *)self maximum];

  if (v8)
  {
    goto LABEL_5;
  }

  generation = [versionCopy generation];

  v15 = 0;
  if (generation && minimum | maximum)
  {
    generation2 = [versionCopy generation];
    integerValue = [generation2 integerValue];

    minimum2 = [(PKDeviceVersionRange *)self minimum];
    integerValue2 = [minimum2 integerValue];

    maximum2 = [(PKDeviceVersionRange *)self maximum];
    integerValue3 = [maximum2 integerValue];

    if (!minimum || !maximum)
    {
      if (minimum)
      {
        if (integerValue < integerValue2)
        {
          goto LABEL_20;
        }
      }

      else if (integerValue > integerValue3)
      {
        goto LABEL_20;
      }

LABEL_5:
      companion = [(PKDeviceVersionRange *)self companion];

      if (!companion)
      {
        v15 = 1;
        goto LABEL_21;
      }

      companion2 = [versionCopy companion];

      if (companion2)
      {
        companion3 = [(PKDeviceVersionRange *)self companion];
        companion4 = [versionCopy companion];
        v15 = [companion3 _matchesDeviceVersion:companion4];

        goto LABEL_21;
      }

LABEL_20:
      v15 = 0;
      goto LABEL_21;
    }

    v15 = 0;
    if (integerValue >= integerValue2 && integerValue <= integerValue3)
    {
      goto LABEL_5;
    }
  }

LABEL_21:

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"minimum: '%@'; ", self->_minimum];
  [v3 appendFormat:@"maximum: '%@'; ", self->_maximum];
  [v3 appendFormat:@"models: '%@'; ", self->_models];
  [v3 appendFormat:@"companion: '%@'; ", self->_companion];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

@end
@interface PKDeviceVersionRange
- (BOOL)_matchesDeviceVersion:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeviceVersionRange:(id)a3;
- (PKDeviceVersionRange)initWithCoder:(id)a3;
- (PKDeviceVersionRange)initWithDictionary:(id)a3;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKDeviceVersionRange

- (PKDeviceVersionRange)initWithDictionary:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = PKDeviceVersionRange;
  v5 = [(PKDeviceVersionRange *)&v20 init];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v4 PKStringForKey:@"minimum"];
  minimum = v5->_minimum;
  v5->_minimum = v6;

  v8 = [v4 PKStringForKey:@"maximum"];
  maximum = v5->_maximum;
  v5->_maximum = v8;

  v10 = [v4 PKArrayForKey:@"models"];
  models = v5->_models;
  v5->_models = v10;

  v12 = [v4 PKDictionaryForKey:@"companion"];
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
    v24 = v4;
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
  v4 = [(PKDeviceVersionRange *)self->_companion asDictionary];
  [v3 setObject:v4 forKeyedSubscript:@"companion"];

  v5 = [v3 copy];

  return v5;
}

- (PKDeviceVersionRange)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKDeviceVersionRange;
  v5 = [(PKDeviceVersionRange *)&v17 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"minimum"];
    minimum = v5->_minimum;
    v5->_minimum = v7;

    v9 = [v4 decodeObjectOfClass:v6 forKey:@"maximum"];
    maximum = v5->_maximum;
    v5->_maximum = v9;

    v11 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), v6, 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"models"];
    models = v5->_models;
    v5->_models = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"companion"];
    companion = v5->_companion;
    v5->_companion = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_minimum forKey:@"minimum"];
  [v5 encodeObject:self->_maximum forKey:@"maximum"];
  [v5 encodeObject:self->_models forKey:@"models"];
  companion = self->_companion;
  if (companion)
  {
    [v5 encodeObject:companion forKey:@"companion"];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKDeviceVersionRange allocWithZone:](PKDeviceVersionRange init];
  v6 = [(NSString *)self->_minimum copyWithZone:a3];
  minimum = v5->_minimum;
  v5->_minimum = v6;

  v8 = [(NSString *)self->_maximum copyWithZone:a3];
  maximum = v5->_maximum;
  v5->_maximum = v8;

  v10 = [(NSArray *)self->_models copyWithZone:a3];
  models = v5->_models;
  v5->_models = v10;

  v12 = [(PKDeviceVersionRange *)self->_companion copyWithZone:a3];
  companion = v5->_companion;
  v5->_companion = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDeviceVersionRange *)self isEqualToDeviceVersionRange:v5];
  }

  return v6;
}

- (BOOL)isEqualToDeviceVersionRange:(id)a3
{
  v4 = a3;
  v5 = v4[1];
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

  v11 = v4[2];
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
  v17 = v4[3];
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
  v19 = v4[4];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_minimum];
  [v3 safelyAddObject:self->_maximum];
  [v3 safelyAddObject:self->_models];
  [v3 safelyAddObject:self->_companion];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)_matchesDeviceVersion:(id)a3
{
  v4 = a3;
  v5 = [(PKDeviceVersionRange *)self models];

  if (v5)
  {
    v6 = [(PKDeviceVersionRange *)self models];
    v7 = [v4 model];
    v8 = [v6 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(PKDeviceVersionRange *)self minimum];

  v10 = [(PKDeviceVersionRange *)self maximum];

  if (v8)
  {
    goto LABEL_5;
  }

  v16 = [v4 generation];

  v15 = 0;
  if (v16 && v9 | v10)
  {
    v17 = [v4 generation];
    v18 = [v17 integerValue];

    v19 = [(PKDeviceVersionRange *)self minimum];
    v20 = [v19 integerValue];

    v21 = [(PKDeviceVersionRange *)self maximum];
    v22 = [v21 integerValue];

    if (!v9 || !v10)
    {
      if (v9)
      {
        if (v18 < v20)
        {
          goto LABEL_20;
        }
      }

      else if (v18 > v22)
      {
        goto LABEL_20;
      }

LABEL_5:
      v11 = [(PKDeviceVersionRange *)self companion];

      if (!v11)
      {
        v15 = 1;
        goto LABEL_21;
      }

      v12 = [v4 companion];

      if (v12)
      {
        v13 = [(PKDeviceVersionRange *)self companion];
        v14 = [v4 companion];
        v15 = [v13 _matchesDeviceVersion:v14];

        goto LABEL_21;
      }

LABEL_20:
      v15 = 0;
      goto LABEL_21;
    }

    v15 = 0;
    if (v18 >= v20 && v18 <= v22)
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
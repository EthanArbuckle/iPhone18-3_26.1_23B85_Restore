@interface PKOSVersionRequirementRange
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToOSVersionRequirementRange:(id)a3;
- (BOOL)versionMeetsRequirements:(id)a3 deviceClass:(id)a4;
- (PKOSVersionRequirementRange)initWithCoder:(id)a3;
- (PKOSVersionRequirementRange)initWithDictionary:(id)a3;
- (PKOSVersionRequirementRange)initWithMinimumVersion:(id)a3 maximumVersion:(id)a4;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKOSVersionRequirementRange

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_minimum];
  [v3 safelyAddObject:self->_maximum];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (PKOSVersionRequirementRange)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 PKDictionaryForKey:@"minimum"];
  if (v5)
  {
    v6 = [[PKOSVersionRequirement alloc] initWithDictionary:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v4 PKDictionaryForKey:@"maximum"];
  if (v7)
  {
    v8 = [[PKOSVersionRequirement alloc] initWithDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  if (v6 | v8)
  {
    self = [(PKOSVersionRequirementRange *)self initWithMinimumVersion:v6 maximumVersion:v8];
    v9 = self;
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Invalid version range", v12, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (PKOSVersionRequirementRange)initWithMinimumVersion:(id)a3 maximumVersion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKOSVersionRequirementRange;
  v9 = [(PKOSVersionRequirementRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_minimum, a3);
    objc_storeStrong(&v10->_maximum, a4);
  }

  return v10;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  minimum = self->_minimum;
  if (minimum)
  {
    v5 = [(PKOSVersionRequirement *)minimum asDictionary];
    [v3 setObject:v5 forKeyedSubscript:@"minimum"];
  }

  maximum = self->_maximum;
  if (maximum)
  {
    v7 = [(PKOSVersionRequirement *)maximum asDictionary];
    [v3 setObject:v7 forKeyedSubscript:@"maximum"];
  }

  v8 = [v3 copy];

  return v8;
}

- (BOOL)versionMeetsRequirements:(id)a3 deviceClass:(id)a4
{
  v6 = a3;
  v7 = a4;
  minimum = self->_minimum;
  if (minimum)
  {
    v9 = ([(PKOSVersionRequirement *)minimum compare:v6 deviceClass:v7]+ 1) < 2;
  }

  else
  {
    v9 = 1;
  }

  maximum = self->_maximum;
  if (maximum)
  {
    v11 = [(PKOSVersionRequirement *)maximum compare:v6 deviceClass:v7]== 1;
  }

  else
  {
    v11 = 1;
  }

  if (v9 && v11)
  {
    if ([v7 isEqualToString:@"Watch"])
    {
      v12 = [(PKOSVersionRequirementRange *)self versionMeetsRequirements:v6 deviceClass:@"iPhone"];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (PKOSVersionRequirementRange)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKOSVersionRequirementRange;
  v5 = [(PKOSVersionRequirementRange *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimum"];
    minimum = v5->_minimum;
    v5->_minimum = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximum"];
    maximum = v5->_maximum;
    v5->_maximum = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  minimum = self->_minimum;
  v5 = a3;
  [v5 encodeObject:minimum forKey:@"minimum"];
  [v5 encodeObject:self->_maximum forKey:@"maximum"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKOSVersionRequirementRange allocWithZone:](PKOSVersionRequirementRange init];
  v6 = [(PKOSVersionRequirement *)self->_maximum copyWithZone:a3];
  maximum = v5->_maximum;
  v5->_maximum = v6;

  v8 = [(PKOSVersionRequirement *)self->_minimum copyWithZone:a3];
  minimum = v5->_minimum;
  v5->_minimum = v8;

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKOSVersionRequirementRange *)self isEqualToOSVersionRequirementRange:v5];
  }

  return v6;
}

- (BOOL)isEqualToOSVersionRequirementRange:(id)a3
{
  v4 = a3;
  minimum = self->_minimum;
  v6 = v4[1];
  if (minimum)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if ([(PKOSVersionRequirement *)minimum isEqual:?])
    {
      goto LABEL_9;
    }

LABEL_7:
    v8 = 0;
    goto LABEL_13;
  }

  if (minimum != v6)
  {
    goto LABEL_7;
  }

LABEL_9:
  maximum = self->_maximum;
  v10 = v4[2];
  if (maximum && v10)
  {
    v8 = [(PKOSVersionRequirement *)maximum isEqual:?];
  }

  else
  {
    v8 = maximum == v10;
  }

LABEL_13:

  return v8;
}

@end
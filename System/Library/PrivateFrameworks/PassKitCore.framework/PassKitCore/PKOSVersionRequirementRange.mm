@interface PKOSVersionRequirementRange
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToOSVersionRequirementRange:(id)range;
- (BOOL)versionMeetsRequirements:(id)requirements deviceClass:(id)class;
- (PKOSVersionRequirementRange)initWithCoder:(id)coder;
- (PKOSVersionRequirementRange)initWithDictionary:(id)dictionary;
- (PKOSVersionRequirementRange)initWithMinimumVersion:(id)version maximumVersion:(id)maximumVersion;
- (id)asDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKOSVersionRequirementRange

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_minimum];
  [array safelyAddObject:self->_maximum];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (PKOSVersionRequirementRange)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy PKDictionaryForKey:@"minimum"];
  if (v5)
  {
    v6 = [[PKOSVersionRequirement alloc] initWithDictionary:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [dictionaryCopy PKDictionaryForKey:@"maximum"];
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
    selfCopy = self;
  }

  else
  {
    v10 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1AD337000, v10, OS_LOG_TYPE_DEFAULT, "Invalid version range", v12, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (PKOSVersionRequirementRange)initWithMinimumVersion:(id)version maximumVersion:(id)maximumVersion
{
  versionCopy = version;
  maximumVersionCopy = maximumVersion;
  v12.receiver = self;
  v12.super_class = PKOSVersionRequirementRange;
  v9 = [(PKOSVersionRequirementRange *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_minimum, version);
    objc_storeStrong(&v10->_maximum, maximumVersion);
  }

  return v10;
}

- (id)asDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  minimum = self->_minimum;
  if (minimum)
  {
    asDictionary = [(PKOSVersionRequirement *)minimum asDictionary];
    [v3 setObject:asDictionary forKeyedSubscript:@"minimum"];
  }

  maximum = self->_maximum;
  if (maximum)
  {
    asDictionary2 = [(PKOSVersionRequirement *)maximum asDictionary];
    [v3 setObject:asDictionary2 forKeyedSubscript:@"maximum"];
  }

  v8 = [v3 copy];

  return v8;
}

- (BOOL)versionMeetsRequirements:(id)requirements deviceClass:(id)class
{
  requirementsCopy = requirements;
  classCopy = class;
  minimum = self->_minimum;
  if (minimum)
  {
    v9 = ([(PKOSVersionRequirement *)minimum compare:requirementsCopy deviceClass:classCopy]+ 1) < 2;
  }

  else
  {
    v9 = 1;
  }

  maximum = self->_maximum;
  if (maximum)
  {
    v11 = [(PKOSVersionRequirement *)maximum compare:requirementsCopy deviceClass:classCopy]== 1;
  }

  else
  {
    v11 = 1;
  }

  if (v9 && v11)
  {
    if ([classCopy isEqualToString:@"Watch"])
    {
      v12 = [(PKOSVersionRequirementRange *)self versionMeetsRequirements:requirementsCopy deviceClass:@"iPhone"];
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

- (PKOSVersionRequirementRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKOSVersionRequirementRange;
  v5 = [(PKOSVersionRequirementRange *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimum"];
    minimum = v5->_minimum;
    v5->_minimum = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximum"];
    maximum = v5->_maximum;
    v5->_maximum = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  minimum = self->_minimum;
  coderCopy = coder;
  [coderCopy encodeObject:minimum forKey:@"minimum"];
  [coderCopy encodeObject:self->_maximum forKey:@"maximum"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKOSVersionRequirementRange allocWithZone:](PKOSVersionRequirementRange init];
  v6 = [(PKOSVersionRequirement *)self->_maximum copyWithZone:zone];
  maximum = v5->_maximum;
  v5->_maximum = v6;

  v8 = [(PKOSVersionRequirement *)self->_minimum copyWithZone:zone];
  minimum = v5->_minimum;
  v5->_minimum = v8;

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKOSVersionRequirementRange *)self isEqualToOSVersionRequirementRange:v5];
  }

  return v6;
}

- (BOOL)isEqualToOSVersionRequirementRange:(id)range
{
  rangeCopy = range;
  minimum = self->_minimum;
  v6 = rangeCopy[1];
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
  v10 = rangeCopy[2];
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
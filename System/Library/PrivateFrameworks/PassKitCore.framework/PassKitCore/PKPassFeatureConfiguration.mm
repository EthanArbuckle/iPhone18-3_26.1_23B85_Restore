@interface PKPassFeatureConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPassFeatureConfiguration:(id)configuration;
- (PKPassFeatureConfiguration)initWithCoder:(id)coder;
- (PKPassFeatureConfiguration)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassFeatureConfiguration

- (PKPassFeatureConfiguration)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PKPassFeatureConfiguration;
  v5 = [(PKPassFeatureConfiguration *)&v10 init];
  if (v5)
  {
    v5->_enabled = [dictionaryCopy PKBoolForKey:@"enabled"];
    v6 = [dictionaryCopy PKDictionaryForKey:@"versionRange"];
    if (v6)
    {
      v7 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v6];
      versionRange = v5->_versionRange;
      v5->_versionRange = v7;
    }
  }

  return v5;
}

- (PKPassFeatureConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKPassFeatureConfiguration;
  v5 = [(PKPassFeatureConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enabled"];
    v5->_enabled = [v6 BOOLValue];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"versionRange"];
    versionRange = v5->_versionRange;
    v5->_versionRange = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  enabled = self->_enabled;
  coderCopy = coder;
  v6 = [v4 numberWithBool:enabled];
  [coderCopy encodeObject:v6 forKey:@"enabled"];

  [coderCopy encodeObject:self->_versionRange forKey:@"versionRange"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: ", v5];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_enabled];
  [v6 appendFormat:@"enabled: '%@'; ", v7];

  [v6 appendFormat:@"versionRange: '%@'; ", self->_versionRange];
  [v6 appendFormat:@">"];
  v8 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v8;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_versionRange];
  v4 = PKCombinedHash(17, array);
  v5 = self->_enabled - v4 + 32 * v4;

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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassFeatureConfiguration *)self isEqualToPassFeatureConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassFeatureConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy && self->_enabled == *(configurationCopy + 8))
  {
    versionRange = self->_versionRange;
    v7 = v5[2];
    if (versionRange && v7)
    {
      v8 = [(PKOSVersionRequirementRange *)versionRange isEqual:?];
    }

    else
    {
      v8 = versionRange == v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
@interface PKPassFeatureConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPassFeatureConfiguration:(id)a3;
- (PKPassFeatureConfiguration)initWithCoder:(id)a3;
- (PKPassFeatureConfiguration)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassFeatureConfiguration

- (PKPassFeatureConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassFeatureConfiguration;
  v5 = [(PKPassFeatureConfiguration *)&v10 init];
  if (v5)
  {
    v5->_enabled = [v4 PKBoolForKey:@"enabled"];
    v6 = [v4 PKDictionaryForKey:@"versionRange"];
    if (v6)
    {
      v7 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v6];
      versionRange = v5->_versionRange;
      v5->_versionRange = v7;
    }
  }

  return v5;
}

- (PKPassFeatureConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassFeatureConfiguration;
  v5 = [(PKPassFeatureConfiguration *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enabled"];
    v5->_enabled = [v6 BOOLValue];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"versionRange"];
    versionRange = v5->_versionRange;
    v5->_versionRange = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  enabled = self->_enabled;
  v7 = a3;
  v6 = [v4 numberWithBool:enabled];
  [v7 encodeObject:v6 forKey:@"enabled"];

  [v7 encodeObject:self->_versionRange forKey:@"versionRange"];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_versionRange];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_enabled - v4 + 32 * v4;

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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPassFeatureConfiguration *)self isEqualToPassFeatureConfiguration:v5];
  }

  return v6;
}

- (BOOL)isEqualToPassFeatureConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_enabled == *(v4 + 8))
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
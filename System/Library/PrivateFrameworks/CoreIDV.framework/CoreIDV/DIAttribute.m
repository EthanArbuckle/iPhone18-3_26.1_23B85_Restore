@interface DIAttribute
- (BOOL)dataNodeProof;
- (BOOL)hasLabel;
- (BOOL)holdLocally;
- (BOOL)incorrect;
- (BOOL)isSensitive;
- (BOOL)notForVerification;
- (BOOL)optional;
- (DIAttribute)init;
- (DIAttribute)initWithCoder:(id)a3;
- (NSData)submissionValue;
- (NSObject)defaultValue;
- (NSObject)getCurrentValue;
- (NSString)clientValidationRegex;
- (NSString)codeOnError;
- (NSString)dataNodeProofGroup;
- (NSString)displayFormat;
- (NSString)group;
- (NSString)identifier;
- (NSString)localizedDisplayName;
- (NSString)localizedPlaceholder;
- (NSString)reason;
- (NSString)serverValidationURL;
- (NSString)submissionFormat;
- (NSString)submissionKey;
- (NSString)supportingData;
- (id)description;
- (unint64_t)attributeType;
- (void)encodeWithCoder:(id)a3;
- (void)setAttributeType:(unint64_t)a3;
- (void)setClientValidationRegex:(id)a3;
- (void)setCodeOnError:(id)a3;
- (void)setCurrentValue:(id)a3;
- (void)setDataNodeProof:(BOOL)a3;
- (void)setDataNodeProofGroup:(id)a3;
- (void)setDefaultValue:(id)a3;
- (void)setDisplayFormat:(id)a3;
- (void)setGroup:(id)a3;
- (void)setHasLabel:(BOOL)a3;
- (void)setHoldLocally:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setIncorrect:(BOOL)a3;
- (void)setIsSensitive:(BOOL)a3;
- (void)setLocalizedDisplayName:(id)a3;
- (void)setLocalizedPlaceholder:(id)a3;
- (void)setNotForVerification:(BOOL)a3;
- (void)setOptional:(BOOL)a3;
- (void)setReason:(id)a3;
- (void)setServerValidationURL:(id)a3;
- (void)setSubmissionFormat:(id)a3;
- (void)setSubmissionKey:(id)a3;
- (void)setSubmissionValue:(id)a3;
- (void)setSupportingData:(id)a3;
@end

@implementation DIAttribute

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [v4 encodeInteger:self->_attributeType forKey:@"attributeType"];
  [v4 encodeObject:self->_identifier forKey:@"identifier"];
  [v4 encodeObject:self->_displayFormat forKey:@"displayFormat"];
  [v4 encodeObject:self->_localizedDisplayName forKey:@"localizedDisplayName"];
  [v4 encodeObject:self->_localizedPlaceholder forKey:@"localizedPlaceholder"];
  [v4 encodeObject:self->_submissionKey forKey:@"submissionKey"];
  [v4 encodeBool:self->_optional forKey:@"optional"];
  [v4 encodeBool:self->_incorrect forKey:@"incorrect"];
  [v4 encodeObject:self->_reason forKey:@"reason"];
  [v4 encodeObject:self->_currentValue forKey:@"currentValue"];
  [v4 encodeObject:self->_defaultValue forKey:@"defaultValue"];

  os_unfair_lock_unlock(&self->_lock);
}

- (DIAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DIAttribute *)self init];
  if (v5)
  {
    v5->_attributeType = [v4 decodeIntegerForKey:@"attributeType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayFormat"];
    displayFormat = v5->_displayFormat;
    v5->_displayFormat = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedDisplayName"];
    localizedDisplayName = v5->_localizedDisplayName;
    v5->_localizedDisplayName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedPlaceholder"];
    localizedPlaceholder = v5->_localizedPlaceholder;
    v5->_localizedPlaceholder = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"submissionKey"];
    submissionKey = v5->_submissionKey;
    v5->_submissionKey = v14;

    v5->_optional = [v4 decodeBoolForKey:@"optional"];
    v5->_incorrect = [v4 decodeBoolForKey:@"incorrect"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"reason"];
    reason = v5->_reason;
    v5->_reason = v16;

    attributeType = v5->_attributeType;
    if (attributeType <= 3)
    {
      if (attributeType == 1 || attributeType == 2)
      {
        goto LABEL_12;
      }

      if (attributeType == 3)
      {
        v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentValue"];
        currentValue = v5->_currentValue;
        v5->_currentValue = v24;

        goto LABEL_11;
      }
    }

    else if (attributeType <= 0xA)
    {
      if (((1 << attributeType) & 0x5C0) == 0)
      {
        if (((1 << attributeType) & 0x210) != 0)
        {
          v19 = MEMORY[0x277CBEB98];
          v20 = objc_opt_class();
          v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
          v22 = [v4 decodeObjectOfClasses:v21 forKey:@"currentValue"];
          v23 = v5->_currentValue;
          v5->_currentValue = v22;

LABEL_11:
          v26 = 0;
LABEL_13:
          defaultValue = v5->_defaultValue;
          v5->_defaultValue = v26;

          goto LABEL_14;
        }

        if (attributeType != 5)
        {
          goto LABEL_14;
        }
      }

LABEL_12:
      v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentValue"];
      v28 = v5->_currentValue;
      v5->_currentValue = v27;

      v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
      goto LABEL_13;
    }
  }

LABEL_14:

  return v5;
}

- (DIAttribute)init
{
  v3.receiver = self;
  v3.super_class = DIAttribute;
  result = [(DIAttribute *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
    result->_attributeType = 0;
  }

  return result;
}

- (void)setCurrentValue:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_currentValue != v6)
  {
    v4 = [v6 copyWithZone:0];
    currentValue = self->_currentValue;
    self->_currentValue = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDefaultValue:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_defaultValue != v6)
  {
    v4 = [v6 copyWithZone:0];
    defaultValue = self->_defaultValue;
    self->_defaultValue = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_identifier != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    identifier = self->_identifier;
    self->_identifier = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAttributeType:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_attributeType = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDisplayFormat:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_displayFormat != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    displayFormat = self->_displayFormat;
    self->_displayFormat = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLocalizedDisplayName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_localizedDisplayName != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    localizedDisplayName = self->_localizedDisplayName;
    self->_localizedDisplayName = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setLocalizedPlaceholder:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_localizedPlaceholder != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    localizedPlaceholder = self->_localizedPlaceholder;
    self->_localizedPlaceholder = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSubmissionKey:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_submissionKey != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    submissionKey = self->_submissionKey;
    self->_submissionKey = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSubmissionFormat:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_submissionFormat != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    submissionFormat = self->_submissionFormat;
    self->_submissionFormat = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)optional
{
  os_unfair_lock_lock(&self->_lock);
  optional = self->_optional;
  os_unfair_lock_unlock(&self->_lock);
  return optional;
}

- (void)setOptional:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_optional = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIncorrect:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_incorrect = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setIsSensitive:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_isSensitive = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setHoldLocally:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_holdLocally = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setNotForVerification:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_notForVerification = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDataNodeProof:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_dataNodeProof = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setGroup:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_group != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    group = self->_group;
    self->_group = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setDataNodeProofGroup:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_dataNodeProofGroup != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    dataNodeProofGroup = self->_dataNodeProofGroup;
    self->_dataNodeProofGroup = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSubmissionValue:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_submissionValue != v6)
  {
    v4 = [(NSData *)v6 copyWithZone:0];
    submissionValue = self->_submissionValue;
    self->_submissionValue = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setClientValidationRegex:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_clientValidationRegex != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    clientValidationRegex = self->_clientValidationRegex;
    self->_clientValidationRegex = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setCodeOnError:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_codeOnError != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    codeOnError = self->_codeOnError;
    self->_codeOnError = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setServerValidationURL:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_serverValidationURL != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    serverValidationURL = self->_serverValidationURL;
    self->_serverValidationURL = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setHasLabel:(BOOL)a3
{
  os_unfair_lock_lock(&self->_lock);
  self->_hasLabel = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setSupportingData:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_supportingData != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    supportingData = self->_supportingData;
    self->_supportingData = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setReason:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (self->_reason != v6)
  {
    v4 = [(NSString *)v6 copyWithZone:0];
    reason = self->_reason;
    self->_reason = v4;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSObject)getCurrentValue
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_currentValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSObject)defaultValue
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_defaultValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)identifier
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_identifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (unint64_t)attributeType
{
  os_unfair_lock_lock(&self->_lock);
  attributeType = self->_attributeType;
  os_unfair_lock_unlock(&self->_lock);
  return attributeType;
}

- (NSString)displayFormat
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_displayFormat;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)localizedDisplayName
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_localizedDisplayName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)localizedPlaceholder
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_localizedPlaceholder;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)submissionKey
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_submissionKey;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)submissionFormat
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_submissionFormat;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)incorrect
{
  os_unfair_lock_lock(&self->_lock);
  incorrect = self->_incorrect;
  os_unfair_lock_unlock(&self->_lock);
  return incorrect;
}

- (BOOL)isSensitive
{
  os_unfair_lock_lock(&self->_lock);
  isSensitive = self->_isSensitive;
  os_unfair_lock_unlock(&self->_lock);
  return isSensitive;
}

- (BOOL)holdLocally
{
  os_unfair_lock_lock(&self->_lock);
  holdLocally = self->_holdLocally;
  os_unfair_lock_unlock(&self->_lock);
  return holdLocally;
}

- (BOOL)notForVerification
{
  os_unfair_lock_lock(&self->_lock);
  notForVerification = self->_notForVerification;
  os_unfair_lock_unlock(&self->_lock);
  return notForVerification;
}

- (BOOL)dataNodeProof
{
  os_unfair_lock_lock(&self->_lock);
  dataNodeProof = self->_dataNodeProof;
  os_unfair_lock_unlock(&self->_lock);
  return dataNodeProof;
}

- (NSString)group
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_group;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)dataNodeProofGroup
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_dataNodeProofGroup;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSData)submissionValue
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_submissionValue;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)clientValidationRegex
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_clientValidationRegex;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)codeOnError
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_codeOnError;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)serverValidationURL
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_serverValidationURL;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)hasLabel
{
  os_unfair_lock_lock(&self->_lock);
  hasLabel = self->_hasLabel;
  os_unfair_lock_unlock(&self->_lock);
  return hasLabel;
}

- (NSString)supportingData
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_supportingData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSString)reason
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_reason;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  os_unfair_lock_lock(&self->_lock);
  [v3 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v3 appendFormat:@"attributeType: '%lu'; ", self->_attributeType];
  [v3 appendFormat:@"displayFormat: '%@'; ", self->_displayFormat];
  [v3 appendFormat:@"localizedDisplayName: '%@'; ", self->_localizedDisplayName];
  [v3 appendFormat:@"localizedPlaceholder: '%@'; ", self->_localizedPlaceholder];
  [v3 appendFormat:@"submissionKey: '%@'; ", self->_submissionKey];
  if (self->_optional)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  [v3 appendFormat:@"optional: '%@'; ", v4];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

@end
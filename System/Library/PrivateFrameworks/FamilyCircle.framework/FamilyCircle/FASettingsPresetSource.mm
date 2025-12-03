@interface FASettingsPresetSource
- (BOOL)isEqual:(id)equal;
- (FASettingsPresetSource)initWithCoder:(id)coder;
- (FASettingsPresetSource)initWithDictionary:(id)dictionary;
- (FASettingsPresetSource)initWithIdentifier:(id)identifier configuration:(id)configuration;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FASettingsPresetSource

- (FASettingsPresetSource)initWithIdentifier:(id)identifier configuration:(id)configuration
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = FASettingsPresetSource;
  v8 = [(FASettingsPresetSource *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_configuration, configuration);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = self->_identifier;
    identifier = [v5 identifier];
    if ([(NSString *)identifier isEqualToString:identifier])
    {
      configuration = self->_configuration;
      configuration = [v5 configuration];
      v10 = [(FASettingsPresetConfiguration *)configuration isEqual:configuration];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_configuration forKey:@"values"];
}

- (FASettingsPresetSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"values"];

  v7 = [(FASettingsPresetSource *)self initWithIdentifier:v5 configuration:v6];
  return v7;
}

- (FASettingsPresetSource)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPresetConfiguration initWithDictionary:];
    }
  }

  v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(&v7->super, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPresetConfiguration initWithDictionary:];
    }

    goto LABEL_13;
  }

  v7 = [[FASettingsPresetConfiguration alloc] initWithDictionary:dictionaryCopy];
  if (!v7)
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPresetConfiguration initWithDictionary:];
    }

LABEL_13:
    selfCopy = 0;
    goto LABEL_14;
  }

  self = [(FASettingsPresetSource *)self initWithIdentifier:v6 configuration:v7];
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(FASettingsPresetSource *)self identifier];
  configuration = [(FASettingsPresetSource *)self configuration];
  v7 = [v3 stringWithFormat:@"<%@: %p> ({\n identifier: %@\n configuration: %@\n)}", v4, self, identifier, configuration];

  return v7;
}

@end
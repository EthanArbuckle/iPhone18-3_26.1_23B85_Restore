@interface FASettingsPresetSource
- (BOOL)isEqual:(id)a3;
- (FASettingsPresetSource)initWithCoder:(id)a3;
- (FASettingsPresetSource)initWithDictionary:(id)a3;
- (FASettingsPresetSource)initWithIdentifier:(id)a3 configuration:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FASettingsPresetSource

- (FASettingsPresetSource)initWithIdentifier:(id)a3 configuration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = FASettingsPresetSource;
  v8 = [(FASettingsPresetSource *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_configuration, a4);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    identifier = self->_identifier;
    v7 = [v5 identifier];
    if ([(NSString *)identifier isEqualToString:v7])
    {
      configuration = self->_configuration;
      v9 = [v5 configuration];
      v10 = [(FASettingsPresetConfiguration *)configuration isEqual:v9];
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_configuration forKey:@"values"];
}

- (FASettingsPresetSource)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"values"];

  v7 = [(FASettingsPresetSource *)self initWithIdentifier:v5 configuration:v6];
  return v7;
}

- (FASettingsPresetSource)initWithDictionary:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPresetConfiguration initWithDictionary:];
    }
  }

  v6 = [v4 objectForKeyedSubscript:@"identifier"];
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

  v7 = [[FASettingsPresetConfiguration alloc] initWithDictionary:v4];
  if (!v7)
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPresetConfiguration initWithDictionary:];
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  self = [(FASettingsPresetSource *)self initWithIdentifier:v6 configuration:v7];
  v8 = self;
LABEL_14:

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FASettingsPresetSource *)self identifier];
  v6 = [(FASettingsPresetSource *)self configuration];
  v7 = [v3 stringWithFormat:@"<%@: %p> ({\n identifier: %@\n configuration: %@\n)}", v4, self, v5, v6];

  return v7;
}

@end
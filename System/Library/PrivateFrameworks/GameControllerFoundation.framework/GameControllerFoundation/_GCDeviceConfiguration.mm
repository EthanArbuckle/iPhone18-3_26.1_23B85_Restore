@interface _GCDeviceConfiguration
+ (id)configurationWithIdentifier:(id)identifier priority:(unint64_t)priority deviceIdentifier:(id)deviceIdentifier deviceDependencies:(id)dependencies deviceBuilder:(id)builder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (BOOL)isTransient;
- (_GCDeviceConfiguration)init;
- (_GCDeviceConfiguration)initWithCoder:(id)coder;
- (id)_initWithIdentifier:(id)identifier attributes:(id)attributes;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)redactedDescription;
- (unint64_t)priority;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _GCDeviceConfiguration

+ (id)configurationWithIdentifier:(id)identifier priority:(unint64_t)priority deviceIdentifier:(id)deviceIdentifier deviceDependencies:(id)dependencies deviceBuilder:(id)builder
{
  v26[4] = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  dependenciesCopy = dependencies;
  deviceIdentifierCopy = deviceIdentifier;
  identifierCopy = identifier;
  v16 = [self alloc];
  v25[0] = @"Priority";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:priority];
  v26[0] = v17;
  v25[1] = @"DeviceIdentifier";
  v18 = [deviceIdentifierCopy copyWithZone:0];

  v26[1] = v18;
  v25[2] = @"DeviceDependencies";
  v19 = [dependenciesCopy copy];

  v26[2] = v19;
  v25[3] = @"DeviceBuilderIdentifier";
  v20 = [builderCopy copyWithZone:0];

  v26[3] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v22 = [v16 _initWithIdentifier:identifierCopy attributes:v21];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)_initWithIdentifier:(id)identifier attributes:(id)attributes
{
  identifierCopy = identifier;
  attributesCopy = attributes;
  v12.receiver = self;
  v12.super_class = _GCDeviceConfiguration;
  v8 = [(_GCDeviceConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_attributes, attributes);
  }

  return v8;
}

- (_GCDeviceConfiguration)init
{
  [(_GCDeviceConfiguration *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCDeviceConfiguration)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = _GCDeviceConfiguration;
  v5 = [(_GCDeviceConfiguration *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v9;

    v11 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v19[3] = objc_opt_class();
    v19[4] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:5];
    v13 = [v11 setWithArray:v12];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  attributes = self->_attributes;
  coderCopy = coder;
  [coderCopy encodeObject:attributes forKey:@"attributes"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [_GCMutableDeviceConfiguration alloc];
  identifier = self->_identifier;
  attributes = self->_attributes;

  return [(_GCMutableDeviceConfiguration *)v4 _initWithIdentifier:identifier attributes:attributes];
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  identifier = self->_identifier;
  identifier = [configurationCopy identifier];
  if ([identifier isEqual:identifier])
  {
    attributes = self->_attributes;
    attributes = [configurationCopy attributes];
    v9 = [(NSDictionary *)attributes isEqualToDictionary:attributes];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  identifier = self->_identifier;
  if (isKindOfClass)
  {
    identifier = [equalCopy identifier];
    v8 = [identifier isEqual:identifier];
  }

  else
  {
    v9 = self->_identifier;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [self->_identifier isEqual:equalCopy];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = self->_identifier;
  if ([(_GCDeviceConfiguration *)self isTransient])
  {
    v6 = @" (transient)";
  }

  else
  {
    v6 = &stru_1F4E1BE30;
  }

  return [v3 stringWithFormat:@"<%@ '%@'%@ priority = %llu>", v4, identifier, v6, -[_GCDeviceConfiguration priority](self, "priority")];
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [self->_identifier hash];
  if ([(_GCDeviceConfiguration *)self isTransient])
  {
    v6 = @" (transient)";
  }

  else
  {
    v6 = &stru_1F4E1BE30;
  }

  return [v3 stringWithFormat:@"<%@ '#%llx'%@ priority = %llu>", v4, v5, v6, -[_GCDeviceConfiguration priority](self, "priority")];
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p '%@'> %@", v5, self, self->_identifier, self->_attributes];

  return v6;
}

- (unint64_t)priority
{
  v2 = [(NSDictionary *)self->_attributes objectForKey:@"Priority"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)isTransient
{
  v2 = [(NSDictionary *)self->_attributes objectForKey:@"Transient"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end
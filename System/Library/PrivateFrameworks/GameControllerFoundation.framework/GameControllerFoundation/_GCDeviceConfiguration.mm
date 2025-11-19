@interface _GCDeviceConfiguration
+ (id)configurationWithIdentifier:(id)a3 priority:(unint64_t)a4 deviceIdentifier:(id)a5 deviceDependencies:(id)a6 deviceBuilder:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (BOOL)isTransient;
- (_GCDeviceConfiguration)init;
- (_GCDeviceConfiguration)initWithCoder:(id)a3;
- (id)_initWithIdentifier:(id)a3 attributes:(id)a4;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)redactedDescription;
- (unint64_t)priority;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _GCDeviceConfiguration

+ (id)configurationWithIdentifier:(id)a3 priority:(unint64_t)a4 deviceIdentifier:(id)a5 deviceDependencies:(id)a6 deviceBuilder:(id)a7
{
  v26[4] = *MEMORY[0x1E69E9840];
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [a1 alloc];
  v25[0] = @"Priority";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  v26[0] = v17;
  v25[1] = @"DeviceIdentifier";
  v18 = [v14 copyWithZone:0];

  v26[1] = v18;
  v25[2] = @"DeviceDependencies";
  v19 = [v13 copy];

  v26[2] = v19;
  v25[3] = @"DeviceBuilderIdentifier";
  v20 = [v12 copyWithZone:0];

  v26[3] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
  v22 = [v16 _initWithIdentifier:v15 attributes:v21];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)_initWithIdentifier:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _GCDeviceConfiguration;
  v8 = [(_GCDeviceConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [v6 copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_attributes, a4);
  }

  return v8;
}

- (_GCDeviceConfiguration)init
{
  [(_GCDeviceConfiguration *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (_GCDeviceConfiguration)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"identifier"];
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
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"attributes"];
    attributes = v5->_attributes;
    v5->_attributes = v14;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  attributes = self->_attributes;
  v5 = a3;
  [v5 encodeObject:attributes forKey:@"attributes"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [_GCMutableDeviceConfiguration alloc];
  identifier = self->_identifier;
  attributes = self->_attributes;

  return [(_GCMutableDeviceConfiguration *)v4 _initWithIdentifier:identifier attributes:attributes];
}

- (BOOL)isEqualToConfiguration:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = [v4 identifier];
  if ([identifier isEqual:v6])
  {
    attributes = self->_attributes;
    v8 = [v4 attributes];
    v9 = [(NSDictionary *)attributes isEqualToDictionary:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  identifier = self->_identifier;
  if (isKindOfClass)
  {
    v7 = [v4 identifier];
    v8 = [identifier isEqual:v7];
  }

  else
  {
    v9 = self->_identifier;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [self->_identifier isEqual:v4];
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
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (BOOL)isTransient
{
  v2 = [(NSDictionary *)self->_attributes objectForKey:@"Transient"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end
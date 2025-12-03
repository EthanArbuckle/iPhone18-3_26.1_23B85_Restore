@interface _GCMutableDeviceConfiguration
- (id)_initWithIdentifier:(id)identifier attributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setDeviceBuilderIdentifier:(id)identifier;
- (void)setDeviceDependencies:(id)dependencies;
- (void)setDeviceIdentifier:(id)identifier;
- (void)setIdentifier:(id)identifier;
- (void)setPriority:(unint64_t)priority;
@end

@implementation _GCMutableDeviceConfiguration

- (id)_initWithIdentifier:(id)identifier attributes:(id)attributes
{
  identifierCopy = identifier;
  v7 = [attributes mutableCopy];
  v10.receiver = self;
  v10.super_class = _GCMutableDeviceConfiguration;
  v8 = [(_GCDeviceConfiguration *)&v10 _initWithIdentifier:identifierCopy attributes:v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_GCDeviceConfiguration alloc];
  identifier = self->super._identifier;
  v6 = [(NSDictionary *)self->super._attributes copy];
  v7 = [(_GCDeviceConfiguration *)v4 _initWithIdentifier:identifier attributes:v6];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [_GCMutableDeviceConfiguration alloc];
  identifier = self->super._identifier;
  attributes = self->super._attributes;

  return [(_GCMutableDeviceConfiguration *)v4 _initWithIdentifier:identifier attributes:attributes];
}

- (void)setIdentifier:(id)identifier
{
  v4 = [identifier copyWithZone:0];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPriority:(unint64_t)priority
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:priority];
  [(_GCMutableDeviceConfiguration *)self setValue:v4 forAttribute:@"Priority"];
}

- (void)setDeviceIdentifier:(id)identifier
{
  v4 = [identifier copyWithZone:0];
  [(_GCMutableDeviceConfiguration *)self setValue:v4 forAttribute:@"DeviceIdentifier"];
}

- (void)setDeviceDependencies:(id)dependencies
{
  v4 = [dependencies copy];
  [(_GCMutableDeviceConfiguration *)self setValue:v4 forAttribute:@"DeviceDependencies"];
}

- (void)setDeviceBuilderIdentifier:(id)identifier
{
  v4 = [identifier copyWithZone:0];
  [(_GCMutableDeviceConfiguration *)self setValue:v4 forAttribute:@"DeviceBuilderIdentifier"];
}

@end
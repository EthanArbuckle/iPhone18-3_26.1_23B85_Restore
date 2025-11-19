@interface _GCMutableDeviceConfiguration
- (id)_initWithIdentifier:(id)a3 attributes:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setDeviceBuilderIdentifier:(id)a3;
- (void)setDeviceDependencies:(id)a3;
- (void)setDeviceIdentifier:(id)a3;
- (void)setIdentifier:(id)a3;
- (void)setPriority:(unint64_t)a3;
@end

@implementation _GCMutableDeviceConfiguration

- (id)_initWithIdentifier:(id)a3 attributes:(id)a4
{
  v6 = a3;
  v7 = [a4 mutableCopy];
  v10.receiver = self;
  v10.super_class = _GCMutableDeviceConfiguration;
  v8 = [(_GCDeviceConfiguration *)&v10 _initWithIdentifier:v6 attributes:v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_GCDeviceConfiguration alloc];
  identifier = self->super._identifier;
  v6 = [(NSDictionary *)self->super._attributes copy];
  v7 = [(_GCDeviceConfiguration *)v4 _initWithIdentifier:identifier attributes:v6];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [_GCMutableDeviceConfiguration alloc];
  identifier = self->super._identifier;
  attributes = self->super._attributes;

  return [(_GCMutableDeviceConfiguration *)v4 _initWithIdentifier:identifier attributes:attributes];
}

- (void)setIdentifier:(id)a3
{
  v4 = [a3 copyWithZone:0];
  identifier = self->super._identifier;
  self->super._identifier = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setPriority:(unint64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(_GCMutableDeviceConfiguration *)self setValue:v4 forAttribute:@"Priority"];
}

- (void)setDeviceIdentifier:(id)a3
{
  v4 = [a3 copyWithZone:0];
  [(_GCMutableDeviceConfiguration *)self setValue:v4 forAttribute:@"DeviceIdentifier"];
}

- (void)setDeviceDependencies:(id)a3
{
  v4 = [a3 copy];
  [(_GCMutableDeviceConfiguration *)self setValue:v4 forAttribute:@"DeviceDependencies"];
}

- (void)setDeviceBuilderIdentifier:(id)a3
{
  v4 = [a3 copyWithZone:0];
  [(_GCMutableDeviceConfiguration *)self setValue:v4 forAttribute:@"DeviceBuilderIdentifier"];
}

@end
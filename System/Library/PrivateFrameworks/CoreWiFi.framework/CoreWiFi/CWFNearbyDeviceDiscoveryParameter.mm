@interface CWFNearbyDeviceDiscoveryParameter
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToNDDParameters:(id)parameters;
- (CWFNearbyDeviceDiscoveryParameter)init;
- (CWFNearbyDeviceDiscoveryParameter)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CWFNearbyDeviceDiscoveryParameter

- (CWFNearbyDeviceDiscoveryParameter)init
{
  v6.receiver = self;
  v6.super_class = CWFNearbyDeviceDiscoveryParameter;
  v2 = [(CWFNearbyDeviceDiscoveryParameter *)&v6 init];
  v3 = v2;
  if (v2)
  {
    filters = v2->_filters;
    v2->_filters = 0;

    v3->_operation = 0;
    *&v3->_channel = 0u;
    *&v3->_bandwidth = 0u;
  }

  return v3;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  [string appendFormat:@"filters="];
  if ([(NSArray *)self->_filters count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_filters objectAtIndexedSubscript:v4];
      [string appendFormat:@"%@;", v5];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_filters count]);
  }

  [string appendFormat:@"channel=%ld, ", self->_channel];
  [string appendFormat:@"band=%ld, ", self->_band];
  [string appendFormat:@"bandwidth=%ld, ", self->_bandwidth];
  [string appendFormat:@"type=%ld, ", self->_type];
  [string appendFormat:@"operation=%ld, ", self->_operation];

  return string;
}

- (BOOL)isEqualToNDDParameters:(id)parameters
{
  parametersCopy = parameters;
  filters = self->_filters;
  filters = [parametersCopy filters];
  if (filters != filters)
  {
    if (!self->_filters || ([parametersCopy filters], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v12 = 0;
      goto LABEL_15;
    }

    v3 = v9;
    v10 = self->_filters;
    filters2 = [parametersCopy filters];
    if (![(NSArray *)v10 isEqual:filters2])
    {
      v11 = 0;
LABEL_14:

      v12 = v11;
      goto LABEL_15;
    }
  }

  channel = self->_channel;
  if (channel == [parametersCopy channel] && (band = self->_band, band == objc_msgSend(parametersCopy, "band")) && (bandwidth = self->_bandwidth, bandwidth == objc_msgSend(parametersCopy, "bandwidth")) && (type = self->_type, type == objc_msgSend(parametersCopy, "type")))
  {
    operation = self->_operation;
    v11 = operation == [parametersCopy operation];
    v12 = v11;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (filters != filters)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v12;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFNearbyDeviceDiscoveryParameter *)self isEqualToNDDParameters:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_filters hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_channel];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_band];
  v7 = [v6 hash];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_bandwidth];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_type];
  v11 = [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_operation];
  v13 = v11 ^ [v12 hash];

  return v9 ^ v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFNearbyDeviceDiscoveryParameter allocWithZone:?]];
  [(CWFNearbyDeviceDiscoveryParameter *)v4 setFilters:self->_filters];
  [(CWFNearbyDeviceDiscoveryParameter *)v4 setChannel:self->_channel];
  [(CWFNearbyDeviceDiscoveryParameter *)v4 setBand:self->_band];
  [(CWFNearbyDeviceDiscoveryParameter *)v4 setBandwidth:self->_bandwidth];
  [(CWFNearbyDeviceDiscoveryParameter *)v4 setType:self->_type];
  [(CWFNearbyDeviceDiscoveryParameter *)v4 setOperation:self->_operation];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  filters = self->_filters;
  coderCopy = coder;
  [coderCopy encodeObject:filters forKey:@"_filters"];
  [coderCopy encodeInteger:self->_channel forKey:@"_channel"];
  [coderCopy encodeInteger:self->_band forKey:@"_band"];
  [coderCopy encodeInteger:self->_bandwidth forKey:@"_bandwidth"];
  [coderCopy encodeInteger:self->_type forKey:@"_type"];
  [coderCopy encodeInteger:self->_operation forKey:@"_operation"];
}

- (CWFNearbyDeviceDiscoveryParameter)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CWFNearbyDeviceDiscoveryParameter;
  v5 = [(CWFNearbyDeviceDiscoveryParameter *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_filters"];
    filters = v5->_filters;
    v5->_filters = v9;

    v5->_channel = [coderCopy decodeIntegerForKey:@"_channel"];
    v5->_band = [coderCopy decodeIntegerForKey:@"_band"];
    v5->_bandwidth = [coderCopy decodeIntegerForKey:@"_bandwidth"];
    v5->_type = [coderCopy decodeIntegerForKey:@"_type"];
    v5->_operation = [coderCopy decodeIntegerForKey:@"_operation"];
  }

  return v5;
}

@end
@interface CWFNearbyDeviceDiscoveryParameter
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToNDDParameters:(id)a3;
- (CWFNearbyDeviceDiscoveryParameter)init;
- (CWFNearbyDeviceDiscoveryParameter)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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
  v3 = [MEMORY[0x1E696AD60] string];
  [v3 appendFormat:@"filters="];
  if ([(NSArray *)self->_filters count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSArray *)self->_filters objectAtIndexedSubscript:v4];
      [v3 appendFormat:@"%@;", v5];

      ++v4;
    }

    while (v4 < [(NSArray *)self->_filters count]);
  }

  [v3 appendFormat:@"channel=%ld, ", self->_channel];
  [v3 appendFormat:@"band=%ld, ", self->_band];
  [v3 appendFormat:@"bandwidth=%ld, ", self->_bandwidth];
  [v3 appendFormat:@"type=%ld, ", self->_type];
  [v3 appendFormat:@"operation=%ld, ", self->_operation];

  return v3;
}

- (BOOL)isEqualToNDDParameters:(id)a3
{
  v6 = a3;
  filters = self->_filters;
  v8 = [v6 filters];
  if (filters != v8)
  {
    if (!self->_filters || ([v6 filters], (v9 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v12 = 0;
      goto LABEL_15;
    }

    v3 = v9;
    v10 = self->_filters;
    v4 = [v6 filters];
    if (![(NSArray *)v10 isEqual:v4])
    {
      v11 = 0;
LABEL_14:

      v12 = v11;
      goto LABEL_15;
    }
  }

  channel = self->_channel;
  if (channel == [v6 channel] && (band = self->_band, band == objc_msgSend(v6, "band")) && (bandwidth = self->_bandwidth, bandwidth == objc_msgSend(v6, "bandwidth")) && (type = self->_type, type == objc_msgSend(v6, "type")))
  {
    operation = self->_operation;
    v11 = operation == [v6 operation];
    v12 = v11;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (filters != v8)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v12;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFNearbyDeviceDiscoveryParameter *)self isEqualToNDDParameters:v5];
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

- (id)copyWithZone:(_NSZone *)a3
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

- (void)encodeWithCoder:(id)a3
{
  filters = self->_filters;
  v5 = a3;
  [v5 encodeObject:filters forKey:@"_filters"];
  [v5 encodeInteger:self->_channel forKey:@"_channel"];
  [v5 encodeInteger:self->_band forKey:@"_band"];
  [v5 encodeInteger:self->_bandwidth forKey:@"_bandwidth"];
  [v5 encodeInteger:self->_type forKey:@"_type"];
  [v5 encodeInteger:self->_operation forKey:@"_operation"];
}

- (CWFNearbyDeviceDiscoveryParameter)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CWFNearbyDeviceDiscoveryParameter;
  v5 = [(CWFNearbyDeviceDiscoveryParameter *)&v12 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_filters"];
    filters = v5->_filters;
    v5->_filters = v9;

    v5->_channel = [v4 decodeIntegerForKey:@"_channel"];
    v5->_band = [v4 decodeIntegerForKey:@"_band"];
    v5->_bandwidth = [v4 decodeIntegerForKey:@"_bandwidth"];
    v5->_type = [v4 decodeIntegerForKey:@"_type"];
    v5->_operation = [v4 decodeIntegerForKey:@"_operation"];
  }

  return v5;
}

@end
@interface MRRapportTransportConfiguration
- (MRRapportTransportConfiguration)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRRapportTransportConfiguration

- (void)encodeWithCoder:(id)a3
{
  deviceUID = self->_deviceUID;
  v5 = a3;
  [v5 encodeObject:deviceUID forKey:@"device"];
  [v5 encodeObject:self->_sessionUID forKey:@"session"];
}

- (MRRapportTransportConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MRRapportTransportConfiguration);
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"device"];
  v7 = [v6 copy];
  [(MRRapportTransportConfiguration *)v5 setDeviceUID:v7];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"session"];

  v9 = [v8 copy];
  [(MRRapportTransportConfiguration *)v5 setSessionUID:v9];

  return v5;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"device=%@(%@), session=%@", self->_deviceUID, self->_name, self->_sessionUID];

  return v2;
}

@end
@interface MRRapportTransportConfiguration
- (MRRapportTransportConfiguration)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRRapportTransportConfiguration

- (void)encodeWithCoder:(id)coder
{
  deviceUID = self->_deviceUID;
  coderCopy = coder;
  [coderCopy encodeObject:deviceUID forKey:@"device"];
  [coderCopy encodeObject:self->_sessionUID forKey:@"session"];
}

- (MRRapportTransportConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc_init(MRRapportTransportConfiguration);
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"device"];
  v7 = [v6 copy];
  [(MRRapportTransportConfiguration *)v5 setDeviceUID:v7];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session"];

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
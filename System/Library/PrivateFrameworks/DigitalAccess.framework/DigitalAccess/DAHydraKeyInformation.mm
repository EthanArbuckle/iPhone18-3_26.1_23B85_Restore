@interface DAHydraKeyInformation
+ (id)withEndpoint:(id)endpoint;
- (DAHydraKeyInformation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAHydraKeyInformation

+ (id)withEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = objc_opt_new();
  certificates = [endpointCopy certificates];
  v6 = v4[1];
  v4[1] = certificates;

  appletIdentifier = [endpointCopy appletIdentifier];

  v8 = v4[2];
  v4[2] = appletIdentifier;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  certificateChain = self->_certificateChain;
  coderCopy = coder;
  [coderCopy encodeObject:certificateChain forKey:@"certificateChain"];
  [coderCopy encodeObject:self->_appletIdentifier forKey:@"appletIdentifier"];
}

- (DAHydraKeyInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DAHydraKeyInformation;
  v5 = [(DAHydraKeyInformation *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"certificateChain"];
    certificateChain = v5->_certificateChain;
    v5->_certificateChain = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v8;
  }

  return v5;
}

@end
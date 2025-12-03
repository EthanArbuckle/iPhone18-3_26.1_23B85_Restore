@interface DAHomeKeyInformation
+ (id)withEndpoint:(id)endpoint;
- (DAHomeKeyInformation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DAHomeKeyInformation

+ (id)withEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v4 = objc_opt_new();
  appletIdentifier = [endpointCopy appletIdentifier];
  v6 = v4[1];
  v4[1] = appletIdentifier;

  publicKey = [endpointCopy publicKey];
  v8 = v4[2];
  v4[2] = publicKey;

  readerIdentifier = [endpointCopy readerIdentifier];

  v10 = v4[3];
  v4[3] = readerIdentifier;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  appletIdentifier = self->_appletIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:appletIdentifier forKey:@"appletIdentifier"];
  [coderCopy encodeObject:self->_publicKey forKey:@"publicKey"];
  [coderCopy encodeObject:self->_readerIdentifier forKey:@"readerIdentifier"];
}

- (DAHomeKeyInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DAHomeKeyInformation;
  v5 = [(DAHomeKeyInformation *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v5->_appletIdentifier;
    v5->_appletIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v5->_publicKey;
    v5->_publicKey = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v5->_readerIdentifier;
    v5->_readerIdentifier = v10;
  }

  return v5;
}

@end
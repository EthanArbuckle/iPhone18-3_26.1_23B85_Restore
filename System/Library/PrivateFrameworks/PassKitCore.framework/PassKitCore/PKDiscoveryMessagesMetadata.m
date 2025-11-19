@interface PKDiscoveryMessagesMetadata
- (PKDiscoveryMessagesMetadata)initWithCoder:(id)a3;
- (PKDiscoveryMessagesMetadata)initWithDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKDiscoveryMessagesMetadata

- (PKDiscoveryMessagesMetadata)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKDiscoveryMessagesMetadata;
  v5 = [(PKDiscoveryMessagesMetadata *)&v9 init];
  if (v5)
  {
    v5->_version = [v4 PKIntegerForKey:@"version"];
    v6 = [v4 PKURLForKey:@"messagesBundleURL"];
    messagesBundleURL = v5->_messagesBundleURL;
    v5->_messagesBundleURL = v6;
  }

  return v5;
}

- (PKDiscoveryMessagesMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKDiscoveryMessagesMetadata;
  v5 = [(PKDiscoveryMessagesMetadata *)&v9 init];
  if (v5)
  {
    v5->_version = [v4 decodeIntegerForKey:@"version"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"messagesBundleURL"];
    messagesBundleURL = v5->_messagesBundleURL;
    v5->_messagesBundleURL = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  version = self->_version;
  v5 = a3;
  [v5 encodeInteger:version forKey:@"version"];
  [v5 encodeObject:self->_messagesBundleURL forKey:@"messagesBundleURL"];
}

@end
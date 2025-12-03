@interface PKDiscoveryMessagesMetadata
- (PKDiscoveryMessagesMetadata)initWithCoder:(id)coder;
- (PKDiscoveryMessagesMetadata)initWithDictionary:(id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKDiscoveryMessagesMetadata

- (PKDiscoveryMessagesMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = PKDiscoveryMessagesMetadata;
  v5 = [(PKDiscoveryMessagesMetadata *)&v9 init];
  if (v5)
  {
    v5->_version = [dictionaryCopy PKIntegerForKey:@"version"];
    v6 = [dictionaryCopy PKURLForKey:@"messagesBundleURL"];
    messagesBundleURL = v5->_messagesBundleURL;
    v5->_messagesBundleURL = v6;
  }

  return v5;
}

- (PKDiscoveryMessagesMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKDiscoveryMessagesMetadata;
  v5 = [(PKDiscoveryMessagesMetadata *)&v9 init];
  if (v5)
  {
    v5->_version = [coderCopy decodeIntegerForKey:@"version"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"messagesBundleURL"];
    messagesBundleURL = v5->_messagesBundleURL;
    v5->_messagesBundleURL = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  version = self->_version;
  coderCopy = coder;
  [coderCopy encodeInteger:version forKey:@"version"];
  [coderCopy encodeObject:self->_messagesBundleURL forKey:@"messagesBundleURL"];
}

@end
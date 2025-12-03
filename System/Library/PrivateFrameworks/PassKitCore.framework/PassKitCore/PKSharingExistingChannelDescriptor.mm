@interface PKSharingExistingChannelDescriptor
+ (id)existingForTransportIdentifier:(id)identifier;
- (PKSharingExistingChannelDescriptor)initWithCoder:(id)coder;
- (id)_initWithTransportIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSharingExistingChannelDescriptor

- (id)_initWithTransportIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = PKSharingExistingChannelDescriptor;
  v6 = [(PKSharingChannelDescriptor *)&v9 _initWithType:1];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, identifier);
  }

  return v7;
}

+ (id)existingForTransportIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[PKSharingExistingChannelDescriptor alloc] _initWithTransportIdentifier:identifierCopy];

  return v4;
}

- (PKSharingExistingChannelDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKSharingExistingChannelDescriptor;
  v5 = [(PKSharingChannelDescriptor *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transportIdentifier"];
    transportIdentifier = v5->_transportIdentifier;
    v5->_transportIdentifier = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKSharingExistingChannelDescriptor;
  coderCopy = coder;
  [(PKSharingChannelDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_transportIdentifier forKey:{@"transportIdentifier", v5.receiver, v5.super_class}];
}

@end
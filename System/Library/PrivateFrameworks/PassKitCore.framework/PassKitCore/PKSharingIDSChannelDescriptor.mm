@interface PKSharingIDSChannelDescriptor
+ (id)createWithDeviceIdentifier:(id)identifier;
+ (id)createWithRemoteAddress:(id)address;
+ (id)existingForSessionIdentifier:(id)identifier;
- (PKSharingIDSChannelDescriptor)initWithCoder:(id)coder;
- (id)_initWithSessionIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier subtype:(unint64_t)subtype;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSharingIDSChannelDescriptor

- (id)_initWithSessionIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier subtype:(unint64_t)subtype
{
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  v14.receiver = self;
  v14.super_class = PKSharingIDSChannelDescriptor;
  v11 = [(PKSharingChannelDescriptor *)&v14 _initWithType:4];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 4, identifier);
    objc_storeStrong(v12 + 3, deviceIdentifier);
    v12[2] = subtype;
  }

  return v12;
}

+ (id)createWithDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[PKSharingIDSChannelDescriptor alloc] _initWithSessionIdentifier:0 deviceIdentifier:identifierCopy subtype:0];

  return v4;
}

+ (id)existingForSessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[PKSharingIDSChannelDescriptor alloc] _initWithSessionIdentifier:identifierCopy deviceIdentifier:0 subtype:2];

  return v4;
}

+ (id)createWithRemoteAddress:(id)address
{
  addressCopy = address;
  v4 = [[PKSharingIDSChannelDescriptor alloc] _initWithSessionIdentifier:0 deviceIdentifier:addressCopy subtype:1];

  return v4;
}

- (PKSharingIDSChannelDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = PKSharingIDSChannelDescriptor;
  v5 = [(PKSharingChannelDescriptor *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKSharingIDSChannelDescriptor;
  coderCopy = coder;
  [(PKSharingChannelDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:{@"sessionIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
}

@end
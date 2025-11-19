@interface PKSharingIDSChannelDescriptor
+ (id)createWithDeviceIdentifier:(id)a3;
+ (id)createWithRemoteAddress:(id)a3;
+ (id)existingForSessionIdentifier:(id)a3;
- (PKSharingIDSChannelDescriptor)initWithCoder:(id)a3;
- (id)_initWithSessionIdentifier:(id)a3 deviceIdentifier:(id)a4 subtype:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSharingIDSChannelDescriptor

- (id)_initWithSessionIdentifier:(id)a3 deviceIdentifier:(id)a4 subtype:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PKSharingIDSChannelDescriptor;
  v11 = [(PKSharingChannelDescriptor *)&v14 _initWithType:4];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(v11 + 4, a3);
    objc_storeStrong(v12 + 3, a4);
    v12[2] = a5;
  }

  return v12;
}

+ (id)createWithDeviceIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[PKSharingIDSChannelDescriptor alloc] _initWithSessionIdentifier:0 deviceIdentifier:v3 subtype:0];

  return v4;
}

+ (id)existingForSessionIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[PKSharingIDSChannelDescriptor alloc] _initWithSessionIdentifier:v3 deviceIdentifier:0 subtype:2];

  return v4;
}

+ (id)createWithRemoteAddress:(id)a3
{
  v3 = a3;
  v4 = [[PKSharingIDSChannelDescriptor alloc] _initWithSessionIdentifier:0 deviceIdentifier:v3 subtype:1];

  return v4;
}

- (PKSharingIDSChannelDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKSharingIDSChannelDescriptor;
  v5 = [(PKSharingChannelDescriptor *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deviceIdentifier"];
    deviceIdentifier = v5->_deviceIdentifier;
    v5->_deviceIdentifier = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSharingIDSChannelDescriptor;
  v4 = a3;
  [(PKSharingChannelDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_sessionIdentifier forKey:{@"sessionIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_deviceIdentifier forKey:@"deviceIdentifier"];
}

@end
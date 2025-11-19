@interface PKSharingProximityChannelDescriptor
+ (id)createSetupAssistantDescriptor;
- (PKSharingProximityChannelDescriptor)initWithCoder:(id)a3;
- (PKSharingProximityChannelDescriptor)initWithSessionIdentifier:(id)a3 group:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSharingProximityChannelDescriptor

- (PKSharingProximityChannelDescriptor)initWithSessionIdentifier:(id)a3 group:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PKSharingProximityChannelDescriptor;
  v8 = [(PKSharingChannelDescriptor *)&v11 _initWithType:6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, a3);
    v9->_group = a4;
  }

  return v9;
}

+ (id)createSetupAssistantDescriptor
{
  v2 = [PKSharingProximityChannelDescriptor alloc];
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v4 = [v3 UUIDString];
  v5 = [(PKSharingProximityChannelDescriptor *)v2 initWithSessionIdentifier:v4 group:0];

  return v5;
}

- (PKSharingProximityChannelDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKSharingProximityChannelDescriptor;
  v5 = [(PKSharingChannelDescriptor *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"group"];
    v5->_group = PKSharingProximityChannelDescriptorGroupFromString(v8);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PKSharingProximityChannelDescriptor;
  v4 = a3;
  [(PKSharingChannelDescriptor *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_sessionIdentifier forKey:{@"sessionIdentifier", v6.receiver, v6.super_class}];
  if (self->_group)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = @"setup_assistant";
  }

  [v4 encodeObject:v5 forKey:@"group"];
}

@end
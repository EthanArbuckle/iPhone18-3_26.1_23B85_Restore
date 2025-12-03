@interface PKSharingProximityChannelDescriptor
+ (id)createSetupAssistantDescriptor;
- (PKSharingProximityChannelDescriptor)initWithCoder:(id)coder;
- (PKSharingProximityChannelDescriptor)initWithSessionIdentifier:(id)identifier group:(unint64_t)group;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSharingProximityChannelDescriptor

- (PKSharingProximityChannelDescriptor)initWithSessionIdentifier:(id)identifier group:(unint64_t)group
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = PKSharingProximityChannelDescriptor;
  v8 = [(PKSharingChannelDescriptor *)&v11 _initWithType:6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(v8 + 3, identifier);
    v9->_group = group;
  }

  return v9;
}

+ (id)createSetupAssistantDescriptor
{
  v2 = [PKSharingProximityChannelDescriptor alloc];
  v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  uUIDString = [v3 UUIDString];
  v5 = [(PKSharingProximityChannelDescriptor *)v2 initWithSessionIdentifier:uUIDString group:0];

  return v5;
}

- (PKSharingProximityChannelDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKSharingProximityChannelDescriptor;
  v5 = [(PKSharingChannelDescriptor *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"group"];
    v5->_group = PKSharingProximityChannelDescriptorGroupFromString(v8);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PKSharingProximityChannelDescriptor;
  coderCopy = coder;
  [(PKSharingChannelDescriptor *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:{@"sessionIdentifier", v6.receiver, v6.super_class}];
  if (self->_group)
  {
    v5 = @"unknown";
  }

  else
  {
    v5 = @"setup_assistant";
  }

  [coderCopy encodeObject:v5 forKey:@"group"];
}

@end
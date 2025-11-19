@interface PKSharingChannelDescriptor
- (PKSharingChannelDescriptor)initWithCoder:(id)a3;
- (id)_initWithType:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSharingChannelDescriptor

- (id)_initWithType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKSharingChannelDescriptor;
  result = [(PKSharingChannelDescriptor *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

- (PKSharingChannelDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PKSharingChannelDescriptor;
  v5 = [(PKSharingChannelDescriptor *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  type = self->_type;
  v5 = a3;
  v6 = [v3 numberWithUnsignedInteger:type];
  [v5 encodeObject:v6 forKey:@"type"];
}

@end
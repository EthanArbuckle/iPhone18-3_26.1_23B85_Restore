@interface PKSharingChannelDescriptor
- (PKSharingChannelDescriptor)initWithCoder:(id)coder;
- (id)_initWithType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSharingChannelDescriptor

- (id)_initWithType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PKSharingChannelDescriptor;
  result = [(PKSharingChannelDescriptor *)&v5 init];
  if (result)
  {
    *(result + 1) = type;
  }

  return result;
}

- (PKSharingChannelDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = PKSharingChannelDescriptor;
  v5 = [(PKSharingChannelDescriptor *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = MEMORY[0x1E696AD98];
  type = self->_type;
  coderCopy = coder;
  v6 = [v3 numberWithUnsignedInteger:type];
  [coderCopy encodeObject:v6 forKey:@"type"];
}

@end
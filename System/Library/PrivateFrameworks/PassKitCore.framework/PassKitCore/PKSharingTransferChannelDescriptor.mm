@interface PKSharingTransferChannelDescriptor
+ (id)createForTransferToken:(id)token;
- (PKSharingTransferChannelDescriptor)initWithCoder:(id)coder;
- (id)_initWithTransferToken:(id)token;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSharingTransferChannelDescriptor

- (id)_initWithTransferToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = PKSharingTransferChannelDescriptor;
  v6 = [(PKSharingChannelDescriptor *)&v9 _initWithType:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, token);
  }

  return v7;
}

+ (id)createForTransferToken:(id)token
{
  tokenCopy = token;
  v4 = [[PKSharingTransferChannelDescriptor alloc] _initWithTransferToken:tokenCopy];

  return v4;
}

- (PKSharingTransferChannelDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKSharingTransferChannelDescriptor;
  v5 = [(PKSharingChannelDescriptor *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"transferToken"];
    transferToken = v5->_transferToken;
    v5->_transferToken = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKSharingTransferChannelDescriptor;
  coderCopy = coder;
  [(PKSharingChannelDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_transferToken forKey:{@"transferToken", v5.receiver, v5.super_class}];
}

@end
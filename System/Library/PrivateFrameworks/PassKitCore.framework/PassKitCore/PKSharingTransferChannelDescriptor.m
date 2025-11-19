@interface PKSharingTransferChannelDescriptor
+ (id)createForTransferToken:(id)a3;
- (PKSharingTransferChannelDescriptor)initWithCoder:(id)a3;
- (id)_initWithTransferToken:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSharingTransferChannelDescriptor

- (id)_initWithTransferToken:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKSharingTransferChannelDescriptor;
  v6 = [(PKSharingChannelDescriptor *)&v9 _initWithType:2];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 2, a3);
  }

  return v7;
}

+ (id)createForTransferToken:(id)a3
{
  v3 = a3;
  v4 = [[PKSharingTransferChannelDescriptor alloc] _initWithTransferToken:v3];

  return v4;
}

- (PKSharingTransferChannelDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKSharingTransferChannelDescriptor;
  v5 = [(PKSharingChannelDescriptor *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"transferToken"];
    transferToken = v5->_transferToken;
    v5->_transferToken = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKSharingTransferChannelDescriptor;
  v4 = a3;
  [(PKSharingChannelDescriptor *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_transferToken forKey:{@"transferToken", v5.receiver, v5.super_class}];
}

@end
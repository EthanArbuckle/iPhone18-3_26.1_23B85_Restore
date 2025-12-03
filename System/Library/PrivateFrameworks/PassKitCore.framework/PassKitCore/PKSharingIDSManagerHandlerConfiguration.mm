@interface PKSharingIDSManagerHandlerConfiguration
- (PKSharingIDSManagerHandlerConfiguration)initWithSharingGroup:(unint64_t)group;
- (id)description;
@end

@implementation PKSharingIDSManagerHandlerConfiguration

- (PKSharingIDSManagerHandlerConfiguration)initWithSharingGroup:(unint64_t)group
{
  v5.receiver = self;
  v5.super_class = PKSharingIDSManagerHandlerConfiguration;
  result = [(PKSharingIDSManagerHandlerConfiguration *)&v5 init];
  if (result)
  {
    result->_sharingGroup = group;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  sharingGroup = self->_sharingGroup;
  v6 = @"peerPayment";
  if (sharingGroup == 2)
  {
    v6 = @"accountUsers";
  }

  if (sharingGroup)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"unknown";
  }

  [v3 appendFormat:@"sharingGroup: '%@'; ", v7];
  [v4 appendFormat:@"handle: '%@'; ", self->_handle];
  [v4 appendFormat:@"accountIdentifier: '%@'; ", self->_accountIdentifier];
  v8 = PKAccountAccessLevelToString(self->_accessLevel);
  [v4 appendFormat:@"accessLevel: '%@'; ", v8];

  return v4;
}

@end
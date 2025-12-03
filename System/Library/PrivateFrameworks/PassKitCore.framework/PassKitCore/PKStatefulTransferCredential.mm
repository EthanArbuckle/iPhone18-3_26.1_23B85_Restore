@interface PKStatefulTransferCredential
- (PKStatefulTransferCredential)initWithSharingChannelHandle:(id)handle invitation:(id)invitation share:(id)share;
@end

@implementation PKStatefulTransferCredential

- (PKStatefulTransferCredential)initWithSharingChannelHandle:(id)handle invitation:(id)invitation share:(id)share
{
  handleCopy = handle;
  invitationCopy = invitation;
  shareCopy = share;
  v15.receiver = self;
  v15.super_class = PKStatefulTransferCredential;
  v12 = [(PKPaymentCredential *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_handle, handle);
    objc_storeStrong(&v13->_invitation, invitation);
    objc_storeStrong(&v13->_share, share);
  }

  return v13;
}

@end
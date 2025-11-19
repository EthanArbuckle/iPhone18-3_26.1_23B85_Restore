@interface PKStatefulTransferCredential
- (PKStatefulTransferCredential)initWithSharingChannelHandle:(id)a3 invitation:(id)a4 share:(id)a5;
@end

@implementation PKStatefulTransferCredential

- (PKStatefulTransferCredential)initWithSharingChannelHandle:(id)a3 invitation:(id)a4 share:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PKStatefulTransferCredential;
  v12 = [(PKPaymentCredential *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_handle, a3);
    objc_storeStrong(&v13->_invitation, a4);
    objc_storeStrong(&v13->_share, a5);
  }

  return v13;
}

@end
@interface PKPendingStatefulTransferProvisioningReference
- (PKPendingStatefulTransferProvisioningReference)initWithCoder:(id)a3;
- (PKPendingStatefulTransferProvisioningReference)initWithInvitationURL:(id)a3 share:(id)a4;
- (void)_copyIntoPendingProvision:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPendingStatefulTransferProvisioningReference

- (PKPendingStatefulTransferProvisioningReference)initWithInvitationURL:(id)a3 share:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 identifier];
  v12.receiver = self;
  v12.super_class = PKPendingStatefulTransferProvisioningReference;
  v10 = [(PKPendingProvisioning *)&v12 initWithUniqueIdentifier:v9 status:1];

  if (v10)
  {
    objc_storeStrong(&v10->_invitationURL, a3);
    objc_storeStrong(&v10->_share, a4);
  }

  return v10;
}

- (PKPendingStatefulTransferProvisioningReference)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKPendingStatefulTransferProvisioningReference;
  v5 = [(PKPendingProvisioning *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationURL"];
    invitationURL = v5->_invitationURL;
    v5->_invitationURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"share"];
    share = v5->_share;
    v5->_share = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accountAttestationAnonymizationSalt"];
    accountAttestationAnonymizationSalt = v5->_accountAttestationAnonymizationSalt;
    v5->_accountAttestationAnonymizationSalt = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKPendingStatefulTransferProvisioningReference;
  v4 = a3;
  [(PKPendingProvisioning *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_invitationURL forKey:{@"invitationURL", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_share forKey:@"share"];
  [v4 encodeObject:self->_accountAttestationAnonymizationSalt forKey:@"accountAttestationAnonymizationSalt"];
}

- (void)_copyIntoPendingProvision:(id)a3
{
  v11.receiver = self;
  v11.super_class = PKPendingStatefulTransferProvisioningReference;
  v4 = a3;
  [(PKPendingProvisioning *)&v11 _copyIntoPendingProvision:v4];
  v5 = [(NSString *)self->_invitationURL copy:v11.receiver];
  v6 = v4[7];
  v4[7] = v5;

  v7 = [(PKPassShare *)self->_share copy];
  v8 = v4[8];
  v4[8] = v7;

  v9 = [(NSString *)self->_accountAttestationAnonymizationSalt copy];
  v10 = v4[9];
  v4[9] = v9;
}

@end
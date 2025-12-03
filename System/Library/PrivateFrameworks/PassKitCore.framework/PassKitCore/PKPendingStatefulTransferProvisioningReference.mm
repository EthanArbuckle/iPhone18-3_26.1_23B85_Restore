@interface PKPendingStatefulTransferProvisioningReference
- (PKPendingStatefulTransferProvisioningReference)initWithCoder:(id)coder;
- (PKPendingStatefulTransferProvisioningReference)initWithInvitationURL:(id)l share:(id)share;
- (void)_copyIntoPendingProvision:(id)provision;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPendingStatefulTransferProvisioningReference

- (PKPendingStatefulTransferProvisioningReference)initWithInvitationURL:(id)l share:(id)share
{
  lCopy = l;
  shareCopy = share;
  identifier = [shareCopy identifier];
  v12.receiver = self;
  v12.super_class = PKPendingStatefulTransferProvisioningReference;
  v10 = [(PKPendingProvisioning *)&v12 initWithUniqueIdentifier:identifier status:1];

  if (v10)
  {
    objc_storeStrong(&v10->_invitationURL, l);
    objc_storeStrong(&v10->_share, share);
  }

  return v10;
}

- (PKPendingStatefulTransferProvisioningReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKPendingStatefulTransferProvisioningReference;
  v5 = [(PKPendingProvisioning *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationURL"];
    invitationURL = v5->_invitationURL;
    v5->_invitationURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"share"];
    share = v5->_share;
    v5->_share = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accountAttestationAnonymizationSalt"];
    accountAttestationAnonymizationSalt = v5->_accountAttestationAnonymizationSalt;
    v5->_accountAttestationAnonymizationSalt = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKPendingStatefulTransferProvisioningReference;
  coderCopy = coder;
  [(PKPendingProvisioning *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_invitationURL forKey:{@"invitationURL", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_share forKey:@"share"];
  [coderCopy encodeObject:self->_accountAttestationAnonymizationSalt forKey:@"accountAttestationAnonymizationSalt"];
}

- (void)_copyIntoPendingProvision:(id)provision
{
  v11.receiver = self;
  v11.super_class = PKPendingStatefulTransferProvisioningReference;
  provisionCopy = provision;
  [(PKPendingProvisioning *)&v11 _copyIntoPendingProvision:provisionCopy];
  v5 = [(NSString *)self->_invitationURL copy:v11.receiver];
  v6 = provisionCopy[7];
  provisionCopy[7] = v5;

  v7 = [(PKPassShare *)self->_share copy];
  v8 = provisionCopy[8];
  provisionCopy[8] = v7;

  v9 = [(NSString *)self->_accountAttestationAnonymizationSalt copy];
  v10 = provisionCopy[9];
  provisionCopy[9] = v9;
}

@end
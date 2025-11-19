@interface PKAppletSubcredentialSharingInvitationRequest
- (PKAppletSubcredentialSharingInvitationRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAppletSubcredentialSharingInvitationRequest

- (void)encodeWithCoder:(id)a3
{
  credentialIdentifier = self->_credentialIdentifier;
  v5 = a3;
  [v5 encodeObject:credentialIdentifier forKey:@"credentialIdentifier"];
  [v5 encodeObject:self->_sharedCredentialIdentifier forKey:@"sharedCredentialIdentifier"];
  [v5 encodeObject:self->_sharingSessionIdentifier forKey:@"sharingSessionIdentifier"];
  [v5 encodeInteger:self->_deviceType forKey:@"deviceType"];
}

- (PKAppletSubcredentialSharingInvitationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKAppletSubcredentialSharingInvitationRequest *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedCredentialIdentifier"];
    sharedCredentialIdentifier = v5->_sharedCredentialIdentifier;
    v5->_sharedCredentialIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionIdentifier"];
    sharingSessionIdentifier = v5->_sharingSessionIdentifier;
    v5->_sharingSessionIdentifier = v10;

    v5->_deviceType = [v4 decodeIntegerForKey:@"deviceType"];
  }

  return v5;
}

@end
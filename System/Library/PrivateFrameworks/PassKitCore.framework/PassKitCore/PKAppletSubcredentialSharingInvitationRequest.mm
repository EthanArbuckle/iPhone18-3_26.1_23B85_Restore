@interface PKAppletSubcredentialSharingInvitationRequest
- (PKAppletSubcredentialSharingInvitationRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAppletSubcredentialSharingInvitationRequest

- (void)encodeWithCoder:(id)coder
{
  credentialIdentifier = self->_credentialIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:credentialIdentifier forKey:@"credentialIdentifier"];
  [coderCopy encodeObject:self->_sharedCredentialIdentifier forKey:@"sharedCredentialIdentifier"];
  [coderCopy encodeObject:self->_sharingSessionIdentifier forKey:@"sharingSessionIdentifier"];
  [coderCopy encodeInteger:self->_deviceType forKey:@"deviceType"];
}

- (PKAppletSubcredentialSharingInvitationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PKAppletSubcredentialSharingInvitationRequest *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credentialIdentifier"];
    credentialIdentifier = v5->_credentialIdentifier;
    v5->_credentialIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedCredentialIdentifier"];
    sharedCredentialIdentifier = v5->_sharedCredentialIdentifier;
    v5->_sharedCredentialIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionIdentifier"];
    sharingSessionIdentifier = v5->_sharingSessionIdentifier;
    v5->_sharingSessionIdentifier = v10;

    v5->_deviceType = [coderCopy decodeIntegerForKey:@"deviceType"];
  }

  return v5;
}

@end
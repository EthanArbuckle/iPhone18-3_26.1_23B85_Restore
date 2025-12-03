@interface PKIssuerProvisioningExtensionStatus
- (PKIssuerProvisioningExtensionStatus)init;
- (PKIssuerProvisioningExtensionStatus)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKIssuerProvisioningExtensionStatus

- (PKIssuerProvisioningExtensionStatus)init
{
  v3.receiver = self;
  v3.super_class = PKIssuerProvisioningExtensionStatus;
  result = [(PKIssuerProvisioningExtensionStatus *)&v3 init];
  if (result)
  {
    *&result->_requiresAuthentication = 0;
  }

  return result;
}

- (PKIssuerProvisioningExtensionStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKIssuerProvisioningExtensionStatus;
  v5 = [(PKIssuerProvisioningExtensionStatus *)&v7 init];
  if (v5)
  {
    v5->_requiresAuthentication = [coderCopy decodeBoolForKey:@"requiresAuthentication"];
    v5->_passEntriesAvailable = [coderCopy decodeBoolForKey:@"passEntriesAvailable"];
    v5->_remotePassEntriesAvailable = [coderCopy decodeBoolForKey:@"remotePassEntriesAvailable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  requiresAuthentication = self->_requiresAuthentication;
  coderCopy = coder;
  [coderCopy encodeBool:requiresAuthentication forKey:@"requiresAuthentication"];
  [coderCopy encodeBool:self->_passEntriesAvailable forKey:@"passEntriesAvailable"];
  [coderCopy encodeBool:self->_remotePassEntriesAvailable forKey:@"remotePassEntriesAvailable"];
}

- (id)description
{
  v2 = @"NO";
  if (self->_requiresAuthentication)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_passEntriesAvailable)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_remotePassEntriesAvailable)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"requiresAuthentication: %@ passEntriesAvailable: %@ remotePassEntriesAvailable: %@", v3, v4, v2];
}

@end
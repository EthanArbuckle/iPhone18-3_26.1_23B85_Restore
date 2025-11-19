@interface PKIssuerProvisioningExtensionStatus
- (PKIssuerProvisioningExtensionStatus)init;
- (PKIssuerProvisioningExtensionStatus)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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

- (PKIssuerProvisioningExtensionStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKIssuerProvisioningExtensionStatus;
  v5 = [(PKIssuerProvisioningExtensionStatus *)&v7 init];
  if (v5)
  {
    v5->_requiresAuthentication = [v4 decodeBoolForKey:@"requiresAuthentication"];
    v5->_passEntriesAvailable = [v4 decodeBoolForKey:@"passEntriesAvailable"];
    v5->_remotePassEntriesAvailable = [v4 decodeBoolForKey:@"remotePassEntriesAvailable"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  requiresAuthentication = self->_requiresAuthentication;
  v5 = a3;
  [v5 encodeBool:requiresAuthentication forKey:@"requiresAuthentication"];
  [v5 encodeBool:self->_passEntriesAvailable forKey:@"passEntriesAvailable"];
  [v5 encodeBool:self->_remotePassEntriesAvailable forKey:@"remotePassEntriesAvailable"];
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
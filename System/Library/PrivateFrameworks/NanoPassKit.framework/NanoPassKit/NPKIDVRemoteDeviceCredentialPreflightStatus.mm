@interface NPKIDVRemoteDeviceCredentialPreflightStatus
- (NPKIDVRemoteDeviceCredentialPreflightStatus)initWithCoder:(id)coder;
- (NPKIDVRemoteDeviceCredentialPreflightStatus)initWithCredentialType:(unint64_t)type provisionedPassesCount:(unint64_t)count preflightSuccessful:(BOOL)successful;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPKIDVRemoteDeviceCredentialPreflightStatus

- (NPKIDVRemoteDeviceCredentialPreflightStatus)initWithCredentialType:(unint64_t)type provisionedPassesCount:(unint64_t)count preflightSuccessful:(BOOL)successful
{
  v9.receiver = self;
  v9.super_class = NPKIDVRemoteDeviceCredentialPreflightStatus;
  result = [(NPKIDVRemoteDeviceCredentialPreflightStatus *)&v9 init];
  if (result)
  {
    result->_credentialType = type;
    result->_provisionedPassesCount = count;
    result->_preflightSuccessful = successful;
  }

  return result;
}

- (NPKIDVRemoteDeviceCredentialPreflightStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"credentialType"];
  v6 = [coderCopy decodeIntegerForKey:@"provisionedPassesCount"];
  v7 = [coderCopy decodeBoolForKey:@"preflightSuccessful"];

  return [(NPKIDVRemoteDeviceCredentialPreflightStatus *)self initWithCredentialType:v5 provisionedPassesCount:v6 preflightSuccessful:v7];
}

- (void)encodeWithCoder:(id)coder
{
  credentialType = self->_credentialType;
  coderCopy = coder;
  [coderCopy encodeInteger:credentialType forKey:@"credentialType"];
  [coderCopy encodeInteger:self->_provisionedPassesCount forKey:@"provisionedPassesCount"];
  [coderCopy encodeBool:self->_preflightSuccessful forKey:@"preflightSuccessful"];
}

@end
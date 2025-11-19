@interface NPKIDVRemoteDeviceCredentialPreflightStatus
- (NPKIDVRemoteDeviceCredentialPreflightStatus)initWithCoder:(id)a3;
- (NPKIDVRemoteDeviceCredentialPreflightStatus)initWithCredentialType:(unint64_t)a3 provisionedPassesCount:(unint64_t)a4 preflightSuccessful:(BOOL)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPKIDVRemoteDeviceCredentialPreflightStatus

- (NPKIDVRemoteDeviceCredentialPreflightStatus)initWithCredentialType:(unint64_t)a3 provisionedPassesCount:(unint64_t)a4 preflightSuccessful:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = NPKIDVRemoteDeviceCredentialPreflightStatus;
  result = [(NPKIDVRemoteDeviceCredentialPreflightStatus *)&v9 init];
  if (result)
  {
    result->_credentialType = a3;
    result->_provisionedPassesCount = a4;
    result->_preflightSuccessful = a5;
  }

  return result;
}

- (NPKIDVRemoteDeviceCredentialPreflightStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"credentialType"];
  v6 = [v4 decodeIntegerForKey:@"provisionedPassesCount"];
  v7 = [v4 decodeBoolForKey:@"preflightSuccessful"];

  return [(NPKIDVRemoteDeviceCredentialPreflightStatus *)self initWithCredentialType:v5 provisionedPassesCount:v6 preflightSuccessful:v7];
}

- (void)encodeWithCoder:(id)a3
{
  credentialType = self->_credentialType;
  v5 = a3;
  [v5 encodeInteger:credentialType forKey:@"credentialType"];
  [v5 encodeInteger:self->_provisionedPassesCount forKey:@"provisionedPassesCount"];
  [v5 encodeBool:self->_preflightSuccessful forKey:@"preflightSuccessful"];
}

@end
@interface PDSharingRelayServerEndpoint
- (NSString)description;
- (PDSharingRelayServerEndpoint)init;
- (PDSharingRelayServerEndpoint)initWithMailboxIdentifier:(id)identifier provisioningType:(unint64_t)type;
- (PDSharingRelayServerEndpoint)initWithProvisioningType:(unint64_t)type;
- (void)rollTransportIdentifer;
- (void)setCreatedAt:(id)at;
@end

@implementation PDSharingRelayServerEndpoint

- (PDSharingRelayServerEndpoint)init
{
  v3.receiver = self;
  v3.super_class = PDSharingRelayServerEndpoint;
  return [(PDSharingRelayServerEndpoint *)&v3 init];
}

- (PDSharingRelayServerEndpoint)initWithProvisioningType:(unint64_t)type
{
  v5 = objc_alloc_init(NSUUID);
  uUIDString = [v5 UUIDString];
  v7 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_10086D930];

  v8 = [(PDSharingRelayServerEndpoint *)self initWithMailboxIdentifier:v7 provisioningType:type];
  return v8;
}

- (PDSharingRelayServerEndpoint)initWithMailboxIdentifier:(id)identifier provisioningType:(unint64_t)type
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PDSharingRelayServerEndpoint;
  v8 = [(PDSharingRelayServerEndpoint *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_transportIdentifier, identifier);
    v9->_channelType = 1;
    v9->_provisioningType = type;
    v9->_mailboxStatus = 0;
    v10 = objc_alloc_init(NSDate);
    createdAt = v9->_createdAt;
    v9->_createdAt = v10;

    if (type <= 2)
    {
      v9->_timeToLive = qword_10068E580[type];
    }
  }

  return v9;
}

- (void)rollTransportIdentifer
{
  v3 = objc_alloc_init(NSUUID);
  uUIDString = [v3 UUIDString];
  v5 = [uUIDString stringByReplacingOccurrencesOfString:@"-" withString:&stru_10086D930];

  transportIdentifier = self->_transportIdentifier;
  self->_transportIdentifier = v5;
}

- (void)setCreatedAt:(id)at
{
  atCopy = at;
  objc_storeStrong(&self->_createdAt, at);
  updatedAt = self->_updatedAt;
  p_updatedAt = &self->_updatedAt;
  if (!updatedAt)
  {
    objc_storeStrong(p_updatedAt, at);
  }
}

- (NSString)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_mailboxStatus == 1)
  {
    [v3 appendFormat:@"mailboxIdentifier: '%@'; ", @"TBD"];
  }

  else
  {
    v5 = PKSharingLoggableMailboxAddress();
    [v4 appendFormat:@"mailboxIdentifier: '%@'; ", v5];
  }

  provisioningType = self->_provisioningType;
  v7 = @"unknown";
  v8 = @"stateful";
  if (provisioningType != 2)
  {
    v8 = @"unknown";
  }

  if (provisioningType == 1)
  {
    v9 = @"stateless";
  }

  else
  {
    v9 = v8;
  }

  [v4 appendFormat:@"provisioningType: '%@'; ", v9];
  v10 = self->_channelType - 1;
  if (v10 <= 3)
  {
    v7 = off_100849668[v10];
  }

  [v4 appendFormat:@"channelType: '%@'; ", v7];
  v11 = self->_mailboxStatus - 1;
  if (v11 > 3)
  {
    v12 = @"unknown";
  }

  else
  {
    v12 = off_100849688[v11];
  }

  [v4 appendFormat:@"mailboxStatus: '%@'; ", v12];
  [v4 appendFormat:@"deviceClaim: '%@'; ", self->_deviceClaim];
  v13 = [(NSData *)self->_payloadEncryptionPassword base64EncodedStringWithOptions:0];
  v14 = [v13 substringToIndex:6];
  [v4 appendFormat:@"encryptionPassword: '%@..'; ", v14];

  if (self->_hasOutstandingMessages)
  {
    v15 = @"Yes";
  }

  else
  {
    v15 = @"No";
  }

  [v4 appendFormat:@"hasOutstandingMessages: '%@..'; ", v15];
  [v4 appendFormat:@"timeToLive: '%lu'; ", self->_timeToLive];
  [v4 appendFormat:@"createdAt: '%@'; ", self->_createdAt];
  [v4 appendFormat:@"updatedAt: '%@'; ", self->_updatedAt];
  [v4 appendFormat:@"relayServerHost: '%@'; ", self->_relayServerHost];
  if (self->_provisioningType == 2)
  {
    if (self->_doesRemoteMailboxSupportPushNotifications)
    {
      v16 = @"Y";
    }

    else
    {
      v16 = @"N";
    }

    [v4 appendFormat:@"supportsPushNotifications: '%@'; ", v16];
    [v4 appendFormat:@"pollingBackoffCounter: '%lu'; ", self->_pollingBackoffCounter];
  }

  [v4 appendFormat:@">"];
  v17 = [v4 copy];

  return v17;
}

@end
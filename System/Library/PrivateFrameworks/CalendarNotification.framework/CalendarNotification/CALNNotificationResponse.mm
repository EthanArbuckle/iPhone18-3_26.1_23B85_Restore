@interface CALNNotificationResponse
+ (id)responseWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToResponse:(id)response;
- (CALNNotificationResponse)initWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint;
- (id)description;
- (unint64_t)hash;
@end

@implementation CALNNotificationResponse

+ (id)responseWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  originIdentifierCopy = originIdentifier;
  identifierCopy = identifier;
  notificationCopy = notification;
  v14 = [[self alloc] initWithNotification:notificationCopy actionIdentifier:identifierCopy originIdentifier:originIdentifierCopy targetConnectionEndpoint:endpointCopy];

  return v14;
}

- (CALNNotificationResponse)initWithNotification:(id)notification actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint
{
  notificationCopy = notification;
  identifierCopy = identifier;
  originIdentifierCopy = originIdentifier;
  endpointCopy = endpoint;
  v22.receiver = self;
  v22.super_class = CALNNotificationResponse;
  v15 = [(CALNNotificationResponse *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notification, notification);
    v17 = [identifierCopy copy];
    actionIdentifier = v16->_actionIdentifier;
    v16->_actionIdentifier = v17;

    v19 = [originIdentifierCopy copy];
    originIdentifier = v16->_originIdentifier;
    v16->_originIdentifier = v19;

    objc_storeStrong(&v16->_targetConnectionEndpoint, endpoint);
  }

  return v16;
}

- (unint64_t)hash
{
  notification = [(CALNNotificationResponse *)self notification];
  v4 = [notification hash];

  actionIdentifier = [(CALNNotificationResponse *)self actionIdentifier];
  v6 = [actionIdentifier hash] ^ v4;

  originIdentifier = [(CALNNotificationResponse *)self originIdentifier];
  v8 = [originIdentifier hash];

  targetConnectionEndpoint = [(CALNNotificationResponse *)self targetConnectionEndpoint];
  v10 = v8 ^ [targetConnectionEndpoint hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationResponse *)self isEqualToResponse:equalCopy];

  return v5;
}

- (BOOL)isEqualToResponse:(id)response
{
  responseCopy = response;
  if (self == responseCopy)
  {
    v16 = 1;
  }

  else
  {
    notification = [(CALNNotificationResponse *)self notification];
    notification2 = [(CALNNotificationResponse *)responseCopy notification];
    v7 = CalEqualObjects();

    if (!v7)
    {
      goto LABEL_6;
    }

    actionIdentifier = [(CALNNotificationResponse *)self actionIdentifier];
    actionIdentifier2 = [(CALNNotificationResponse *)responseCopy actionIdentifier];
    v10 = CalEqualStrings();

    if (!v10)
    {
      goto LABEL_6;
    }

    originIdentifier = [(CALNNotificationResponse *)self originIdentifier];
    originIdentifier2 = [(CALNNotificationResponse *)responseCopy originIdentifier];
    v13 = CalEqualStrings();

    if (v13)
    {
      targetConnectionEndpoint = [(CALNNotificationResponse *)self targetConnectionEndpoint];
      targetConnectionEndpoint2 = [(CALNNotificationResponse *)responseCopy targetConnectionEndpoint];
      v16 = CalEqualObjects();
    }

    else
    {
LABEL_6:
      v16 = 0;
    }
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  notification = [(CALNNotificationResponse *)self notification];
  actionIdentifier = [(CALNNotificationResponse *)self actionIdentifier];
  originIdentifier = [(CALNNotificationResponse *)self originIdentifier];
  targetConnectionEndpoint = [(CALNNotificationResponse *)self targetConnectionEndpoint];
  v9 = [v3 stringWithFormat:@"<%@: %p>(notification = %@, actionIdentifier = %@, originIdentifier = %@, targetConnectionEndpoint = %@)", v4, self, notification, actionIdentifier, originIdentifier, targetConnectionEndpoint];

  return v9;
}

@end
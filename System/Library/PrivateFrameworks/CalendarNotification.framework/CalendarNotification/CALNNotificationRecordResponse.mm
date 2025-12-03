@interface CALNNotificationRecordResponse
+ (id)responseWithNotificationRecord:(id)record actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint;
- (CALNNotificationRecordResponse)initWithNotificationRecord:(id)record actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint;
- (id)description;
@end

@implementation CALNNotificationRecordResponse

+ (id)responseWithNotificationRecord:(id)record actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  originIdentifierCopy = originIdentifier;
  identifierCopy = identifier;
  recordCopy = record;
  v14 = [[self alloc] initWithNotificationRecord:recordCopy actionIdentifier:identifierCopy originIdentifier:originIdentifierCopy targetConnectionEndpoint:endpointCopy];

  return v14;
}

- (CALNNotificationRecordResponse)initWithNotificationRecord:(id)record actionIdentifier:(id)identifier originIdentifier:(id)originIdentifier targetConnectionEndpoint:(id)endpoint
{
  recordCopy = record;
  identifierCopy = identifier;
  originIdentifierCopy = originIdentifier;
  endpointCopy = endpoint;
  v22.receiver = self;
  v22.super_class = CALNNotificationRecordResponse;
  v15 = [(CALNNotificationRecordResponse *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notificationRecord, record);
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  notificationRecord = [(CALNNotificationRecordResponse *)self notificationRecord];
  actionIdentifier = [(CALNNotificationRecordResponse *)self actionIdentifier];
  originIdentifier = [(CALNNotificationRecordResponse *)self originIdentifier];
  targetConnectionEndpoint = [(CALNNotificationRecordResponse *)self targetConnectionEndpoint];
  v9 = [v3 stringWithFormat:@"<%@: %p>(notificationRecord = %@, actionIdentifier = %@, originIdentifier = %@, targetConnectionEndpoint = %@)", v4, self, notificationRecord, actionIdentifier, originIdentifier, targetConnectionEndpoint];

  return v9;
}

@end
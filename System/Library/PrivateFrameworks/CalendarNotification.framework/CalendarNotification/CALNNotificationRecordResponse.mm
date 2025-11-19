@interface CALNNotificationRecordResponse
+ (id)responseWithNotificationRecord:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6;
- (CALNNotificationRecordResponse)initWithNotificationRecord:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6;
- (id)description;
@end

@implementation CALNNotificationRecordResponse

+ (id)responseWithNotificationRecord:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithNotificationRecord:v13 actionIdentifier:v12 originIdentifier:v11 targetConnectionEndpoint:v10];

  return v14;
}

- (CALNNotificationRecordResponse)initWithNotificationRecord:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = CALNNotificationRecordResponse;
  v15 = [(CALNNotificationRecordResponse *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notificationRecord, a3);
    v17 = [v12 copy];
    actionIdentifier = v16->_actionIdentifier;
    v16->_actionIdentifier = v17;

    v19 = [v13 copy];
    originIdentifier = v16->_originIdentifier;
    v16->_originIdentifier = v19;

    objc_storeStrong(&v16->_targetConnectionEndpoint, a6);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CALNNotificationRecordResponse *)self notificationRecord];
  v6 = [(CALNNotificationRecordResponse *)self actionIdentifier];
  v7 = [(CALNNotificationRecordResponse *)self originIdentifier];
  v8 = [(CALNNotificationRecordResponse *)self targetConnectionEndpoint];
  v9 = [v3 stringWithFormat:@"<%@: %p>(notificationRecord = %@, actionIdentifier = %@, originIdentifier = %@, targetConnectionEndpoint = %@)", v4, self, v5, v6, v7, v8];

  return v9;
}

@end
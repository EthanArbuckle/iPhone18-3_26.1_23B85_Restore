@interface CALNNotificationResponse
+ (id)responseWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToResponse:(id)a3;
- (CALNNotificationResponse)initWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6;
- (id)description;
- (unint64_t)hash;
@end

@implementation CALNNotificationResponse

+ (id)responseWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithNotification:v13 actionIdentifier:v12 originIdentifier:v11 targetConnectionEndpoint:v10];

  return v14;
}

- (CALNNotificationResponse)initWithNotification:(id)a3 actionIdentifier:(id)a4 originIdentifier:(id)a5 targetConnectionEndpoint:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v22.receiver = self;
  v22.super_class = CALNNotificationResponse;
  v15 = [(CALNNotificationResponse *)&v22 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_notification, a3);
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

- (unint64_t)hash
{
  v3 = [(CALNNotificationResponse *)self notification];
  v4 = [v3 hash];

  v5 = [(CALNNotificationResponse *)self actionIdentifier];
  v6 = [v5 hash] ^ v4;

  v7 = [(CALNNotificationResponse *)self originIdentifier];
  v8 = [v7 hash];

  v9 = [(CALNNotificationResponse *)self targetConnectionEndpoint];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CALNNotificationResponse *)self isEqualToResponse:v4];

  return v5;
}

- (BOOL)isEqualToResponse:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v16 = 1;
  }

  else
  {
    v5 = [(CALNNotificationResponse *)self notification];
    v6 = [(CALNNotificationResponse *)v4 notification];
    v7 = CalEqualObjects();

    if (!v7)
    {
      goto LABEL_6;
    }

    v8 = [(CALNNotificationResponse *)self actionIdentifier];
    v9 = [(CALNNotificationResponse *)v4 actionIdentifier];
    v10 = CalEqualStrings();

    if (!v10)
    {
      goto LABEL_6;
    }

    v11 = [(CALNNotificationResponse *)self originIdentifier];
    v12 = [(CALNNotificationResponse *)v4 originIdentifier];
    v13 = CalEqualStrings();

    if (v13)
    {
      v14 = [(CALNNotificationResponse *)self targetConnectionEndpoint];
      v15 = [(CALNNotificationResponse *)v4 targetConnectionEndpoint];
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
  v5 = [(CALNNotificationResponse *)self notification];
  v6 = [(CALNNotificationResponse *)self actionIdentifier];
  v7 = [(CALNNotificationResponse *)self originIdentifier];
  v8 = [(CALNNotificationResponse *)self targetConnectionEndpoint];
  v9 = [v3 stringWithFormat:@"<%@: %p>(notification = %@, actionIdentifier = %@, originIdentifier = %@, targetConnectionEndpoint = %@)", v4, self, v5, v6, v7, v8];

  return v9;
}

@end
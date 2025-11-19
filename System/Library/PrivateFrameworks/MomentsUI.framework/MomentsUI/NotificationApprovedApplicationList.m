@interface NotificationApprovedApplicationList
- (NotificationApprovedApplicationList)initWithCoder:(id)a3;
- (id)initNotificationApprovedListWithApps:(id)a3;
@end

@implementation NotificationApprovedApplicationList

- (id)initNotificationApprovedListWithApps:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NotificationApprovedApplicationList;
  v6 = [(NotificationApprovedApplicationList *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applications, a3);
  }

  return v7;
}

- (NotificationApprovedApplicationList)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NotificationApprovedApplicationList;
  v5 = [(NotificationApprovedApplicationList *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"apps"];
    applications = v5->_applications;
    v5->_applications = v6;
  }

  return v5;
}

@end
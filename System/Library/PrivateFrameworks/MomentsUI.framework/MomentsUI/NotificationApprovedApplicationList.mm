@interface NotificationApprovedApplicationList
- (NotificationApprovedApplicationList)initWithCoder:(id)coder;
- (id)initNotificationApprovedListWithApps:(id)apps;
@end

@implementation NotificationApprovedApplicationList

- (id)initNotificationApprovedListWithApps:(id)apps
{
  appsCopy = apps;
  v9.receiver = self;
  v9.super_class = NotificationApprovedApplicationList;
  v6 = [(NotificationApprovedApplicationList *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applications, apps);
  }

  return v7;
}

- (NotificationApprovedApplicationList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NotificationApprovedApplicationList;
  v5 = [(NotificationApprovedApplicationList *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"apps"];
    applications = v5->_applications;
    v5->_applications = v6;
  }

  return v5;
}

@end
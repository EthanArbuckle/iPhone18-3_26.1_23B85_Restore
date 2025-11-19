@interface NotificationApprovedApplication
- (NotificationApprovedApplication)initWithCoder:(id)a3;
- (id)initNotificationApprovedAppWithBundleID:(id)a3 localizedName:(id)a4 timestamp:(id)a5 urlFormat:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NotificationApprovedApplication

- (id)initNotificationApprovedAppWithBundleID:(id)a3 localizedName:(id)a4 timestamp:(id)a5 urlFormat:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = NotificationApprovedApplication;
  v15 = [(NotificationApprovedApplication *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleID, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
  }

  return p_isa;
}

- (NotificationApprovedApplication)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = NotificationApprovedApplication;
  v5 = [(NotificationApprovedApplication *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"urlFormat"];
    urlFormat = v5->_urlFormat;
    v5->_urlFormat = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastInvokedTimestamp"];
    lastInvokedTimestamp = v5->_lastInvokedTimestamp;
    v5->_lastInvokedTimestamp = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"bundleID"];
  [v5 encodeObject:self->_localizedName forKey:@"localizedName"];
  [v5 encodeObject:self->_lastInvokedTimestamp forKey:@"lastInvokedTimestamp"];
  [v5 encodeObject:self->_urlFormat forKey:@"urlFormat"];
}

@end
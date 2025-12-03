@interface NotificationApprovedApplication
- (NotificationApprovedApplication)initWithCoder:(id)coder;
- (id)initNotificationApprovedAppWithBundleID:(id)d localizedName:(id)name timestamp:(id)timestamp urlFormat:(id)format;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NotificationApprovedApplication

- (id)initNotificationApprovedAppWithBundleID:(id)d localizedName:(id)name timestamp:(id)timestamp urlFormat:(id)format
{
  dCopy = d;
  nameCopy = name;
  timestampCopy = timestamp;
  formatCopy = format;
  v18.receiver = self;
  v18.super_class = NotificationApprovedApplication;
  v15 = [(NotificationApprovedApplication *)&v18 init];
  p_isa = &v15->super.isa;
  if (v15)
  {
    objc_storeStrong(&v15->_bundleID, d);
    objc_storeStrong(p_isa + 2, name);
    objc_storeStrong(p_isa + 3, timestamp);
    objc_storeStrong(p_isa + 4, format);
  }

  return p_isa;
}

- (NotificationApprovedApplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = NotificationApprovedApplication;
  v5 = [(NotificationApprovedApplication *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];
    localizedName = v5->_localizedName;
    v5->_localizedName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"urlFormat"];
    urlFormat = v5->_urlFormat;
    v5->_urlFormat = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastInvokedTimestamp"];
    lastInvokedTimestamp = v5->_lastInvokedTimestamp;
    v5->_lastInvokedTimestamp = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];
  [coderCopy encodeObject:self->_localizedName forKey:@"localizedName"];
  [coderCopy encodeObject:self->_lastInvokedTimestamp forKey:@"lastInvokedTimestamp"];
  [coderCopy encodeObject:self->_urlFormat forKey:@"urlFormat"];
}

@end
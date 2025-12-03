@interface FMDUserNotificationContent
- (FMDUserNotificationContent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDUserNotificationContent

- (FMDUserNotificationContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = FMDUserNotificationContent;
  v5 = [(FMDUserNotificationContent *)&v34 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("title");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    [(FMDUserNotificationContent *)v5 setTitle:v8];

    v9 = objc_opt_class();
    v10 = NSStringFromSelector("body");
    v11 = [coderCopy decodeObjectOfClass:v9 forKey:v10];
    [(FMDUserNotificationContent *)v5 setBody:v11];

    v12 = objc_opt_class();
    v13 = NSStringFromSelector("categoryIdentifier");
    v14 = [coderCopy decodeObjectOfClass:v12 forKey:v13];
    [(FMDUserNotificationContent *)v5 setCategoryIdentifier:v14];

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("deviceId");
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    [(FMDUserNotificationContent *)v5 setDeviceId:v17];

    v18 = objc_opt_class();
    v19 = NSStringFromSelector("serialNumber");
    v20 = [coderCopy decodeObjectOfClass:v18 forKey:v19];
    [(FMDUserNotificationContent *)v5 setSerialNumber:v20];

    v21 = objc_opt_class();
    v22 = NSStringFromSelector("identifier");
    v23 = [coderCopy decodeObjectOfClass:v21 forKey:v22];
    [(FMDUserNotificationContent *)v5 setIdentifier:v23];

    v24 = objc_opt_class();
    v25 = NSStringFromSelector("locationTitle");
    v26 = [coderCopy decodeObjectOfClass:v24 forKey:v25];
    [(FMDUserNotificationContent *)v5 setLocationTitle:v26];

    v27 = objc_opt_class();
    v28 = NSStringFromSelector("locationMessage");
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    [(FMDUserNotificationContent *)v5 setLocationMessage:v29];

    v30 = NSStringFromSelector("latitude");
    [coderCopy decodeDoubleForKey:v30];
    [(FMDUserNotificationContent *)v5 setLatitude:?];

    v31 = NSStringFromSelector("longitude");
    [coderCopy decodeDoubleForKey:v31];
    [(FMDUserNotificationContent *)v5 setLongitude:?];

    v32 = NSStringFromSelector("interruptionLevel");
    -[FMDUserNotificationContent setInterruptionLevel:](v5, "setInterruptionLevel:", [coderCopy decodeIntegerForKey:v32]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  title = [(FMDUserNotificationContent *)self title];
  v6 = NSStringFromSelector("title");
  [coderCopy encodeObject:title forKey:v6];

  body = [(FMDUserNotificationContent *)self body];
  v8 = NSStringFromSelector("body");
  [coderCopy encodeObject:body forKey:v8];

  categoryIdentifier = [(FMDUserNotificationContent *)self categoryIdentifier];
  v10 = NSStringFromSelector("categoryIdentifier");
  [coderCopy encodeObject:categoryIdentifier forKey:v10];

  deviceId = [(FMDUserNotificationContent *)self deviceId];
  v12 = NSStringFromSelector("deviceId");
  [coderCopy encodeObject:deviceId forKey:v12];

  serialNumber = [(FMDUserNotificationContent *)self serialNumber];
  v14 = NSStringFromSelector("serialNumber");
  [coderCopy encodeObject:serialNumber forKey:v14];

  identifier = [(FMDUserNotificationContent *)self identifier];
  v16 = NSStringFromSelector("identifier");
  [coderCopy encodeObject:identifier forKey:v16];

  locationTitle = [(FMDUserNotificationContent *)self locationTitle];
  v18 = NSStringFromSelector("locationTitle");
  [coderCopy encodeObject:locationTitle forKey:v18];

  locationMessage = [(FMDUserNotificationContent *)self locationMessage];
  v20 = NSStringFromSelector("locationMessage");
  [coderCopy encodeObject:locationMessage forKey:v20];

  [(FMDUserNotificationContent *)self latitude];
  v22 = v21;
  v23 = NSStringFromSelector("latitude");
  [coderCopy encodeDouble:v23 forKey:v22];

  [(FMDUserNotificationContent *)self longitude];
  v25 = v24;
  v26 = NSStringFromSelector("longitude");
  [coderCopy encodeDouble:v26 forKey:v25];

  interruptionLevel = [(FMDUserNotificationContent *)self interruptionLevel];
  v28 = NSStringFromSelector("interruptionLevel");
  [coderCopy encodeInteger:interruptionLevel forKey:v28];
}

@end
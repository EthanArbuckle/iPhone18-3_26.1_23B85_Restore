@interface DSSGuestUserModeNotificationRequest
- (DSSGuestUserModeNotificationRequest)initWithCoder:(id)a3;
- (DSSGuestUserModeNotificationRequest)initWithReason:(id)a3 withType:(unint64_t)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DSSGuestUserModeNotificationRequest

- (DSSGuestUserModeNotificationRequest)initWithReason:(id)a3 withType:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = DSSGuestUserModeNotificationRequest;
  v8 = [(DSSGuestUserModeNotificationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_reason, a3);
    v9->_notificationType = a4;
  }

  return v9;
}

- (DSSGuestUserModeNotificationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DSSGuestUserModeNotificationRequest;
  v5 = [(DSSGuestUserModeNotificationRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DSSGuestUserModeNotificationRequest.Reason"];
    reason = v5->_reason;
    v5->_reason = v6;

    v5->_notificationType = [v4 decodeIntegerForKey:@"DSSGuestUserModeNotificationRequest.Type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  reason = self->_reason;
  v5 = a3;
  [v5 encodeObject:reason forKey:@"DSSGuestUserModeNotificationRequest.Reason"];
  [v5 encodeInteger:self->_notificationType forKey:@"DSSGuestUserModeNotificationRequest.Type"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  ClassName = object_getClassName(self);
  reason = self->_reason;
  notificationType = self->_notificationType;
  if (notificationType > 4)
  {
    v7 = @"Invalid";
  }

  else
  {
    v7 = off_278F623B8[notificationType];
  }

  return [v3 stringWithFormat:@"<%s: %p, { Reason: %@ NotificationType: %@}>", ClassName, self, self->_reason, v7];
}

@end
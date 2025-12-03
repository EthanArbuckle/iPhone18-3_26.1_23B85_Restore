@interface DSSGuestUserModeNotificationRequest
- (DSSGuestUserModeNotificationRequest)initWithCoder:(id)coder;
- (DSSGuestUserModeNotificationRequest)initWithReason:(id)reason withType:(unint64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DSSGuestUserModeNotificationRequest

- (DSSGuestUserModeNotificationRequest)initWithReason:(id)reason withType:(unint64_t)type
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = DSSGuestUserModeNotificationRequest;
  v8 = [(DSSGuestUserModeNotificationRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_reason, reason);
    v9->_notificationType = type;
  }

  return v9;
}

- (DSSGuestUserModeNotificationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = DSSGuestUserModeNotificationRequest;
  v5 = [(DSSGuestUserModeNotificationRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DSSGuestUserModeNotificationRequest.Reason"];
    reason = v5->_reason;
    v5->_reason = v6;

    v5->_notificationType = [coderCopy decodeIntegerForKey:@"DSSGuestUserModeNotificationRequest.Type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  reason = self->_reason;
  coderCopy = coder;
  [coderCopy encodeObject:reason forKey:@"DSSGuestUserModeNotificationRequest.Reason"];
  [coderCopy encodeInteger:self->_notificationType forKey:@"DSSGuestUserModeNotificationRequest.Type"];
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
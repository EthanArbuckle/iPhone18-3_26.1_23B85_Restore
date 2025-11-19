@interface CKNotification
- (id)cplNotificationTypeDescription;
@end

@implementation CKNotification

- (id)cplNotificationTypeDescription
{
  v3 = [(CKNotification *)self notificationType];
  if ((v3 - 1) >= 4)
  {
    v4 = [[NSString alloc] initWithFormat:@"%ld (???)", -[CKNotification notificationType](self, "notificationType")];
  }

  else
  {
    v4 = *(&off_100271EB8 + v3 - 1);
  }

  return v4;
}

@end
@interface CKNotification
- (id)cplNotificationTypeDescription;
@end

@implementation CKNotification

- (id)cplNotificationTypeDescription
{
  notificationType = [(CKNotification *)self notificationType];
  if ((notificationType - 1) >= 4)
  {
    v4 = [[NSString alloc] initWithFormat:@"%ld (???)", -[CKNotification notificationType](self, "notificationType")];
  }

  else
  {
    v4 = *(&off_100271EB8 + notificationType - 1);
  }

  return v4;
}

@end
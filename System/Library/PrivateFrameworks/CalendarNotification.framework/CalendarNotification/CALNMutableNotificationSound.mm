@interface CALNMutableNotificationSound
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAlertTopic:(id)a3;
@end

@implementation CALNMutableNotificationSound

- (void)setAlertTopic:(id)a3
{
  v4 = [a3 copy];
  alertTopic = self->super._alertTopic;
  self->super._alertTopic = v4;

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CALNNotificationSound allocWithZone:a3];
  v5 = [(CALNNotificationSound *)self alertType];
  v6 = [(CALNNotificationSound *)self alertTopic];
  v7 = [(CALNNotificationSound *)v4 _initWithAlertType:v5 alertTopic:v6];

  return v7;
}

@end
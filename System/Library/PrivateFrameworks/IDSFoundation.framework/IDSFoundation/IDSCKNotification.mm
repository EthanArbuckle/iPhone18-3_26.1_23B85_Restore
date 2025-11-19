@interface IDSCKNotification
+ (Class)__class;
+ (id)notificationFromRemoteNotificationDictionary:(id)a3;
@end

@implementation IDSCKNotification

+ (Class)__class
{
  if (qword_1EB2BBE68 != -1)
  {
    sub_1A7E185EC();
  }

  v3 = qword_1EB2BBE60;

  return v3;
}

+ (id)notificationFromRemoteNotificationDictionary:(id)a3
{
  v3 = a3;
  v4 = [CUTWeakLinkClass() notificationFromRemoteNotificationDictionary:v3];

  return v4;
}

@end
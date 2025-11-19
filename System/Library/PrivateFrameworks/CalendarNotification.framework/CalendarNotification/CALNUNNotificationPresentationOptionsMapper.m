@interface CALNUNNotificationPresentationOptionsMapper
+ (unint64_t)unNotificationPresentationOptionsFromCALNNotificationPresentationOptions:(unint64_t)a3;
@end

@implementation CALNUNNotificationPresentationOptionsMapper

+ (unint64_t)unNotificationPresentationOptionsFromCALNNotificationPresentationOptions:(unint64_t)a3
{
  if ((a3 & 4) != 0)
  {
    return a3 & 3 | 0x18;
  }

  else
  {
    return a3 & 3;
  }
}

@end
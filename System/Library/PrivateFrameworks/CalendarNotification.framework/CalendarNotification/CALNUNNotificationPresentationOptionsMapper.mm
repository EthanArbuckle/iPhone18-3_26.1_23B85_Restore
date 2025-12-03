@interface CALNUNNotificationPresentationOptionsMapper
+ (unint64_t)unNotificationPresentationOptionsFromCALNNotificationPresentationOptions:(unint64_t)options;
@end

@implementation CALNUNNotificationPresentationOptionsMapper

+ (unint64_t)unNotificationPresentationOptionsFromCALNNotificationPresentationOptions:(unint64_t)options
{
  if ((options & 4) != 0)
  {
    return options & 3 | 0x18;
  }

  else
  {
    return options & 3;
  }
}

@end
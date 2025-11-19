@interface _MFMailNotificationSoundControllerAutoFetchData
- (_MFMailNotificationSoundControllerAutoFetchData)init;
- (id)description;
@end

@implementation _MFMailNotificationSoundControllerAutoFetchData

- (_MFMailNotificationSoundControllerAutoFetchData)init
{
  v4.receiver = self;
  v4.super_class = _MFMailNotificationSoundControllerAutoFetchData;
  v2 = [(_MFMailNotificationSoundControllerAutoFetchData *)&v4 init];
  if (v2)
  {
    v2->_fetchStart = mach_absolute_time();
  }

  return v2;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = @"no notification expected from fetch";
  if (self->_notificationExpectedFromFetch)
  {
    v4 = @"notification expected from fetch";
  }

  return [NSString stringWithFormat:@"<%@: %p> %@, %@, %llu", v3, self, self->_currentAccountIDOfSoundToPlay, v4, self->_fetchStart];
}

@end
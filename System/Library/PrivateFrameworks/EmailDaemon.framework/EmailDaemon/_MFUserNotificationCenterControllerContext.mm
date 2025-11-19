@interface _MFUserNotificationCenterControllerContext
- (NSString)ef_publicDescription;
@end

@implementation _MFUserNotificationCenterControllerContext

- (NSString)ef_publicDescription
{
  v3 = objc_opt_class();
  isSummaryDownload = self->_isSummaryDownload;
  isRemindMe = self->_isRemindMe;
  v6 = [(NSDate *)self->_remindMeDate description];
  v7 = [NSString stringWithFormat:@"<%@: %p> isSummaryDownload=%d, isRemindMe=%d, remindMeDate=%@", v3, self, isSummaryDownload, isRemindMe, v6];

  return v7;
}

@end
@interface QueryNewsAppEngagementDonorProperty
- (void)locationDetectionManager:(id)manager didChangeAuthorizationStatus:(int)status;
@end

@implementation QueryNewsAppEngagementDonorProperty

- (void)locationDetectionManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  if (status >= 5)
  {
    statusCopy = 0;
  }

  else
  {
    statusCopy = status;
  }

  *(&self->super.isa + OBJC_IVAR____TtC7NewsUI235QueryNewsAppEngagementDonorProperty_locationSharingStatus) = statusCopy;
}

@end
@interface LocationDetectionManagerObserverProxy
- (void)locationDetectionManager:(id)manager didChangeAuthorizationStatus:(int)status;
@end

@implementation LocationDetectionManagerObserverProxy

- (void)locationDetectionManager:(id)manager didChangeAuthorizationStatus:(int)status
{
  v4 = *&status;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong locationDetectionManager:manager didChangeAuthorizationStatus:v4];

    swift_unknownObjectRelease();
  }
}

@end
@interface LocationDetectionManagerObserverProxy
- (void)locationDetectionManager:(id)a3 didChangeAuthorizationStatus:(int)a4;
@end

@implementation LocationDetectionManagerObserverProxy

- (void)locationDetectionManager:(id)a3 didChangeAuthorizationStatus:(int)a4
{
  v4 = *&a4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong locationDetectionManager:a3 didChangeAuthorizationStatus:v4];

    swift_unknownObjectRelease();
  }
}

@end
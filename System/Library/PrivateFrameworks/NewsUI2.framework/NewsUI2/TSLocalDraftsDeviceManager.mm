@interface TSLocalDraftsDeviceManager
- (TSLocalDraftsDelegate)delegate;
@end

@implementation TSLocalDraftsDeviceManager

- (TSLocalDraftsDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end
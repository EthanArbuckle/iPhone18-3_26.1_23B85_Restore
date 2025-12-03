@interface FMFContactsDataController
- (void)contactStoreChangedWithNotification:(id)notification;
@end

@implementation FMFContactsDataController

- (void)contactStoreChangedWithNotification:(id)notification
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *&self->delegate[15];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 8);

    v6(ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_24A4300A0();
}

@end
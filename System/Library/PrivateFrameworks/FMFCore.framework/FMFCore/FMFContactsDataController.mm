@interface FMFContactsDataController
- (void)contactStoreChangedWithNotification:(id)a3;
@end

@implementation FMFContactsDataController

- (void)contactStoreChangedWithNotification:(id)a3
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
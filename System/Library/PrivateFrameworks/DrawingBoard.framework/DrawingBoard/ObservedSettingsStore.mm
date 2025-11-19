@interface ObservedSettingsStore
- (_TtC12DrawingBoard21ObservedSettingsStore)init;
@end

@implementation ObservedSettingsStore

- (_TtC12DrawingBoard21ObservedSettingsStore)init
{
  ObjectType = swift_getObjectType();
  v4 = self + OBJC_IVAR____TtC12DrawingBoard21ObservedSettingsStore_storage;
  v5 = sub_249D6E3D4(MEMORY[0x277D84F90]);
  *v4 = 0;
  *(v4 + 1) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(ObservedSettingsStore *)&v7 init];
}

@end
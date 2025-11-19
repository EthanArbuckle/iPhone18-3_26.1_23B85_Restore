@interface LocalSceneExtension.SettingsExtension
+ (void)configureSetting:(id)a3;
@end

@implementation LocalSceneExtension.SettingsExtension

+ (void)configureSetting:(id)a3
{
  swift_unknownObjectRetain();
  if ([a3 matchesProperty_])
  {
    v4 = type metadata accessor for LocalSceneExtension.SettingsExtension.ContentBuilderBox();
    v5 = objc_allocWithZone(v4);
    v6 = &v5[OBJC_IVAR____TtCCC12DrawingBoard19LocalSceneExtension17SettingsExtension17ContentBuilderBox_builder];
    *v6 = sub_249D529A0;
    *(v6 + 1) = 0;
    v8.receiver = v5;
    v8.super_class = v4;
    v7 = objc_msgSendSuper2(&v8, sel_init);
    [a3 setDefaultValue_];
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

@end
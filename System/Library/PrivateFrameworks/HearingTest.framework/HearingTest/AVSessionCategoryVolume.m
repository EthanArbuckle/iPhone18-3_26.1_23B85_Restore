@interface AVSessionCategoryVolume
- (_TtC11HearingTest23AVSessionCategoryVolume)init;
@end

@implementation AVSessionCategoryVolume

- (_TtC11HearingTest23AVSessionCategoryVolume)init
{
  v2 = type metadata accessor for AVSessionCategoryVolume();
  v3 = objc_allocWithZone(v2);
  v4 = &v3[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume_categoryName];
  v3[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__result] = 0;
  *&v3[OBJC_IVAR____TtC11HearingTest23AVSessionCategoryVolume__volume] = 0;
  *v4 = 0;
  v4[1] = 0;
  v7.receiver = v3;
  v7.super_class = v2;
  v5 = [(AVSessionCategoryVolume *)&v7 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

@end
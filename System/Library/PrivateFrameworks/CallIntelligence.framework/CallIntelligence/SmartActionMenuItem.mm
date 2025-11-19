@interface SmartActionMenuItem
- (_TtC16CallIntelligence19SmartActionMenuItem)init;
- (_TtC16CallIntelligence19SmartActionMenuItem)initWithRecommendationId:(id)a3 actionDescription:(id)a4 iconType:(id)a5;
@end

@implementation SmartActionMenuItem

- (_TtC16CallIntelligence19SmartActionMenuItem)initWithRecommendationId:(id)a3 actionDescription:(id)a4 iconType:(id)a5
{
  ObjectType = swift_getObjectType();
  v7 = sub_1D2EE3EB8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EE3E98();
  v12 = sub_1D2EE4A68();
  v14 = v13;
  v15 = sub_1D2EE4A68();
  v17 = v16;
  (*(v8 + 16))(self + OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_recommendationId, v11, v7);
  v18 = (self + OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_actionDescription);
  *v18 = v12;
  v18[1] = v14;
  v19 = (self + OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_iconType);
  *v19 = v15;
  v19[1] = v17;
  v22.receiver = self;
  v22.super_class = ObjectType;
  v20 = [(SmartActionMenuItem *)&v22 init];
  (*(v8 + 8))(v11, v7);
  return v20;
}

- (_TtC16CallIntelligence19SmartActionMenuItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
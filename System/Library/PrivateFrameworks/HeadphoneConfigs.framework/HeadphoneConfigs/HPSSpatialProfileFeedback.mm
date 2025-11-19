@interface HPSSpatialProfileFeedback
+ (id)getDraftViewController;
- (_TtC16HeadphoneConfigs25HPSSpatialProfileFeedback)init;
@end

@implementation HPSSpatialProfileFeedback

+ (id)getDraftViewController
{
  v2 = sub_2512116CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(sub_2512116EC());
  sub_2512116BC();
  (*(v3 + 104))(v6, *MEMORY[0x277D08490], v2);
  sub_2512116DC();
  v8 = objc_allocWithZone(sub_25121170C());
  v9 = sub_2512116FC();

  return v9;
}

- (_TtC16HeadphoneConfigs25HPSSpatialProfileFeedback)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HPSSpatialProfileFeedback();
  return [(HPSSpatialProfileFeedback *)&v3 init];
}

@end
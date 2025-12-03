@interface PromotionTileView
- (BOOL)isDismissible;
- (void)didChangePreferredContentSize;
- (void)didMoveToSuperview;
- (void)didTapAction:(id)action;
- (void)didTapLinkAction:(id)action;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
@end

@implementation PromotionTileView

- (void)didMoveToSuperview
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for PromotionTileView();
  v2 = v11.receiver;
  [(PromotionTileView *)&v11 didMoveToSuperview];
  v3 = sub_1BA3E0BD8();
  v5 = v4;
  v6 = &v2[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler];
  v7 = *&v2[OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler];
  *v6 = v3;
  *(v6 + 1) = v4;

  if (v3)
  {
    ObjectType = swift_getObjectType();
    v9 = *(v5 + 32);
    v10 = v3;
    v9(ObjectType, v5);
  }
}

- (void)didChangePreferredContentSize
{
  selfCopy = self;
  v2 = sub_1BA3DDBA8();
  [v2 invalidateIntrinsicContentSize];

  v3 = sub_1BA3DDFE0();
  [v3 invalidateIntrinsicContentSize];

  sub_1BA3DE788();
}

- (void)didTapAction:(id)action
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  PromotionTileView.submitTapAnalytics()();
  v5 = sub_1BA3E0BD8();
  v7 = v6;
  v8 = (&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  v9 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  *v8 = v5;
  v8[1] = v6;

  if (v5)
  {
    ObjectType = swift_getObjectType();
    v11 = *(v7 + 16);
    v12 = v5;
    v11(ObjectType, v7);

    selfCopy = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(&v13);
}

- (void)didTapLinkAction:(id)action
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  PromotionTileView.submitTapAnalytics()();
  v5 = sub_1BA3E0BD8();
  v7 = v6;
  v8 = (&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  v9 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_pluginActionHandler);
  *v8 = v5;
  v8[1] = v6;

  if (v5)
  {
    ObjectType = swift_getObjectType();
    v11 = *(v7 + 24);
    v12 = v5;
    v11(ObjectType, v7);

    selfCopy = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(&v13);
}

- (BOOL)isDismissible
{
  selfCopy = self;
  v3 = PromotionTileView.isDismissible.getter();

  return v3;
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  sub_1B9F0ADF8(0, &qword_1EBBECB58);
  sub_1BA3955EC();
  sub_1BA4A6D78();
  selfCopy = self;
  eventCopy = event;
  v8 = sub_1BA4A6D68();
  v12.receiver = selfCopy;
  v12.super_class = type metadata accessor for PromotionTileView();
  [(PromotionTileView *)&v12 touchesCancelled:v8 withEvent:eventCopy];

  v9 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryLabel;
  swift_beginAccess();
  v10 = *(&selfCopy->super.super.super.isa + v9);
  if (v10)
  {
    v11 = OBJC_IVAR____TtC18HealthExperienceUI17PromotionTileView_accessoryColor;
    swift_beginAccess();
    [v10 setTextColor_];
  }
}

@end
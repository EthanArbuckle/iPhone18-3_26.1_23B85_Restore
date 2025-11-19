@interface HPSSpatialProfileSingleStepBottomContainer
- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithBudsInEarString:(id)a3;
- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithCoder:(id)a3;
- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithFrame:(CGRect)a3;
- (void)moveToEnrollmentFromStep:(int)a3 toStep:(int)a4 animateInAlongSide:(id *)a5 animateOutAlongSide:(id *)a6 animatedCompletion:(id)a7;
- (void)showContinueButton:(BOOL)a3;
- (void)updateContinueButtonActionWithTarget:(id)a3 selector:(SEL)a4;
- (void)updateContinueButtonTitleWithTitle:(id)a3;
@end

@implementation HPSSpatialProfileSingleStepBottomContainer

- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithBudsInEarString:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_2511F4BE0(sub_2511F9CD0, v4);
}

- (void)showContinueButton:(BOOL)a3
{
  v4 = self;
  sub_2511F4E70(a3);
}

- (void)updateContinueButtonActionWithTarget:(id)a3 selector:(SEL)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_2511F4F58(a3, a4);
  swift_unknownObjectRelease();
}

- (void)updateContinueButtonTitleWithTitle:(id)a3
{
  sub_25121179C();
  v4 = self;
  sub_2511F50B4();
}

- (void)moveToEnrollmentFromStep:(int)a3 toStep:(int)a4 animateInAlongSide:(id *)a5 animateOutAlongSide:(id *)a6 animatedCompletion:(id)a7
{
  v12 = _Block_copy(a7);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_2511C65B0;
  }

  else
  {
    v13 = 0;
  }

  v14 = self;
  sub_2511F5440(a3, a4, a5, a6, v12, v13);
  sub_251146DF4(v12);
}

- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  v5 = type metadata accessor for HPSSpatialProfileSingleStepBottomContainer.HPSSpatialProfileSingleStepBottomContainerImpl();
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(v5) initWithFrame_];
  v6 = OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer_bottomContainerImpl;
  *(&self->super.super.super.isa + v6) = [objc_allocWithZone(v5) initWithFrame_];
  v7 = self + OBJC_IVAR____TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection;
  *v7 = 0;
  v7[8] = 1;
  result = sub_251211C4C();
  __break(1u);
  return result;
}

- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
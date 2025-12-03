@interface HPSSpatialProfileSingleStepBottomContainer
- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithBudsInEarString:(id)string;
- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithCoder:(id)coder;
- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithFrame:(CGRect)frame;
- (void)moveToEnrollmentFromStep:(int)step toStep:(int)toStep animateInAlongSide:(id *)side animateOutAlongSide:(id *)alongSide animatedCompletion:(id)completion;
- (void)showContinueButton:(BOOL)button;
- (void)updateContinueButtonActionWithTarget:(id)target selector:(SEL)selector;
- (void)updateContinueButtonTitleWithTitle:(id)title;
@end

@implementation HPSSpatialProfileSingleStepBottomContainer

- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithBudsInEarString:(id)string
{
  v3 = _Block_copy(string);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  return sub_2511F4BE0(sub_2511F9CD0, v4);
}

- (void)showContinueButton:(BOOL)button
{
  selfCopy = self;
  sub_2511F4E70(button);
}

- (void)updateContinueButtonActionWithTarget:(id)target selector:(SEL)selector
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2511F4F58(target, selector);
  swift_unknownObjectRelease();
}

- (void)updateContinueButtonTitleWithTitle:(id)title
{
  sub_25121179C();
  selfCopy = self;
  sub_2511F50B4();
}

- (void)moveToEnrollmentFromStep:(int)step toStep:(int)toStep animateInAlongSide:(id *)side animateOutAlongSide:(id *)alongSide animatedCompletion:(id)completion
{
  v12 = _Block_copy(completion);
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

  selfCopy = self;
  sub_2511F5440(step, toStep, side, alongSide, v12, v13);
  sub_251146DF4(v12);
}

- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithCoder:(id)coder
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

- (_TtC16HeadphoneConfigs42HPSSpatialProfileSingleStepBottomContainer)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
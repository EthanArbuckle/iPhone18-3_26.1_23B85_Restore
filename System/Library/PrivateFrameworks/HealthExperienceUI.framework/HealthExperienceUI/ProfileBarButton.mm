@interface ProfileBarButton
- (_TtC18HealthExperienceUI16ProfileBarButton)initWithCoder:(id)coder;
- (void)openProfileViewControllerWithSender:(id)sender;
@end

@implementation ProfileBarButton

- (_TtC18HealthExperienceUI16ProfileBarButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton____lazy_storage___meContactView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI16ProfileBarButton_gestureRecognizer) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ProfileBarButton();
  coderCopy = coder;
  v5 = [(ProfileBarButton *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (void)openProfileViewControllerWithSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1BA4A7BF8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1BA1A61D0();

  sub_1B9F0DCE0(v6, &qword_1EDC6E300, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B9F23434);
}

@end
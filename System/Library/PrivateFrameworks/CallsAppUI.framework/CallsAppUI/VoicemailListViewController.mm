@interface VoicemailListViewController
- (_TtC10CallsAppUI27VoicemailListViewController)initWithCoder:(id)coder;
- (void)clearAllButtonTappedWithSender:(id)sender;
@end

@implementation VoicemailListViewController

- (_TtC10CallsAppUI27VoicemailListViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController____lazy_storage___greetingButtonItem) = 0;
  result = sub_1CFCA01D8();
  __break(1u);
  return result;
}

- (void)clearAllButtonTappedWithSender:(id)sender
{
  v5 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC10CallsAppUI27VoicemailListViewController_section) + OBJC_IVAR____TtC10CallsAppUI27VoicemailsSectionController_displayMode;
  swift_beginAccess();
  if ((v5[8] & 1) == 0)
  {
    v6 = *v5;
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    senderCopy = sender;
    selfCopy = self;

    sub_1CFC99CB4(v6, sub_1CFC9A824, v7);
  }
}

@end
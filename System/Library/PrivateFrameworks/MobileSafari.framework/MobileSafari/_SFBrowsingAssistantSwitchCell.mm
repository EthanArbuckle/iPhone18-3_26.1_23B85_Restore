@interface _SFBrowsingAssistantSwitchCell
- (_SFBrowsingAssistantSwitchCell)initWithCoder:(id)coder;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
@end

@implementation _SFBrowsingAssistantSwitchCell

- (_SFBrowsingAssistantSwitchCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____SFBrowsingAssistantSwitchCell_delegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____SFBrowsingAssistantSwitchCell_title);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____SFBrowsingAssistantSwitchCell_switch;
  *(&self->super.super.super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69DCFD0]) init];
  result = sub_18BC21CF8();
  __break(1u);
  return result;
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_18BC1F738();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18BC1F718();
  selfCopy = self;
  sub_18BA32838();

  (*(v5 + 8))(v7, v4);
}

@end
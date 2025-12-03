@interface _SFBrowsingAssistantPopUpCell
- (_SFBrowsingAssistantPopUpCell)initWithCoder:(id)coder;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)updateActions;
@end

@implementation _SFBrowsingAssistantPopUpCell

- (_SFBrowsingAssistantPopUpCell)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____SFBrowsingAssistantPopUpCell_title);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____SFBrowsingAssistantPopUpCell_subtitle);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____SFBrowsingAssistantPopUpCell_actions) = MEMORY[0x1E69E7CC0];
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
  sub_18BB7FE68();

  (*(v5 + 8))(v7, v4);
}

- (void)updateActions
{
  selfCopy = self;
  sub_18BB80120();
}

@end
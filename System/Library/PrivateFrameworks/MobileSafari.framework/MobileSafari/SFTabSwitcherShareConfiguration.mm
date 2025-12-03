@interface SFTabSwitcherShareConfiguration
- (NSArray)allCollaborationButtons;
- (NSString)identifier;
- (SFTabSwitcherShareConfiguration)init;
- (SFTabSwitcherShareConfiguration)initWithIdentifier:(id)identifier shareHandler:(id)handler;
- (id)shareHandler;
- (void)setCollaborationButtonForLargeTitle:(id)title;
- (void)setCollaborationButtonForNavigationBar:(id)bar;
- (void)setIdentifier:(id)identifier;
- (void)setShareHandler:(id)handler;
@end

@implementation SFTabSwitcherShareConfiguration

- (SFTabSwitcherShareConfiguration)initWithIdentifier:(id)identifier shareHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (identifier)
  {
    identifier = sub_18BC20BD8();
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v10 = (&self->super.isa + OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped);
  *v10 = 0;
  v10[1] = 0;
  v10[2] = identifier;
  v10[3] = v8;
  v10[4] = sub_18BA93E04;
  v10[5] = v9;
  v12.receiver = self;
  v12.super_class = SFTabSwitcherShareConfiguration;
  return [(SFTabSwitcherShareConfiguration *)&v12 init];
}

- (NSArray)allCollaborationButtons
{
  selfCopy = self;
  sub_18BA8E218();

  sub_18B7B0AC0(0, &qword_1EA9D46F0);
  v3 = sub_18BC20D88();

  return v3;
}

- (void)setCollaborationButtonForLargeTitle:(id)title
{
  v4 = *(&self->super.isa + OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped);
  *(&self->super.isa + OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped) = title;
  titleCopy = title;
}

- (void)setCollaborationButtonForNavigationBar:(id)bar
{
  v4 = *&self->wrapped[OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped];
  *&self->wrapped[OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped] = bar;
  barCopy = bar;
}

- (NSString)identifier
{
  if (*&self->wrapped[OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped + 16])
  {
    sub_18BC1E3F8();
    v2 = sub_18BC20B98();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_18BC20BD8();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = self + OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped;
  *(v6 + 2) = v4;
  *(v6 + 3) = v5;
}

- (id)shareHandler
{
  v2 = *&self->wrapped[OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped + 32];
  v5[4] = *&self->wrapped[OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped + 24];
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_18BA892B8;
  v5[3] = &block_descriptor_26;
  v3 = _Block_copy(v5);
  sub_18BC1E1A8();

  return v3;
}

- (void)setShareHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self + OBJC_IVAR___SFTabSwitcherShareConfiguration_wrapped;
  *(v6 + 4) = sub_18BA93E04;
  *(v6 + 5) = v5;
}

- (SFTabSwitcherShareConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
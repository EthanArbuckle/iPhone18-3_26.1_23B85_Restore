@interface SFCommandForwardingView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (SFCommandForwardingView)initWithCoder:(id)coder;
- (SFCommandForwardingView)initWithFrame:(CGRect)frame;
- (UIResponder)commandPerformer;
- (id)forwardingTargetForSelector:(SEL)selector;
- (void)validateCommand:(id)command;
@end

@implementation SFCommandForwardingView

- (UIResponder)commandPerformer
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = SFCommandForwardingView.canPerformAction(_:withSender:)(action, v10);

  sub_18B7E0F80(v10);
  return v8 & 1;
}

- (void)validateCommand:(id)command
{
  v7.receiver = self;
  v7.super_class = SFCommandForwardingView;
  commandCopy = command;
  selfCopy = self;
  [(SFCommandForwardingView *)&v7 validateCommand:commandCopy];
  v6 = [(SFCommandForwardingView *)selfCopy commandPerformer:v7.receiver];
  [(UIResponder *)v6 validateCommand:commandCopy];
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  selfCopy = self;
  SFCommandForwardingView.forwardingTarget(for:)(selector, v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1Tm(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_18BC21FB8();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (SFCommandForwardingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = SFCommandForwardingView;
  return [(SFCommandForwardingView *)&v9 initWithFrame:x, y, width, height];
}

- (SFCommandForwardingView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = SFCommandForwardingView;
  coderCopy = coder;
  v6 = [(SFCommandForwardingView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end
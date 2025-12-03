@interface ICCollaboratorStatusView
- (ICCollaboratorStatusView)initWithCoder:(id)coder;
- (ICCollaboratorStatusView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)didMoveToWindow;
@end

@implementation ICCollaboratorStatusView

- (ICCollaboratorStatusView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___ICCollaboratorStatusView_hasDisplayedInWindow) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___ICCollaboratorStatusView_avatarView) = 0;
  v4 = OBJC_IVAR___ICCollaboratorStatusView_selectionViews;
  *(&self->super.super.super.isa + v4) = sub_215328378(MEMORY[0x277D84F90]);
  *(&self->super.super.super.isa + OBJC_IVAR___ICCollaboratorStatusView_isRemovingFromSuperview) = 0;
  result = sub_2154A2EDC();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for CollaboratorStatusView();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(ICCollaboratorStatusView *)&v13 hitTest:eventCopy withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_2151A6C9C(0, &qword_2811994D0);
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = sub_2154A291C();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_21537B8C0();
}

- (ICCollaboratorStatusView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
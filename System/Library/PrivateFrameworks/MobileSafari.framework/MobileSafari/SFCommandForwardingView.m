@interface SFCommandForwardingView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (SFCommandForwardingView)initWithCoder:(id)a3;
- (SFCommandForwardingView)initWithFrame:(CGRect)a3;
- (UIResponder)commandPerformer;
- (id)forwardingTargetForSelector:(SEL)a3;
- (void)validateCommand:(id)a3;
@end

@implementation SFCommandForwardingView

- (UIResponder)commandPerformer
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    sub_18BC218B8();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = SFCommandForwardingView.canPerformAction(_:withSender:)(a3, v10);

  sub_18B7E0F80(v10);
  return v8 & 1;
}

- (void)validateCommand:(id)a3
{
  v7.receiver = self;
  v7.super_class = SFCommandForwardingView;
  v4 = a3;
  v5 = self;
  [(SFCommandForwardingView *)&v7 validateCommand:v4];
  v6 = [(SFCommandForwardingView *)v5 commandPerformer:v7.receiver];
  [(UIResponder *)v6 validateCommand:v4];
}

- (id)forwardingTargetForSelector:(SEL)a3
{
  v4 = self;
  SFCommandForwardingView.forwardingTarget(for:)(a3, v13);

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

- (SFCommandForwardingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = SFCommandForwardingView;
  return [(SFCommandForwardingView *)&v9 initWithFrame:x, y, width, height];
}

- (SFCommandForwardingView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = SFCommandForwardingView;
  v5 = a3;
  v6 = [(SFCommandForwardingView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end
@interface CKGroupTypingAvatarAnimationCoordinator
- (CKGroupTypingAvatarAnimationCoordinator)init;
- (id)initToCell:(id)a3 fromTypingCell:(id)a4 hostingView:(id)a5 fromFrame:(CGRect)a6 senderContact:(id)a7 completion:(id)a8;
- (void)animate;
- (void)dealloc;
- (void)endAnimation;
- (void)updateAnimationWhileInflight;
@end

@implementation CKGroupTypingAvatarAnimationCoordinator

- (id)initToCell:(id)a3 fromTypingCell:(id)a4 hostingView:(id)a5 fromFrame:(CGRect)a6 senderContact:(id)a7 completion:(id)a8
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v16 = _Block_copy(a8);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v22 = sub_190B2BB10(x, y, width, height, v18, v19, v20, v21, sub_190841A8C, v17);

  return v22;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView);
  v3 = self;
  [v2 removeFromSuperview];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for GroupTypingAvatarAnimationCoordinator();
  [(CKGroupTypingAvatarAnimationCoordinator *)&v4 dealloc];
}

- (void)animate
{
  v2 = self;
  sub_190B2A604();
}

- (void)updateAnimationWhileInflight
{
  v2 = self;
  sub_190B2B248();
}

- (void)endAnimation
{
  v2 = self;
  sub_190B2B700();
}

- (CKGroupTypingAvatarAnimationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
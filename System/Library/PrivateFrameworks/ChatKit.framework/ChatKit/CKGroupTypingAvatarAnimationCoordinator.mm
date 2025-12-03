@interface CKGroupTypingAvatarAnimationCoordinator
- (CKGroupTypingAvatarAnimationCoordinator)init;
- (id)initToCell:(id)cell fromTypingCell:(id)typingCell hostingView:(id)view fromFrame:(CGRect)frame senderContact:(id)contact completion:(id)completion;
- (void)animate;
- (void)dealloc;
- (void)endAnimation;
- (void)updateAnimationWhileInflight;
@end

@implementation CKGroupTypingAvatarAnimationCoordinator

- (id)initToCell:(id)cell fromTypingCell:(id)typingCell hostingView:(id)view fromFrame:(CGRect)frame senderContact:(id)contact completion:(id)completion
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  cellCopy = cell;
  typingCellCopy = typingCell;
  viewCopy = view;
  contactCopy = contact;
  v22 = sub_190B2BB10(x, y, width, height, cellCopy, typingCellCopy, viewCopy, contactCopy, sub_190841A8C, v17);

  return v22;
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR___CKGroupTypingAvatarAnimationCoordinator_overlayView);
  selfCopy = self;
  [v2 removeFromSuperview];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for GroupTypingAvatarAnimationCoordinator();
  [(CKGroupTypingAvatarAnimationCoordinator *)&v4 dealloc];
}

- (void)animate
{
  selfCopy = self;
  sub_190B2A604();
}

- (void)updateAnimationWhileInflight
{
  selfCopy = self;
  sub_190B2B248();
}

- (void)endAnimation
{
  selfCopy = self;
  sub_190B2B700();
}

- (CKGroupTypingAvatarAnimationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
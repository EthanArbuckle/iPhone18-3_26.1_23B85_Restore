@interface SFBorrowedCapsuleViewRegistration
- (SFBorrowedCapsuleViewRegistration)init;
- (SFBorrowedCapsuleViewRegistration)initWithView:(id)view capsuleReferenceFrame:(CGRect)frame referenceBounds:(CGRect)bounds shouldClipView:(BOOL)clipView;
@end

@implementation SFBorrowedCapsuleViewRegistration

- (SFBorrowedCapsuleViewRegistration)initWithView:(id)view capsuleReferenceFrame:(CGRect)frame referenceBounds:(CGRect)bounds shouldClipView:(BOOL)clipView
{
  v6 = self + OBJC_IVAR___SFBorrowedCapsuleViewRegistration_wrapped;
  *v6 = view;
  *(v6 + 8) = frame;
  *(v6 + 40) = bounds;
  v6[72] = clipView;
  v9.receiver = self;
  v9.super_class = SFBorrowedCapsuleViewRegistration;
  viewCopy = view;
  return [(SFBorrowedCapsuleViewRegistration *)&v9 init];
}

- (SFBorrowedCapsuleViewRegistration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
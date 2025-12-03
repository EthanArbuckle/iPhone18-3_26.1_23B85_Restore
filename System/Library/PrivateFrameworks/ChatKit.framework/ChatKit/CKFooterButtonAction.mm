@interface CKFooterButtonAction
- (CKFooterButtonAction)initWithActionType:(int64_t)type actionHandler:(id)handler;
- (CKFooterButtonAction)initWithCoder:(id)coder;
@end

@implementation CKFooterButtonAction

- (CKFooterButtonAction)initWithActionType:(int64_t)type actionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v5;
  swift_getObjectType();
  sub_190BDE144(type);
  v6 = sub_190D57DC0();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v7 = OBJC_IVAR___CKFooterButtonAction_type;
  swift_beginAccess();
  *(&v6->super.super.super.isa + v7) = type;
  return v6;
}

- (CKFooterButtonAction)initWithCoder:(id)coder
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

@end
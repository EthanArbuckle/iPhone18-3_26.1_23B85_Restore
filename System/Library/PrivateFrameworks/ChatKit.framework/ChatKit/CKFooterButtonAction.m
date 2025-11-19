@interface CKFooterButtonAction
- (CKFooterButtonAction)initWithActionType:(int64_t)a3 actionHandler:(id)a4;
- (CKFooterButtonAction)initWithCoder:(id)a3;
@end

@implementation CKFooterButtonAction

- (CKFooterButtonAction)initWithActionType:(int64_t)a3 actionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v5;
  swift_getObjectType();
  sub_190BDE144(a3);
  v6 = sub_190D57DC0();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v7 = OBJC_IVAR___CKFooterButtonAction_type;
  swift_beginAccess();
  *(&v6->super.super.super.isa + v7) = a3;
  return v6;
}

- (CKFooterButtonAction)initWithCoder:(id)a3
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

@end
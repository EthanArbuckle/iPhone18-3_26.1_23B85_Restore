@interface UIView(CKLayoutAdditions)
- (id)__ck_addEqualityConstraintWithItem:()CKLayoutAdditions toItem:usingAttribute:;
@end

@implementation UIView(CKLayoutAdditions)

- (id)__ck_addEqualityConstraintWithItem:()CKLayoutAdditions toItem:usingAttribute:
{
  v6 = [MEMORY[0x1E696ACD8] constraintWithItem:a3 attribute:a5 relatedBy:0 toItem:a4 attribute:a5 multiplier:1.0 constant:0.0];
  [a1 addConstraint:v6];

  return v6;
}

@end
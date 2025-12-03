@interface PDAnimationShapeTarget
- (BOOL)isEqual:(id)equal;
- (PDAnimationShapeTarget)init;
- (unint64_t)hash;
@end

@implementation PDAnimationShapeTarget

- (PDAnimationShapeTarget)init
{
  v3.receiver = self;
  v3.super_class = PDAnimationShapeTarget;
  return [(PDAnimationShapeTarget *)&v3 init];
}

- (unint64_t)hash
{
  drawable = [(PDAnimationShapeTarget *)self drawable];
  v3 = [drawable hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    drawable = [(PDAnimationShapeTarget *)self drawable];
    drawable2 = [equalCopy drawable];
    v7 = drawable == drawable2;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
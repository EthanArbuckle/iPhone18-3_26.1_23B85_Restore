@interface PDAnimationShapeTarget
- (BOOL)isEqual:(id)a3;
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
  v2 = [(PDAnimationShapeTarget *)self drawable];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PDAnimationShapeTarget *)self drawable];
    v6 = [v4 drawable];
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
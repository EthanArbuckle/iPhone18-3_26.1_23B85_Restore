@interface PDAnimationDiagramTarget
- (PDAnimationDiagramTarget)init;
@end

@implementation PDAnimationDiagramTarget

- (PDAnimationDiagramTarget)init
{
  v3.receiver = self;
  v3.super_class = PDAnimationDiagramTarget;
  return [(PDAnimationShapeTarget *)&v3 init];
}

@end
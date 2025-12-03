@interface BWSemanticStyleSetFencedAnimationInfo
+ (id)fencedAnimationInfoWithSemanticStyleSet:(id)set fencePortSendRight:(id)right;
- (id)description;
- (void)dealloc;
@end

@implementation BWSemanticStyleSetFencedAnimationInfo

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWSemanticStyleSetFencedAnimationInfo;
  [(BWFencedAnimationInfo *)&v3 dealloc];
}

- (id)description
{
  semanticStyleSet = self->_semanticStyleSet;
  v4.receiver = self;
  v4.super_class = BWSemanticStyleSetFencedAnimationInfo;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"BWSemanticStyleSetFencedAnimationInfo: { %@, %@ }", semanticStyleSet, -[BWFencedAnimationInfo description](&v4, sel_description)];
}

+ (id)fencedAnimationInfoWithSemanticStyleSet:(id)set fencePortSendRight:(id)right
{
  v6 = [BWSemanticStyleSetFencedAnimationInfo alloc];
  if (v6)
  {
    v9.receiver = v6;
    v9.super_class = BWSemanticStyleSetFencedAnimationInfo;
    v7 = objc_msgSendSuper2(&v9, sel_initWithFencePortSendRight_, right);
    if (v7)
    {
      v7[3] = [set copy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end
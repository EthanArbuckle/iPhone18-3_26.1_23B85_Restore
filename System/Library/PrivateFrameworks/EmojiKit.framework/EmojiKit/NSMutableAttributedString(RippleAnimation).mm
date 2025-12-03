@interface NSMutableAttributedString(RippleAnimation)
- (EMKRippleAnimation)addRippleAnimationForRange_emk:()RippleAnimation;
- (void)removeRippleAnimation:()RippleAnimation includingFilterEffect_emk:;
@end

@implementation NSMutableAttributedString(RippleAnimation)

- (EMKRippleAnimation)addRippleAnimationForRange_emk:()RippleAnimation
{
  v7 = [MEMORY[0x277D76358] animationWithName:@"glimmer"];
  [self addAttribute:@"_NSTextFilterAnimation" value:v7 range:{a3, a4}];
  v8 = [MEMORY[0x277D76358] animationWithName:@"scaleRipple"];
  [self addAttribute:*MEMORY[0x277D74170] value:v8 range:{a3, a4}];
  v9 = [[EMKRippleAnimation alloc] initWithGlimmerFilterAnimation:v7 scaleRippleAnimation:v8];

  return v9;
}

- (void)removeRippleAnimation:()RippleAnimation includingFilterEffect_emk:
{
  v6 = a3;
  v7 = [self length];
  v8 = *MEMORY[0x277D74170];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__NSMutableAttributedString_RippleAnimation__removeRippleAnimation_includingFilterEffect_emk___block_invoke;
  v13[3] = &unk_2781C2028;
  v9 = v6;
  v14 = v9;
  selfCopy = self;
  [self enumerateAttribute:v8 inRange:0 options:v7 usingBlock:{0, v13}];
  if (a4)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __94__NSMutableAttributedString_RippleAnimation__removeRippleAnimation_includingFilterEffect_emk___block_invoke_2;
    v10[3] = &unk_2781C2028;
    v11 = v9;
    selfCopy2 = self;
    [self enumerateAttribute:@"_NSTextFilterAnimation" inRange:0 options:v7 usingBlock:{0, v10}];
  }
}

@end
@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

void __94__NSMutableAttributedString_RippleAnimation__removeRippleAnimation_includingFilterEffect_emk___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 scaleRippleAnimation];
  LOBYTE(v9) = v11 == v10;

  [*(a1 + 40) removeAttribute:*MEMORY[0x277D74170] range:{a3, a4}];
  *a5 = v9;
}

void __94__NSMutableAttributedString_RippleAnimation__removeRippleAnimation_includingFilterEffect_emk___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v9 = *(a1 + 32);
  v10 = a2;
  v11 = [v9 glimmerFilterAnimation];
  LOBYTE(v9) = v11 == v10;

  [*(a1 + 40) removeAttribute:@"_NSTextFilterAnimation" range:{a3, a4}];
  *a5 = v9;
}

@end
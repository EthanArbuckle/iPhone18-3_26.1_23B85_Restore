@interface UIFontMetrics(HKAdditions)
- (double)hk_scaledDirectionalEdgeInsetsForDirectionalEdgeInsets:()HKAdditions compatibleWithTraitCollection:;
@end

@implementation UIFontMetrics(HKAdditions)

- (double)hk_scaledDirectionalEdgeInsetsForDirectionalEdgeInsets:()HKAdditions compatibleWithTraitCollection:
{
  v12 = a7;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __115__UIFontMetrics_HKAdditions__hk_scaledDirectionalEdgeInsetsForDirectionalEdgeInsets_compatibleWithTraitCollection___block_invoke;
  v17[3] = &unk_1E81B8658;
  v17[4] = a1;
  v18 = v12;
  v13 = v12;
  v14 = _Block_copy(v17);
  v15 = v14[2](a2);
  (v14[2])(v14, a3);
  (v14[2])(v14, a4);
  (v14[2])(v14, a5);

  return v15;
}

@end
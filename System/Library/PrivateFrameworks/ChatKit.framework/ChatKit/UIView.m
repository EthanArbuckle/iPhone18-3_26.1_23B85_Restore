@interface UIView
@end

@implementation UIView

void __61__UIView_CKGradientReferenceView__setGradientViewsNeedLayout__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 referenceView];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [v5 setNeedsLayout];
  }
}

void __62__UIView_CKGradientReferenceView__layoutGradientViewsIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 referenceView];
  v4 = *(a1 + 32);

  if (v3 == v4)
  {
    [v5 layoutIfNeeded];
  }
}

uint64_t __77__UIView_CKMessageAcknowledgmentAnimations__messageAcknowledgmentBounceView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v4[0] = *(a1 + 40);
  v4[1] = v2;
  v4[2] = *(a1 + 72);
  return [v1 setTransform:v4];
}

uint64_t __77__UIView_CKMessageAcknowledgmentAnimations__messageAcknowledgmentBounceView___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __95__UIView_CKMessageAcknowledgmentAnimations__messageAcknowledgmentShrinkViewToPoint_completion___block_invoke(uint64_t a1)
{
  [MEMORY[0x1E6979518] setDisableActions:1];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = MEMORY[0x1E6979518];

  return [v3 setDisableActions:0];
}

@end
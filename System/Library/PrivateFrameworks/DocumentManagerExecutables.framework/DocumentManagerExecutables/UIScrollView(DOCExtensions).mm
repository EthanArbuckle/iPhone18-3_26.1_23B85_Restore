@interface UIScrollView(DOCExtensions)
- (double)doc_verticalOverlapIntoSafeAreaForView:()DOCExtensions usingKeyboardInfo:;
- (uint64_t)doc_adjustForAutomaticKeyboardInfo:()DOCExtensions animated:lastAdjustment:;
- (uint64_t)doc_automaticContentOffsetAdjustmentDisabledCount;
- (void)doc_setAutomaticContentOffsetAdjustmentDisabledCount:()DOCExtensions;
@end

@implementation UIScrollView(DOCExtensions)

- (void)doc_setAutomaticContentOffsetAdjustmentDisabledCount:()DOCExtensions
{
  if (a3 < 0)
  {
    [(UIScrollView(DOCExtensions) *)a2 doc_setAutomaticContentOffsetAdjustmentDisabledCount:self];
  }

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  objc_setAssociatedObject(self, &doc_automaticContentOffsetAdjustmentDisabledCountKey, v5, 0x301);
}

- (uint64_t)doc_automaticContentOffsetAdjustmentDisabledCount
{
  v1 = objc_getAssociatedObject(self, &doc_automaticContentOffsetAdjustmentDisabledCountKey);
  v2 = v1;
  v3 = &unk_285CE9D60;
  if (v1)
  {
    v3 = v1;
  }

  v4 = v3;

  integerValue = [v4 integerValue];
  return integerValue;
}

- (uint64_t)doc_adjustForAutomaticKeyboardInfo:()DOCExtensions animated:lastAdjustment:
{
  v7 = *a5;
  result = [self doc_verticalOverlapIntoSafeAreaForView:self usingKeyboardInfo:a3];
  if (v7 != v9)
  {
    *a5 = v9;
    v10 = v9 - v7;
    [self contentInset];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v10 + v17;
    [self setContentInset:?];

    return [self setScrollIndicatorInsets:{v12, v14, v18, v16}];
  }

  return result;
}

- (double)doc_verticalOverlapIntoSafeAreaForView:()DOCExtensions usingKeyboardInfo:
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v50 = [v7 objectForKey:*MEMORY[0x277D76BB8]];
    [v50 CGRectValue];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    window = [self window];
    windowScene = [window windowScene];
    coordinateSpace = [windowScene coordinateSpace];
    window2 = [self window];
    windowScene2 = [window2 windowScene];
    screen = [windowScene2 screen];
    coordinateSpace2 = [screen coordinateSpace];
    [coordinateSpace convertRect:coordinateSpace2 fromCoordinateSpace:{v10, v12, v14, v16}];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    window3 = [self window];
    windowScene3 = [window3 windowScene];
    coordinateSpace3 = [windowScene3 coordinateSpace];
    [coordinateSpace3 convertRect:v6 toCoordinateSpace:{v25, v27, v29, v31}];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    [self safeAreaInsets];
    v44 = v42 - v43;
    [self safeAreaInsets];
    v46 = v38 + v45;
  }

  else
  {
    v36 = *MEMORY[0x277CBF3A0];
    v46 = *(MEMORY[0x277CBF3A0] + 8);
    v40 = *(MEMORY[0x277CBF3A0] + 16);
    v44 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v51.origin.x = v36;
  v51.origin.y = v46;
  v51.size.width = v40;
  v51.size.height = v44;
  v47 = 0.0;
  if (!CGRectIsEmpty(v51))
  {
    [v6 bounds];
    MaxY = CGRectGetMaxY(v52);
    v53.origin.x = v36;
    v53.origin.y = v46;
    v53.size.width = v40;
    v53.size.height = v44;
    v47 = fmax(MaxY - CGRectGetMinY(v53), 0.0);
  }

  return v47;
}

- (void)doc_setAutomaticContentOffsetAdjustmentDisabledCount:()DOCExtensions .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"UIScrollView+DOCExtensions.m" lineNumber:20 description:@"Unbalanced calls to begin/endDisablingAutomaticContentOffsetAdjustment detected"];
}

@end
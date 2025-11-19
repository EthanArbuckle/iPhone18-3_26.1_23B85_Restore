@interface NSTextLayoutFragment(FragmentView)
- (void)_ck_getFragmentViewFrame:()FragmentView getBounds:textContainerInset:;
@end

@implementation NSTextLayoutFragment(FragmentView)

- (void)_ck_getFragmentViewFrame:()FragmentView getBounds:textContainerInset:
{
  if (!a3)
  {
    [NSTextLayoutFragment(FragmentView) _ck_getFragmentViewFrame:a2 getBounds:a1 textContainerInset:?];
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    [NSTextLayoutFragment(FragmentView) _ck_getFragmentViewFrame:a2 getBounds:a1 textContainerInset:?];
    goto LABEL_3;
  }

  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  [a1 layoutFragmentFrame];
  v9 = v8;
  [a1 renderingSurfaceBounds];
  v19 = CGRectIntegral(v18);
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  v14 = v9 + v19.origin.y;
  v19.origin.y = v14;
  v15 = CGRectGetHeight(v19) <= 0.0;
  v16 = x;
  if (!v15)
  {
    v20.origin.x = x;
    v20.origin.y = v14;
    v20.size.width = width;
    v20.size.height = height;
    v15 = CGRectGetWidth(v20) <= 0.0;
    v16 = x;
    if (!v15)
    {
      v21.origin.x = x;
      v21.origin.y = v14;
      v21.size.width = width;
      v21.size.height = height;
      MinX = CGRectGetMinX(v21);
      v22.origin.x = x;
      v22.origin.y = v14;
      v22.size.width = width;
      v22.size.height = height;
      v16 = x + MinX - CGRectGetMinX(v22);
    }
  }

  *a4 = v16;
  a4[1] = y;
  a4[2] = width;
  a4[3] = height;
  *a3 = x;
  a3[1] = v14;
  a3[2] = width;
  a3[3] = height;
}

- (void)_ck_getFragmentViewFrame:()FragmentView getBounds:textContainerInset:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKMentionsTextContainerOverlayView.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"frameOut"}];
}

- (void)_ck_getFragmentViewFrame:()FragmentView getBounds:textContainerInset:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CKMentionsTextContainerOverlayView.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"boundsOut"}];
}

@end
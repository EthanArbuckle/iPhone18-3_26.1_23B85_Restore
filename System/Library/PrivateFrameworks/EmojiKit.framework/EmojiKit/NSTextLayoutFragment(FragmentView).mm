@interface NSTextLayoutFragment(FragmentView)
- (void)_emk_getFragmentViewFrame:()FragmentView getBounds:textContainerInset:;
@end

@implementation NSTextLayoutFragment(FragmentView)

- (void)_emk_getFragmentViewFrame:()FragmentView getBounds:textContainerInset:
{
  [self layoutFragmentFrame];
  v10 = v9;
  v12 = v11;
  [self renderingSurfaceBounds];
  v20 = CGRectIntegral(v19);
  x = v20.origin.x;
  y = v20.origin.y;
  width = v20.size.width;
  height = v20.size.height;
  v17 = a2 + v12 + v20.origin.y;
  v20.origin.x = v10;
  v20.origin.y = v17;
  if (CGRectGetHeight(v20) > 0.0)
  {
    v21.origin.x = v10;
    v21.origin.y = v17;
    v21.size.width = width;
    v21.size.height = height;
    if (CGRectGetWidth(v21) > 0.0)
    {
      v22.origin.x = v10;
      v22.origin.y = v17;
      v22.size.width = width;
      v22.size.height = height;
      MinX = CGRectGetMinX(v22);
      v23.origin.x = v10;
      v23.origin.y = v17;
      v23.size.width = width;
      v23.size.height = height;
      x = x + MinX - CGRectGetMinX(v23);
    }
  }

  *a5 = x;
  a5[1] = y;
  a5[2] = width;
  a5[3] = height;
  *a4 = v10;
  a4[1] = v17;
  a4[2] = width;
  a4[3] = height;
}

@end
@interface UIScrollView(_CRKCardViewVisibility)
- (BOOL)_crk_subviewIsVisible:()_CRKCardViewVisibility;
@end

@implementation UIScrollView(_CRKCardViewVisibility)

- (BOOL)_crk_subviewIsVisible:()_CRKCardViewVisibility
{
  v4 = a3;
  [a1 contentOffset];
  v6 = v5;
  v8 = v7;
  [a1 bounds];
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  v13 = CGRectGetWidth(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v14 = CGRectGetHeight(v34);
  [v4 frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = v6;
  v24 = v8;
  v25 = v13;
  v26 = v14;
  v27 = v16;
  v28 = v18;
  v29 = v20;
  v30 = v22;

  return CGRectIntersectsRect(*&v23, *&v27);
}

@end
@interface UIView(_CRKCardViewVisibility)
- (uint64_t)_crk_otherSubviewsOccludeSubview:()_CRKCardViewVisibility;
- (uint64_t)_crk_subviewIsVisible:()_CRKCardViewVisibility;
@end

@implementation UIView(_CRKCardViewVisibility)

- (uint64_t)_crk_otherSubviewsOccludeSubview:()_CRKCardViewVisibility
{
  v4 = a3;
  subviews = [self subviews];
  v6 = [subviews indexOfObject:v4];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__UIView__CRKCardViewVisibility___crk_otherSubviewsOccludeSubview___block_invoke;
  v10[3] = &unk_278DA3578;
  v13 = v6;
  v7 = v4;
  v11 = v7;
  v12 = &v14;
  [subviews enumerateObjectsUsingBlock:v10];
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

- (uint64_t)_crk_subviewIsVisible:()_CRKCardViewVisibility
{
  v4 = a3;
  [self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v4 frame];
  v20.origin.x = v13;
  v20.origin.y = v14;
  v20.size.width = v15;
  v20.size.height = v16;
  v19.origin.x = v6;
  v19.origin.y = v8;
  v19.size.width = v10;
  v19.size.height = v12;
  if (CGRectIntersectsRect(v19, v20))
  {
    v17 = [self _crk_otherSubviewsOccludeSubview:v4] ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end
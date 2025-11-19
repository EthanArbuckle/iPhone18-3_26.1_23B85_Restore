@interface UIView
@end

@implementation UIView

uint64_t __67__UIView__CRKCardViewVisibility___crk_otherSubviewsOccludeSubview___block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (*(a1 + 48) < a3)
  {
    v22 = v7;
    [v7 frame];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    [*(a1 + 32) frame];
    v25.origin.x = v17;
    v25.origin.y = v18;
    v25.size.width = v19;
    v25.size.height = v20;
    v24.origin.x = v10;
    v24.origin.y = v12;
    v24.size.width = v14;
    v24.size.height = v16;
    v7 = CGRectContainsRect(v24, v25);
    v8 = v22;
    if (v7)
    {
      v7 = [v22 isHidden];
      v8 = v22;
      if ((v7 & 1) == 0)
      {
        *(*(*(a1 + 40) + 8) + 24) = 1;
        *a4 = 1;
      }
    }
  }

  return MEMORY[0x2821F96F8](v7, v8);
}

@end
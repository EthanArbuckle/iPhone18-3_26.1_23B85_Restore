@interface CAMView
+ (void)animateIfNeededWithDuration:(double)a3 options:(unint64_t)a4 animations:(id)a5 completion:(id)a6;
+ (void)animateIfNeededWithDuration:(double)a3 usingSpringWithDamping:(double)a4 initialSpringVelocity:(double)a5 options:(unint64_t)a6 animations:(id)a7 completion:(id)a8;
+ (void)ceilBounds:(CGRect *)a3 andRoundCenter:(CGPoint *)a4 toViewScale:(id)a5;
+ (void)convertRect:(CGRect)a3 toCeiledBounds:(CGRect *)a4 andRoundedCenter:(CGPoint *)a5 toViewScale:(id)a6;
+ (void)rotateView:(id)a3 toInterfaceOrientation:(int64_t)a4 animated:(BOOL)a5;
+ (void)setBorderColor:(id)a3 width:(double)a4 forView:(id)a5;
+ (void)setBorderForView:(id)a3;
+ (void)view:(id)a3 insertSubview:(id)a4 aboveSubview:(id)a5;
+ (void)view:(id)a3 insertSubview:(id)a4 belowSubview:(id)a5;
@end

@implementation CAMView

+ (void)ceilBounds:(CGRect *)a3 andRoundCenter:(CGPoint *)a4 toViewScale:(id)a5
{
  if (a3 && a4)
  {
    origin = a3->origin;
    v7 = a5;
    UICeilToViewScale();
    v9 = v8;
    v24 = v8;
    UICeilToViewScale();
    v23 = v10;
    x = a4->x;
    y = a4->y;
    v13 = v9 * 0.5;
    v14 = a4->x - v13;
    v15 = v10 * 0.5;
    v16 = y - v10 * 0.5;
    UIRoundToViewScale();
    v18 = v17;
    UIRoundToViewScale();
    v20 = v19;

    v21 = v13 + v18;
    if (v18 == v14)
    {
      v21 = x;
    }

    v22 = v15 + v20;
    a3->origin = origin;
    if (v20 == v16)
    {
      v22 = y;
    }

    a3->size.width = v24;
    a3->size.height = v23;
    a4->x = v21;
    a4->y = v22;
  }
}

+ (void)convertRect:(CGRect)a3 toCeiledBounds:(CGRect *)a4 andRoundedCenter:(CGPoint *)a5 toViewScale:(id)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = *MEMORY[0x1E695EFF8];
  v17.width = a3.size.width;
  v17.height = a3.size.height;
  v12 = a6;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MidX = CGRectGetMidX(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v15.x = MidX;
  v15.y = CGRectGetMidY(v19);
  [CAMView ceilBounds:&v16 andRoundCenter:&v15 toViewScale:v12];

  if (a4)
  {
    v14 = v17;
    a4->origin = v16;
    a4->size = v14;
  }

  if (a5)
  {
    *a5 = v15;
  }
}

+ (void)rotateView:(id)a3 toInterfaceOrientation:(int64_t)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v11[1] = 3221225472;
  v11[0] = MEMORY[0x1E69E9820];
  v11[2] = __54__CAMView_rotateView_toInterfaceOrientation_animated___block_invoke;
  v11[3] = &unk_1E76F7A38;
  if (v5)
  {
    v9 = 0.3;
  }

  else
  {
    v9 = 0.0;
  }

  v12 = v8;
  v13 = a4;
  v10 = v8;
  [a1 animateIfNeededWithDuration:2 options:v11 animations:0 completion:v9];
}

+ (void)animateIfNeededWithDuration:(double)a3 usingSpringWithDamping:(double)a4 initialSpringVelocity:(double)a5 options:(unint64_t)a6 animations:(id)a7 completion:(id)a8
{
  v14 = a8;
  if (a3 == 0.0)
  {
    (*(a7 + 2))(a7);
    v13 = v14;
    if (!v14)
    {
      goto LABEL_6;
    }

    (*(v14 + 2))();
  }

  else
  {
    [MEMORY[0x1E69DD250] animateWithDuration:a6 delay:a7 usingSpringWithDamping:v14 initialSpringVelocity:a3 options:0.0 animations:a4 completion:a5];
  }

  v13 = v14;
LABEL_6:
}

+ (void)animateIfNeededWithDuration:(double)a3 options:(unint64_t)a4 animations:(id)a5 completion:(id)a6
{
  v10 = a6;
  if (a3 == 0.0)
  {
    (*(a5 + 2))(a5);
    v9 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }

    (*(v10 + 2))();
  }

  else
  {
    [MEMORY[0x1E69DD250] animateWithDuration:a4 delay:a5 options:v10 animations:a3 completion:0.0];
  }

  v9 = v10;
LABEL_6:
}

+ (void)view:(id)a3 insertSubview:(id)a4 belowSubview:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v8 && ([v8 superview], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == v11))
  {
    [v11 insertSubview:v7 belowSubview:v9];
  }

  else
  {
    [v11 addSubview:v7];
  }
}

+ (void)view:(id)a3 insertSubview:(id)a4 aboveSubview:(id)a5
{
  v11 = a3;
  v7 = a4;
  v8 = a5;
  v9 = v8;
  if (v8 && ([v8 superview], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == v11))
  {
    [v11 insertSubview:v7 aboveSubview:v9];
  }

  else
  {
    [v11 addSubview:v7];
  }
}

+ (void)setBorderForView:(id)a3
{
  v4 = MEMORY[0x1E69DC888];
  v5 = a3;
  v6 = [v4 whiteColor];
  [a1 setBorderColor:v6 forView:v5];
}

+ (void)setBorderColor:(id)a3 width:(double)a4 forView:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [a3 CGColor];
  v11 = [v9 layer];
  [v11 setBorderColor:v10];

  v12 = [v9 layer];

  [v12 setBorderWidth:a4];
}

@end
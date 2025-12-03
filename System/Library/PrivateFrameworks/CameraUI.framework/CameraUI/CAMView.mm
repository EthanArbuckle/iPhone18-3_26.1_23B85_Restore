@interface CAMView
+ (void)animateIfNeededWithDuration:(double)duration options:(unint64_t)options animations:(id)animations completion:(id)completion;
+ (void)animateIfNeededWithDuration:(double)duration usingSpringWithDamping:(double)damping initialSpringVelocity:(double)velocity options:(unint64_t)options animations:(id)animations completion:(id)completion;
+ (void)ceilBounds:(CGRect *)bounds andRoundCenter:(CGPoint *)center toViewScale:(id)scale;
+ (void)convertRect:(CGRect)rect toCeiledBounds:(CGRect *)bounds andRoundedCenter:(CGPoint *)center toViewScale:(id)scale;
+ (void)rotateView:(id)view toInterfaceOrientation:(int64_t)orientation animated:(BOOL)animated;
+ (void)setBorderColor:(id)color width:(double)width forView:(id)view;
+ (void)setBorderForView:(id)view;
+ (void)view:(id)view insertSubview:(id)subview aboveSubview:(id)aboveSubview;
+ (void)view:(id)view insertSubview:(id)subview belowSubview:(id)belowSubview;
@end

@implementation CAMView

+ (void)ceilBounds:(CGRect *)bounds andRoundCenter:(CGPoint *)center toViewScale:(id)scale
{
  if (bounds && center)
  {
    origin = bounds->origin;
    scaleCopy = scale;
    UICeilToViewScale();
    v9 = v8;
    v24 = v8;
    UICeilToViewScale();
    v23 = v10;
    x = center->x;
    y = center->y;
    v13 = v9 * 0.5;
    v14 = center->x - v13;
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
    bounds->origin = origin;
    if (v20 == v16)
    {
      v22 = y;
    }

    bounds->size.width = v24;
    bounds->size.height = v23;
    center->x = v21;
    center->y = v22;
  }
}

+ (void)convertRect:(CGRect)rect toCeiledBounds:(CGRect *)bounds andRoundedCenter:(CGPoint *)center toViewScale:(id)scale
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = *MEMORY[0x1E695EFF8];
  v17.width = rect.size.width;
  v17.height = rect.size.height;
  scaleCopy = scale;
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
  [CAMView ceilBounds:&v16 andRoundCenter:&v15 toViewScale:scaleCopy];

  if (bounds)
  {
    v14 = v17;
    bounds->origin = v16;
    bounds->size = v14;
  }

  if (center)
  {
    *center = v15;
  }
}

+ (void)rotateView:(id)view toInterfaceOrientation:(int64_t)orientation animated:(BOOL)animated
{
  animatedCopy = animated;
  viewCopy = view;
  v11[1] = 3221225472;
  v11[0] = MEMORY[0x1E69E9820];
  v11[2] = __54__CAMView_rotateView_toInterfaceOrientation_animated___block_invoke;
  v11[3] = &unk_1E76F7A38;
  if (animatedCopy)
  {
    v9 = 0.3;
  }

  else
  {
    v9 = 0.0;
  }

  v12 = viewCopy;
  orientationCopy = orientation;
  v10 = viewCopy;
  [self animateIfNeededWithDuration:2 options:v11 animations:0 completion:v9];
}

+ (void)animateIfNeededWithDuration:(double)duration usingSpringWithDamping:(double)damping initialSpringVelocity:(double)velocity options:(unint64_t)options animations:(id)animations completion:(id)completion
{
  completionCopy = completion;
  if (duration == 0.0)
  {
    (*(animations + 2))(animations);
    v13 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    (*(completionCopy + 2))();
  }

  else
  {
    [MEMORY[0x1E69DD250] animateWithDuration:options delay:animations usingSpringWithDamping:completionCopy initialSpringVelocity:duration options:0.0 animations:damping completion:velocity];
  }

  v13 = completionCopy;
LABEL_6:
}

+ (void)animateIfNeededWithDuration:(double)duration options:(unint64_t)options animations:(id)animations completion:(id)completion
{
  completionCopy = completion;
  if (duration == 0.0)
  {
    (*(animations + 2))(animations);
    v9 = completionCopy;
    if (!completionCopy)
    {
      goto LABEL_6;
    }

    (*(completionCopy + 2))();
  }

  else
  {
    [MEMORY[0x1E69DD250] animateWithDuration:options delay:animations options:completionCopy animations:duration completion:0.0];
  }

  v9 = completionCopy;
LABEL_6:
}

+ (void)view:(id)view insertSubview:(id)subview belowSubview:(id)belowSubview
{
  viewCopy = view;
  subviewCopy = subview;
  belowSubviewCopy = belowSubview;
  v9 = belowSubviewCopy;
  if (belowSubviewCopy && ([belowSubviewCopy superview], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == viewCopy))
  {
    [viewCopy insertSubview:subviewCopy belowSubview:v9];
  }

  else
  {
    [viewCopy addSubview:subviewCopy];
  }
}

+ (void)view:(id)view insertSubview:(id)subview aboveSubview:(id)aboveSubview
{
  viewCopy = view;
  subviewCopy = subview;
  aboveSubviewCopy = aboveSubview;
  v9 = aboveSubviewCopy;
  if (aboveSubviewCopy && ([aboveSubviewCopy superview], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 == viewCopy))
  {
    [viewCopy insertSubview:subviewCopy aboveSubview:v9];
  }

  else
  {
    [viewCopy addSubview:subviewCopy];
  }
}

+ (void)setBorderForView:(id)view
{
  v4 = MEMORY[0x1E69DC888];
  viewCopy = view;
  whiteColor = [v4 whiteColor];
  [self setBorderColor:whiteColor forView:viewCopy];
}

+ (void)setBorderColor:(id)color width:(double)width forView:(id)view
{
  colorCopy = color;
  viewCopy = view;
  cGColor = [color CGColor];
  layer = [viewCopy layer];
  [layer setBorderColor:cGColor];

  layer2 = [viewCopy layer];

  [layer2 setBorderWidth:width];
}

@end
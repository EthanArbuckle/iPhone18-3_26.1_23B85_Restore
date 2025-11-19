@interface UIView(FrameExtensions)
- (uint64_t)centerHorizontalInView:()FrameExtensions;
- (uint64_t)centerVerticalInView:()FrameExtensions;
@end

@implementation UIView(FrameExtensions)

- (uint64_t)centerHorizontalInView:()FrameExtensions
{
  v4 = a3;
  [a1 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v4 frame];
  v12 = v11;

  v13 = v12 * 0.5;
  v14 = v8 * 0.5;
  v15 = floorf(v13 - v14);

  return [a1 setFrame:{v15, v6, v8, v10}];
}

- (uint64_t)centerVerticalInView:()FrameExtensions
{
  v4 = a3;
  [a1 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v4 frame];
  v12 = v11;

  v13 = v12 * 0.5;
  v14 = v10 * 0.5;
  v15 = floorf(v13 - v14);

  return [a1 setFrame:{v6, v15, v8, v10}];
}

@end
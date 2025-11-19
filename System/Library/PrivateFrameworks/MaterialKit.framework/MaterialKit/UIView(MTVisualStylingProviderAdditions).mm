@interface UIView(MTVisualStylingProviderAdditions)
- (id)visualStylingProviderForCategory:()MTVisualStylingProviderAdditions;
@end

@implementation UIView(MTVisualStylingProviderAdditions)

- (id)visualStylingProviderForCategory:()MTVisualStylingProviderAdditions
{
  v5 = [a1 superview];
  v6 = [v5 subviews];

  v7 = [v6 indexOfObject:a1];
  if (v7)
  {
    v8 = [v6 objectAtIndex:v7 - 1];
    v9 = [v8 subviews];
    v10 = [v9 count];

    if (v10)
    {
      v11 = [v8 subviews];
      v12 = [v11 lastObject];

      v8 = v12;
    }
  }

  else
  {
    v8 = [a1 superview];
  }

  v13 = [v8 visualStylingProviderForCategory:a3];

  return v13;
}

@end
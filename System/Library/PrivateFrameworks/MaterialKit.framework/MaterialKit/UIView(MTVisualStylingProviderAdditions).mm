@interface UIView(MTVisualStylingProviderAdditions)
- (id)visualStylingProviderForCategory:()MTVisualStylingProviderAdditions;
@end

@implementation UIView(MTVisualStylingProviderAdditions)

- (id)visualStylingProviderForCategory:()MTVisualStylingProviderAdditions
{
  superview = [self superview];
  subviews = [superview subviews];

  v7 = [subviews indexOfObject:self];
  if (v7)
  {
    superview2 = [subviews objectAtIndex:v7 - 1];
    subviews2 = [superview2 subviews];
    v10 = [subviews2 count];

    if (v10)
    {
      subviews3 = [superview2 subviews];
      lastObject = [subviews3 lastObject];

      superview2 = lastObject;
    }
  }

  else
  {
    superview2 = [self superview];
  }

  v13 = [superview2 visualStylingProviderForCategory:a3];

  return v13;
}

@end
@interface UIView(ContentView)
- (id)_bottomVisibleView;
@end

@implementation UIView(ContentView)

- (id)_bottomVisibleView
{
  subviews = [self subviews];
  v3 = [subviews count];

  v4 = 0;
  if (v3)
  {
    v5 = 0;
    do
    {
      subviews2 = [self subviews];
      v7 = [subviews2 objectAtIndexedSubscript:v5];

      isHidden = [v7 isHidden];
      if (v4 <= v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = v4;
      }

      if (!isHidden)
      {
        v4 = v9;
      }

      ++v5;
      subviews3 = [self subviews];
      v11 = [subviews3 count];
    }

    while (v5 < v11);
  }

  subviews4 = [self subviews];
  v13 = [subviews4 objectAtIndexedSubscript:v4];

  return v13;
}

@end
@interface UIView(ContentView)
- (id)_bottomVisibleView;
@end

@implementation UIView(ContentView)

- (id)_bottomVisibleView
{
  v2 = [a1 subviews];
  v3 = [v2 count];

  v4 = 0;
  if (v3)
  {
    v5 = 0;
    do
    {
      v6 = [a1 subviews];
      v7 = [v6 objectAtIndexedSubscript:v5];

      v8 = [v7 isHidden];
      if (v4 <= v5)
      {
        v9 = v5;
      }

      else
      {
        v9 = v4;
      }

      if (!v8)
      {
        v4 = v9;
      }

      ++v5;
      v10 = [a1 subviews];
      v11 = [v10 count];
    }

    while (v5 < v11);
  }

  v12 = [a1 subviews];
  v13 = [v12 objectAtIndexedSubscript:v4];

  return v13;
}

@end
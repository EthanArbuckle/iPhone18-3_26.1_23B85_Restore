@interface UIView
- (id)allSubViews;
@end

@implementation UIView

- (id)allSubViews
{
  v3 = objc_alloc_init(NSMutableArray);
  [v3 addObject:self];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  subviews = [(UIView *)self subviews];
  v5 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(subviews);
        }

        allSubViews = [*(*(&v11 + 1) + 8 * i) allSubViews];
        [v3 addObjectsFromArray:allSubViews];
      }

      v6 = [subviews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end
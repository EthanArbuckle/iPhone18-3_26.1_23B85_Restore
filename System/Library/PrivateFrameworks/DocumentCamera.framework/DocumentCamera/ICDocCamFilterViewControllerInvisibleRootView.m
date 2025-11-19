@interface ICDocCamFilterViewControllerInvisibleRootView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation ICDocCamFilterViewControllerInvisibleRootView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(ICDocCamFilterViewControllerInvisibleRootView *)self subviews];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        [(ICDocCamFilterViewControllerInvisibleRootView *)self convertPoint:v13 toView:x, y];
        if ([v13 pointInside:v7 withEvent:?])
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = ICDocCamFilterViewControllerInvisibleRootView;
  v5 = [(ICDocCamFilterViewControllerInvisibleRootView *)&v7 hitTest:a4 withEvent:a3.x, a3.y];
  if (v5 == self)
  {

    v5 = 0;
  }

  return v5;
}

@end
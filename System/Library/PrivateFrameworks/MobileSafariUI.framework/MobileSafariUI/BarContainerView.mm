@interface BarContainerView
- (BarContainerView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)didMoveToSuperview;
@end

@implementation BarContainerView

- (void)didMoveToSuperview
{
  v2.receiver = self;
  v2.super_class = BarContainerView;
  [(BarContainerView *)&v2 didMoveToSuperview];
}

- (BarContainerView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = BarContainerView;
  v3 = [(BarContainerView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    barViews = v3->_barViews;
    v3->_barViews = v4;

    v6 = v3;
  }

  return v3;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v35 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = self->_barViews;
  v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v31;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        [(BarContainerView *)self bounds];
        v15 = v14;
        v17 = v16;
        v19 = v18;
        v21 = v20;
        [v13 bounds];
        [(BarContainerView *)self convertRect:v13 fromView:?];
        v39.origin.x = v22;
        v39.origin.y = v23;
        v39.size.width = v24;
        v39.size.height = v25;
        v37.origin.x = v15;
        v37.origin.y = v17;
        v37.size.width = v19;
        v37.size.height = v21;
        v38 = CGRectIntersection(v37, v39);
        if (!CGRectIsEmpty(v38))
        {
          [(BarContainerView *)self convertPoint:v13 toView:x, y];
          v26 = [v13 hitTest:v7 withEvent:?];
          if (v26)
          {
            v27 = v26;

            goto LABEL_12;
          }
        }
      }

      v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v29.receiver = self;
  v29.super_class = BarContainerView;
  v27 = [(BarContainerView *)&v29 hitTest:v7 withEvent:x, y];
LABEL_12:

  return v27;
}

@end